# run local
> Or you can run local.

## code
```rb
desc "Run local"
task :local_who do
  run_locally do
    puts capture(:whoami)
  end
end
```
