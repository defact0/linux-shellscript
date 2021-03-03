작업개요
----

compare-values는 스크립트 상에서
A 배열값을 기준으로 B 배열에서 포함되지 않는 데이터를 출력하는 예제이다.




예상 결과
---

- A 배열 = "aaa" "bbb" "ccc"
- B 배열 = "aaa" "bbb" "ddd"
- 결과 = 비교결과 A 배열에 없는 데이터 "ddd" 출력




실제 실행결과
---

```shell
[INFO] A,B 비교 시작

── A 데이터 ────────
aaa
bbb
ccc

── B 데이터 ────────
aaa
bbb
ddd

[WARN] A 배열 기준 다른 값= ddd
[INFO] A,B 비교 종료

```



실행방법
---

```shell
sh compare-values.sh
```
- 실행권한이 없으면 실행권한을 추가한다.

  ```shell
  chmod +x compare-values.sh
  ```

  