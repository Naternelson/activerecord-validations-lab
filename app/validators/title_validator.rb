class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless  record.title.match("(Won't Believe)|(Secret)|(Top \d+)|(Guess)")
                record.errors[:title] << "More clickbait!"
            end
        end
    end
end