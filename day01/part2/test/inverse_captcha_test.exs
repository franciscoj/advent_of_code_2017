defmodule InverseCaptchaTest do
  use ExUnit.Case

  test ~s{solve("1212") returns 6} do
    assert InverseCaptcha.solve("1212") == 6
  end

  test ~s{solve("1221") returns 0} do
    assert InverseCaptcha.solve("1221") == 0
  end

  test ~s{solve("123425") returns 4} do
    assert InverseCaptcha.solve("123425") == 4
  end

  test ~s{solve("123123") returns 12} do
    assert InverseCaptcha.solve("12131415") == 4
  end
end
