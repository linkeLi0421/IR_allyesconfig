; ModuleID = '/llk/IR_all_yes/sound/i2c/other/ak4xxx-adda.c_pt.bc'
source_filename = "../sound/i2c/other/ak4xxx-adda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_akm4xxx_write\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_akm4xxx_write\09\09\09\09"
module asm "\09.long\09__crc_snd_akm4xxx_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_akm4xxx_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_akm4xxx_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_akm4xxx_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_akm4xxx_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_akm4xxx_reset\09\09\09\09"
module asm "\09.long\09__crc_snd_akm4xxx_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_akm4xxx_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_akm4xxx_reset\22\09\09\09\09\09"
module asm "__kstrtabns_snd_akm4xxx_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_akm4xxx_init\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_akm4xxx_init\09\09\09\09"
module asm "\09.long\09__crc_snd_akm4xxx_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_akm4xxx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_akm4xxx_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_akm4xxx_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_akm4xxx_build_controls\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_akm4xxx_build_controls\09\09\09\09"
module asm "\09.long\09__crc_snd_akm4xxx_build_controls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_akm4xxx_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_akm4xxx_build_controls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_akm4xxx_build_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.snd_akm4xxx_dac_channel = type { ptr, i32, ptr }
%struct.snd_akm4xxx_adc_channel = type { ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.74 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.69, [128 x i8] }
%union.anon.69 = type { %union.anon.71 }
%union.anon.71 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.75, [64 x i8] }
%union.anon.75 = type { %struct.anon.78, [40 x i8] }
%struct.anon.78 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.64, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_author233 = internal constant [86 x i8] c"snd_ak4xxx_adda.author=Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [86 x i8] c"snd_ak4xxx_adda.description=Routines for control of AK452x / AK43xx  AD/DA converters\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [53 x i8] c"snd_ak4xxx_adda.file=sound/i2c/other/snd-ak4xxx-adda\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [28 x i8] c"snd_ak4xxx_adda.license=GPL\00", section ".modinfo", align 1
@__kstrtab_snd_akm4xxx_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_akm4xxx_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_akm4xxx_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_akm4xxx_write to i32), ptr @__kstrtab_snd_akm4xxx_write, ptr @__kstrtabns_snd_akm4xxx_write }, section "___ksymtab+snd_akm4xxx_write", align 4
@__kstrtab_snd_akm4xxx_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_akm4xxx_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_akm4xxx_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_akm4xxx_reset to i32), ptr @__kstrtab_snd_akm4xxx_reset, ptr @__kstrtabns_snd_akm4xxx_reset }, section "___ksymtab+snd_akm4xxx_reset", align 4
@snd_akm4xxx_init.inits_ak4524 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\07\01\00\02`\03\19\01\03\04\00\05\00\06\00\07\00\FF\FF", [44 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4528 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\07\01\00\02`\03\0D\01\03\04\00\05\00\FF\FF", [16 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4529 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09\01\0A?\00\0C\01\00\02\FF\03\FF\04\FF\05\FF\06\FF\07\FF\0B\FF\0C\FF\08U\FF\FF", [36 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4355 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01\02\00\06\02\0E\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\01\01\FF\FF", [38 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4358 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01\02\00\06\02N\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0B\00\0C\00\0A\00\01\01\FF\FF", [34 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4381 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\0C\01\02\02\00\03\00\04\00\00\0F\FF\FF", [18 x i8] zeroinitializer }, align 32
@snd_akm4xxx_init.inits_ak4620 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\07\01\00\01\02\01\03\01\0F\02`\03\01\04\00\05\00\06\00\07\00\FF\FF", [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4524\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4528\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4529\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4355\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4358\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4381\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak5365\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4620\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/i2c/other/ak4xxx-adda.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_snd_akm4xxx_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_akm4xxx_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_akm4xxx_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_akm4xxx_init to i32), ptr @__kstrtab_snd_akm4xxx_init, ptr @__kstrtabns_snd_akm4xxx_init }, section "___ksymtab+snd_akm4xxx_init", align 4
@__kstrtab_snd_akm4xxx_build_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_akm4xxx_build_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_akm4xxx_build_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_akm4xxx_build_controls to i32), ptr @__kstrtab_snd_akm4xxx_build_controls, ptr @__kstrtabns_snd_akm4xxx_build_controls }, section "___ksymtab+snd_akm4xxx_build_controls", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@db_scale_vol_datt = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_8bit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_7bit = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 65586], [16 x i8] zeroinitializer }, align 32
@db_scale_linear = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 8, i32 -9999999, i32 0], [16 x i8] zeroinitializer }, align 32
@vol_cvt_datt = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\00\01\01\02\02\03\03\04\04\04\04\05\05\05\06\06\06\07\07\08\08\08\09\0A\0A\0B\0B\0C\0D\0E\0F\0F\10\10\11\12\12\13\13\14\15\16\17\17\18\19\1A\1C\1D\1E\1F !\22##$%&()*+-.0012345789;<>?@ABCDFGHJKMNPQRSTUVXY[\\^_`abdefgijlmopqrsuvwyz|}\7F", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Capture Channel\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Deemphasis\00", [21 x i8] zeroinitializer }, align 32
@snd_akm4xxx_deemphasis_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip %d: 0x%02x = 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"inits_ak4524\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 160, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"inits_ak4528\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 172, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"inits_ak4529\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 182, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"inits_ak4355\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 198, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"inits_ak4358\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 215, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"inits_ak4381\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 234, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"inits_ak4620\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 245, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 271, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 277, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 283, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 289, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 295, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 301, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 307, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 313, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 317, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 632, i32 16 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"db_scale_vol_datt\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 150, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"db_scale_8bit\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 151, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"db_scale_7bit\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 152, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"db_scale_linear\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 153, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"vol_cvt_datt\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 128, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 725, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 761, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 780, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 812, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 454, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 455, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [33 x i8] c"../sound/i2c/other/ak4xxx-adda.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 857, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_snd_akm4xxx_build_controls, ptr @__ksymtab_snd_akm4xxx_init, ptr @__ksymtab_snd_akm4xxx_reset, ptr @__ksymtab_snd_akm4xxx_write, ptr @snd_akm4xxx_init.inits_ak4524, ptr @snd_akm4xxx_init.inits_ak4528, ptr @snd_akm4xxx_init.inits_ak4529, ptr @snd_akm4xxx_init.inits_ak4355, ptr @snd_akm4xxx_init.inits_ak4358, ptr @snd_akm4xxx_init.inits_ak4381, ptr @snd_akm4xxx_init.inits_ak4620, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @db_scale_vol_datt, ptr @db_scale_8bit, ptr @db_scale_7bit, ptr @db_scale_linear, ptr @vol_cvt_datt, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @snd_akm4xxx_deemphasis_info.texts, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4524 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4528 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4529 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4355 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4358 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4381 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_init.inits_ak4620 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_vol_datt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_8bit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_7bit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_linear to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_cvt_datt to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_akm4xxx_deemphasis_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_akm4xxx_write(ptr noundef %ak, i32 noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  tail call void %1(ptr noundef %ak, i32 noundef %chip) #6
  %write = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  tail call void %3(ptr noundef %ak, i32 noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %val) #6
  %mul = shl i32 %chip, 4
  %conv = zext i8 %reg to i32
  %add = add i32 %mul, %conv
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %val, ptr %arrayidx, align 1
  %unlock = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unlock, align 4
  tail call void %6(ptr noundef %ak, i32 noundef %chip) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge73
    i32 7, label %entry.sw.bb_crit_edge74
    i32 5, label %sw.bb3
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.bb_crit_edge74:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge73:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge73, %entry.sw.bb_crit_edge74
  %num_dacs.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %3 = ptrtoint ptr %num_dacs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_dacs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp34.not.i = icmp ult i32 %4, 2
  br i1 %cmp34.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  %conv.i = select i1 %tobool.not.i, i8 3, i8 0
  %ops.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %write.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %unlock.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  %total_regs.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %chip.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.inc8.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  tail call void %6(ptr noundef %ak, i32 noundef %chip.035.i) #6
  %7 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i.i, align 4
  tail call void %8(ptr noundef %ak, i32 noundef %chip.035.i, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #6
  %mul.i.i = shl i32 %chip.035.i, 4
  %add.i.i = or i32 %mul.i.i, 1
  %arrayidx.i.i = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %arrayidx.i.i, align 1
  %10 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock.i.i, align 4
  tail call void %11(ptr noundef %ak, i32 noundef %chip.035.i) #6
  br i1 %tobool.not.i, label %for.cond2.preheader.i, label %for.body.i.for.inc8.i_crit_edge

for.body.i.for.inc8.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i

for.cond2.preheader.i:                            ; preds = %for.body.i
  %12 = ptrtoint ptr %total_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp430.i = icmp ugt i32 %13, 4
  br i1 %cmp430.i, label %for.cond2.preheader.i.for.body6.i_crit_edge, label %for.cond2.preheader.i.for.inc8.i_crit_edge

for.cond2.preheader.i.for.inc8.i_crit_edge:       ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i

for.cond2.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond2.preheader.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.cond2.preheader.i.for.body6.i_crit_edge
  %conv332.i = phi i32 [ %conv3.i, %for.body6.i.for.body6.i_crit_edge ], [ 4, %for.cond2.preheader.i.for.body6.i_crit_edge ]
  %reg.031.i = phi i8 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ 4, %for.cond2.preheader.i.for.body6.i_crit_edge ]
  %add.i = add i32 %conv332.i, %mul.i.i
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  tail call void %17(ptr noundef %ak, i32 noundef %chip.035.i) #6
  %18 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i, align 4
  tail call void %19(ptr noundef %ak, i32 noundef %chip.035.i, i8 noundef zeroext %reg.031.i, i8 noundef zeroext %15) #6
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %15, ptr %arrayidx.i, align 1
  %21 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unlock.i.i, align 4
  tail call void %22(ptr noundef %ak, i32 noundef %chip.035.i) #6
  %inc.i = add i8 %reg.031.i, 1
  %conv3.i = zext i8 %inc.i to i32
  %23 = ptrtoint ptr %total_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_regs.i, align 4
  %cmp4.i = icmp ugt i32 %24, %conv3.i
  br i1 %cmp4.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.for.inc8.i_crit_edge

for.body6.i.for.inc8.i_crit_edge:                 ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.inc8.i:                                       ; preds = %for.body6.i.for.inc8.i_crit_edge, %for.cond2.preheader.i.for.inc8.i_crit_edge, %for.body.i.for.inc8.i_crit_edge
  %inc9.i = add nuw nsw i32 %chip.035.i, 1
  %25 = ptrtoint ptr %num_dacs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_dacs.i, align 4
  %div23.i = lshr i32 %26, 1
  %cmp.i = icmp ult i32 %inc9.i, %div23.i
  br i1 %cmp.i, label %for.inc8.i.for.body.i_crit_edge, label %for.inc8.i.sw.epilog_crit_edge

