class AddToUser < ActiveRecord::Migration
  def change
    add_reference :users, :userable, polymorphic: true, index: true

    execute <<-SQL
      ALTER TABLE parents
        ADD CONSTRAINT parents_fullname_fkey
        FOREIGN KEY (fullname)
        REFERENCES users(fullname)
        MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE
    SQL

    execute <<-SQL
      ALTER TABLE teachers
        ADD CONSTRAINT teacher_fullname_fkey
        FOREIGN KEY (fullname)
        REFERENCES users(fullname)
        MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE
    SQL

    execute <<-SQL
      ALTER TABLE teachers
        ADD CONSTRAINT teacher_email_fkey
        FOREIGN KEY (email)
        REFERENCES users(email))
        MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE
    SQL

    execute <<-SQL
      ALTER TABLE parents
        ADD CONSTRAINT parents_email_fkey
        FOREIGN KEY (email)
        REFERENCES users(email)
        MATCH SIMPLE ON UPDATE CASCADE ON DELETE CASCADE
    SQL

  end
end
