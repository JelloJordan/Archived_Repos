---
nom-mas: ий
nom-neu: ое
nom-fem: ая
nom-plu: ие
gen-mas-neu: ого
gen-fem: ой
gen-plu: их
dat-mas-neu: ому
dat-fem: ой
dat-plu: им
acc-mas-ani: ого
acc-mas-ina: ий
acc-neu: ое
acc-fem: ую
acc-plu-ani: их 
acc-plu-ina: ие
ins-mas-neu: им
ins-fem: ой
ins-plu: ими
pre-mas-neu: ом
pre-fem: ой
pre-plu: их
---
## -ий

| | Masculine | Neuter | Feminine | Plural |
|-|-|-|-|-|
|**Nominative**|-`=this.nom-mas`|-`=this.nom-neu`|-`=this.nom-fem`|-`=this.nom-plu`|
|**Genitive**|-`=this.gen-mas-neu`|-`=this.gen-mas-neu`|-`=this.gen-fem`|-`=this.gen-plu`|
|**Dative**|-`=this.dat-mas-neu`|-`=this.dat-mas-neu`|-`=this.dat-fem`|-`=this.dat-plu`|
|**Acc. (Animate)**|-`=this.acc-mas-ani`|-`=this.acc-neu`|-`=this.acc-fem`|-`=this.acc-plu-ani`|
|**Acc. (Inanimate)**|-`=this.acc-mas-ina`|-`=this.acc-neu`|-`=this.acc-fem`|-`=this.acc-plu-ina`|
|**Instrumental**|-`=this.ins-mas-neu`|-`=this.ins-mas-neu`|-`=this.ins-fem`|-`=this.ins-plu`|
|**Prepositional**|-`=this.pre-mas-neu`|-`=this.pre-mas-neu`|-`=this.pre-fem`|-`=this.pre-plu`|
```dataview
TABLE WITHOUT ID
file.link AS "Adjectives"
FROM "Vocab/Adjectives"
WHERE class = this.file.name
```