for.inc8.i.sw.epilog_crit_edge:                   ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc8.i.for.body.i_crit_edge:                  ; preds = %for.inc8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i11 = icmp eq i32 %state, 0
  br i1 %tobool.not.i11, label %for.cond.preheader.i, label %sw.bb1.sw.epilog.sink.split_crit_edge

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.cond.preheader.i:                             ; preds = %sw.bb1
  %total_regs.i12 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  %27 = ptrtoint ptr %total_regs.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_regs.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24.not.i = icmp eq i32 %28, 0
  br i1 %cmp24.not.i, label %for.cond.preheader.i.sw.epilog.sink.split_crit_edge, label %for.body.lr.ph.i13

for.cond.preheader.i.sw.epilog.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.body.lr.ph.i13:                               ; preds = %for.cond.preheader.i
  %ops.i16.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %write.i17.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %unlock.i19.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc.i.for.body.i14_crit_edge, %for.body.lr.ph.i13
  %conv27.i = phi i32 [ 0, %for.body.lr.ph.i13 ], [ %conv.i17, %for.inc.i.for.body.i14_crit_edge ]
  %reg.025.i = phi i8 [ 0, %for.body.lr.ph.i13 ], [ %inc.i16, %for.inc.i.for.body.i14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %reg.025.i)
  %cmp3.not.i = icmp eq i8 %reg.025.i, 1
  br i1 %cmp3.not.i, label %for.body.i14.for.inc.i_crit_edge, label %if.then5.i

for.body.i14.for.inc.i_crit_edge:                 ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i15 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %conv27.i
  %29 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i15, align 1
  %31 = ptrtoint ptr %ops.i16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i16.i, align 4
  tail call void %32(ptr noundef %ak, i32 noundef 0) #6
  %33 = ptrtoint ptr %write.i17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i17.i, align 4
  tail call void %34(ptr noundef %ak, i32 noundef 0, i8 noundef zeroext %reg.025.i, i8 noundef zeroext %30) #6
  %35 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %30, ptr %arrayidx.i15, align 1
  %36 = ptrtoint ptr %unlock.i19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unlock.i19.i, align 4
  tail call void %37(ptr noundef %ak, i32 noundef 0) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i14.for.inc.i_crit_edge
  %inc.i16 = add i8 %reg.025.i, 1
  %conv.i17 = zext i8 %inc.i16 to i32
  %38 = ptrtoint ptr %total_regs.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %total_regs.i12, align 4
  %cmp.i18 = icmp ugt i32 %39, %conv.i17
  br i1 %cmp.i18, label %for.inc.i.for.body.i14_crit_edge, label %for.inc.i.sw.epilog.sink.split_crit_edge

for.inc.i.sw.epilog.sink.split_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.inc.i.for.body.i14_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i14

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i19 = icmp eq i32 %state, 0
  br i1 %tobool.not.i19, label %for.cond.preheader.i22, label %sw.bb2.sw.epilog.sink.split_crit_edge

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.cond.preheader.i22:                           ; preds = %sw.bb2
  %total_regs.i20 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  %40 = ptrtoint ptr %total_regs.i20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total_regs.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp24.not.i21 = icmp eq i32 %41, 0
  br i1 %cmp24.not.i21, label %for.cond.preheader.i22.sw.epilog.sink.split_crit_edge, label %for.body.lr.ph.i26

for.cond.preheader.i22.sw.epilog.sink.split_crit_edge: ; preds = %for.cond.preheader.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.body.lr.ph.i26:                               ; preds = %for.cond.preheader.i22
  %ops.i16.i23 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %write.i17.i24 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %unlock.i19.i25 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  br label %for.body.i30

for.body.i30:                                     ; preds = %for.inc.i36.for.body.i30_crit_edge, %for.body.lr.ph.i26
  %conv27.i27 = phi i32 [ 0, %for.body.lr.ph.i26 ], [ %conv.i34, %for.inc.i36.for.body.i30_crit_edge ]
  %reg.025.i28 = phi i8 [ 0, %for.body.lr.ph.i26 ], [ %inc.i33, %for.inc.i36.for.body.i30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %reg.025.i28)
  %cmp3.not.i29 = icmp eq i8 %reg.025.i28, 1
  br i1 %cmp3.not.i29, label %for.body.i30.for.inc.i36_crit_edge, label %if.then5.i32

for.body.i30.for.inc.i36_crit_edge:               ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i36

if.then5.i32:                                     ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i31 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %conv27.i27
  %42 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i31, align 1
  %44 = ptrtoint ptr %ops.i16.i23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i16.i23, align 4
  tail call void %45(ptr noundef %ak, i32 noundef 0) #6
  %46 = ptrtoint ptr %write.i17.i24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i17.i24, align 4
  tail call void %47(ptr noundef %ak, i32 noundef 0, i8 noundef zeroext %reg.025.i28, i8 noundef zeroext %43) #6
  %48 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %43, ptr %arrayidx.i31, align 1
  %49 = ptrtoint ptr %unlock.i19.i25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %unlock.i19.i25, align 4
  tail call void %50(ptr noundef %ak, i32 noundef 0) #6
  br label %for.inc.i36

for.inc.i36:                                      ; preds = %if.then5.i32, %for.body.i30.for.inc.i36_crit_edge
  %inc.i33 = add i8 %reg.025.i28, 1
  %conv.i34 = zext i8 %inc.i33 to i32
  %51 = ptrtoint ptr %total_regs.i20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total_regs.i20, align 4
  %cmp.i35 = icmp ugt i32 %52, %conv.i34
  br i1 %cmp.i35, label %for.inc.i36.for.body.i30_crit_edge, label %for.inc.i36.sw.epilog.sink.split_crit_edge

for.inc.i36.sw.epilog.sink.split_crit_edge:       ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

for.inc.i36.for.body.i30_crit_edge:               ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i30

sw.bb3:                                           ; preds = %entry
  %num_dacs.i43 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %53 = ptrtoint ptr %num_dacs.i43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_dacs.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp33.not.i = icmp ult i32 %54, 2
  br i1 %cmp33.not.i, label %sw.bb3.sw.epilog_crit_edge, label %for.body.lr.ph.i50

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph.i50:                               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i44 = icmp eq i32 %state, 0
  %conv.i45 = select i1 %tobool.not.i44, i8 15, i8 12
  %ops.i.i46 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %write.i.i47 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %unlock.i.i48 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  %total_regs.i49 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  br label %for.body.i53

for.body.i53:                                     ; preds = %for.inc8.i64.for.body.i53_crit_edge, %for.body.lr.ph.i50
  %chip.034.i = phi i32 [ 0, %for.body.lr.ph.i50 ], [ %inc9.i61, %for.inc8.i64.for.body.i53_crit_edge ]
  %55 = ptrtoint ptr %ops.i.i46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i.i46, align 4
  tail call void %56(ptr noundef %ak, i32 noundef %chip.034.i) #6
  %57 = ptrtoint ptr %write.i.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i.i47, align 4
  tail call void %58(ptr noundef %ak, i32 noundef %chip.034.i, i8 noundef zeroext 0, i8 noundef zeroext %conv.i45) #6
  %mul.i.i51 = shl i32 %chip.034.i, 4
  %arrayidx.i.i52 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %mul.i.i51
  %59 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i45, ptr %arrayidx.i.i52, align 1
  %60 = ptrtoint ptr %unlock.i.i48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %unlock.i.i48, align 4
  tail call void %61(ptr noundef %ak, i32 noundef %chip.034.i) #6
  br i1 %tobool.not.i44, label %for.cond2.preheader.i54, label %for.body.i53.for.inc8.i64_crit_edge

for.body.i53.for.inc8.i64_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i64

for.cond2.preheader.i54:                          ; preds = %for.body.i53
  %62 = ptrtoint ptr %total_regs.i49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %total_regs.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp429.i = icmp ugt i32 %63, 1
  br i1 %cmp429.i, label %for.cond2.preheader.i54.for.body6.i60_crit_edge, label %for.cond2.preheader.i54.for.inc8.i64_crit_edge

for.cond2.preheader.i54.for.inc8.i64_crit_edge:   ; preds = %for.cond2.preheader.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i64

for.cond2.preheader.i54.for.body6.i60_crit_edge:  ; preds = %for.cond2.preheader.i54
  br label %for.body6.i60

for.body6.i60:                                    ; preds = %for.body6.i60.for.body6.i60_crit_edge, %for.cond2.preheader.i54.for.body6.i60_crit_edge
  %conv331.i = phi i32 [ %conv3.i58, %for.body6.i60.for.body6.i60_crit_edge ], [ 1, %for.cond2.preheader.i54.for.body6.i60_crit_edge ]
  %reg.030.i = phi i8 [ %inc.i57, %for.body6.i60.for.body6.i60_crit_edge ], [ 1, %for.cond2.preheader.i54.for.body6.i60_crit_edge ]
  %add.i55 = add i32 %conv331.i, %mul.i.i51
  %arrayidx.i56 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add.i55
  %64 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i56, align 1
  %66 = ptrtoint ptr %ops.i.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i.i46, align 4
  tail call void %67(ptr noundef %ak, i32 noundef %chip.034.i) #6
  %68 = ptrtoint ptr %write.i.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i.i47, align 4
  tail call void %69(ptr noundef %ak, i32 noundef %chip.034.i, i8 noundef zeroext %reg.030.i, i8 noundef zeroext %65) #6
  %70 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %65, ptr %arrayidx.i56, align 1
  %71 = ptrtoint ptr %unlock.i.i48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %unlock.i.i48, align 4
  tail call void %72(ptr noundef %ak, i32 noundef %chip.034.i) #6
  %inc.i57 = add i8 %reg.030.i, 1
  %conv3.i58 = zext i8 %inc.i57 to i32
  %73 = ptrtoint ptr %total_regs.i49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %total_regs.i49, align 4
  %cmp4.i59 = icmp ugt i32 %74, %conv3.i58
  br i1 %cmp4.i59, label %for.body6.i60.for.body6.i60_crit_edge, label %for.body6.i60.for.inc8.i64_crit_edge

for.body6.i60.for.inc8.i64_crit_edge:             ; preds = %for.body6.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc8.i64

for.body6.i60.for.body6.i60_crit_edge:            ; preds = %for.body6.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i60

