defmodule InverseCaptchaTest do
  use ExUnit.Case

  test ~s{solve("1122") returns 3} do
    assert InverseCaptcha.solve("1122") == 3
  end

  test ~s{solve("1111") returns 4} do
    assert InverseCaptcha.solve("1111") == 4
  end

  test ~s{solve("1234") returns 0} do
    assert InverseCaptcha.solve("1234") == 0
  end

  test ~s{solve("91212120") returns 9} do
    assert InverseCaptcha.solve("91212129") == 9
  end
end
