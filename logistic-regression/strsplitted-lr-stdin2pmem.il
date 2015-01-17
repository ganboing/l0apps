class Program
{
    function get_points_range
    {
            div __temp_0$0x1bce7b0, pcnt$0x1ba9f80, 0x1E:i8
            mul __temp_1$0x1bce7b0, __temp_0$0x1bce7b0, i$0x1bce470
            sti p_begin$0x1bce470, __temp_1$0x1bce7b0
            ceq __temp_3$0x1bce7b0, i$0x1bce470, 0x1D:i8
            bnz __temp_3$0x1bce7b0, __temp_4$0x1bce7b0
            div __temp_5$0x1bcfca0, pcnt$0x1ba9f80, 0x1E:i8
            add __temp_6$0x1bcfca0, i$0x1bce470, 0x1:i8
            mul __temp_7$0x1bcfca0, __temp_5$0x1bcfca0, __temp_6$0x1bcfca0
            sti p_end$0x1bce470, __temp_7$0x1bcfca0
            br __temp_2$0x1bce7b0
        __temp_4$0x1bce7b0:
            sti p_end$0x1bce470, pcnt$0x1ba9f80
        __temp_2$0x1bce7b0:
            ret
    }
    function shuffle_task
    {
            mov ppoints$0x1be1ca0, 0x40800000008:i
            lda __temp_8$0x1be1ca0, p_begin$0x1be1ca0
            lda __temp_9$0x1be1ca0, p_end$0x1be1ca0
            call get_points_range$0x1ba9f80, <missing>, id$0x1be1a80, __temp_8$0x1be1ca0, __temp_9$0x1be1ca0
            mul __temp_10$0x1be1ca0, p_begin$0x1be1ca0, 0x15:i8
            mov p_begin$0x1be1ca0, __temp_10$0x1be1ca0
            mul __temp_11$0x1be1ca0, p_end$0x1be1ca0, 0x15:i8
            mov p_end$0x1be1ca0, __temp_11$0x1be1ca0
            mov p_end$0x1be1ca0, p_end$0x1be1ca0
            mov i$0x1be1ca0, p_begin$0x1be1ca0
        __temp_12$0x1be1ca0:
            clt __temp_15$0x1be1ca0, i$0x1be1ca0, p_end$0x1be1ca0
            bz __temp_15$0x1be1ca0, __temp_14$0x1be1ca0
            ldelem __temp_16$0x1be6f40, ppoints$0x1be1ca0, i$0x1be1ca0
            stelem ppoints$0x1be1ca0, i$0x1be1ca0, __temp_16$0x1be6f40
        __temp_13$0x1be1ca0:
            add __temp_17$0x1be1ca0, i$0x1be1ca0, 0x200:i8
            mov i$0x1be1ca0, __temp_17$0x1be1ca0
            br __temp_12$0x1be1ca0
        __temp_14$0x1be1ca0:
            asm "exit:c"
    }
    function init_task
    {
            mov ppcnt$0x1c0f3c0, 0x40800000000:i
            mov ppoints$0x1c0f3c0, 0x40800000008:i
            mov pcnt$0x1ba9f80, 0x0:i8
        __temp_18$0x1c0f3c0:
            bz 0x1:i8, __temp_20$0x1c0f3c0
            lda __temp_22$0x1bc4020, d$0x1c0f3c0
            call input_double$0x1ba9f80, __temp_21$0x1bc4020, __temp_22$0x1bc4020
            mov rt$0x1c0f3c0, __temp_21$0x1bc4020
            cne __temp_24$0x1bc4020, rt$0x1c0f3c0, 0x0:i8
            bnz __temp_24$0x1bc4020, __temp_25$0x1bc4020
            br __temp_23$0x1bc4020
        __temp_25$0x1bc4020:
            br init_task_reach_input_end$0x1bc4020
        __temp_23$0x1bc4020:
            sti ppoints$0x1c0f3c0, d$0x1c0f3c0
            conv __temp_26$0x1bc4020, ppoints$0x1c0f3c0
            add __temp_27$0x1bc4020, __temp_26$0x1bc4020, 0x8:i8
            conv __temp_28$0x1bc4020, __temp_27$0x1bc4020
            mov ppoints$0x1c0f3c0, __temp_28$0x1bc4020
            mov i$0x1c0f3c0, 0x0:i8
        __temp_29$0x1bc4020:
            clt __temp_32$0x1bc4020, i$0x1c0f3c0, 0x14:i8
            bz __temp_32$0x1bc4020, __temp_31$0x1bc4020
            lda __temp_34$0x1c17980, d$0x1c0f3c0
            call input_double$0x1ba9f80, __temp_33$0x1c17980, __temp_34$0x1c17980
            mov rt$0x1c0f3c0, __temp_33$0x1c17980
            cne __temp_36$0x1c17980, rt$0x1c0f3c0, 0x0:i8
            bnz __temp_36$0x1c17980, __temp_37$0x1c17980
            br __temp_35$0x1c17980
        __temp_37$0x1c17980:
            br init_task_reach_input_end$0x1c17980
        __temp_35$0x1c17980:
            stelem ppoints$0x1c0f3c0, i$0x1c0f3c0, d$0x1c0f3c0
        __temp_30$0x1bc4020:
            add __temp_38$0x1bc4020, i$0x1c0f3c0, 0x1:i8
            mov i$0x1c0f3c0, __temp_38$0x1bc4020
            br __temp_29$0x1bc4020
        __temp_31$0x1bc4020:
            add __temp_39$0x1bc4020, pcnt$0x1ba9f80, 0x1:i8
            mov pcnt$0x1ba9f80, __temp_39$0x1bc4020
            conv __temp_40$0x1bc4020, ppoints$0x1c0f3c0
            add __temp_41$0x1bc4020, __temp_40$0x1bc4020, 0xA0:i8
            conv __temp_42$0x1bc4020, __temp_41$0x1bc4020
            mov ppoints$0x1c0f3c0, __temp_42$0x1bc4020
        __temp_19$0x1c0f3c0:
            br __temp_18$0x1c0f3c0
        __temp_20$0x1c0f3c0:
        init_task_reach_input_end$0x1ba9f80:
            sti ppcnt$0x1c0f3c0, pcnt$0x1ba9f80
            mov i$0x1c0f3c0, 0x0:i8
        __temp_43$0x1c0f3c0:
            clt __temp_46$0x1c0f3c0, i$0x1c0f3c0, 0x1E:i8
            bz __temp_46$0x1c0f3c0, __temp_45$0x1c0f3c0
            lda __temp_47$0x1c1b270, p_begin$0x1c0f3c0
            lda __temp_48$0x1c1b270, p_end$0x1c0f3c0
            call get_points_range$0x1ba9f80, <missing>, i$0x1c0f3c0, __temp_47$0x1c1b270, __temp_48$0x1c1b270
            add __temp_49$0x1c1b270, i$0x1c0f3c0, 0x1:i8
            mul __temp_50$0x1c1b270, 0x400000000000:i8, __temp_49$0x1c1b270
            mov space$0x1c0f3c0, __temp_50$0x1c1b270
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x2:msq, 0x200001010:msq"
            lda __temp_54$0x1c1b270, pcnt$0x1ba9f80
            mov __temp_55$0x1c1b270, 0x8:i
            sti 0x200001018:i, __temp_54$0x1c1b270
            sti 0x200001020:i, __temp_55$0x1c1b270
            add __temp_58$0x1c1b270, 0x800000000:i8, 0x20000000000:i8
            sub __temp_59$0x1c1b270, __temp_58$0x1c1b270, 0x1:i8
            add __temp_60$0x1c1b270, __temp_59$0x1c1b270, 0x1:i8
            add __temp_61$0x1c1b270, __temp_60$0x1c1b270, 0x20000000000:i8
            sub __temp_62$0x1c1b270, __temp_61$0x1c1b270, 0x1:i8
            add __temp_63$0x1c1b270, __temp_62$0x1c1b270, 0x1:i8
            add __temp_64$0x1c1b270, __temp_63$0x1c1b270, 0x8:i8
            conv __temp_65$0x1c1b270, __temp_64$0x1c1b270
            add __temp_66$0x1c1b270, 0x14:i8, 0x1:i8
            mul __temp_67$0x1c1b270, p_begin$0x1c0f3c0, __temp_66$0x1c1b270
            add __temp_68$0x1c1b270, 0x14:i8, 0x1:i8
            mul __temp_69$0x1c1b270, p_end$0x1c0f3c0, __temp_68$0x1c1b270
            ldelema __temp_56$0x1c1b270, __temp_65$0x1c1b270, __temp_67$0x1c1b270
            sub __temp_57$0x1c1b270, __temp_69$0x1c1b270, __temp_67$0x1c1b270
            mul __temp_57$0x1c1b270, 0x8:i, __temp_57$0x1c1b270
            sti 0x200001028:i, __temp_56$0x1c1b270
            sti 0x200001030:i, __temp_57$0x1c1b270
            asm "mov $0x0:msq, 0x200001038:msq"
            asm "mov $__newr0:msq, 0x200001040:msq"
            mov __temp_70$0x1c1b270, space$0x1c0f3c0
            sti 0x200001048:i, __temp_70$0x1c1b270
            asm "mov $0x200001000:msq, 0x200001050:msq"
            asm "mov $0x200001010:msq, 0x200001058:msq"
            asm "mov $0x200001038:msq, 0x200001060:msq"
            asm "mov $0x200001040:msq, 0x200001068:msq"
            asm "mov $0x200001048:msq, 0x200001070:msq"
            asm "spawnx 0x200001050, 0x200001058, 0x200001060, 0x200001068, 0x200001070"
            ldi __temp_51$0x1c1b270, 0x100000400:i
            ldi __temp_52$0x1c1b270, 0x100000408:i
            add __temp_53$0x1c1b270, __temp_51$0x1c1b270, __temp_52$0x1c1b270
            lda __temp_71$0x1c1b270, shuffle_task$0x1ba9f80
            sub __temp_53$0x1c1b270, __temp_53$0x1c1b270, 0x8:i8
            sti __temp_53$0x1c1b270, __temp_71$0x1c1b270
            sub __temp_53$0x1c1b270, __temp_53$0x1c1b270, 0x8:i8
            sti __temp_53$0x1c1b270, 0x8:i8
            sub __temp_53$0x1c1b270, __temp_53$0x1c1b270, 0x8:i8
            sti __temp_53$0x1c1b270, i$0x1c0f3c0
        __temp_44$0x1c0f3c0:
            add __temp_72$0x1c0f3c0, i$0x1c0f3c0, 0x1:i8
            mov i$0x1c0f3c0, __temp_72$0x1c0f3c0
            br __temp_43$0x1c0f3c0
        __temp_45$0x1c0f3c0:
            asm "exit:c"
    }
    function main
    {
            mov space$0x1c29e20, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x2:msq, 0x200001010:msq"
            lda __temp_76$0x1c29e20, pcnt$0x1ba9f80
            mov __temp_77$0x1c29e20, 0x8:i
            sti 0x200001018:i, __temp_76$0x1c29e20
            sti 0x200001020:i, __temp_77$0x1c29e20
            add __temp_80$0x1c29e20, 0x800000000:i8, 0x20000000000:i8
            sub __temp_81$0x1c29e20, __temp_80$0x1c29e20, 0x1:i8
            add __temp_82$0x1c29e20, __temp_81$0x1c29e20, 0x1:i8
            add __temp_83$0x1c29e20, __temp_82$0x1c29e20, 0x20000000000:i8
            sub __temp_84$0x1c29e20, __temp_83$0x1c29e20, 0x1:i8
            add __temp_85$0x1c29e20, __temp_84$0x1c29e20, 0x1:i8
            conv __temp_86$0x1c29e20, __temp_85$0x1c29e20
            mul __temp_87$0x1c29e20, 0x8:i8, 0xF4240:i8
            add __temp_88$0x1c29e20, 0x14:i8, 0x1:i8
            mul __temp_89$0x1c29e20, __temp_87$0x1c29e20, __temp_88$0x1c29e20
            add __temp_90$0x1c29e20, 0x8:i8, __temp_89$0x1c29e20
            ldelema __temp_78$0x1c29e20, __temp_86$0x1c29e20, 0x0:i8
            sub __temp_79$0x1c29e20, __temp_90$0x1c29e20, 0x0:i8
            mul __temp_79$0x1c29e20, 0x8:i, __temp_79$0x1c29e20
            sti 0x200001028:i, __temp_78$0x1c29e20
            sti 0x200001030:i, __temp_79$0x1c29e20
            asm "mov $0x0:msq, 0x200001038:msq"
            asm "mov $__newr0:msq, 0x200001040:msq"
            mov __temp_91$0x1c29e20, space$0x1c29e20
            sti 0x200001048:i, __temp_91$0x1c29e20
            asm "mov $0x200001000:msq, 0x200001050:msq"
            asm "mov $0x200001010:msq, 0x200001058:msq"
            asm "mov $0x200001038:msq, 0x200001060:msq"
            asm "mov $0x200001040:msq, 0x200001068:msq"
            asm "mov $0x200001048:msq, 0x200001070:msq"
            asm "spawnx 0x200001050, 0x200001058, 0x200001060, 0x200001068, 0x200001070"
            ldi __temp_73$0x1c29e20, 0x100000400:i
            ldi __temp_74$0x1c29e20, 0x100000408:i
            add __temp_75$0x1c29e20, __temp_73$0x1c29e20, __temp_74$0x1c29e20
            lda __temp_92$0x1c29e20, init_task$0x1ba9f80
            sub __temp_75$0x1c29e20, __temp_75$0x1c29e20, 0x8:i8
            sti __temp_75$0x1c29e20, __temp_92$0x1c29e20
            sub __temp_75$0x1c29e20, __temp_75$0x1c29e20, 0x8:i8
            sti __temp_75$0x1c29e20, 0x0:i8
            asm "exit:c"
    }
}