for.inc8.i64:                                     ; preds = %for.body6.i60.for.inc8.i64_crit_edge, %for.cond2.preheader.i54.for.inc8.i64_crit_edge, %for.body.i53.for.inc8.i64_crit_edge
  %inc9.i61 = add nuw nsw i32 %chip.034.i, 1
  %75 = ptrtoint ptr %num_dacs.i43 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_dacs.i43, align 4
  %div23.i62 = lshr i32 %76, 1
  %cmp.i63 = icmp ult i32 %inc9.i61, %div23.i62
  br i1 %cmp.i63, label %for.inc8.i64.for.body.i53_crit_edge, label %for.inc8.i64.sw.epilog_crit_edge

for.inc8.i64.sw.epilog_crit_edge:                 ; preds = %for.inc8.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc8.i64.for.body.i53_crit_edge:              ; preds = %for.inc8.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53

sw.epilog.sink.split:                             ; preds = %for.inc.i36.sw.epilog.sink.split_crit_edge, %for.cond.preheader.i22.sw.epilog.sink.split_crit_edge, %sw.bb2.sw.epilog.sink.split_crit_edge, %for.inc.i.sw.epilog.sink.split_crit_edge, %for.cond.preheader.i.sw.epilog.sink.split_crit_edge, %sw.bb1.sw.epilog.sink.split_crit_edge
  %.sink28.i37.sink68 = phi i8 [ 2, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 1, %for.cond.preheader.i.sw.epilog.sink.split_crit_edge ], [ 2, %sw.bb2.sw.epilog.sink.split_crit_edge ], [ 1, %for.cond.preheader.i22.sw.epilog.sink.split_crit_edge ], [ 1, %for.inc.i.sw.epilog.sink.split_crit_edge ], [ 1, %for.inc.i36.sw.epilog.sink.split_crit_edge ]
  %ops.i20.i38 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %77 = ptrtoint ptr %ops.i20.i38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i20.i38, align 4
  tail call void %78(ptr noundef %ak, i32 noundef 0) #6
  %write.i21.i39 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %79 = ptrtoint ptr %write.i21.i39 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write.i21.i39, align 4
  tail call void %80(ptr noundef %ak, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %.sink28.i37.sink68) #6
  %arrayidx.i22.i40 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %arrayidx.i22.i40 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.sink28.i37.sink68, ptr %arrayidx.i22.i40, align 1
  %unlock.i23.i41 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  %82 = ptrtoint ptr %unlock.i23.i41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %unlock.i23.i41, align 4
  tail call void %83(ptr noundef %ak, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc8.i64.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %for.inc8.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_akm4xxx_init(ptr noundef %ak) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %images = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3
  %type = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %0 = call ptr @memset(ptr %images, i32 0, i32 128)
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %2, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
    i32 6, label %sw.bb26
    i32 7, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_dacs = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %4 = ptrtoint ptr %num_dacs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_dacs, align 4
  %div98 = lshr i32 %5, 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_dacs3 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %6 = ptrtoint ptr %num_dacs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_dacs3, align 4
  %div497 = lshr i32 %7, 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_dacs21 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %8 = ptrtoint ptr %num_dacs21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_dacs21, align 4
  %div2296 = lshr i32 %9, 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_chips27 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 12
  %10 = ptrtoint ptr %num_chips27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_chips27, align 4
  %name28 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 14
  %11 = ptrtoint ptr %name28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.6, ptr %name28, align 4
  %total_regs29 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  %12 = ptrtoint ptr %total_regs29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %total_regs29, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_dacs31 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %13 = ptrtoint ptr %num_dacs31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_dacs31, align 4
  %div3295 = lshr i32 %14, 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 317, i32 noundef 9, ptr noundef nonnull @.str.9) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %div3295.sink = phi i32 [ %div3295, %sw.bb30 ], [ %div2296, %sw.bb20 ], [ 1, %sw.bb16 ], [ 1, %sw.bb12 ], [ %div497, %sw.bb2 ], [ %div98, %sw.bb ], [ 1, %entry.sw.epilog_crit_edge ]
  %.str.7.sink = phi ptr [ @.str.7, %sw.bb30 ], [ @.str.5, %sw.bb20 ], [ @.str.4, %sw.bb16 ], [ @.str.3, %sw.bb12 ], [ @.str.1, %sw.bb2 ], [ @.str, %sw.bb ], [ @.str.2, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 8, %sw.bb30 ], [ 5, %sw.bb20 ], [ 16, %sw.bb16 ], [ 11, %sw.bb12 ], [ 6, %sw.bb2 ], [ 8, %sw.bb ], [ 13, %entry.sw.epilog_crit_edge ]
  %inits.0 = phi ptr [ @snd_akm4xxx_init.inits_ak4620, %sw.bb30 ], [ @snd_akm4xxx_init.inits_ak4381, %sw.bb20 ], [ @snd_akm4xxx_init.inits_ak4358, %sw.bb16 ], [ @snd_akm4xxx_init.inits_ak4355, %sw.bb12 ], [ @snd_akm4xxx_init.inits_ak4528, %sw.bb2 ], [ @snd_akm4xxx_init.inits_ak4524, %sw.bb ], [ @snd_akm4xxx_init.inits_ak4529, %entry.sw.epilog_crit_edge ]
  %num_chips33 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 12
  %15 = ptrtoint ptr %num_chips33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div3295.sink, ptr %num_chips33, align 4
  %name34 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 14
  %16 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.str.7.sink, ptr %name34, align 4
  %total_regs35 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 13
  %17 = ptrtoint ptr %total_regs35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %total_regs35, align 4
  %num_chips50 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div3295.sink)
  %cmp101.not = icmp eq i32 %div3295.sink, 0
  br i1 %cmp101.not, label %sw.epilog.cleanup_crit_edge, label %while.cond.preheader.lr.ph

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.lr.ph:                       ; preds = %sw.epilog
  %18 = ptrtoint ptr %inits.0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %inits.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp51.not99 = icmp eq i8 %19, -1
  %ops.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11
  %write.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 2
  %unlock.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 11, i32 1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %chip.0102 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  br i1 %cmp51.not99, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mul.i = shl i32 %chip.0102, 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %20 = phi i8 [ %19, %while.body.lr.ph ], [ %32, %while.body.while.body_crit_edge ]
  %ptr.0100 = phi ptr [ %inits.0, %while.body.lr.ph ], [ %incdec.ptr53, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.0100, i32 1
  %incdec.ptr53 = getelementptr i8, ptr %ptr.0100, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr, align 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  tail call void %24(ptr noundef %ak, i32 noundef %chip.0102) #6
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 4
  tail call void %26(ptr noundef %ak, i32 noundef %chip.0102, i8 noundef zeroext %20, i8 noundef zeroext %22) #6
  %conv.i = zext i8 %20 to i32
  %add.i = add i32 %mul.i, %conv.i
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %add.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %22, ptr %arrayidx.i, align 1
  %28 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i, align 4
  tail call void %29(ptr noundef %ak, i32 noundef %chip.0102) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #6
  %31 = ptrtoint ptr %incdec.ptr53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr53, align 1
  %cmp51.not = icmp eq i8 %32, -1
  br i1 %cmp51.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw i32 %chip.0102, 1
  %33 = ptrtoint ptr %num_chips50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_chips50, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %sw.bb26
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_akm4xxx_build_controls(ptr noundef %ak) #0 align 64 {
entry:
  %knew.i67 = alloca %struct.snd_kcontrol_new, align 4
  %knew.i39 = alloca %struct.snd_kcontrol_new, align 4
  %knew.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i) #6
  %0 = call ptr @memset(ptr %knew.i, i32 255, i32 48)
  %num_dacs.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 2
  %1 = ptrtoint ptr %num_dacs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_dacs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp170.not.i = icmp eq i32 %2, 0
  br i1 %cmp170.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %type.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %dac_info.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 9
  %count.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 6
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 3
  %info.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 7
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 8
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 9
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 11
  %idx_offset.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 7
  %index.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 4
  %tlv111.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i, i32 0, i32 10
  %3 = getelementptr inbounds i8, ptr %knew.i, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end117.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mixer_ch.0173.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end117.i.for.body.i_crit_edge ]
  %idx.0171.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add118.i, %if.end117.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp1.i = icmp eq i32 %5, 5
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.if.end12thread-pre-split.i_crit_edge

