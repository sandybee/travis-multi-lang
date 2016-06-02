Travis Multi Lang
=================
How run travis tests under many languages

Result
------
in `.travis.yml`:    

* create an environment matrix with one item by language    
* set for each language the global environment variable `LANGUAGE` value    
```yaml
env:
  matrix:
    - LANGUAGE=en_US.UTF-8
    - LANGUAGE=fr_FR.UTF-8
```

* install related language packages in the `before_install` section    
```yaml
before_install:
  - sudo apt-get update && sudo apt-get --reinstall install -qq language-pack-en language-pack-fr
```

see [.travis.yml](/.travis.yml)

License
-------
This project is licensed under the terms of the [MIT License](/LICENSE)
