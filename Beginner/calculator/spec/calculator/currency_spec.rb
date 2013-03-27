require 'spec_helper'

describe Currency do
  describe '#convert' do
    context 'with no or wrong amount of money' do
      it 'returns Nothing to convert' do
        c = Currency.new
        c.convert.should == "Nothing to convert"
        c.convert(['sddd']).should == "Nothing to convert"
        c.convert(['bla', 'USD', 'EUR']).should == "Nothing to convert"
        c.convert(['0', 'USD', 'EUR']).should == "Nothing to convert"
      end
    end

    context 'with no or wrong currency types' do
      it 'returns No such currency' do
        c = Currency.new
        c.convert(['100']).should == 'No such currency'
        c.convert(['100', 'usd']).should == 'No such currency'
        c.convert(['100', 'xyz']).should == 'No such currency'
        c.convert(['100', 'usd', 'xyz']).should == 'No such currency'
        c.convert(['100', 'xyz', 'usd']).should == 'No such currency'
        c.convert(['100', 'xyz', 'wui']).should == 'No such currency'
      end
    end

    context 'with 100 USD EUR' do
      it 'returns 76.77' do
        c = Currency.new
        c.convert(['100', 'USD', 'EUR']).should == 76.77
      end
    end

    context 'with 100 EUR USD' do
      it 'returns 130.25' do
        c = Currency.new
        c.convert(['100', 'EUR', 'USD']).should == 130.25
      end
    end

    context 'with 100 USD JOD' do
      it 'returns 70.77' do
        c = Currency.new
        c.convert(['100', 'USD', 'JOD']).should == 70.77
      end
    end

    context 'with 100 JOD USD' do
      it 'returns 141.44' do
        c = Currency.new
        c.convert(['100', 'JOD', 'USD']).should == 141.44
      end
    end

    context 'with 100 USD JPY' do
      it 'returns 9478.67' do
        c = Currency.new
        c.convert(['100', 'USD', 'JPY']).should == 9478.67
      end
    end

    context 'with 100 JPY USD' do
      it 'returns 1.06' do
        c = Currency.new
        c.convert(['100', 'JPY', 'USD']).should == 1.06
      end
    end

    context 'with 100 USD GBP' do
      it 'returns 65.59' do
        c = Currency.new
        c.convert(['100', 'USD', 'GBP']).should == 65.59
      end
    end

    context 'with 100 GBP USD' do
      it 'returns 152.48' do
        c = Currency.new
        c.convert(['100', 'GBP', 'USD']).should == 152.48
      end
    end

    context 'with 100 JOD EUR' do
      it 'returns 108.56' do
        c = Currency.new
        c.convert(['100', 'JOD', 'EUR']).should == 108.56
      end
    end

    context 'with 100 EUR JOD' do
      it 'returns 92.24' do
        c = Currency.new
        c.convert(['100', 'EUR', 'JOD']).should == 92.24
      end
    end

    context 'with 100 JOD JPY' do
      it 'returns 13386.88' do
        c = Currency.new
        c.convert(['100', 'JOD', 'JPY']).should == 13386.88
      end
    end

    context 'with 100 JPY JOD' do
      it 'returns 0.75' do
        c = Currency.new
        c.convert(['100', 'JPY', 'JOD']).should == 0.75
      end
    end

    context 'with 100 JOD GBP' do
      it 'returns 92.73' do
        c = Currency.new
        c.convert(['100', 'JOD', 'GBP']).should == 92.73
      end
    end

    context 'with 100 GBP JOD' do
      it 'returns 107.94' do
        c = Currency.new
        c.convert(['100', 'GBP', 'JOD']).should == 107.94
      end
    end

    context 'with 100 JPY EUR' do
      it 'returns 0.81' do
        c = Currency.new
        c.convert(['100', 'JPY', 'EUR']).should == 0.81
      end
    end

    context 'with 100 EUR JPY' do
      it 'returns 12345.68' do
        c = Currency.new
        c.convert(['100', 'EUR', 'JPY']).should == 12345.68
      end
    end

    context 'with 100 JPY GBP' do
      it 'returns 0.69' do
        c = Currency.new
        c.convert(['100', 'JPY', 'GBP']).should == 0.69
      end
    end

    context 'with 100 GBP JPY' do
      it 'returns 14450.87' do
        c = Currency.new
        c.convert(['100', 'GBP', 'JPY']).should == 14450.87
      end
    end

    context 'with 100 GBP EUR' do
      it 'returns 117.05' do
        c = Currency.new
        c.convert(['100', 'GBP', 'EUR']).should == 117.05
      end
    end

    context 'with 100 EUR GBP' do
      it 'returns 85.44' do
        c = Currency.new
        c.convert(['100', 'EUR', 'GBP']).should == 85.44
      end
    end
  end

  describe '#show' do
    it "returns ['JOD', 'JPY', 'USD', 'EUR', 'GBP']" do
      c = Currency.new
      c.show.should == ['JOD', 'JPY', 'USD', 'EUR', 'GBP']
    end
  end
end