for.body.i.if.end12thread-pre-split.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12thread-pre-split.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %dac_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dac_info.i, align 4
  %switch_name.i = getelementptr %struct.snd_akm4xxx_dac_channel, ptr %7, i32 %mixer_ch.0173.i, i32 2
  %8 = ptrtoint ptr %switch_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %switch_name.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %10 = call ptr @memset(ptr %3, i32 0, i32 44)
  %11 = ptrtoint ptr %knew.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %knew.i, align 4
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %count.i, align 4
  %13 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %access.i, align 4
  %14 = ptrtoint ptr %switch_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %switch_name.i, align 4
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %name.i, align 4
  %17 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_ctl_boolean_mono_info, ptr %info.i, align 4
  %18 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ak4xxx_switch_get, ptr %get.i, align 4
  %19 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ak4xxx_switch_put, ptr %put.i, align 4
  store i32 0, ptr %access.i, align 4
  %div.i = sdiv i32 %idx.0171.i, 2
  %shl.i = shl i32 %div.i, 8
  %or8.i = or i32 %shl.i, 8388609
  %20 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or8.i, ptr %private_value.i, align 4
  %21 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ak, align 4
  %call.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef %ak) #6
  %call9.i = call i32 @snd_ctl_add(ptr noundef %22, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then.i.build_dac_controls.exit.thread_crit_edge, label %if.then.i.if.end12thread-pre-split.i_crit_edge

if.then.i.if.end12thread-pre-split.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12thread-pre-split.i

if.then.i.build_dac_controls.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_dac_controls.exit.thread

if.end12thread-pre-split.i:                       ; preds = %if.then.i.if.end12thread-pre-split.i_crit_edge, %for.body.i.if.end12thread-pre-split.i_crit_edge
  %23 = ptrtoint ptr %dac_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load ptr, ptr %dac_info.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12thread-pre-split.i, %land.lhs.true.i.if.end12.i_crit_edge
  %24 = phi ptr [ %.pr.i, %if.end12thread-pre-split.i ], [ %7, %land.lhs.true.i.if.end12.i_crit_edge ]
  %25 = call ptr @memset(ptr %knew.i, i32 0, i32 48)
  %tobool14.not.i = icmp eq ptr %24, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end27.thread.i_crit_edge, label %lor.lhs.false.i

if.end12.i.if.end27.thread.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.thread.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %arrayidx16.i = getelementptr %struct.snd_akm4xxx_dac_channel, ptr %24, i32 %mixer_ch.0173.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx16.i, align 4
  %tobool18.not.i = icmp eq ptr %27, null
  br i1 %tobool18.not.i, label %lor.lhs.false.i.if.end27.thread.i_crit_edge, label %if.end27.i

lor.lhs.false.i.if.end27.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.thread.i

if.end27.thread.i:                                ; preds = %lor.lhs.false.i.if.end27.thread.i_crit_edge, %if.end12.i.if.end27.thread.i_crit_edge
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.10, ptr %name.i, align 4
  %29 = ptrtoint ptr %idx_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx_offset.i, align 4
  %mul.i = shl i32 %30, 1
  %add.i = add i32 %mul.i, %mixer_ch.0173.i
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %index.i, align 4
  %32 = ptrtoint ptr %knew.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %knew.i, align 4
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %count.i, align 4
  %34 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %access.i, align 4
  br label %if.else36.i

if.end27.i:                                       ; preds = %lor.lhs.false.i
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %27, ptr %name.i, align 4
  %num_channels.i = getelementptr %struct.snd_akm4xxx_dac_channel, ptr %24, i32 %mixer_ch.0173.i, i32 1
  %36 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_channels.i, align 4
  %38 = ptrtoint ptr %knew.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %knew.i, align 4
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %count.i, align 4
  %40 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 19, ptr %access.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp31.i = icmp eq i32 %37, 2
  br i1 %cmp31.i, label %if.end27.i.if.end40.i_crit_edge, label %if.end27.i.if.else36.i_crit_edge

if.end27.i.if.else36.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else36.i

if.end27.i.if.end40.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.else36.i:                                      ; preds = %if.end27.i.if.else36.i_crit_edge, %if.end27.thread.i
  %num_stereo.0169.i = phi i32 [ 1, %if.end27.thread.i ], [ %37, %if.end27.i.if.else36.i_crit_edge ]
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else36.i, %if.end27.i.if.end40.i_crit_edge
  %storemerge182.i = phi ptr [ @snd_akm4xxx_volume_info, %if.else36.i ], [ @snd_akm4xxx_stereo_volume_info, %if.end27.i.if.end40.i_crit_edge ]
  %storemerge181.i = phi ptr [ @snd_akm4xxx_volume_get, %if.else36.i ], [ @snd_akm4xxx_stereo_volume_get, %if.end27.i.if.end40.i_crit_edge ]
  %storemerge.i = phi ptr [ @snd_akm4xxx_volume_put, %if.else36.i ], [ @snd_akm4xxx_stereo_volume_put, %if.end27.i.if.end40.i_crit_edge ]
  %num_stereo.0168.i = phi i32 [ %num_stereo.0169.i, %if.else36.i ], [ 2, %if.end27.i.if.end40.i_crit_edge ]
  %41 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %storemerge182.i, ptr %info.i, align 4
  %42 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %storemerge181.i, ptr %get.i, align 4
  %43 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %storemerge.i, ptr %put.i, align 4
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %45, label %if.end40.i.build_dac_controls.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb50.i
    i32 2, label %sw.bb61.i
    i32 3, label %sw.bb71.i
    i32 4, label %sw.bb78.i
    i32 5, label %sw.bb92.i
    i32 7, label %sw.bb102.i
  ]

if.end40.i.build_dac_controls.exit.thread_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_dac_controls.exit.thread

sw.bb.i:                                          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %div42.i = sdiv i32 %idx.0171.i, 2
  %shl43.i = shl i32 %div42.i, 8
  %rem.i = srem i32 %idx.0171.i, 2
  %add44.i = add nsw i32 %rem.i, 6
  %or45.i = or i32 %shl43.i, %add44.i
  %or48.i = or i32 %or45.i, 2132803584
  br label %sw.epilog.i

sw.bb50.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %div51.i = sdiv i32 %idx.0171.i, 2
  %shl52.i = shl i32 %div51.i, 8
  %rem53.i = srem i32 %idx.0171.i, 2
  %add54.i = add nsw i32 %rem53.i, 4
  %or55.i = or i32 %shl52.i, %add54.i
  %or58.i = or i32 %or55.i, 2132803584
  br label %sw.epilog.i

sw.bb61.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %idx.0171.i)
  %cmp62.inv.i = icmp sgt i32 %idx.0171.i, 5
  %cond.v.i = select i1 %cmp62.inv.i, i32 5, i32 2
  %cond.i = add i32 %cond.v.i, %idx.0171.i
  %or68.i = or i32 %cond.i, -8388608
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %add72.i = add i32 %idx.0171.i, 4
  %or75.i = or i32 %add72.i, -16777216
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %idx.0171.i)
  %cmp79.inv.i = icmp sgt i32 %idx.0171.i, 5
  %cond85.v.i = select i1 %cmp79.inv.i, i32 5, i32 4
  %cond85.i = add i32 %cond85.v.i, %idx.0171.i
  %or89.i = or i32 %cond85.i, 2134900736
  br label %sw.epilog.i

sw.bb92.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %div93.i = sdiv i32 %idx.0171.i, 2
  %shl94.i = shl i32 %div93.i, 8
  %rem95.i = srem i32 %idx.0171.i, 2
  %add96.i = add nsw i32 %rem95.i, 3
  %or97.i = or i32 %shl94.i, %add96.i
  %or99.i = or i32 %or97.i, -16777216
  br label %sw.epilog.i

sw.bb102.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %idx.0171.i.frozen = freeze i32 %idx.0171.i
  %div103.i = sdiv i32 %idx.0171.i.frozen, 2
  %shl104.i = shl i32 %div103.i, 8
  %47 = mul i32 %div103.i, 2
  %rem105.i.decomposed = sub i32 %idx.0171.i.frozen, %47
  %add106.i = add nsw i32 %rem105.i.decomposed, 6
  %or107.i = or i32 %shl104.i, %add106.i
  %or109.i = or i32 %or107.i, -16777216
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb102.i, %sw.bb92.i, %sw.bb78.i, %sw.bb71.i, %sw.bb61.i, %sw.bb50.i, %sw.bb.i
  %or109.sink.i = phi i32 [ %or109.i, %sw.bb102.i ], [ %or99.i, %sw.bb92.i ], [ %or89.i, %sw.bb78.i ], [ %or75.i, %sw.bb71.i ], [ %or68.i, %sw.bb61.i ], [ %or58.i, %sw.bb50.i ], [ %or48.i, %sw.bb.i ]
  %db_scale_linear.sink.i = phi ptr [ @db_scale_linear, %sw.bb102.i ], [ @db_scale_linear, %sw.bb92.i ], [ @db_scale_7bit, %sw.bb78.i ], [ @db_scale_8bit, %sw.bb71.i ], [ @db_scale_8bit, %sw.bb61.i ], [ @db_scale_vol_datt, %sw.bb50.i ], [ @db_scale_vol_datt, %sw.bb.i ]
  %48 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or109.sink.i, ptr %private_value.i, align 4
  %49 = ptrtoint ptr %tlv111.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %db_scale_linear.sink.i, ptr %tlv111.i, align 4
  %50 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ak, align 4
  %call113.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i, ptr noundef %ak) #6
  %call114.i = call i32 @snd_ctl_add(ptr noundef %51, ptr noundef %call113.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %cmp115.i = icmp slt i32 %call114.i, 0
  br i1 %cmp115.i, label %sw.epilog.i.build_dac_controls.exit.thread_crit_edge, label %if.end117.i

sw.epilog.i.build_dac_controls.exit.thread_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_dac_controls.exit.thread

if.end117.i:                                      ; preds = %sw.epilog.i
  %add118.i = add i32 %num_stereo.0168.i, %idx.0171.i
  %inc.i = add i32 %mixer_ch.0173.i, 1
  %52 = ptrtoint ptr %num_dacs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_dacs.i, align 4
  %cmp.i = icmp ult i32 %add118.i, %53
  br i1 %cmp.i, label %if.end117.i.for.body.i_crit_edge, label %if.end117.i.if.end_crit_edge

if.end117.i.if.end_crit_edge:                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end117.i.for.body.i_crit_edge:                 ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

build_dac_controls.exit.thread:                   ; preds = %sw.epilog.i.build_dac_controls.exit.thread_crit_edge, %if.end40.i.build_dac_controls.exit.thread_crit_edge, %if.then.i.build_dac_controls.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %if.then.i.build_dac_controls.exit.thread_crit_edge ], [ -22, %if.end40.i.build_dac_controls.exit.thread_crit_edge ], [ %call114.i, %sw.epilog.i.build_dac_controls.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end117.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i39) #6
  %type.i40 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %54 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i41 = icmp eq i32 %55, 1
  br i1 %cmp.i41, label %if.end4.thread, label %for.cond.preheader.i

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i39) #6
  br label %if.end14

for.cond.preheader.i:                             ; preds = %if.end
  %num_adcs.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 1
  %56 = ptrtoint ptr %num_adcs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_adcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1176.not.i = icmp eq i32 %57, 0
  br i1 %cmp1176.not.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.body.lr.ph.i50

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.body.lr.ph.i50:                               ; preds = %for.cond.preheader.i
  %adc_info.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 10
  %name9.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 3
  %count.i42 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 6
  %access.i43 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 5
  %info.i44 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 7
  %get.i45 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 8
  %put.i46 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 9
  %idx_offset.i47 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 7
  %index.i48 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 4
  %private_value.i49 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 11
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i39, i32 0, i32 10
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end111.i.for.body.i52_crit_edge, %for.body.lr.ph.i50
  %mixer_ch.0178.i = phi i32 [ 0, %for.body.lr.ph.i50 ], [ %inc.i64, %if.end111.i.for.body.i52_crit_edge ]
  %idx.0177.i = phi i32 [ 0, %for.body.lr.ph.i50 ], [ %add112.i, %if.end111.i.for.body.i52_crit_edge ]
  %58 = call ptr @memset(ptr %knew.i39, i32 0, i32 48)
  %59 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adc_info.i, align 4
  %tobool.not.i51 = icmp eq ptr %60, null
  br i1 %tobool.not.i51, label %for.body.i52.if.end12.thread.i_crit_edge, label %lor.lhs.false.i53

for.body.i52.if.end12.thread.i_crit_edge:         ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.thread.i

lor.lhs.false.i53:                                ; preds = %for.body.i52
  %arrayidx.i = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %60, i32 %mixer_ch.0178.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %62, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i53.if.end12.thread.i_crit_edge, label %if.end12.i57

lor.lhs.false.i53.if.end12.thread.i_crit_edge:    ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.thread.i

if.end12.thread.i:                                ; preds = %lor.lhs.false.i53.if.end12.thread.i_crit_edge, %for.body.i52.if.end12.thread.i_crit_edge
  %63 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.11, ptr %name9.i, align 4
  %64 = ptrtoint ptr %idx_offset.i47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx_offset.i47, align 4
  %mul.i54 = shl i32 %65, 1
  %add.i55 = add i32 %mul.i54, %mixer_ch.0178.i
  %66 = ptrtoint ptr %index.i48 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i55, ptr %index.i48, align 4
  %67 = ptrtoint ptr %knew.i39 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %knew.i39, align 4
  %68 = ptrtoint ptr %count.i42 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %count.i42, align 4
  %69 = ptrtoint ptr %access.i43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 19, ptr %access.i43, align 4
  br label %if.else15.i

