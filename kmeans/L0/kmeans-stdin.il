class Program
{
    function srand
    {
            ceq __temp_1$0x1a6a2b0, seed$0x1a6a070, 0x0:i8
            bnz __temp_1$0x1a6a2b0, __temp_2$0x1a6a2b0
            br __temp_0$0x1a6a2b0
        __temp_2$0x1a6a2b0:
            mov seed$0x1a6a070, 0x1:i8
        __temp_0$0x1a6a2b0:
            sti 0x300000000:i, seed$0x1a6a070
            ret
    }
    function rand
    {
            ldi __temp_3$0x1a6ff90, 0x300000000:i
            mov r$0x1a6ff90, __temp_3$0x1a6ff90
            mul __temp_4$0x1a6ff90, r$0x1a6ff90, 0xFEF3F6F4F3F2F1:i8
            mov r$0x1a6ff90, __temp_4$0x1a6ff90
            sti 0x300000000:i, r$0x1a6ff90
            ret r$0x1a6ff90
    }
    function _output_centroids
    {
            mov npt$0x1a93a50, 0x300000040:i
            call output_q$0x1a1e720, <missing>, 0x2:i8
            call output_char$0x1a1e720, <missing>, 0x20:i1
            call output_char$0x1a1e720, <missing>, 0x63:i1
            call output_char$0x1a1e720, <missing>, 0x65:i1
            call output_char$0x1a1e720, <missing>, 0x6E:i1
            call output_char$0x1a1e720, <missing>, 0x74:i1
            call output_char$0x1a1e720, <missing>, 0x72:i1
            call output_char$0x1a1e720, <missing>, 0x6F:i1
            call output_char$0x1a1e720, <missing>, 0x69:i1
            call output_char$0x1a1e720, <missing>, 0x64:i1
            call output_char$0x1a1e720, <missing>, 0x73:i1
            call output_char$0x1a1e720, <missing>, 0x3A:i1
            call output_char$0x1a1e720, <missing>, 0xA:i8
            mov i$0x1a93a50, 0x0:i8
        __temp_5$0x1a93a50:
            clt __temp_8$0x1a93a50, i$0x1a93a50, 0x2:i8
            bz __temp_8$0x1a93a50, __temp_7$0x1a93a50
            ldelem __temp_9$0x1a995d0, cx$0x1a1e720, i$0x1a93a50
            call output_q$0x1a1e720, <missing>, __temp_9$0x1a995d0
            call output_char$0x1a1e720, <missing>, 0x20:i1
            ldelem __temp_10$0x1a995d0, cy$0x1a1e720, i$0x1a93a50
            call output_q$0x1a1e720, <missing>, __temp_10$0x1a995d0
            call output_char$0x1a1e720, <missing>, 0x20:i1
            ldelem __temp_11$0x1a995d0, cz$0x1a1e720, i$0x1a93a50
            call output_q$0x1a1e720, <missing>, __temp_11$0x1a995d0
            call output_char$0x1a1e720, <missing>, 0x20:i1
            ldelem __temp_12$0x1a995d0, cw$0x1a1e720, i$0x1a93a50
            call output_q$0x1a1e720, <missing>, __temp_12$0x1a995d0
            ceq __temp_14$0x1a995d0, with_point_num$0x1a93820, 0x1:i8
            bnz __temp_14$0x1a995d0, __temp_15$0x1a995d0
            br __temp_13$0x1a995d0
        __temp_15$0x1a995d0:
            call output_char$0x1a1e720, <missing>, 0x2F:i1
            ldelem __temp_16$0x1a9bfe0, npt$0x1a93a50, i$0x1a93a50
            call output_q$0x1a1e720, <missing>, __temp_16$0x1a9bfe0
        __temp_13$0x1a995d0:
            call output_char$0x1a1e720, <missing>, 0xA:i8
        __temp_6$0x1a93a50:
            add __temp_17$0x1a93a50, i$0x1a93a50, 0x1:i8
            mov i$0x1a93a50, __temp_17$0x1a93a50
            br __temp_5$0x1a93a50
        __temp_7$0x1a93a50:
            call output_char$0x1a1e720, <missing>, 0xA:i8
            ret
    }
    function output_centroids_with_point_num
    {
            call _output_centroids$0x1a1e720, <missing>, 0x1:i8
            ret
    }
    function output_centroids
    {
            call _output_centroids$0x1a1e720, <missing>, 0x0:i8
            ret
    }
    function kmeans_finish
    {
            call output_centroids$0x1a1e720, <missing>
            ret
    }
    function on_recluster_finished
    {
            clt __temp_19$0x1af34f0, expected_iter$0x1af32d0, iter$0x1a1e720
            bnz __temp_19$0x1af34f0, __temp_20$0x1af34f0
            br __temp_18$0x1af34f0
        __temp_20$0x1af34f0:
            asm "exit:ad"
        __temp_18$0x1af34f0:
            cgt __temp_22$0x1af34f0, expected_iter$0x1af32d0, iter$0x1a1e720
            bnz __temp_22$0x1af34f0, __temp_23$0x1af34f0
            br __temp_21$0x1af34f0
        __temp_23$0x1af34f0:
            asm "exit:a"
        __temp_21$0x1af34f0:
            mov i$0x1af34f0, 0x0:i8
        __temp_24$0x1af34f0:
            clt __temp_27$0x1af34f0, i$0x1af34f0, 0x200:i8
            bz __temp_27$0x1af34f0, __temp_26$0x1af34f0
            ldelem __temp_29$0x1af8220, trigger$0x1a1e720, i$0x1af34f0
            cne __temp_30$0x1af8220, __temp_29$0x1af8220, 0x2:i8
            bnz __temp_30$0x1af8220, __temp_31$0x1af8220
            br __temp_28$0x1af8220
        __temp_31$0x1af8220:
            asm "exit:a"
        __temp_28$0x1af8220:
        __temp_25$0x1af34f0:
            add __temp_32$0x1af34f0, i$0x1af34f0, 0x200:i8
            mov i$0x1af34f0, __temp_32$0x1af34f0
            br __temp_24$0x1af34f0
        __temp_26$0x1af34f0:
            mov sumx$0x1af34f0, 0x300000000:i
            mov sumy$0x1af34f0, 0x300000010:i
            mov sumz$0x1af34f0, 0x300000020:i
            mov sumw$0x1af34f0, 0x300000030:i
            mov npt$0x1af34f0, 0x300000040:i
            mov i$0x1af34f0, 0x0:i8
        __temp_33$0x1af34f0:
            clt __temp_36$0x1af34f0, i$0x1af34f0, 0x2:i8
            bz __temp_36$0x1af34f0, __temp_35$0x1af34f0
            stelem sumx$0x1af34f0, i$0x1af34f0, 0x0:i8
            stelem sumy$0x1af34f0, i$0x1af34f0, 0x0:i8
            stelem sumz$0x1af34f0, i$0x1af34f0, 0x0:i8
            stelem sumw$0x1af34f0, i$0x1af34f0, 0x0:i8
            stelem npt$0x1af34f0, i$0x1af34f0, 0x0:i8
        __temp_34$0x1af34f0:
            add __temp_37$0x1af34f0, i$0x1af34f0, 0x1:i8
            mov i$0x1af34f0, __temp_37$0x1af34f0
            br __temp_33$0x1af34f0
        __temp_35$0x1af34f0:
            mov n_parts$0x1af34f0, 0x1:i8
            mov j$0x1af34f0, 0x0:i8
        __temp_38$0x1af34f0:
            clt __temp_41$0x1af34f0, j$0x1af34f0, n_parts$0x1af34f0
            bz __temp_41$0x1af34f0, __temp_40$0x1af34f0
            mul __temp_43$0x1b00040, 0x202:i8, j$0x1af34f0
            ldelema __temp_42$0x1b00040, lcx$0x1a1e720, __temp_43$0x1b00040
            mov tlcx$0x1af34f0, __temp_42$0x1b00040
            mul __temp_45$0x1b00040, 0x202:i8, j$0x1af34f0
            ldelema __temp_44$0x1b00040, lcy$0x1a1e720, __temp_45$0x1b00040
            mov tlcy$0x1af34f0, __temp_44$0x1b00040
            mul __temp_47$0x1b00040, 0x202:i8, j$0x1af34f0
            ldelema __temp_46$0x1b00040, lcz$0x1a1e720, __temp_47$0x1b00040
            mov tlcz$0x1af34f0, __temp_46$0x1b00040
            mul __temp_49$0x1b00040, 0x202:i8, j$0x1af34f0
            ldelema __temp_48$0x1b00040, lcw$0x1a1e720, __temp_49$0x1b00040
            mov tlcw$0x1af34f0, __temp_48$0x1b00040
            mul __temp_51$0x1b00040, 0x202:i8, j$0x1af34f0
            ldelema __temp_50$0x1b00040, lcn$0x1a1e720, __temp_51$0x1b00040
            mov tlcn$0x1af34f0, __temp_50$0x1b00040
            mov i$0x1af34f0, 0x0:i8
        __temp_52$0x1b00040:
            clt __temp_55$0x1b00040, i$0x1af34f0, 0x2:i8
            bz __temp_55$0x1b00040, __temp_54$0x1b00040
            ldelem __temp_56$0x1b04790, sumx$0x1af34f0, i$0x1af34f0
            ldelem __temp_57$0x1b04790, tlcx$0x1af34f0, i$0x1af34f0
            add __temp_58$0x1b04790, __temp_56$0x1b04790, __temp_57$0x1b04790
            stelem sumx$0x1af34f0, i$0x1af34f0, __temp_58$0x1b04790
            ldelem __temp_59$0x1b04790, sumy$0x1af34f0, i$0x1af34f0
            ldelem __temp_60$0x1b04790, tlcy$0x1af34f0, i$0x1af34f0
            add __temp_61$0x1b04790, __temp_59$0x1b04790, __temp_60$0x1b04790
            stelem sumy$0x1af34f0, i$0x1af34f0, __temp_61$0x1b04790
            ldelem __temp_62$0x1b04790, sumz$0x1af34f0, i$0x1af34f0
            ldelem __temp_63$0x1b04790, tlcz$0x1af34f0, i$0x1af34f0
            add __temp_64$0x1b04790, __temp_62$0x1b04790, __temp_63$0x1b04790
            stelem sumz$0x1af34f0, i$0x1af34f0, __temp_64$0x1b04790
            ldelem __temp_65$0x1b04790, sumw$0x1af34f0, i$0x1af34f0
            ldelem __temp_66$0x1b04790, tlcw$0x1af34f0, i$0x1af34f0
            add __temp_67$0x1b04790, __temp_65$0x1b04790, __temp_66$0x1b04790
            stelem sumw$0x1af34f0, i$0x1af34f0, __temp_67$0x1b04790
            ldelem __temp_68$0x1b04790, npt$0x1af34f0, i$0x1af34f0
            ldelem __temp_69$0x1b04790, tlcn$0x1af34f0, i$0x1af34f0
            add __temp_70$0x1b04790, __temp_68$0x1b04790, __temp_69$0x1b04790
            stelem npt$0x1af34f0, i$0x1af34f0, __temp_70$0x1b04790
        __temp_53$0x1b00040:
            add __temp_71$0x1b00040, i$0x1af34f0, 0x1:i8
            mov i$0x1af34f0, __temp_71$0x1b00040
            br __temp_52$0x1b00040
        __temp_54$0x1b00040:
        __temp_39$0x1af34f0:
            add __temp_72$0x1af34f0, j$0x1af34f0, 0x1:i8
            mov j$0x1af34f0, __temp_72$0x1af34f0
            br __temp_38$0x1af34f0
        __temp_40$0x1af34f0:
            mov i$0x1af34f0, 0x0:i8
        __temp_73$0x1af34f0:
            clt __temp_76$0x1af34f0, i$0x1af34f0, 0x2:i8
            bz __temp_76$0x1af34f0, __temp_75$0x1af34f0
            ldelem __temp_78$0x1b0ae40, npt$0x1af34f0, i$0x1af34f0
            cne __temp_79$0x1b0ae40, __temp_78$0x1b0ae40, 0x0:i8
            bnz __temp_79$0x1b0ae40, __temp_80$0x1b0ae40
            stelem cx$0x1a1e720, i$0x1af34f0, 0x7FFFFFFFFFFFFFF:i8
            stelem cy$0x1a1e720, i$0x1af34f0, 0x7FFFFFFFFFFFFFF:i8
            stelem cz$0x1a1e720, i$0x1af34f0, 0x7FFFFFFFFFFFFFF:i8
            stelem cw$0x1a1e720, i$0x1af34f0, 0x7FFFFFFFFFFFFFF:i8
            br __temp_77$0x1b0ae40
        __temp_80$0x1b0ae40:
            ldelem __temp_81$0x1b0b520, sumx$0x1af34f0, i$0x1af34f0
            ldelem __temp_82$0x1b0b520, npt$0x1af34f0, i$0x1af34f0
            div __temp_83$0x1b0b520, __temp_81$0x1b0b520, __temp_82$0x1b0b520
            stelem cx$0x1a1e720, i$0x1af34f0, __temp_83$0x1b0b520
            ldelem __temp_84$0x1b0b520, sumy$0x1af34f0, i$0x1af34f0
            ldelem __temp_85$0x1b0b520, npt$0x1af34f0, i$0x1af34f0
            div __temp_86$0x1b0b520, __temp_84$0x1b0b520, __temp_85$0x1b0b520
            stelem cy$0x1a1e720, i$0x1af34f0, __temp_86$0x1b0b520
            ldelem __temp_87$0x1b0b520, sumz$0x1af34f0, i$0x1af34f0
            ldelem __temp_88$0x1b0b520, npt$0x1af34f0, i$0x1af34f0
            div __temp_89$0x1b0b520, __temp_87$0x1b0b520, __temp_88$0x1b0b520
            stelem cz$0x1a1e720, i$0x1af34f0, __temp_89$0x1b0b520
            ldelem __temp_90$0x1b0b520, sumw$0x1af34f0, i$0x1af34f0
            ldelem __temp_91$0x1b0b520, npt$0x1af34f0, i$0x1af34f0
            div __temp_92$0x1b0b520, __temp_90$0x1b0b520, __temp_91$0x1b0b520
            stelem cw$0x1a1e720, i$0x1af34f0, __temp_92$0x1b0b520
        __temp_77$0x1b0ae40:
        __temp_74$0x1af34f0:
            add __temp_93$0x1af34f0, i$0x1af34f0, 0x1:i8
            mov i$0x1af34f0, __temp_93$0x1af34f0
            br __temp_73$0x1af34f0
        __temp_75$0x1af34f0:
            call output_char$0x1a1e720, <missing>, 0x69:i1
            call output_char$0x1a1e720, <missing>, 0x74:i1
            call output_char$0x1a1e720, <missing>, 0x65:i1
            call output_char$0x1a1e720, <missing>, 0x72:i1
            call output_char$0x1a1e720, <missing>, 0x3A:i1
            call output_q$0x1a1e720, <missing>, iter$0x1a1e720
            call output_char$0x1a1e720, <missing>, 0xA:i8
            add __temp_94$0x1af34f0, iter$0x1a1e720, 0x1:i8
            mov iter$0x1a1e720, __temp_94$0x1af34f0
            clt __temp_96$0x1af34f0, iter$0x1a1e720, 0x6:i8
            bnz __temp_96$0x1af34f0, __temp_97$0x1af34f0
            call kmeans_finish$0x1a1e720, <missing>
            br __temp_95$0x1af34f0
        __temp_97$0x1af34f0:
            call start_iteration$0x1a1e720, <missing>
        __temp_95$0x1af34f0:
            asm "exit:cd"
    }
    function recluster_runner
    {
            div __temp_98$0x1b56600, start$0x1b56360, 0xA:i8
            mov partid$0x1b56600, __temp_98$0x1b56600
            mul __temp_100$0x1b56600, 0x202:i8, partid$0x1b56600
            ldelema __temp_99$0x1b56600, lcx$0x1a1e720, __temp_100$0x1b56600
            mov mylcx$0x1b56600, __temp_99$0x1b56600
            mul __temp_102$0x1b56600, 0x202:i8, partid$0x1b56600
            ldelema __temp_101$0x1b56600, lcy$0x1a1e720, __temp_102$0x1b56600
            mov mylcy$0x1b56600, __temp_101$0x1b56600
            mul __temp_104$0x1b56600, 0x202:i8, partid$0x1b56600
            ldelema __temp_103$0x1b56600, lcz$0x1a1e720, __temp_104$0x1b56600
            mov mylcz$0x1b56600, __temp_103$0x1b56600
            mul __temp_106$0x1b56600, 0x202:i8, partid$0x1b56600
            ldelema __temp_105$0x1b56600, lcw$0x1a1e720, __temp_106$0x1b56600
            mov mylcw$0x1b56600, __temp_105$0x1b56600
            mul __temp_108$0x1b56600, 0x202:i8, partid$0x1b56600
            ldelema __temp_107$0x1b56600, lcn$0x1a1e720, __temp_108$0x1b56600
            mov mylcn$0x1b56600, __temp_107$0x1b56600
            mov i$0x1b56600, 0x0:i8
        __temp_109$0x1b56600:
            clt __temp_112$0x1b56600, i$0x1b56600, 0x2:i8
            bz __temp_112$0x1b56600, __temp_111$0x1b56600
            stelem mylcx$0x1b56600, i$0x1b56600, 0x0:i8
            stelem mylcy$0x1b56600, i$0x1b56600, 0x0:i8
            stelem mylcz$0x1b56600, i$0x1b56600, 0x0:i8
            stelem mylcw$0x1b56600, i$0x1b56600, 0x0:i8
            stelem mylcn$0x1b56600, i$0x1b56600, 0x0:i8
        __temp_110$0x1b56600:
            add __temp_113$0x1b56600, i$0x1b56600, 0x1:i8
            mov i$0x1b56600, __temp_113$0x1b56600
            br __temp_109$0x1b56600
        __temp_111$0x1b56600:
            mov i$0x1b56600, start$0x1b56360
        __temp_114$0x1b56600:
            clt __temp_117$0x1b56600, i$0x1b56600, end$0x1b56360
            bz __temp_117$0x1b56600, __temp_116$0x1b56600
            ldelem __temp_118$0x1b609f0, x$0x1a1e720, i$0x1b56600
            mov xt$0x1b56600, __temp_118$0x1b609f0
            ldelem __temp_119$0x1b609f0, y$0x1a1e720, i$0x1b56600
            mov yt$0x1b56600, __temp_119$0x1b609f0
            ldelem __temp_120$0x1b609f0, z$0x1a1e720, i$0x1b56600
            mov zt$0x1b56600, __temp_120$0x1b609f0
            ldelem __temp_121$0x1b609f0, w$0x1a1e720, i$0x1b56600
            mov wt$0x1b56600, __temp_121$0x1b609f0
            mov j$0x1b56600, 0x0:i8
            ldelem __temp_122$0x1b609f0, cx$0x1a1e720, j$0x1b56600
            sub __temp_123$0x1b609f0, xt$0x1b56600, __temp_122$0x1b609f0
            mov reg1$0x1a1e720, __temp_123$0x1b609f0
            ldelem __temp_124$0x1b609f0, cy$0x1a1e720, j$0x1b56600
            sub __temp_125$0x1b609f0, yt$0x1b56600, __temp_124$0x1b609f0
            mov reg2$0x1a1e720, __temp_125$0x1b609f0
            ldelem __temp_126$0x1b609f0, cz$0x1a1e720, j$0x1b56600
            sub __temp_127$0x1b609f0, zt$0x1b56600, __temp_126$0x1b609f0
            mov reg3$0x1a1e720, __temp_127$0x1b609f0
            ldelem __temp_128$0x1b609f0, cw$0x1a1e720, j$0x1b56600
            sub __temp_129$0x1b609f0, wt$0x1b56600, __temp_128$0x1b609f0
            mov reg4$0x1a1e720, __temp_129$0x1b609f0
            mul __temp_130$0x1b609f0, reg1$0x1a1e720, reg1$0x1a1e720
            mul __temp_131$0x1b609f0, reg2$0x1a1e720, reg2$0x1a1e720
            add __temp_132$0x1b609f0, __temp_130$0x1b609f0, __temp_131$0x1b609f0
            mul __temp_133$0x1b609f0, reg3$0x1a1e720, reg3$0x1a1e720
            add __temp_134$0x1b609f0, __temp_132$0x1b609f0, __temp_133$0x1b609f0
            mul __temp_135$0x1b609f0, reg4$0x1a1e720, reg4$0x1a1e720
            add __temp_136$0x1b609f0, __temp_134$0x1b609f0, __temp_135$0x1b609f0
            lda __temp_137$0x1b609f0, d$0x1b56600
            sti __temp_137$0x1b609f0, __temp_136$0x1b609f0
            mov mind$0x1b56600, d$0x1b56600
            mov mini$0x1b56600, j$0x1b56600
            mov j$0x1b56600, 0x1:i8
        __temp_138$0x1b609f0:
            clt __temp_141$0x1b609f0, j$0x1b56600, 0x2:i8
            bz __temp_141$0x1b609f0, __temp_140$0x1b609f0
            ldelem __temp_142$0x1b66d50, cx$0x1a1e720, j$0x1b56600
            sub __temp_143$0x1b66d50, xt$0x1b56600, __temp_142$0x1b66d50
            mov reg1$0x1a1e720, __temp_143$0x1b66d50
            ldelem __temp_144$0x1b66d50, cy$0x1a1e720, j$0x1b56600
            sub __temp_145$0x1b66d50, yt$0x1b56600, __temp_144$0x1b66d50
            mov reg2$0x1a1e720, __temp_145$0x1b66d50
            ldelem __temp_146$0x1b66d50, cz$0x1a1e720, j$0x1b56600
            sub __temp_147$0x1b66d50, zt$0x1b56600, __temp_146$0x1b66d50
            mov reg3$0x1a1e720, __temp_147$0x1b66d50
            ldelem __temp_148$0x1b66d50, cw$0x1a1e720, j$0x1b56600
            sub __temp_149$0x1b66d50, wt$0x1b56600, __temp_148$0x1b66d50
            mov reg4$0x1a1e720, __temp_149$0x1b66d50
            mul __temp_150$0x1b66d50, reg1$0x1a1e720, reg1$0x1a1e720
            mul __temp_151$0x1b66d50, reg2$0x1a1e720, reg2$0x1a1e720
            add __temp_152$0x1b66d50, __temp_150$0x1b66d50, __temp_151$0x1b66d50
            mul __temp_153$0x1b66d50, reg3$0x1a1e720, reg3$0x1a1e720
            add __temp_154$0x1b66d50, __temp_152$0x1b66d50, __temp_153$0x1b66d50
            mul __temp_155$0x1b66d50, reg4$0x1a1e720, reg4$0x1a1e720
            add __temp_156$0x1b66d50, __temp_154$0x1b66d50, __temp_155$0x1b66d50
            lda __temp_157$0x1b66d50, d$0x1b56600
            sti __temp_157$0x1b66d50, __temp_156$0x1b66d50
            clt __temp_159$0x1b66d50, d$0x1b56600, mind$0x1b56600
            bnz __temp_159$0x1b66d50, __temp_160$0x1b66d50
            br __temp_158$0x1b66d50
        __temp_160$0x1b66d50:
            mov mind$0x1b56600, d$0x1b56600
            mov mini$0x1b56600, j$0x1b56600
        __temp_158$0x1b66d50:
        __temp_139$0x1b609f0:
            add __temp_161$0x1b609f0, j$0x1b56600, 0x1:i8
            mov j$0x1b56600, __temp_161$0x1b609f0
            br __temp_138$0x1b609f0
        __temp_140$0x1b609f0:
            ldelem __temp_162$0x1b609f0, mylcn$0x1b56600, mini$0x1b56600
            add __temp_163$0x1b609f0, __temp_162$0x1b609f0, 0x1:i8
            stelem mylcn$0x1b56600, mini$0x1b56600, __temp_163$0x1b609f0
            ldelem __temp_164$0x1b609f0, mylcx$0x1b56600, mini$0x1b56600
            add __temp_165$0x1b609f0, __temp_164$0x1b609f0, xt$0x1b56600
            stelem mylcx$0x1b56600, mini$0x1b56600, __temp_165$0x1b609f0
            ldelem __temp_166$0x1b609f0, mylcy$0x1b56600, mini$0x1b56600
            add __temp_167$0x1b609f0, __temp_166$0x1b609f0, yt$0x1b56600
            stelem mylcy$0x1b56600, mini$0x1b56600, __temp_167$0x1b609f0
            ldelem __temp_168$0x1b609f0, mylcz$0x1b56600, mini$0x1b56600
            add __temp_169$0x1b609f0, __temp_168$0x1b609f0, zt$0x1b56600
            stelem mylcz$0x1b56600, mini$0x1b56600, __temp_169$0x1b609f0
            ldelem __temp_170$0x1b609f0, mylcw$0x1b56600, mini$0x1b56600
            add __temp_171$0x1b609f0, __temp_170$0x1b609f0, wt$0x1b56600
            stelem mylcw$0x1b56600, mini$0x1b56600, __temp_171$0x1b609f0
        __temp_115$0x1b56600:
            add __temp_172$0x1b56600, i$0x1b56600, 0x1:i8
            mov i$0x1b56600, __temp_172$0x1b56600
            br __temp_114$0x1b56600
        __temp_116$0x1b56600:
            div __temp_173$0x1b56600, start$0x1b56360, 0xA:i8
            mul __temp_174$0x1b56600, __temp_173$0x1b56600, 0x200:i8
            stelem trigger$0x1a1e720, __temp_174$0x1b56600, 0x2:i8
            asm "exit:cd"
    }
    function start_iteration
    {
            mov i$0x1baec30, 0x0:i8
        __temp_175$0x1baec30:
            clt __temp_178$0x1baec30, i$0x1baec30, 0xA:i8
            bz __temp_178$0x1baec30, __temp_177$0x1baec30
            div __temp_179$0x1bb0630, i$0x1baec30, 0xA:i8
            mul __temp_180$0x1bb0630, __temp_179$0x1bb0630, 0x200:i8
            stelem trigger$0x1a1e720, __temp_180$0x1bb0630, 0x0:i8
            mul __temp_181$0x1bb0630, 0x202:i8, i$0x1baec30
            div __temp_182$0x1bb0630, __temp_181$0x1bb0630, 0xA:i8
            mov tmp1$0x1baec30, __temp_182$0x1bb0630
            add __temp_183$0x1bb0630, tmp1$0x1baec30, 0x2:i8
            add __temp_184$0x1bb0630, __temp_183$0x1bb0630, 0x200:i8
            mov tmp2$0x1baec30, __temp_184$0x1bb0630
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xf:msq, 0x200001010:msq"
            add __temp_190$0x1bb0630, i$0x1baec30, 0xA:i8
            ldelema __temp_188$0x1bb0630, x$0x1a1e720, i$0x1baec30
            sub __temp_189$0x1bb0630, __temp_190$0x1bb0630, i$0x1baec30
            mul __temp_189$0x1bb0630, 0x8:i, __temp_189$0x1bb0630
            sti 0x200001018:i, __temp_188$0x1bb0630
            sti 0x200001020:i, __temp_189$0x1bb0630
            add __temp_193$0x1bb0630, i$0x1baec30, 0xA:i8
            ldelema __temp_191$0x1bb0630, y$0x1a1e720, i$0x1baec30
            sub __temp_192$0x1bb0630, __temp_193$0x1bb0630, i$0x1baec30
            mul __temp_192$0x1bb0630, 0x8:i, __temp_192$0x1bb0630
            sti 0x200001028:i, __temp_191$0x1bb0630
            sti 0x200001030:i, __temp_192$0x1bb0630
            add __temp_196$0x1bb0630, i$0x1baec30, 0xA:i8
            ldelema __temp_194$0x1bb0630, z$0x1a1e720, i$0x1baec30
            sub __temp_195$0x1bb0630, __temp_196$0x1bb0630, i$0x1baec30
            mul __temp_195$0x1bb0630, 0x8:i, __temp_195$0x1bb0630
            sti 0x200001038:i, __temp_194$0x1bb0630
            sti 0x200001040:i, __temp_195$0x1bb0630
            add __temp_199$0x1bb0630, i$0x1baec30, 0xA:i8
            ldelema __temp_197$0x1bb0630, w$0x1a1e720, i$0x1baec30
            sub __temp_198$0x1bb0630, __temp_199$0x1bb0630, i$0x1baec30
            mul __temp_198$0x1bb0630, 0x8:i, __temp_198$0x1bb0630
            sti 0x200001048:i, __temp_197$0x1bb0630
            sti 0x200001050:i, __temp_198$0x1bb0630
            add __temp_202$0x1bb0630, i$0x1baec30, 0xA:i8
            ldelema __temp_200$0x1bb0630, ci$0x1a1e720, i$0x1baec30
            sub __temp_201$0x1bb0630, __temp_202$0x1bb0630, i$0x1baec30
            mul __temp_201$0x1bb0630, 0x8:i, __temp_201$0x1bb0630
            sti 0x200001058:i, __temp_200$0x1bb0630
            sti 0x200001060:i, __temp_201$0x1bb0630
            ldelema __temp_203$0x1bb0630, cx$0x1a1e720, 0x0:i8
            sub __temp_204$0x1bb0630, 0x2:i8, 0x0:i8
            mul __temp_204$0x1bb0630, 0x8:i, __temp_204$0x1bb0630
            sti 0x200001068:i, __temp_203$0x1bb0630
            sti 0x200001070:i, __temp_204$0x1bb0630
            ldelema __temp_205$0x1bb0630, cy$0x1a1e720, 0x0:i8
            sub __temp_206$0x1bb0630, 0x2:i8, 0x0:i8
            mul __temp_206$0x1bb0630, 0x8:i, __temp_206$0x1bb0630
            sti 0x200001078:i, __temp_205$0x1bb0630
            sti 0x200001080:i, __temp_206$0x1bb0630
            ldelema __temp_207$0x1bb0630, cz$0x1a1e720, 0x0:i8
            sub __temp_208$0x1bb0630, 0x2:i8, 0x0:i8
            mul __temp_208$0x1bb0630, 0x8:i, __temp_208$0x1bb0630
            sti 0x200001088:i, __temp_207$0x1bb0630
            sti 0x200001090:i, __temp_208$0x1bb0630
            ldelema __temp_209$0x1bb0630, cw$0x1a1e720, 0x0:i8
            sub __temp_210$0x1bb0630, 0x2:i8, 0x0:i8
            mul __temp_210$0x1bb0630, 0x8:i, __temp_210$0x1bb0630
            sti 0x200001098:i, __temp_209$0x1bb0630
            sti 0x2000010A0:i, __temp_210$0x1bb0630
            div __temp_213$0x1bb0630, i$0x1baec30, 0xA:i8
            mul __temp_214$0x1bb0630, __temp_213$0x1bb0630, 0x200:i8
            div __temp_215$0x1bb0630, i$0x1baec30, 0xA:i8
            add __temp_216$0x1bb0630, __temp_215$0x1bb0630, 0x1:i8
            mul __temp_217$0x1bb0630, __temp_216$0x1bb0630, 0x200:i8
            ldelema __temp_211$0x1bb0630, trigger$0x1a1e720, __temp_214$0x1bb0630
            sub __temp_212$0x1bb0630, __temp_217$0x1bb0630, __temp_214$0x1bb0630
            mul __temp_212$0x1bb0630, 0x8:i, __temp_212$0x1bb0630
            sti 0x2000010A8:i, __temp_211$0x1bb0630
            sti 0x2000010B0:i, __temp_212$0x1bb0630
            ldelema __temp_218$0x1bb0630, lcx$0x1a1e720, tmp1$0x1baec30
            sub __temp_219$0x1bb0630, tmp2$0x1baec30, tmp1$0x1baec30
            mul __temp_219$0x1bb0630, 0x8:i, __temp_219$0x1bb0630
            sti 0x2000010B8:i, __temp_218$0x1bb0630
            sti 0x2000010C0:i, __temp_219$0x1bb0630
            ldelema __temp_220$0x1bb0630, lcy$0x1a1e720, tmp1$0x1baec30
            sub __temp_221$0x1bb0630, tmp2$0x1baec30, tmp1$0x1baec30
            mul __temp_221$0x1bb0630, 0x8:i, __temp_221$0x1bb0630
            sti 0x2000010C8:i, __temp_220$0x1bb0630
            sti 0x2000010D0:i, __temp_221$0x1bb0630
            ldelema __temp_222$0x1bb0630, lcz$0x1a1e720, tmp1$0x1baec30
            sub __temp_223$0x1bb0630, tmp2$0x1baec30, tmp1$0x1baec30
            mul __temp_223$0x1bb0630, 0x8:i, __temp_223$0x1bb0630
            sti 0x2000010D8:i, __temp_222$0x1bb0630
            sti 0x2000010E0:i, __temp_223$0x1bb0630
            ldelema __temp_224$0x1bb0630, lcw$0x1a1e720, tmp1$0x1baec30
            sub __temp_225$0x1bb0630, tmp2$0x1baec30, tmp1$0x1baec30
            mul __temp_225$0x1bb0630, 0x8:i, __temp_225$0x1bb0630
            sti 0x2000010E8:i, __temp_224$0x1bb0630
            sti 0x2000010F0:i, __temp_225$0x1bb0630
            ldelema __temp_226$0x1bb0630, lcn$0x1a1e720, tmp1$0x1baec30
            sub __temp_227$0x1bb0630, tmp2$0x1baec30, tmp1$0x1baec30
            mul __temp_227$0x1bb0630, 0x8:i, __temp_227$0x1bb0630
            sti 0x2000010F8:i, __temp_226$0x1bb0630
            sti 0x200001100:i, __temp_227$0x1bb0630
            asm "mov $0x0:msq, 0x200001108:msq"
            asm "mov $__newr0:msq, 0x200001110:msq"
            asm "mov $0x200001000:msq, 0x200001118:msq"
            asm "mov $0x200001010:msq, 0x200001120:msq"
            asm "mov $0x200001108:msq, 0x200001128:msq"
            asm "mov $0x200001110:msq, 0x200001130:msq"
            asm "newr 0x200001118, 0x200001120, 0x200001128, 0x200001130"
            ldi __temp_185$0x1bb0630, 0x100000400:i
            ldi __temp_186$0x1bb0630, 0x100000408:i
            add __temp_187$0x1bb0630, __temp_185$0x1bb0630, __temp_186$0x1bb0630
            lda __temp_228$0x1bb0630, recluster_runner$0x1a1e720
            sub __temp_187$0x1bb0630, __temp_187$0x1bb0630, 0x8:i8
            sti __temp_187$0x1bb0630, __temp_228$0x1bb0630
            sub __temp_187$0x1bb0630, __temp_187$0x1bb0630, 0x8:i8
            sti __temp_187$0x1bb0630, 0x10:i8
            add __temp_229$0x1bb0630, i$0x1baec30, 0xA:i8
            sub __temp_187$0x1bb0630, __temp_187$0x1bb0630, 0x8:i8
            sti __temp_187$0x1bb0630, __temp_229$0x1bb0630
            sub __temp_187$0x1bb0630, __temp_187$0x1bb0630, 0x8:i8
            sti __temp_187$0x1bb0630, i$0x1baec30
        __temp_176$0x1baec30:
            add __temp_230$0x1baec30, i$0x1baec30, 0xA:i8
            mov i$0x1baec30, __temp_230$0x1baec30
            br __temp_175$0x1baec30
        __temp_177$0x1baec30:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            lda __temp_234$0x1baec30, iter$0x1a1e720
            mov __temp_235$0x1baec30, 0x8:i
            sti 0x200001018:i, __temp_234$0x1baec30
            sti 0x200001020:i, __temp_235$0x1baec30
            ldelema __temp_236$0x1baec30, cx$0x1a1e720, 0x0:i8
            sub __temp_237$0x1baec30, 0x2:i8, 0x0:i8
            mul __temp_237$0x1baec30, 0x8:i, __temp_237$0x1baec30
            sti 0x200001028:i, __temp_236$0x1baec30
            sti 0x200001030:i, __temp_237$0x1baec30
            ldelema __temp_238$0x1baec30, cy$0x1a1e720, 0x0:i8
            sub __temp_239$0x1baec30, 0x2:i8, 0x0:i8
            mul __temp_239$0x1baec30, 0x8:i, __temp_239$0x1baec30
            sti 0x200001038:i, __temp_238$0x1baec30
            sti 0x200001040:i, __temp_239$0x1baec30
            ldelema __temp_240$0x1baec30, cz$0x1a1e720, 0x0:i8
            sub __temp_241$0x1baec30, 0x2:i8, 0x0:i8
            mul __temp_241$0x1baec30, 0x8:i, __temp_241$0x1baec30
            sti 0x200001048:i, __temp_240$0x1baec30
            sti 0x200001050:i, __temp_241$0x1baec30
            ldelema __temp_242$0x1baec30, cw$0x1a1e720, 0x0:i8
            sub __temp_243$0x1baec30, 0x2:i8, 0x0:i8
            mul __temp_243$0x1baec30, 0x8:i, __temp_243$0x1baec30
            sti 0x200001058:i, __temp_242$0x1baec30
            sti 0x200001060:i, __temp_243$0x1baec30
            add __temp_246$0x1baec30, 0x2:i8, 0x200:i8
            mul __temp_247$0x1baec30, __temp_246$0x1baec30, 0xA:i8
            div __temp_248$0x1baec30, __temp_247$0x1baec30, 0xA:i8
            ldelema __temp_244$0x1baec30, lcx$0x1a1e720, 0x0:i8
            sub __temp_245$0x1baec30, __temp_248$0x1baec30, 0x0:i8
            mul __temp_245$0x1baec30, 0x8:i, __temp_245$0x1baec30
            sti 0x200001068:i, __temp_244$0x1baec30
            sti 0x200001070:i, __temp_245$0x1baec30
            add __temp_251$0x1baec30, 0x2:i8, 0x200:i8
            mul __temp_252$0x1baec30, __temp_251$0x1baec30, 0xA:i8
            div __temp_253$0x1baec30, __temp_252$0x1baec30, 0xA:i8
            ldelema __temp_249$0x1baec30, lcy$0x1a1e720, 0x0:i8
            sub __temp_250$0x1baec30, __temp_253$0x1baec30, 0x0:i8
            mul __temp_250$0x1baec30, 0x8:i, __temp_250$0x1baec30
            sti 0x200001078:i, __temp_249$0x1baec30
            sti 0x200001080:i, __temp_250$0x1baec30
            add __temp_256$0x1baec30, 0x2:i8, 0x200:i8
            mul __temp_257$0x1baec30, __temp_256$0x1baec30, 0xA:i8
            div __temp_258$0x1baec30, __temp_257$0x1baec30, 0xA:i8
            ldelema __temp_254$0x1baec30, lcz$0x1a1e720, 0x0:i8
            sub __temp_255$0x1baec30, __temp_258$0x1baec30, 0x0:i8
            mul __temp_255$0x1baec30, 0x8:i, __temp_255$0x1baec30
            sti 0x200001088:i, __temp_254$0x1baec30
            sti 0x200001090:i, __temp_255$0x1baec30
            add __temp_261$0x1baec30, 0x2:i8, 0x200:i8
            mul __temp_262$0x1baec30, __temp_261$0x1baec30, 0xA:i8
            div __temp_263$0x1baec30, __temp_262$0x1baec30, 0xA:i8
            ldelema __temp_259$0x1baec30, lcw$0x1a1e720, 0x0:i8
            sub __temp_260$0x1baec30, __temp_263$0x1baec30, 0x0:i8
            mul __temp_260$0x1baec30, 0x8:i, __temp_260$0x1baec30
            sti 0x200001098:i, __temp_259$0x1baec30
            sti 0x2000010A0:i, __temp_260$0x1baec30
            add __temp_266$0x1baec30, 0x2:i8, 0x200:i8
            mul __temp_267$0x1baec30, __temp_266$0x1baec30, 0xA:i8
            div __temp_268$0x1baec30, __temp_267$0x1baec30, 0xA:i8
            ldelema __temp_264$0x1baec30, lcn$0x1a1e720, 0x0:i8
            sub __temp_265$0x1baec30, __temp_268$0x1baec30, 0x0:i8
            mul __temp_265$0x1baec30, 0x8:i, __temp_265$0x1baec30
            sti 0x2000010A8:i, __temp_264$0x1baec30
            sti 0x2000010B0:i, __temp_265$0x1baec30
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_271$0x1baec30, 0xA:i8, 0xA:i8
            add __temp_272$0x1baec30, __temp_271$0x1baec30, 0x1:i8
            mul __temp_273$0x1baec30, __temp_272$0x1baec30, 0x200:i8
            ldelema __temp_269$0x1baec30, trigger$0x1a1e720, 0x0:i8
            sub __temp_270$0x1baec30, __temp_273$0x1baec30, 0x0:i8
            mul __temp_270$0x1baec30, 0x8:i, __temp_270$0x1baec30
            sti 0x2000010C0:i, __temp_269$0x1baec30
            sti 0x2000010C8:i, __temp_270$0x1baec30
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_231$0x1baec30, 0x100000400:i
            ldi __temp_232$0x1baec30, 0x100000408:i
            add __temp_233$0x1baec30, __temp_231$0x1baec30, __temp_232$0x1baec30
            lda __temp_274$0x1baec30, on_recluster_finished$0x1a1e720
            sub __temp_233$0x1baec30, __temp_233$0x1baec30, 0x8:i8
            sti __temp_233$0x1baec30, __temp_274$0x1baec30
            sub __temp_233$0x1baec30, __temp_233$0x1baec30, 0x8:i8
            sti __temp_233$0x1baec30, 0x8:i8
            sub __temp_233$0x1baec30, __temp_233$0x1baec30, 0x8:i8
            sti __temp_233$0x1baec30, iter$0x1a1e720
            ret
    }
    function on_init1_finished
    {
            mov i$0x1bcf7c0, 0x0:i8
        __temp_275$0x1bcf7c0:
            clt __temp_278$0x1bcf7c0, i$0x1bcf7c0, 0x200:i8
            bz __temp_278$0x1bcf7c0, __temp_277$0x1bcf7c0
            ldelem __temp_280$0x1bd0ef0, trigger$0x1a1e720, i$0x1bcf7c0
            cne __temp_281$0x1bd0ef0, __temp_280$0x1bd0ef0, 0x1:i8
            bnz __temp_281$0x1bd0ef0, __temp_282$0x1bd0ef0
            br __temp_279$0x1bd0ef0
        __temp_282$0x1bd0ef0:
            asm "exit:a"
        __temp_279$0x1bd0ef0:
        __temp_276$0x1bcf7c0:
            add __temp_283$0x1bcf7c0, i$0x1bcf7c0, 0x200:i8
            mov i$0x1bcf7c0, __temp_283$0x1bcf7c0
            br __temp_275$0x1bcf7c0
        __temp_277$0x1bcf7c0:
            stelem trigger$0x1a1e720, 0x0:i8, 0x3:i8
            mov i$0x1bcf7c0, 0x0:i8
        __temp_284$0x1bcf7c0:
            clt __temp_287$0x1bcf7c0, i$0x1bcf7c0, 0x2:i8
            bz __temp_287$0x1bcf7c0, __temp_286$0x1bcf7c0
            ldelem __temp_288$0x1bd2d90, x$0x1a1e720, i$0x1bcf7c0
            stelem cx$0x1a1e720, i$0x1bcf7c0, __temp_288$0x1bd2d90
            ldelem __temp_289$0x1bd2d90, y$0x1a1e720, i$0x1bcf7c0
            stelem cy$0x1a1e720, i$0x1bcf7c0, __temp_289$0x1bd2d90
            ldelem __temp_290$0x1bd2d90, z$0x1a1e720, i$0x1bcf7c0
            stelem cz$0x1a1e720, i$0x1bcf7c0, __temp_290$0x1bd2d90
            ldelem __temp_291$0x1bd2d90, w$0x1a1e720, i$0x1bcf7c0
            stelem cw$0x1a1e720, i$0x1bcf7c0, __temp_291$0x1bd2d90
        __temp_285$0x1bcf7c0:
            add __temp_292$0x1bcf7c0, i$0x1bcf7c0, 0x1:i8
            mov i$0x1bcf7c0, __temp_292$0x1bcf7c0
            br __temp_284$0x1bcf7c0
        __temp_286$0x1bcf7c0:
            mov iter$0x1a1e720, 0x0:i8
            call start_iteration$0x1a1e720, <missing>
            asm "exit:cd"
    }
    function init_runner
    {
            call srand$0x1a1e720, <missing>, 0x1:i8
            mov i$0x1be8a80, 0x0:i8
        __temp_293$0x1be8a80:
            clt __temp_296$0x1be8a80, i$0x1be8a80, start$0x1be87e0
            bz __temp_296$0x1be8a80, __temp_295$0x1be8a80
            call input_q$0x1a1e720, __temp_297$0x1bea5c0
            mov t$0x1be8a80, __temp_297$0x1bea5c0
            call input_q$0x1a1e720, __temp_298$0x1bea5c0
            mov t$0x1be8a80, __temp_298$0x1bea5c0
            call input_q$0x1a1e720, __temp_299$0x1bea5c0
            mov t$0x1be8a80, __temp_299$0x1bea5c0
            call input_q$0x1a1e720, __temp_300$0x1bea5c0
            mov t$0x1be8a80, __temp_300$0x1bea5c0
        __temp_294$0x1be8a80:
            add __temp_301$0x1be8a80, i$0x1be8a80, 0x1:i8
            mov i$0x1be8a80, __temp_301$0x1be8a80
            br __temp_293$0x1be8a80
        __temp_295$0x1be8a80:
            mov i$0x1be8a80, start$0x1be87e0
        __temp_302$0x1be8a80:
            clt __temp_305$0x1be8a80, i$0x1be8a80, end$0x1be87e0
            bz __temp_305$0x1be8a80, __temp_304$0x1be8a80
            call input_q$0x1a1e720, __temp_306$0x1bec430
            stelem x$0x1a1e720, i$0x1be8a80, __temp_306$0x1bec430
            call input_q$0x1a1e720, __temp_307$0x1bec430
            stelem y$0x1a1e720, i$0x1be8a80, __temp_307$0x1bec430
            call input_q$0x1a1e720, __temp_308$0x1bec430
            stelem z$0x1a1e720, i$0x1be8a80, __temp_308$0x1bec430
            call input_q$0x1a1e720, __temp_309$0x1bec430
            stelem w$0x1a1e720, i$0x1be8a80, __temp_309$0x1bec430
        __temp_303$0x1be8a80:
            add __temp_310$0x1be8a80, i$0x1be8a80, 0x1:i8
            mov i$0x1be8a80, __temp_310$0x1be8a80
            br __temp_302$0x1be8a80
        __temp_304$0x1be8a80:
            div __temp_311$0x1be8a80, start$0x1be87e0, 0xA:i8
            mul __temp_312$0x1be8a80, __temp_311$0x1be8a80, 0x200:i8
            stelem trigger$0x1a1e720, __temp_312$0x1be8a80, 0x1:i8
            asm "exit:c"
    }
    function init_runner_stdin
    {
            mov i$0x1bff210, 0x0:i8
        __temp_313$0x1bff210:
            clt __temp_316$0x1bff210, i$0x1bff210, start$0x1bfef70
            bz __temp_316$0x1bff210, __temp_315$0x1bff210
            call input_q$0x1a1e720, __temp_317$0x1c007f0
            mov t$0x1bff210, __temp_317$0x1c007f0
            call input_q$0x1a1e720, __temp_318$0x1c007f0
            mov t$0x1bff210, __temp_318$0x1c007f0
            call input_q$0x1a1e720, __temp_319$0x1c007f0
            mov t$0x1bff210, __temp_319$0x1c007f0
            call input_q$0x1a1e720, __temp_320$0x1c007f0
            mov t$0x1bff210, __temp_320$0x1c007f0
        __temp_314$0x1bff210:
            add __temp_321$0x1bff210, i$0x1bff210, 0x1:i8
            mov i$0x1bff210, __temp_321$0x1bff210
            br __temp_313$0x1bff210
        __temp_315$0x1bff210:
            mov i$0x1bff210, start$0x1bfef70
        __temp_322$0x1bff210:
            clt __temp_325$0x1bff210, i$0x1bff210, end$0x1bfef70
            bz __temp_325$0x1bff210, __temp_324$0x1bff210
            call input_q$0x1a1e720, __temp_326$0x1c02690
            stelem x$0x1a1e720, i$0x1bff210, __temp_326$0x1c02690
            call input_q$0x1a1e720, __temp_327$0x1c02690
            stelem y$0x1a1e720, i$0x1bff210, __temp_327$0x1c02690
            call input_q$0x1a1e720, __temp_328$0x1c02690
            stelem z$0x1a1e720, i$0x1bff210, __temp_328$0x1c02690
            call input_q$0x1a1e720, __temp_329$0x1c02690
            stelem w$0x1a1e720, i$0x1bff210, __temp_329$0x1c02690
        __temp_323$0x1bff210:
            add __temp_330$0x1bff210, i$0x1bff210, 0x1:i8
            mov i$0x1bff210, __temp_330$0x1bff210
            br __temp_322$0x1bff210
        __temp_324$0x1bff210:
            mov i$0x1bff210, start$0x1bfef70
        __temp_331$0x1bff210:
            clt __temp_334$0x1bff210, i$0x1bff210, end$0x1bfef70
            bz __temp_334$0x1bff210, __temp_333$0x1bff210
            div __temp_335$0x1c04c60, i$0x1bff210, 0xA:i8
            mul __temp_336$0x1c04c60, __temp_335$0x1c04c60, 0x200:i8
            stelem trigger$0x1a1e720, __temp_336$0x1c04c60, 0x1:i8
        __temp_332$0x1bff210:
            add __temp_337$0x1bff210, i$0x1bff210, 0x1:i8
            mov i$0x1bff210, __temp_337$0x1bff210
            br __temp_331$0x1bff210
        __temp_333$0x1bff210:
            asm "exit:c"
    }
    function init0
    {
            mov i$0x1c29f30, 0x0:i8
        __temp_338$0x1c29f30:
            clt __temp_341$0x1c29f30, i$0x1c29f30, 0xA:i8
            bz __temp_341$0x1c29f30, __temp_340$0x1c29f30
            div __temp_342$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            mul __temp_343$0x1c2b1a0, __temp_342$0x1c2b1a0, 0x200:i8
            stelem trigger$0x1a1e720, __temp_343$0x1c2b1a0, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x5:msq, 0x200001010:msq"
            add __temp_349$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            ldelema __temp_347$0x1c2b1a0, x$0x1a1e720, i$0x1c29f30
            sub __temp_348$0x1c2b1a0, __temp_349$0x1c2b1a0, i$0x1c29f30
            mul __temp_348$0x1c2b1a0, 0x8:i, __temp_348$0x1c2b1a0
            sti 0x200001018:i, __temp_347$0x1c2b1a0
            sti 0x200001020:i, __temp_348$0x1c2b1a0
            add __temp_352$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            ldelema __temp_350$0x1c2b1a0, y$0x1a1e720, i$0x1c29f30
            sub __temp_351$0x1c2b1a0, __temp_352$0x1c2b1a0, i$0x1c29f30
            mul __temp_351$0x1c2b1a0, 0x8:i, __temp_351$0x1c2b1a0
            sti 0x200001028:i, __temp_350$0x1c2b1a0
            sti 0x200001030:i, __temp_351$0x1c2b1a0
            add __temp_355$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            ldelema __temp_353$0x1c2b1a0, z$0x1a1e720, i$0x1c29f30
            sub __temp_354$0x1c2b1a0, __temp_355$0x1c2b1a0, i$0x1c29f30
            mul __temp_354$0x1c2b1a0, 0x8:i, __temp_354$0x1c2b1a0
            sti 0x200001038:i, __temp_353$0x1c2b1a0
            sti 0x200001040:i, __temp_354$0x1c2b1a0
            add __temp_358$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            ldelema __temp_356$0x1c2b1a0, w$0x1a1e720, i$0x1c29f30
            sub __temp_357$0x1c2b1a0, __temp_358$0x1c2b1a0, i$0x1c29f30
            mul __temp_357$0x1c2b1a0, 0x8:i, __temp_357$0x1c2b1a0
            sti 0x200001048:i, __temp_356$0x1c2b1a0
            sti 0x200001050:i, __temp_357$0x1c2b1a0
            div __temp_361$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            mul __temp_362$0x1c2b1a0, __temp_361$0x1c2b1a0, 0x200:i8
            div __temp_363$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            add __temp_364$0x1c2b1a0, __temp_363$0x1c2b1a0, 0x1:i8
            mul __temp_365$0x1c2b1a0, __temp_364$0x1c2b1a0, 0x200:i8
            ldelema __temp_359$0x1c2b1a0, trigger$0x1a1e720, __temp_362$0x1c2b1a0
            sub __temp_360$0x1c2b1a0, __temp_365$0x1c2b1a0, __temp_362$0x1c2b1a0
            mul __temp_360$0x1c2b1a0, 0x8:i, __temp_360$0x1c2b1a0
            sti 0x200001058:i, __temp_359$0x1c2b1a0
            sti 0x200001060:i, __temp_360$0x1c2b1a0
            asm "mov $0x0:msq, 0x200001068:msq"
            asm "mov $__newr0:msq, 0x200001070:msq"
            asm "mov $0x200001000:msq, 0x200001078:msq"
            asm "mov $0x200001010:msq, 0x200001080:msq"
            asm "mov $0x200001068:msq, 0x200001088:msq"
            asm "mov $0x200001070:msq, 0x200001090:msq"
            asm "newr 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_344$0x1c2b1a0, 0x100000400:i
            ldi __temp_345$0x1c2b1a0, 0x100000408:i
            add __temp_346$0x1c2b1a0, __temp_344$0x1c2b1a0, __temp_345$0x1c2b1a0
            lda __temp_366$0x1c2b1a0, init_runner$0x1a1e720
            sub __temp_346$0x1c2b1a0, __temp_346$0x1c2b1a0, 0x8:i8
            sti __temp_346$0x1c2b1a0, __temp_366$0x1c2b1a0
            sub __temp_346$0x1c2b1a0, __temp_346$0x1c2b1a0, 0x8:i8
            sti __temp_346$0x1c2b1a0, 0x10:i8
            add __temp_367$0x1c2b1a0, i$0x1c29f30, 0xA:i8
            sub __temp_346$0x1c2b1a0, __temp_346$0x1c2b1a0, 0x8:i8
            sti __temp_346$0x1c2b1a0, __temp_367$0x1c2b1a0
            sub __temp_346$0x1c2b1a0, __temp_346$0x1c2b1a0, 0x8:i8
            sti __temp_346$0x1c2b1a0, i$0x1c29f30
        __temp_339$0x1c29f30:
            add __temp_368$0x1c29f30, i$0x1c29f30, 0xA:i8
            mov i$0x1c29f30, __temp_368$0x1c29f30
            br __temp_338$0x1c29f30
        __temp_340$0x1c29f30:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            ldelema __temp_372$0x1c29f30, cx$0x1a1e720, 0x0:i8
            sub __temp_373$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_373$0x1c29f30, 0x8:i, __temp_373$0x1c29f30
            sti 0x200001018:i, __temp_372$0x1c29f30
            sti 0x200001020:i, __temp_373$0x1c29f30
            ldelema __temp_374$0x1c29f30, cy$0x1a1e720, 0x0:i8
            sub __temp_375$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_375$0x1c29f30, 0x8:i, __temp_375$0x1c29f30
            sti 0x200001028:i, __temp_374$0x1c29f30
            sti 0x200001030:i, __temp_375$0x1c29f30
            ldelema __temp_376$0x1c29f30, cz$0x1a1e720, 0x0:i8
            sub __temp_377$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_377$0x1c29f30, 0x8:i, __temp_377$0x1c29f30
            sti 0x200001038:i, __temp_376$0x1c29f30
            sti 0x200001040:i, __temp_377$0x1c29f30
            ldelema __temp_378$0x1c29f30, cw$0x1a1e720, 0x0:i8
            sub __temp_379$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_379$0x1c29f30, 0x8:i, __temp_379$0x1c29f30
            sti 0x200001048:i, __temp_378$0x1c29f30
            sti 0x200001050:i, __temp_379$0x1c29f30
            ldelema __temp_380$0x1c29f30, x$0x1a1e720, 0x0:i8
            sub __temp_381$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_381$0x1c29f30, 0x8:i, __temp_381$0x1c29f30
            sti 0x200001058:i, __temp_380$0x1c29f30
            sti 0x200001060:i, __temp_381$0x1c29f30
            ldelema __temp_382$0x1c29f30, y$0x1a1e720, 0x0:i8
            sub __temp_383$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_383$0x1c29f30, 0x8:i, __temp_383$0x1c29f30
            sti 0x200001068:i, __temp_382$0x1c29f30
            sti 0x200001070:i, __temp_383$0x1c29f30
            ldelema __temp_384$0x1c29f30, z$0x1a1e720, 0x0:i8
            sub __temp_385$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_385$0x1c29f30, 0x8:i, __temp_385$0x1c29f30
            sti 0x200001078:i, __temp_384$0x1c29f30
            sti 0x200001080:i, __temp_385$0x1c29f30
            ldelema __temp_386$0x1c29f30, w$0x1a1e720, 0x0:i8
            sub __temp_387$0x1c29f30, 0x2:i8, 0x0:i8
            mul __temp_387$0x1c29f30, 0x8:i, __temp_387$0x1c29f30
            sti 0x200001088:i, __temp_386$0x1c29f30
            sti 0x200001090:i, __temp_387$0x1c29f30
            ldelema __temp_388$0x1c29f30, trigger$0x1a1e720, 0x0:i8
            sub __temp_389$0x1c29f30, 0xA:i8, 0x0:i8
            mul __temp_389$0x1c29f30, 0x8:i, __temp_389$0x1c29f30
            sti 0x200001098:i, __temp_388$0x1c29f30
            sti 0x2000010A0:i, __temp_389$0x1c29f30
            lda __temp_390$0x1c29f30, iter$0x1a1e720
            mov __temp_391$0x1c29f30, 0x8:i
            sti 0x2000010A8:i, __temp_390$0x1c29f30
            sti 0x2000010B0:i, __temp_391$0x1c29f30
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_394$0x1c29f30, 0xA:i8, 0xA:i8
            add __temp_395$0x1c29f30, __temp_394$0x1c29f30, 0x1:i8
            mul __temp_396$0x1c29f30, __temp_395$0x1c29f30, 0x200:i8
            ldelema __temp_392$0x1c29f30, trigger$0x1a1e720, 0x0:i8
            sub __temp_393$0x1c29f30, __temp_396$0x1c29f30, 0x0:i8
            mul __temp_393$0x1c29f30, 0x8:i, __temp_393$0x1c29f30
            sti 0x2000010C0:i, __temp_392$0x1c29f30
            sti 0x2000010C8:i, __temp_393$0x1c29f30
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_369$0x1c29f30, 0x100000400:i
            ldi __temp_370$0x1c29f30, 0x100000408:i
            add __temp_371$0x1c29f30, __temp_369$0x1c29f30, __temp_370$0x1c29f30
            lda __temp_397$0x1c29f30, on_init1_finished$0x1a1e720
            sub __temp_371$0x1c29f30, __temp_371$0x1c29f30, 0x8:i8
            sti __temp_371$0x1c29f30, __temp_397$0x1c29f30
            sub __temp_371$0x1c29f30, __temp_371$0x1c29f30, 0x8:i8
            sti __temp_371$0x1c29f30, 0x0:i8
            asm "exit:c"
    }
    function init0_stdin
    {
            mov i$0x1c57d90, 0x0:i8
        __temp_398$0x1c57d90:
            clt __temp_401$0x1c57d90, i$0x1c57d90, 0xA:i8
            bz __temp_401$0x1c57d90, __temp_400$0x1c57d90
            div __temp_402$0x1c59000, i$0x1c57d90, 0xA:i8
            mul __temp_403$0x1c59000, __temp_402$0x1c59000, 0x200:i8
            stelem trigger$0x1a1e720, __temp_403$0x1c59000, 0x0:i8
        __temp_399$0x1c57d90:
            add __temp_404$0x1c57d90, i$0x1c57d90, 0xA:i8
            mov i$0x1c57d90, __temp_404$0x1c57d90
            br __temp_398$0x1c57d90
        __temp_400$0x1c57d90:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x5:msq, 0x200001010:msq"
            ldelema __temp_408$0x1c57d90, x$0x1a1e720, 0x0:i8
            sub __temp_409$0x1c57d90, 0xA:i8, 0x0:i8
            mul __temp_409$0x1c57d90, 0x8:i, __temp_409$0x1c57d90
            sti 0x200001018:i, __temp_408$0x1c57d90
            sti 0x200001020:i, __temp_409$0x1c57d90
            ldelema __temp_410$0x1c57d90, y$0x1a1e720, 0x0:i8
            sub __temp_411$0x1c57d90, 0xA:i8, 0x0:i8
            mul __temp_411$0x1c57d90, 0x8:i, __temp_411$0x1c57d90
            sti 0x200001028:i, __temp_410$0x1c57d90
            sti 0x200001030:i, __temp_411$0x1c57d90
            ldelema __temp_412$0x1c57d90, z$0x1a1e720, 0x0:i8
            sub __temp_413$0x1c57d90, 0xA:i8, 0x0:i8
            mul __temp_413$0x1c57d90, 0x8:i, __temp_413$0x1c57d90
            sti 0x200001038:i, __temp_412$0x1c57d90
            sti 0x200001040:i, __temp_413$0x1c57d90
            ldelema __temp_414$0x1c57d90, w$0x1a1e720, 0x0:i8
            sub __temp_415$0x1c57d90, 0xA:i8, 0x0:i8
            mul __temp_415$0x1c57d90, 0x8:i, __temp_415$0x1c57d90
            sti 0x200001048:i, __temp_414$0x1c57d90
            sti 0x200001050:i, __temp_415$0x1c57d90
            div __temp_418$0x1c57d90, 0x0:i8, 0xA:i8
            mul __temp_419$0x1c57d90, __temp_418$0x1c57d90, 0x200:i8
            div __temp_420$0x1c57d90, 0xA:i8, 0xA:i8
            add __temp_421$0x1c57d90, __temp_420$0x1c57d90, 0x1:i8
            mul __temp_422$0x1c57d90, __temp_421$0x1c57d90, 0x200:i8
            ldelema __temp_416$0x1c57d90, trigger$0x1a1e720, __temp_419$0x1c57d90
            sub __temp_417$0x1c57d90, __temp_422$0x1c57d90, __temp_419$0x1c57d90
            mul __temp_417$0x1c57d90, 0x8:i, __temp_417$0x1c57d90
            sti 0x200001058:i, __temp_416$0x1c57d90
            sti 0x200001060:i, __temp_417$0x1c57d90
            asm "mov $0x0:msq, 0x200001068:msq"
            asm "mov $__newr0:msq, 0x200001070:msq"
            asm "mov $0x200001000:msq, 0x200001078:msq"
            asm "mov $0x200001010:msq, 0x200001080:msq"
            asm "mov $0x200001068:msq, 0x200001088:msq"
            asm "mov $0x200001070:msq, 0x200001090:msq"
            asm "newr 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_405$0x1c57d90, 0x100000400:i
            ldi __temp_406$0x1c57d90, 0x100000408:i
            add __temp_407$0x1c57d90, __temp_405$0x1c57d90, __temp_406$0x1c57d90
            lda __temp_423$0x1c57d90, init_runner_stdin$0x1a1e720
            sub __temp_407$0x1c57d90, __temp_407$0x1c57d90, 0x8:i8
            sti __temp_407$0x1c57d90, __temp_423$0x1c57d90
            sub __temp_407$0x1c57d90, __temp_407$0x1c57d90, 0x8:i8
            sti __temp_407$0x1c57d90, 0x10:i8
            sub __temp_407$0x1c57d90, __temp_407$0x1c57d90, 0x8:i8
            sti __temp_407$0x1c57d90, 0xA:i8
            sub __temp_407$0x1c57d90, __temp_407$0x1c57d90, 0x8:i8
            sti __temp_407$0x1c57d90, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            ldelema __temp_427$0x1c57d90, cx$0x1a1e720, 0x0:i8
            sub __temp_428$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_428$0x1c57d90, 0x8:i, __temp_428$0x1c57d90
            sti 0x200001018:i, __temp_427$0x1c57d90
            sti 0x200001020:i, __temp_428$0x1c57d90
            ldelema __temp_429$0x1c57d90, cy$0x1a1e720, 0x0:i8
            sub __temp_430$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_430$0x1c57d90, 0x8:i, __temp_430$0x1c57d90
            sti 0x200001028:i, __temp_429$0x1c57d90
            sti 0x200001030:i, __temp_430$0x1c57d90
            ldelema __temp_431$0x1c57d90, cz$0x1a1e720, 0x0:i8
            sub __temp_432$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_432$0x1c57d90, 0x8:i, __temp_432$0x1c57d90
            sti 0x200001038:i, __temp_431$0x1c57d90
            sti 0x200001040:i, __temp_432$0x1c57d90
            ldelema __temp_433$0x1c57d90, cw$0x1a1e720, 0x0:i8
            sub __temp_434$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_434$0x1c57d90, 0x8:i, __temp_434$0x1c57d90
            sti 0x200001048:i, __temp_433$0x1c57d90
            sti 0x200001050:i, __temp_434$0x1c57d90
            ldelema __temp_435$0x1c57d90, x$0x1a1e720, 0x0:i8
            sub __temp_436$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_436$0x1c57d90, 0x8:i, __temp_436$0x1c57d90
            sti 0x200001058:i, __temp_435$0x1c57d90
            sti 0x200001060:i, __temp_436$0x1c57d90
            ldelema __temp_437$0x1c57d90, y$0x1a1e720, 0x0:i8
            sub __temp_438$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_438$0x1c57d90, 0x8:i, __temp_438$0x1c57d90
            sti 0x200001068:i, __temp_437$0x1c57d90
            sti 0x200001070:i, __temp_438$0x1c57d90
            ldelema __temp_439$0x1c57d90, z$0x1a1e720, 0x0:i8
            sub __temp_440$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_440$0x1c57d90, 0x8:i, __temp_440$0x1c57d90
            sti 0x200001078:i, __temp_439$0x1c57d90
            sti 0x200001080:i, __temp_440$0x1c57d90
            ldelema __temp_441$0x1c57d90, w$0x1a1e720, 0x0:i8
            sub __temp_442$0x1c57d90, 0x2:i8, 0x0:i8
            mul __temp_442$0x1c57d90, 0x8:i, __temp_442$0x1c57d90
            sti 0x200001088:i, __temp_441$0x1c57d90
            sti 0x200001090:i, __temp_442$0x1c57d90
            ldelema __temp_443$0x1c57d90, trigger$0x1a1e720, 0x0:i8
            sub __temp_444$0x1c57d90, 0xA:i8, 0x0:i8
            mul __temp_444$0x1c57d90, 0x8:i, __temp_444$0x1c57d90
            sti 0x200001098:i, __temp_443$0x1c57d90
            sti 0x2000010A0:i, __temp_444$0x1c57d90
            lda __temp_445$0x1c57d90, iter$0x1a1e720
            mov __temp_446$0x1c57d90, 0x8:i
            sti 0x2000010A8:i, __temp_445$0x1c57d90
            sti 0x2000010B0:i, __temp_446$0x1c57d90
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_449$0x1c57d90, 0xA:i8, 0xA:i8
            add __temp_450$0x1c57d90, __temp_449$0x1c57d90, 0x1:i8
            mul __temp_451$0x1c57d90, __temp_450$0x1c57d90, 0x200:i8
            ldelema __temp_447$0x1c57d90, trigger$0x1a1e720, 0x0:i8
            sub __temp_448$0x1c57d90, __temp_451$0x1c57d90, 0x0:i8
            mul __temp_448$0x1c57d90, 0x8:i, __temp_448$0x1c57d90
            sti 0x2000010C0:i, __temp_447$0x1c57d90
            sti 0x2000010C8:i, __temp_448$0x1c57d90
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_424$0x1c57d90, 0x100000400:i
            ldi __temp_425$0x1c57d90, 0x100000408:i
            add __temp_426$0x1c57d90, __temp_424$0x1c57d90, __temp_425$0x1c57d90
            lda __temp_452$0x1c57d90, on_init1_finished$0x1a1e720
            sub __temp_426$0x1c57d90, __temp_426$0x1c57d90, 0x8:i8
            sti __temp_426$0x1c57d90, __temp_452$0x1c57d90
            sub __temp_426$0x1c57d90, __temp_426$0x1c57d90, 0x8:i8
            sti __temp_426$0x1c57d90, 0x0:i8
            asm "exit:c"
    }
    function main
    {
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x1:msq, 0x200001010:msq"
            div __temp_458$0x1c64b30, 0xA:i8, 0xA:i8
            add __temp_459$0x1c64b30, __temp_458$0x1c64b30, 0x1:i8
            mul __temp_460$0x1c64b30, __temp_459$0x1c64b30, 0x200:i8
            ldelema __temp_456$0x1c64b30, trigger$0x1a1e720, 0x0:i8
            sub __temp_457$0x1c64b30, __temp_460$0x1c64b30, 0x0:i8
            mul __temp_457$0x1c64b30, 0x8:i, __temp_457$0x1c64b30
            sti 0x200001018:i, __temp_456$0x1c64b30
            sti 0x200001020:i, __temp_457$0x1c64b30
            asm "mov $0x0:msq, 0x200001028:msq"
            asm "mov $__newr0:msq, 0x200001030:msq"
            asm "mov $0x200001000:msq, 0x200001038:msq"
            asm "mov $0x200001010:msq, 0x200001040:msq"
            asm "mov $0x200001028:msq, 0x200001048:msq"
            asm "mov $0x200001030:msq, 0x200001050:msq"
            asm "newr 0x200001038, 0x200001040, 0x200001048, 0x200001050"
            ldi __temp_453$0x1c64b30, 0x100000400:i
            ldi __temp_454$0x1c64b30, 0x100000408:i
            add __temp_455$0x1c64b30, __temp_453$0x1c64b30, __temp_454$0x1c64b30
            lda __temp_461$0x1c64b30, init0_stdin$0x1a1e720
            sub __temp_455$0x1c64b30, __temp_455$0x1c64b30, 0x8:i8
            sti __temp_455$0x1c64b30, __temp_461$0x1c64b30
            sub __temp_455$0x1c64b30, __temp_455$0x1c64b30, 0x8:i8
            sti __temp_455$0x1c64b30, 0x0:i8
            asm "exit:c"
    }
}
