module RequireHelpers
  macro require_src(path)
    {{run "./require_helpers/require_wd", "src/" + path, __DIR__}}
  end

  macro require_spec(path)
    {{run "./require_helpers/require_wd", "spec/" + path, __DIR__}}
  end

  macro require_wd(path)
    {{run "./require_helpers/require_wd", path, __DIR__}}
  end
end

include RequireHelpers