if.end12.i57:                                     ; preds = %lor.lhs.false.i53
  %70 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %62, ptr %name9.i, align 4
  %num_channels.i56 = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %60, i32 %mixer_ch.0178.i, i32 2
  %71 = ptrtoint ptr %num_channels.i56 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_channels.i56, align 4
  %73 = ptrtoint ptr %knew.i39 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %knew.i39, align 4
  %74 = ptrtoint ptr %count.i42 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %count.i42, align 4
  %75 = ptrtoint ptr %access.i43 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 19, ptr %access.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp13.i = icmp eq i32 %72, 2
  br i1 %cmp13.i, label %if.end12.i57.if.end19.i_crit_edge, label %if.end12.i57.if.else15.i_crit_edge

if.end12.i57.if.else15.i_crit_edge:               ; preds = %if.end12.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else15.i

if.end12.i57.if.end19.i_crit_edge:                ; preds = %if.end12.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.else15.i:                                      ; preds = %if.end12.i57.if.else15.i_crit_edge, %if.end12.thread.i
  %num_stereo.0173.i = phi i32 [ 1, %if.end12.thread.i ], [ %72, %if.end12.i57.if.else15.i_crit_edge ]
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else15.i, %if.end12.i57.if.end19.i_crit_edge
  %storemerge191.i = phi ptr [ @snd_akm4xxx_volume_info, %if.else15.i ], [ @snd_akm4xxx_stereo_volume_info, %if.end12.i57.if.end19.i_crit_edge ]
  %storemerge190.i = phi ptr [ @snd_akm4xxx_volume_get, %if.else15.i ], [ @snd_akm4xxx_stereo_volume_get, %if.end12.i57.if.end19.i_crit_edge ]
  %storemerge.i58 = phi ptr [ @snd_akm4xxx_volume_put, %if.else15.i ], [ @snd_akm4xxx_stereo_volume_put, %if.end12.i57.if.end19.i_crit_edge ]
  %num_stereo.0172.i = phi i32 [ %num_stereo.0173.i, %if.else15.i ], [ 2, %if.end12.i57.if.end19.i_crit_edge ]
  %76 = ptrtoint ptr %info.i44 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %storemerge191.i, ptr %info.i44, align 4
  %77 = ptrtoint ptr %get.i45 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %storemerge190.i, ptr %get.i45, align 4
  %78 = ptrtoint ptr %put.i46 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %storemerge.i58, ptr %put.i46, align 4
  %79 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %80)
  %cmp21.i = icmp eq i32 %80, 6
  %..i = select i1 %cmp21.i, i32 -1744830464, i32 -1543503872
  %idx.0177.i.frozen = freeze i32 %idx.0177.i
  %div.i59 = sdiv i32 %idx.0177.i.frozen, 2
  %shl.i60 = shl i32 %div.i59, 8
  %81 = mul i32 %div.i59, 2
  %rem.i61.decomposed = sub i32 %idx.0177.i.frozen, %81
  %add25.i = add nsw i32 %rem.i61.decomposed, 4
  %or.i = or i32 %shl.i60, %add25.i
  %or28.i = or i32 %or.i, %..i
  %or30.i = or i32 %or28.i, 3145728
  %82 = ptrtoint ptr %private_value.i49 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or30.i, ptr %private_value.i49, align 4
  %83 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @db_scale_vol_datt, ptr %tlv.i, align 4
  %84 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ak, align 4
  %call.i62 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i39, ptr noundef %ak) #6
  %call31.i = call i32 @snd_ctl_add(ptr noundef %85, ptr noundef %call.i62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end19.i.build_adc_controls.exit.thread_crit_edge, label %if.end34.i

if.end19.i.build_adc_controls.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_adc_controls.exit.thread

if.end34.i:                                       ; preds = %if.end19.i
  %86 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %87)
  %cmp36.i = icmp eq i32 %87, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i61.decomposed)
  %cmp38.i = icmp eq i32 %rem.i61.decomposed, 0
  %or.cond.i = select i1 %cmp36.i, i1 %cmp38.i, i1 false
  br i1 %or.cond.i, label %if.then39.i, label %if.end34.i.if.end111.i_crit_edge

if.end34.i.if.end111.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.then39.i:                                      ; preds = %if.end34.i
  %88 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adc_info.i, align 4
  %tobool41.not.i = icmp eq ptr %89, null
  br i1 %tobool41.not.i, label %if.then39.i.if.then46.i_crit_edge, label %lor.lhs.false42.i

if.then39.i.if.then46.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

lor.lhs.false42.i:                                ; preds = %if.then39.i
  %switch_name.i63 = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %89, i32 %mixer_ch.0178.i, i32 1
  %90 = ptrtoint ptr %switch_name.i63 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %switch_name.i63, align 4
  %tobool45.not.i = icmp eq ptr %91, null
  br i1 %tobool45.not.i, label %lor.lhs.false42.i.if.then46.i_crit_edge, label %if.else52.i

lor.lhs.false42.i.if.then46.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

if.then46.i:                                      ; preds = %lor.lhs.false42.i.if.then46.i_crit_edge, %if.then39.i.if.then46.i_crit_edge
  %92 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.12, ptr %name9.i, align 4
  %93 = ptrtoint ptr %idx_offset.i47 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %idx_offset.i47, align 4
  %mul49.i = shl i32 %94, 1
  %add50.i = add i32 %mul49.i, %mixer_ch.0178.i
  %95 = ptrtoint ptr %index.i48 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add50.i, ptr %index.i48, align 4
  br label %if.end57.i

if.else52.i:                                      ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %91, ptr %name9.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else52.i, %if.then46.i
  %97 = ptrtoint ptr %info.i44 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @snd_ctl_boolean_mono_info, ptr %info.i44, align 4
  %98 = ptrtoint ptr %get.i45 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @ak4xxx_switch_get, ptr %get.i45, align 4
  %99 = ptrtoint ptr %put.i46 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @ak4xxx_switch_put, ptr %put.i46, align 4
  %100 = ptrtoint ptr %access.i43 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %access.i43, align 4
  %or67.i = or i32 %shl.i60, 8388610
  %101 = ptrtoint ptr %private_value.i49 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or67.i, ptr %private_value.i49, align 4
  %102 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ak, align 4
  %call70.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i39, ptr noundef %ak) #6
  %call71.i = call i32 @snd_ctl_add(ptr noundef %103, ptr noundef %call70.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.end57.i.build_adc_controls.exit.thread_crit_edge, label %if.end74.i

if.end57.i.build_adc_controls.exit.thread_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_adc_controls.exit.thread

if.end74.i:                                       ; preds = %if.end57.i
  %104 = call ptr @memset(ptr %knew.i39, i32 0, i32 48)
  %105 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adc_info.i, align 4
  %tobool76.not.i = icmp eq ptr %106, null
  br i1 %tobool76.not.i, label %if.end74.i.if.then81.i_crit_edge, label %lor.lhs.false77.i

if.end74.i.if.then81.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81.i

lor.lhs.false77.i:                                ; preds = %if.end74.i
  %selector_name.i = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %106, i32 %mixer_ch.0178.i, i32 3
  %107 = ptrtoint ptr %selector_name.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %selector_name.i, align 4
  %tobool80.not.i = icmp eq ptr %108, null
  br i1 %tobool80.not.i, label %lor.lhs.false77.i.if.then81.i_crit_edge, label %if.else87.i

lor.lhs.false77.i.if.then81.i_crit_edge:          ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false77.i.if.then81.i_crit_edge, %if.end74.i.if.then81.i_crit_edge
  %109 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.13, ptr %name9.i, align 4
  %110 = ptrtoint ptr %idx_offset.i47 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %idx_offset.i47, align 4
  %mul84.i = shl i32 %111, 1
  %add85.i = add i32 %mul84.i, %mixer_ch.0178.i
  %112 = ptrtoint ptr %index.i48 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add85.i, ptr %index.i48, align 4
  br label %if.end92.i

if.else87.i:                                      ; preds = %lor.lhs.false77.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %108, ptr %name9.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else87.i, %if.then81.i
  %114 = ptrtoint ptr %knew.i39 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %knew.i39, align 4
  %115 = ptrtoint ptr %info.i44 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @ak4xxx_capture_source_info, ptr %info.i44, align 4
  %116 = ptrtoint ptr %get.i45 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @ak4xxx_capture_source_get, ptr %get.i45, align 4
  %117 = ptrtoint ptr %put.i46 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @ak4xxx_capture_source_put, ptr %put.i46, align 4
  %118 = ptrtoint ptr %access.i43 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %access.i43, align 4
  %shl101.i = shl i32 %mixer_ch.0178.i, 16
  %or100.i = or i32 %shl101.i, %shl.i60
  %or103.i = or i32 %or100.i, 117440513
  %119 = ptrtoint ptr %private_value.i49 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or103.i, ptr %private_value.i49, align 4
  %120 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ak, align 4
  %call106.i = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i39, ptr noundef %ak) #6
  %call107.i = call i32 @snd_ctl_add(ptr noundef %121, ptr noundef %call106.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %cmp108.i = icmp slt i32 %call107.i, 0
  br i1 %cmp108.i, label %if.end92.i.build_adc_controls.exit.thread_crit_edge, label %if.end92.i.if.end111.i_crit_edge

if.end92.i.if.end111.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i

if.end92.i.build_adc_controls.exit.thread_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_adc_controls.exit.thread

if.end111.i:                                      ; preds = %if.end92.i.if.end111.i_crit_edge, %if.end34.i.if.end111.i_crit_edge
  %add112.i = add i32 %num_stereo.0172.i, %idx.0177.i
  %inc.i64 = add i32 %mixer_ch.0178.i, 1
  %122 = ptrtoint ptr %num_adcs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_adcs.i, align 4
  %cmp1.i65 = icmp ult i32 %add112.i, %123
  br i1 %cmp1.i65, label %if.end111.i.for.body.i52_crit_edge, label %if.end111.i.if.end4_crit_edge

if.end111.i.if.end4_crit_edge:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end111.i.for.body.i52_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i52

build_adc_controls.exit.thread:                   ; preds = %if.end92.i.build_adc_controls.exit.thread_crit_edge, %if.end57.i.build_adc_controls.exit.thread_crit_edge, %if.end19.i.build_adc_controls.exit.thread_crit_edge
  %retval.0.i66.ph = phi i32 [ %call107.i, %if.end92.i.build_adc_controls.exit.thread_crit_edge ], [ %call71.i, %if.end57.i.build_adc_controls.exit.thread_crit_edge ], [ %call31.i, %if.end19.i.build_adc_controls.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i39) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end111.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge
  %124 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr = load i32, ptr %type.i40, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i39) #6
  %125 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %.pr, label %if.end4.if.end14_crit_edge [
    i32 3, label %if.end4.if.end14.thread_crit_edge
    i32 4, label %if.end4.if.end14.thread_crit_edge102
    i32 7, label %if.end14.thread97
  ]

