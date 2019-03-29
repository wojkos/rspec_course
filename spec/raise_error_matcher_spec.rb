RSpec.describe 'raise_error matcher' do
    def name_error_method
        x
    end

    class CustomError < StandardError; end
  
    it 'can check for any error' do
        expect { name_error_method }.to raise_error(NameError)
        expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end

    it 'can check for a user_created error' do
        expect { raise CustomError }.to raise_error(CustomError)
    end
end