if.end4.if.end14.thread_crit_edge102:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.thread

if.end4.if.end14.thread_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.thread

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14.thread97:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i67) #6
  br label %if.end18

if.end14.thread:                                  ; preds = %if.end4.if.end14.thread_crit_edge, %if.end4.if.end14.thread_crit_edge102
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i67) #6
  br label %for.body.lr.ph.i77

if.end14:                                         ; preds = %if.end4.if.end14_crit_edge, %if.end4.thread
  %126 = ptrtoint ptr %num_dacs.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_dacs.i, align 4
  %div38 = lshr i32 %127, 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew.i67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp36.i68.not = icmp ult i32 %127, 2
  br i1 %cmp36.i68.not, label %if.end14.if.end18_crit_edge, label %if.end14.for.body.lr.ph.i77_crit_edge

if.end14.for.body.lr.ph.i77_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i77

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body.lr.ph.i77:                               ; preds = %if.end14.for.body.lr.ph.i77_crit_edge, %if.end14.thread
  %num_emphs.096 = phi i32 [ 1, %if.end14.thread ], [ %div38, %if.end14.for.body.lr.ph.i77_crit_edge ]
  %name.i69 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 3
  %idx_offset.i70 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 7
  %index.i71 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 4
  %count.i72 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 6
  %info.i73 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 7
  %get.i74 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 8
  %put.i75 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 9
  %private_value20.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew.i67, i32 0, i32 11
  %128 = getelementptr inbounds i8, ptr %knew.i67, i32 4
  br label %for.body.i80

for.cond.i:                                       ; preds = %sw.epilog.i86
  %inc.i78 = add nuw nsw i32 %idx.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i78, %num_emphs.096
  br i1 %exitcond.not.i, label %for.cond.i.if.end18_crit_edge, label %for.cond.i.for.body.i80_crit_edge

for.cond.i.for.body.i80_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i80

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body.i80:                                     ; preds = %for.cond.i.for.body.i80_crit_edge, %for.body.lr.ph.i77
  %idx.037.i = phi i32 [ 0, %for.body.lr.ph.i77 ], [ %inc.i78, %for.cond.i.for.body.i80_crit_edge ]
  %129 = call ptr @memset(ptr %128, i32 0, i32 40)
  %130 = ptrtoint ptr %name.i69 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.14, ptr %name.i69, align 4
  %131 = ptrtoint ptr %idx_offset.i70 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %idx_offset.i70, align 4
  %add.i79 = add i32 %132, %idx.037.i
  %133 = ptrtoint ptr %index.i71 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add.i79, ptr %index.i71, align 4
  %134 = ptrtoint ptr %knew.i67 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %knew.i67, align 4
  %135 = ptrtoint ptr %count.i72 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %count.i72, align 4
  %136 = ptrtoint ptr %info.i73 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @snd_akm4xxx_deemphasis_info, ptr %info.i73, align 4
  %137 = ptrtoint ptr %get.i74 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @snd_akm4xxx_deemphasis_get, ptr %get.i74, align 4
  %138 = ptrtoint ptr %put.i75 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @snd_akm4xxx_deemphasis_put, ptr %put.i75, align 4
  %139 = ptrtoint ptr %type.i40 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %type.i40, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %140, label %for.body.i80.build_deemphasis.exit_crit_edge [
    i32 0, label %for.body.i80.sw.bb.i83_crit_edge
    i32 1, label %for.body.i80.sw.bb.i83_crit_edge103
    i32 7, label %for.body.i80.sw.bb.i83_crit_edge104
    i32 2, label %sw.bb3.i
    i32 3, label %for.body.i80.sw.bb9.i_crit_edge
    i32 4, label %for.body.i80.sw.bb9.i_crit_edge105
    i32 5, label %sw.bb15.i
  ]

for.body.i80.sw.bb9.i_crit_edge105:               ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

for.body.i80.sw.bb9.i_crit_edge:                  ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

for.body.i80.sw.bb.i83_crit_edge104:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i83

for.body.i80.sw.bb.i83_crit_edge103:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i83

for.body.i80.sw.bb.i83_crit_edge:                 ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i83

for.body.i80.build_deemphasis.exit_crit_edge:     ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_deemphasis.exit

sw.bb.i83:                                        ; preds = %for.body.i80.sw.bb.i83_crit_edge, %for.body.i80.sw.bb.i83_crit_edge103, %for.body.i80.sw.bb.i83_crit_edge104
  %shl.i81 = shl i32 %idx.037.i, 8
  %or.i82 = or i32 %shl.i81, 3
  br label %sw.epilog.i86

sw.bb3.i:                                         ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx.037.i)
  %cmp4.i = icmp eq i32 %idx.037.i, 3
  %mul.i84 = mul i32 %idx.037.i, -131072
  %mul.op.op.i = add i32 %mul.i84, 262152
  %or6.i = select i1 %cmp4.i, i32 393224, i32 %mul.op.op.i
  br label %sw.epilog.i86

sw.bb9.i:                                         ; preds = %for.body.i80.sw.bb9.i_crit_edge, %for.body.i80.sw.bb9.i_crit_edge105
  %shl10.i = shl i32 %idx.037.i, 8
  %or11.i = or i32 %shl10.i, 3
  br label %sw.epilog.i86

sw.bb15.i:                                        ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  %shl16.i = shl i32 %idx.037.i, 8
  %or18.i = or i32 %shl16.i, 65537
  br label %sw.epilog.i86

sw.epilog.i86:                                    ; preds = %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i83
  %or18.sink.i = phi i32 [ %or18.i, %sw.bb15.i ], [ %or11.i, %sw.bb9.i ], [ %or6.i, %sw.bb3.i ], [ %or.i82, %sw.bb.i83 ]
  %142 = ptrtoint ptr %private_value20.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or18.sink.i, ptr %private_value20.i, align 4
  %143 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ak, align 4
  %call.i85 = call ptr @snd_ctl_new1(ptr noundef nonnull %knew.i67, ptr noundef %ak) #6
  %call21.i = call i32 @snd_ctl_add(ptr noundef %144, ptr noundef %call.i85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %sw.epilog.i86.build_deemphasis.exit_crit_edge, label %for.cond.i

sw.epilog.i86.build_deemphasis.exit_crit_edge:    ; preds = %sw.epilog.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_deemphasis.exit

build_deemphasis.exit:                            ; preds = %sw.epilog.i86.build_deemphasis.exit_crit_edge, %for.body.i80.build_deemphasis.exit_crit_edge
  %retval.0.i87 = phi i32 [ %call21.i, %sw.epilog.i86.build_deemphasis.exit_crit_edge ], [ -22, %for.body.i80.build_deemphasis.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i67) #6
  br label %cleanup

if.end18:                                         ; preds = %for.cond.i.if.end18_crit_edge, %if.end14.if.end18_crit_edge, %if.end14.thread97
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew.i67) #6
  %145 = ptrtoint ptr %ak to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ak, align 4
  %name.i88 = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 14
  %147 = ptrtoint ptr %name.i88 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name.i88, align 4
  %call.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %146, ptr noundef %148, ptr noundef %ak, ptr noundef nonnull @proc_regs_read, ptr noundef null) #6
  %149 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %build_deemphasis.exit, %build_adc_controls.exit.thread, %build_dac_controls.exit.thread
  %retval.0 = phi i32 [ %retval.0.i87, %build_deemphasis.exit ], [ %149, %if.end18 ], [ %retval.0.i.ph, %build_dac_controls.exit.thread ], [ %retval.0.i66.ph, %build_adc_controls.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak4xxx_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 15
  %4 = lshr i32 %3, 4
  %mul = and i32 %4, 4080
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %shl = shl nuw nsw i32 1, %and5
  %7 = trunc i32 %shl to i8
  %conv10 = and i8 %6, %7
  %8 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %tobool11.not = icmp eq i8 %conv10, 0
  %conv12 = zext i1 %tobool11.not to i8
  %val.0 = select i1 %tobool.not, i8 %conv10, i8 %conv12
  %conv13 = zext i8 %val.0 to i32
  %9 = lshr i32 %conv13, %and5
  %10 = and i32 %9, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4xxx_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %6 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool9.not to i32
  %flag.0 = select i1 %tobool.not, i32 %5, i32 %lnot.ext
  %mul = shl nuw nsw i32 %and, 4
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx10 = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag.0)
  %tobool11.not = icmp eq i32 %flag.0, 0
  %shl15 = shl nuw nsw i32 1, %and5
  %9 = trunc i32 %shl15 to i8
  %conv13 = or i8 %8, %9
  %10 = xor i8 %9, -1
  %conv17 = and i8 %8, %10
  %val.0 = select i1 %tobool11.not, i8 %conv17, i8 %conv13
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %val.0)
  %cmp = icmp ne i8 %8, %val.0
  br i1 %cmp, label %if.then23, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = trunc i32 %3 to i8
  %ops.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef %and) #6
  %write.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef %and, i8 noundef zeroext %conv24, i8 noundef zeroext %val.0) #6
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val.0, ptr %arrayidx10, align 1
  %unlock.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef %and) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %entry.if.end25_crit_edge
  %conv21 = zext i1 %cmp to i32
  ret i32 %conv21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_akm4xxx_stereo_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_akm4xxx_stereo_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %4 = lshr i32 %3, 4
  %mul = and i32 %4, 4080
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 4, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %value, align 8
  %add7 = add nuw nsw i32 %add, 1
  %arrayidx8 = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 4, i32 %add7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %arrayidx11 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv9, ptr %arrayidx11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_akm4xxx_stereo_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %and = and i32 %1, 255
  %shr = lshr i32 %1, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shr)
  %cmp = icmp ugt i32 %3, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp9 = icmp ugt i32 %5, %shr
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %3 to i8
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %shr2.i = lshr i32 %1, 8
  %and3.i = and i32 %shr2.i, 255
  %mul.i = shl nuw nsw i32 %and3.i, 4
  %add.i = add nuw nsw i32 %mul.i, %and
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %7, i32 0, i32 4, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %conv)
  %cmp.i = icmp eq i8 %9, %conv
  br i1 %cmp.i, label %if.end.put_ak_reg.exit_crit_edge, label %if.end.i

if.end.put_ak_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_ak_reg.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx.i, align 1
  %11 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private_value, align 4
  %13 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %cmp14.i = icmp sgt i8 %conv, -1
  %or.cond.i = and i1 %cmp14.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then16.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17.i = getelementptr [128 x i8], ptr @vol_cvt_datt, i32 0, i32 %conv4.i
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  %nval.addr.0.i = phi i8 [ %15, %if.then16.i ], [ %conv, %if.end.i.if.end18.i_crit_edge ]
  %16 = and i32 %12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nval.addr.0.i)
  %cmp25.i = icmp slt i8 %nval.addr.0.i, 0
  %or.cond68.i = select i1 %tobool22.not.i, i1 %cmp25.i, i1 false
  %inc.i = zext i1 %or.cond68.i to i8
  %nval.addr.1.i = add i8 %nval.addr.0.i, %inc.i
  %17 = and i32 %12, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not.i = icmp eq i32 %17, 0
  %18 = trunc i32 %shr to i8
  %conv35.i = sub i8 %18, %nval.addr.1.i
  %nval.addr.2.i = select i1 %tobool32.not.i, i8 %nval.addr.1.i, i8 %conv35.i
  %19 = lshr i32 %12, 15
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, -128
  %22 = or i8 %nval.addr.2.i, %21
  %conv45.i = trunc i32 %1 to i8
  %ops.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %7, i32 0, i32 11
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  tail call void %24(ptr noundef %7, i32 noundef %and3.i) #6
  %write.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %7, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i.i, align 4
  tail call void %26(ptr noundef %7, i32 noundef %and3.i, i8 noundef zeroext %conv45.i, i8 noundef zeroext %22) #6
  %arrayidx.i.i = getelementptr %struct.snd_akm4xxx, ptr %7, i32 0, i32 3, i32 %add.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %22, ptr %arrayidx.i.i, align 1
  %unlock.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %7, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock.i.i, align 4
  tail call void %29(ptr noundef %7, i32 noundef %and3.i) #6
  br label %put_ak_reg.exit

put_ak_reg.exit:                                  ; preds = %if.end18.i, %if.end.put_ak_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end18.i ], [ 0, %if.end.put_ak_reg.exit_crit_edge ]
  %add = add nuw nsw i32 %and, 1
  %conv12 = trunc i32 %5 to i8
  %30 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i, align 4
  %32 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private_value, align 4
  %shr.i29 = lshr i32 %33, 24
  %shr2.i30 = lshr i32 %33, 8
  %and3.i31 = and i32 %shr2.i30, 255
  %mul.i32 = shl nuw nsw i32 %and3.i31, 4
  %add.i33 = add nuw nsw i32 %mul.i32, %add
  %arrayidx.i34 = getelementptr %struct.snd_akm4xxx, ptr %31, i32 0, i32 4, i32 %add.i33
  %34 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i34, align 1
  %conv4.i35 = and i32 %5, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %conv12)
  %cmp.i36 = icmp eq i8 %35, %conv12
  br i1 %cmp.i36, label %put_ak_reg.exit.put_ak_reg.exit60_crit_edge, label %if.end.i40

put_ak_reg.exit.put_ak_reg.exit60_crit_edge:      ; preds = %put_ak_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_ak_reg.exit60

if.end.i40:                                       ; preds = %put_ak_reg.exit
  %36 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv12, ptr %arrayidx.i34, align 1
  %37 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private_value, align 4
  %39 = and i32 %38, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i37 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv12)
  %cmp14.i38 = icmp sgt i8 %conv12, -1
  %or.cond.i39 = and i1 %cmp14.i38, %tobool.not.i37
  br i1 %or.cond.i39, label %if.then16.i42, label %if.end.i40.if.end18.i58_crit_edge

if.end.i40.if.end18.i58_crit_edge:                ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i58

if.then16.i42:                                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17.i41 = getelementptr [128 x i8], ptr @vol_cvt_datt, i32 0, i32 %conv4.i35
  %40 = ptrtoint ptr %arrayidx17.i41 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx17.i41, align 1
  br label %if.end18.i58

if.end18.i58:                                     ; preds = %if.then16.i42, %if.end.i40.if.end18.i58_crit_edge
  %nval.addr.0.i43 = phi i8 [ %41, %if.then16.i42 ], [ %conv12, %if.end.i40.if.end18.i58_crit_edge ]
  %42 = and i32 %38, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool22.not.i44 = icmp ne i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nval.addr.0.i43)
  %cmp25.i45 = icmp slt i8 %nval.addr.0.i43, 0
  %or.cond68.i46 = select i1 %tobool22.not.i44, i1 %cmp25.i45, i1 false
  %inc.i47 = zext i1 %or.cond68.i46 to i8
  %nval.addr.1.i48 = add i8 %nval.addr.0.i43, %inc.i47
  %43 = and i32 %38, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool32.not.i49 = icmp eq i32 %43, 0
  %44 = trunc i32 %shr.i29 to i8
  %conv35.i50 = sub i8 %44, %nval.addr.1.i48
  %nval.addr.2.i51 = select i1 %tobool32.not.i49, i8 %nval.addr.1.i48, i8 %conv35.i50
  %45 = lshr i32 %38, 15
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, -128
  %48 = or i8 %nval.addr.2.i51, %47
  %conv45.i52 = trunc i32 %add to i8
  %ops.i.i53 = getelementptr inbounds %struct.snd_akm4xxx, ptr %31, i32 0, i32 11
  %49 = ptrtoint ptr %ops.i.i53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i53, align 4
  tail call void %50(ptr noundef %31, i32 noundef %and3.i31) #6
  %write.i.i54 = getelementptr inbounds %struct.snd_akm4xxx, ptr %31, i32 0, i32 11, i32 2
  %51 = ptrtoint ptr %write.i.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i.i54, align 4
  tail call void %52(ptr noundef %31, i32 noundef %and3.i31, i8 noundef zeroext %conv45.i52, i8 noundef zeroext %48) #6
  %conv.i.i = and i32 %add, 255
  %add.i.i55 = add nuw nsw i32 %mul.i32, %conv.i.i
  %arrayidx.i.i56 = getelementptr %struct.snd_akm4xxx, ptr %31, i32 0, i32 3, i32 %add.i.i55
  %53 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %48, ptr %arrayidx.i.i56, align 1
  %unlock.i.i57 = getelementptr inbounds %struct.snd_akm4xxx, ptr %31, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %unlock.i.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %unlock.i.i57, align 4
  tail call void %55(ptr noundef %31, i32 noundef %and3.i31) #6
  br label %put_ak_reg.exit60

put_ak_reg.exit60:                                ; preds = %if.end18.i58, %put_ak_reg.exit.put_ak_reg.exit60_crit_edge
  %retval.0.i59 = phi i32 [ 1, %if.end18.i58 ], [ 0, %put_ak_reg.exit.put_ak_reg.exit60_crit_edge ]
  %or = or i32 %retval.0.i59, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %put_ak_reg.exit60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %put_ak_reg.exit60 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_akm4xxx_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_akm4xxx_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %4 = lshr i32 %3, 4
  %mul = and i32 %4, 4080
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 4, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_akm4xxx_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shr)
  %cmp = icmp ugt i32 %3, %shr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 255
  %conv = trunc i32 %3 to i8
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %shr2.i = lshr i32 %1, 8
  %and3.i = and i32 %shr2.i, 255
  %mul.i = shl nuw nsw i32 %and3.i, 4
  %add.i = add nuw nsw i32 %mul.i, %and2
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 4, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %conv)
  %cmp.i = icmp eq i8 %7, %conv
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx.i, align 1
  %9 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private_value, align 4
  %11 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %cmp14.i = icmp sgt i8 %conv, -1
  %or.cond.i = and i1 %cmp14.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then16.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17.i = getelementptr [128 x i8], ptr @vol_cvt_datt, i32 0, i32 %conv4.i
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end.i.if.end18.i_crit_edge
  %nval.addr.0.i = phi i8 [ %13, %if.then16.i ], [ %conv, %if.end.i.if.end18.i_crit_edge ]
  %14 = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not.i = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nval.addr.0.i)
  %cmp25.i = icmp slt i8 %nval.addr.0.i, 0
  %or.cond68.i = select i1 %tobool22.not.i, i1 %cmp25.i, i1 false
  %inc.i = zext i1 %or.cond68.i to i8
  %nval.addr.1.i = add i8 %nval.addr.0.i, %inc.i
  %15 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not.i = icmp eq i32 %15, 0
  %16 = trunc i32 %shr to i8
  %conv35.i = sub i8 %16, %nval.addr.1.i
  %nval.addr.2.i = select i1 %tobool32.not.i, i8 %nval.addr.1.i, i8 %conv35.i
  %17 = lshr i32 %10, 15
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, -128
  %20 = or i8 %nval.addr.2.i, %19
  %conv45.i = trunc i32 %1 to i8
  %ops.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  tail call void %22(ptr noundef %5, i32 noundef %and3.i) #6
  %write.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %5, i32 0, i32 11, i32 2
  %23 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i, align 4
  tail call void %24(ptr noundef %5, i32 noundef %and3.i, i8 noundef zeroext %conv45.i, i8 noundef zeroext %20) #6
  %arrayidx.i.i = getelementptr %struct.snd_akm4xxx, ptr %5, i32 0, i32 3, i32 %add.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %20, ptr %arrayidx.i.i, align 1
  %unlock.i.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %5, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %unlock.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock.i.i, align 4
  tail call void %27(ptr noundef %5, i32 noundef %and3.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end18.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4xxx_capture_source_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 15
  %adc_info.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc_info.i, align 4
  %input_names1.i = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %5, i32 %and, i32 4
  %6 = ptrtoint ptr %input_names1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_names1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %entry
  %arrayidx2.1.i = getelementptr ptr, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i, label %while.body.i.if.end_crit_edge, label %while.body.1.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx2.2.i = getelementptr ptr, ptr %7, i32 2
  %12 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %13, null
  br i1 %tobool.not.2.i, label %while.body.1.i.if.end_crit_edge, label %while.body.2.i

while.body.1.i.if.end_crit_edge:                  ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx2.3.i = getelementptr ptr, ptr %7, i32 3
  %14 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %15, null
  br i1 %tobool.not.3.i, label %while.body.2.i.if.end_crit_edge, label %while.body.3.i

while.body.2.i.if.end_crit_edge:                  ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.4.i = getelementptr ptr, ptr %7, i32 4
  %16 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %17, null
  %spec.select.i = select i1 %tobool.not.4.i, i32 4, i32 5
  br label %if.end

if.end:                                           ; preds = %while.body.3.i, %while.body.2.i.if.end_crit_edge, %while.body.1.i.if.end_crit_edge, %while.body.i.if.end_crit_edge
  %num_names.0.lcssa.i.ph = phi i32 [ %spec.select.i, %while.body.3.i ], [ 3, %while.body.2.i.if.end_crit_edge ], [ 2, %while.body.1.i.if.end_crit_edge ], [ 1, %while.body.i.if.end_crit_edge ]
  %call1 = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %num_names.0.lcssa.i.ph, ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak4xxx_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 24
  %4 = lshr i32 %3, 4
  %mul = and i32 %4, 4080
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = trunc i32 %shr4 to i8
  %conv7 = and i8 %6, %7
  %conv8 = zext i8 %conv7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4xxx_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 15
  %shr2 = lshr i32 %3, 8
  %and3 = and i32 %shr2, 255
  %adc_info.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %adc_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc_info.i, align 4
  %input_names1.i = getelementptr %struct.snd_akm4xxx_adc_channel, ptr %5, i32 %and, i32 4
  %6 = ptrtoint ptr %input_names1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_names1.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %entry
  %arrayidx2.1.i = getelementptr ptr, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %11, null
  br i1 %tobool.not.1.i, label %while.body.i.ak4xxx_capture_num_inputs.exit_crit_edge, label %while.body.1.i

while.body.i.ak4xxx_capture_num_inputs.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4xxx_capture_num_inputs.exit

while.body.1.i:                                   ; preds = %while.body.i
  %arrayidx2.2.i = getelementptr ptr, ptr %7, i32 2
  %12 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %13, null
  br i1 %tobool.not.2.i, label %while.body.1.i.ak4xxx_capture_num_inputs.exit_crit_edge, label %while.body.2.i

while.body.1.i.ak4xxx_capture_num_inputs.exit_crit_edge: ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4xxx_capture_num_inputs.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %arrayidx2.3.i = getelementptr ptr, ptr %7, i32 3
  %14 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %15, null
  br i1 %tobool.not.3.i, label %while.body.2.i.ak4xxx_capture_num_inputs.exit_crit_edge, label %while.body.3.i

while.body.2.i.ak4xxx_capture_num_inputs.exit_crit_edge: ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ak4xxx_capture_num_inputs.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.4.i = getelementptr ptr, ptr %7, i32 4
  %16 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %17, null
  %spec.select.i = select i1 %tobool.not.4.i, i32 4, i32 5
  br label %ak4xxx_capture_num_inputs.exit

ak4xxx_capture_num_inputs.exit:                   ; preds = %while.body.3.i, %while.body.2.i.ak4xxx_capture_num_inputs.exit_crit_edge, %while.body.1.i.ak4xxx_capture_num_inputs.exit_crit_edge, %while.body.i.ak4xxx_capture_num_inputs.exit_crit_edge
  %num_names.0.lcssa.i = phi i32 [ 1, %while.body.i.ak4xxx_capture_num_inputs.exit_crit_edge ], [ 2, %while.body.1.i.ak4xxx_capture_num_inputs.exit_crit_edge ], [ 3, %while.body.2.i.ak4xxx_capture_num_inputs.exit_crit_edge ], [ %spec.select.i, %while.body.3.i ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %num_names.0.lcssa.i)
  %cmp.not = icmp ult i32 %19, %num_names.0.lcssa.i
  br i1 %cmp.not, label %if.end, label %ak4xxx_capture_num_inputs.exit.cleanup_crit_edge

ak4xxx_capture_num_inputs.exit.cleanup_crit_edge: ; preds = %ak4xxx_capture_num_inputs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ak4xxx_capture_num_inputs.exit
  %and5 = and i32 %3, 255
  %shr7 = lshr i32 %3, 24
  %mul = shl nuw nsw i32 %and3, 4
  %add = add nuw nsw i32 %mul, %and5
  %arrayidx9 = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  %22 = trunc i32 %shr7 to i8
  %23 = xor i8 %22, -1
  %conv11 = and i8 %21, %23
  %and14 = and i32 %19, %shr7
  %24 = trunc i32 %and14 to i8
  %conv16 = or i8 %conv11, %24
  call void @__sanitizer_cov_trace_cmp1(i8 %conv16, i8 %21)
  %cmp19.not = icmp eq i8 %conv16, %21
  br i1 %cmp19.not, label %if.end.cleanup_crit_edge, label %if.then21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i32 %3 to i8
  %ops.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef %and3) #6
  %write.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef %and3, i8 noundef zeroext %conv22, i8 noundef zeroext %conv16) #6
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16, ptr %arrayidx9, align 1
  %unlock.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock.i, align 4
  tail call void %31(ptr noundef %1, i32 noundef %and3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end.cleanup_crit_edge, %ak4xxx_capture_num_inputs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then21 ], [ -22, %ak4xxx_capture_num_inputs.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_akm4xxx_deemphasis_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_akm4xxx_deemphasis_info.texts) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_akm4xxx_deemphasis_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 15
  %4 = lshr i32 %3, 4
  %mul = and i32 %4, 4080
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shr6 = lshr i32 %conv, %and5
  %and7 = and i32 %shr6, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_akm4xxx_deemphasis_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  %and2 = and i32 %3, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %conv = and i32 %5, 3
  %shl = shl nuw nsw i32 %conv, %and5
  %mul = shl nuw nsw i32 %and, 4
  %add = add nuw nsw i32 %mul, %and2
  %arrayidx8 = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 3, %and5
  %neg = xor i32 %shl10, -1
  %and11 = and i32 %conv9, %neg
  %or = or i32 %and11, %shl
  %conv18 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %conv9)
  %cmp = icmp ne i32 %conv18, %conv9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = trunc i32 %or to i8
  %conv20 = trunc i32 %3 to i8
  %ops.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %and) #6
  %write.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %and, i8 noundef zeroext %conv20, i8 noundef zeroext %conv12) #6
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %arrayidx8, align 1
  %unlock.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %unlock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unlock.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef %and) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv19 = zext i1 %cmp to i32
  ret i32 %conv19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @proc_regs_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_chips = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_chips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %entry.for.end8_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %total_regs = getelementptr inbounds %struct.snd_akm4xxx, ptr %1, i32 0, i32 13
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc6.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %chip.020 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond2.preheader_crit_edge ]
  %4 = ptrtoint ptr %total_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp317.not = icmp eq i32 %5, 0
  br i1 %cmp317.not, label %for.cond2.preheader.for.inc6_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.inc6_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc6

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %mul = shl i32 %chip.020, 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %reg.018 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %add = add i32 %reg.018, %mul
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %1, i32 0, i32 3, i32 %add
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %chip.020, i32 noundef %reg.018, i32 noundef %conv) #6
  %inc = add nuw i32 %reg.018, 1
  %10 = ptrtoint ptr %total_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_regs, align 4
  %cmp3 = icmp ult i32 %inc, %11
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.inc6_crit_edge

for.body4.for.inc6_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc6

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.inc6:                                         ; preds = %for.body4.for.inc6_crit_edge, %for.cond2.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %chip.020, 1
  %12 = ptrtoint ptr %num_chips to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_chips, align 4
  %cmp = icmp ult i32 %inc7, %13
  br i1 %cmp, label %for.inc6.for.cond2.preheader_crit_edge, label %for.inc6.for.end8_crit_edge

for.inc6.for.end8_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

for.inc6.for.cond2.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond2.preheader

for.end8:                                         ; preds = %for.inc6.for.end8_crit_edge, %entry.for.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_author233, !1, !"__UNIQUE_ID_author233", i1 false, i1 false}
!1 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description234, !3, !"__UNIQUE_ID_description234", i1 false, i1 false}
!3 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_akm4xxx_write, !8, !"__ksymtab_snd_akm4xxx_write", i1 false, i1 false}
!8 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 37, i32 1}
!9 = !{ptr @__ksymtab_snd_akm4xxx_reset, !10, !"__ksymtab_snd_akm4xxx_reset", i1 false, i1 false}
!10 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 118, i32 1}
!11 = !{ptr @snd_akm4xxx_init.inits_ak4524, !12, !"inits_ak4524", i1 false, i1 false}
!12 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 160, i32 29}
!13 = !{ptr @snd_akm4xxx_init.inits_ak4528, !14, !"inits_ak4528", i1 false, i1 false}
!14 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 172, i32 29}
!15 = !{ptr @snd_akm4xxx_init.inits_ak4529, !16, !"inits_ak4529", i1 false, i1 false}
!16 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 182, i32 29}
!17 = !{ptr @snd_akm4xxx_init.inits_ak4355, !18, !"inits_ak4355", i1 false, i1 false}
!18 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 198, i32 29}
!19 = !{ptr @snd_akm4xxx_init.inits_ak4358, !20, !"inits_ak4358", i1 false, i1 false}
!20 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 215, i32 29}
!21 = !{ptr @snd_akm4xxx_init.inits_ak4381, !22, !"inits_ak4381", i1 false, i1 false}
!22 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 234, i32 29}
!23 = !{ptr @snd_akm4xxx_init.inits_ak4620, !24, !"inits_ak4620", i1 false, i1 false}
!24 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 245, i32 29}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 271, i32 14}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 277, i32 14}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 283, i32 14}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 289, i32 14}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 295, i32 14}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 301, i32 14}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 307, i32 14}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 313, i32 14}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 317, i32 3}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__ksymtab_snd_akm4xxx_init, !45, !"__ksymtab_snd_akm4xxx_init", i1 false, i1 false}
!45 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 332, i32 1}
!46 = !{ptr @__ksymtab_snd_akm4xxx_build_controls, !47, !"__ksymtab_snd_akm4xxx_build_controls", i1 false, i1 false}
!47 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 894, i32 1}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 632, i32 16}
!50 = !{ptr @vol_cvt_datt, !51, !"vol_cvt_datt", i1 false, i1 false}
!51 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 128, i32 28}
!52 = !{ptr @db_scale_vol_datt, !53, !"db_scale_vol_datt", i1 false, i1 false}
!53 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 150, i32 14}
!54 = !{ptr @db_scale_8bit, !55, !"db_scale_8bit", i1 false, i1 false}
!55 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 151, i32 14}
!56 = !{ptr @db_scale_7bit, !57, !"db_scale_7bit", i1 false, i1 false}
!57 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 152, i32 14}
!58 = !{ptr @db_scale_linear, !59, !"db_scale_linear", i1 false, i1 false}
!59 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 153, i32 14}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 725, i32 16}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 761, i32 17}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 780, i32 17}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 812, i32 15}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 455, i32 3}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 455, i32 14}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 455, i32 21}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 455, i32 30}
!76 = !{ptr @snd_akm4xxx_deemphasis_info.texts, !77, !"texts", i1 false, i1 false}
!77 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 454, i32 28}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/i2c/other/ak4xxx-adda.c", i32 857, i32 4}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
