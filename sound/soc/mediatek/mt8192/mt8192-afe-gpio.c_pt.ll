; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8192/mt8192-afe-gpio.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt8192_afe_gpio_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mt8192_afe_gpio_init\09\09\09\09"
module asm "\09.long\09__crc_mt8192_afe_gpio_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt8192_afe_gpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mt8192_afe_gpio_init\22\09\09\09\09\09"
module asm "__kstrtabns_mt8192_afe_gpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mt8192_afe_gpio_request\22, \22a\22\09"
module asm "\09.weak\09__crc_mt8192_afe_gpio_request\09\09\09\09"
module asm "\09.long\09__crc_mt8192_afe_gpio_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt8192_afe_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22mt8192_afe_gpio_request\22\09\09\09\09\09"
module asm "__kstrtabns_mt8192_afe_gpio_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.audio_gpio_attr = type { ptr, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@aud_pinctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mt8192_afe_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(), ret %d, cannot get aud_pinctrl!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt8192_afe_gpio_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sound/soc/mediatek/mt8192/mt8192-afe-gpio.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_init._entry_ptr = internal global ptr @mt8192_afe_gpio_init._entry, section ".printk_index", align 4
@aud_gpios = internal global { [34 x %struct.audio_gpio_attr], [104 x i8] } { [34 x %struct.audio_gpio_attr] [%struct.audio_gpio_attr { ptr @.str.10, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.11, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.12, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.13, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.14, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.15, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.16, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.17, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.18, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.19, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.20, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.21, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.22, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.23, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.24, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.25, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.26, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.27, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.28, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.29, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.30, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.31, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.32, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.33, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.34, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.35, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.36, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.37, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.38, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.39, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.40, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.41, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.42, i8 0, ptr null }, %struct.audio_gpio_attr { ptr @.str.43, i8 0, ptr null }], [104 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_mt8192_afe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(), pinctrl_lookup_state %s fail, ret %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_mt8192_afe_gpio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt8192_afe_gpio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mt8192_afe_gpio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt8192_afe_gpio_init to i32), ptr @__kstrtab_mt8192_afe_gpio_init, ptr @__kstrtabns_mt8192_afe_gpio_init }, section "___ksymtab+mt8192_afe_gpio_init", align 4
@gpio_request_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gpio_request_mutex, i64 52), ptr getelementptr (i8, ptr @gpio_request_mutex, i64 52) }, ptr @gpio_request_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 301, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(), invalid dai %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8192_afe_gpio_request\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_request._entry_ptr = internal global ptr @mt8192_afe_gpio_request._entry, section ".printk_index", align 4
@__kstrtab_mt8192_afe_gpio_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt8192_afe_gpio_request = external dso_local constant [0 x i8], align 1
@__ksymtab_mt8192_afe_gpio_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt8192_afe_gpio_request to i32), ptr @__kstrtab_mt8192_afe_gpio_request, ptr @__kstrtabns_mt8192_afe_gpio_request }, section "___ksymtab+mt8192_afe_gpio_request", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_dat_miso_off\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_dat_miso_on\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_dat_mosi_off\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_dat_mosi_on\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aud_dat_miso_ch34_off\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aud_dat_miso_ch34_on\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aud_dat_mosi_ch34_off\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aud_dat_mosi_ch34_on\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s0_off\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s0_on\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s1_off\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s1_on\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s2_off\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s2_on\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s3_off\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s3_on\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s5_off\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s5_on\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s6_off\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s6_on\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s7_off\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s7_on\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s8_off\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s8_on\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aud_gpio_i2s9_off\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_i2s9_on\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vow_dat_miso_off\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vow_dat_miso_on\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vow_clk_miso_off\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vow_clk_miso_on\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_clk_mosi_off\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_clk_mosi_on\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_gpio_tdm_off\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_gpio_tdm_on\00", [16 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(), error, invalid gpio type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8192_afe_gpio_select\00", [41 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_select._entry_ptr = internal global ptr @mt8192_afe_gpio_select._entry, section ".printk_index", align 4
@mt8192_afe_gpio_select._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 117, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(), error, gpio type %d not prepared\0A\00", [56 x i8] zeroinitializer }, align 32
@mt8192_afe_gpio_select._entry_ptr.48 = internal global ptr @mt8192_afe_gpio_select._entry.46, section ".printk_index", align 4
@mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.45, ptr @.str.2, ptr @.str.49, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(), error, can not set gpio type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio_request_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_request_mutex\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 22, i64 23, i64 26, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 43]
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"aud_pinctrl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 15, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 138, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"aud_gpios\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 61, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 148, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"gpio_request_mutex\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 301, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 62, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 63, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 64, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 65, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 90, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 92, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 94, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 96, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 66, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 67, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 68, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 69, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 70, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 71, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 72, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 73, i32 31 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 74, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 75, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 76, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 77, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 78, i32 32 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 79, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 80, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 81, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 82, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 83, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 86, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 87, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 88, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 89, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 98, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 99, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 84, i32 31 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 85, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 110, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 116, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 124, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [47 x i8] c"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 102, i32 8 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__ksymtab_mt8192_afe_gpio_init, ptr @__ksymtab_mt8192_afe_gpio_request, ptr @mt8192_afe_gpio_init._entry, ptr @mt8192_afe_gpio_init._entry_ptr, ptr @mt8192_afe_gpio_request._entry, ptr @mt8192_afe_gpio_request._entry_ptr, ptr @mt8192_afe_gpio_select._entry, ptr @mt8192_afe_gpio_select._entry.46, ptr @mt8192_afe_gpio_select._entry_ptr, ptr @mt8192_afe_gpio_select._entry_ptr.48, ptr @aud_pinctrl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @aud_gpios, ptr @.str.5, ptr @.str.6, ptr @gpio_request_mutex, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_pinctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_gpios to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_request_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_gpio_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_afe_gpio_select._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_afe_gpio_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #3
  store ptr %call, ptr @aud_pinctrl, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %0) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @aud_pinctrl, align 4
  %arrayidx = getelementptr [34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 %i.054
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @pinctrl_lookup_state(ptr noundef %1, ptr noundef %3) #3
  %gpioctrl = getelementptr [34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 %i.054, i32 2
  %4 = ptrtoint ptr %gpioctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %gpioctrl, align 4
  %cmp.i42 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_init, %if.then16)) #3
          to label %for.inc [label %if.then16], !srcloc !119

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %call3 to i32
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_init.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %5) #3
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %gpio_prepare = getelementptr [34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 %i.054, i32 1
  %8 = ptrtoint ptr %gpio_prepare to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %gpio_prepare, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then16, %if.then8
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  %9 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 31, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 31) #6
  br label %mt8192_afe_gpio_select.exit

if.end6.i:                                        ; preds = %for.end
  %10 = load ptr, ptr @aud_pinctrl, align 4
  %11 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 31, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %10, ptr noundef %11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.mt8192_afe_gpio_select.exit_crit_edge, label %do.body10.i

if.end6.i.mt8192_afe_gpio_select.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt8192_afe_gpio_select.exit

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_init, %if.then15.i)) #3
          to label %mt8192_afe_gpio_select.exit [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 31) #3
  br label %mt8192_afe_gpio_select.exit

mt8192_afe_gpio_select.exit:                      ; preds = %if.then15.i, %do.body10.i, %if.end6.i.mt8192_afe_gpio_select.exit_crit_edge, %do.end5.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @gpio_request_mutex, i32 noundef 0) #3
  %12 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 2, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i1.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i, label %do.end5.i2.i, label %if.end6.i5.i

do.end5.i2.i:                                     ; preds = %mt8192_afe_gpio_select.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 2) #6
  br label %mt8192_afe_gpio_adda_dl.exit

if.end6.i5.i:                                     ; preds = %mt8192_afe_gpio_select.exit
  %13 = load ptr, ptr @aud_pinctrl, align 4
  %14 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 2, i32 2), align 4
  %call.i3.i = tail call i32 @pinctrl_select_state(ptr noundef %13, ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool8.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool8.not.i4.i, label %if.end6.i5.i.mt8192_afe_gpio_adda_dl.exit_crit_edge, label %do.body10.i6.i

if.end6.i5.i.mt8192_afe_gpio_adda_dl.exit_crit_edge: ; preds = %if.end6.i5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt8192_afe_gpio_adda_dl.exit

do.body10.i6.i:                                   ; preds = %if.end6.i5.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_init, %if.then15.i7.i)) #3
          to label %mt8192_afe_gpio_adda_dl.exit [label %if.then15.i7.i], !srcloc !119

if.then15.i7.i:                                   ; preds = %do.body10.i6.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 2) #3
  br label %mt8192_afe_gpio_adda_dl.exit

mt8192_afe_gpio_adda_dl.exit:                     ; preds = %if.then15.i7.i, %do.body10.i6.i, %if.end6.i5.i.mt8192_afe_gpio_adda_dl.exit_crit_edge, %do.end5.i2.i
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_request_mutex) #3
  tail call void @mutex_lock_nested(ptr noundef nonnull @gpio_request_mutex, i32 noundef 0) #3
  %15 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 0, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i1.i46 = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i46, label %do.end5.i2.i47, label %if.end6.i5.i50

do.end5.i2.i47:                                   ; preds = %mt8192_afe_gpio_adda_dl.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 0) #6
  br label %mt8192_afe_gpio_adda_ul.exit

if.end6.i5.i50:                                   ; preds = %mt8192_afe_gpio_adda_dl.exit
  %16 = load ptr, ptr @aud_pinctrl, align 4
  %17 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 0, i32 2), align 4
  %call.i3.i48 = tail call i32 @pinctrl_select_state(ptr noundef %16, ptr noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i48)
  %tobool8.not.i4.i49 = icmp eq i32 %call.i3.i48, 0
  br i1 %tobool8.not.i4.i49, label %if.end6.i5.i50.mt8192_afe_gpio_adda_ul.exit_crit_edge, label %do.body10.i6.i51

if.end6.i5.i50.mt8192_afe_gpio_adda_ul.exit_crit_edge: ; preds = %if.end6.i5.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt8192_afe_gpio_adda_ul.exit

do.body10.i6.i51:                                 ; preds = %if.end6.i5.i50
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_init, %if.then15.i7.i52)) #3
          to label %mt8192_afe_gpio_adda_ul.exit [label %if.then15.i7.i52], !srcloc !119

if.then15.i7.i52:                                 ; preds = %do.body10.i6.i51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 0) #3
  br label %mt8192_afe_gpio_adda_ul.exit

mt8192_afe_gpio_adda_ul.exit:                     ; preds = %if.then15.i7.i52, %do.body10.i6.i51, %if.end6.i5.i50.mt8192_afe_gpio_adda_ul.exit_crit_edge, %do.end5.i2.i47
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_request_mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %mt8192_afe_gpio_adda_ul.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %mt8192_afe_gpio_adda_ul.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_afe_gpio_request(ptr noundef %dev, i1 noundef zeroext %enable, i32 noundef %dai, i32 noundef %uplink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @gpio_request_mutex, i32 noundef 0) #3
  %0 = zext i32 %dai to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dai, label %sw.default [
    i32 22, label %sw.bb
    i32 23, label %sw.bb4
    i32 28, label %sw.bb13
    i32 29, label %sw.bb20
    i32 30, label %sw.bb27
    i32 31, label %sw.bb34
    i32 32, label %sw.bb41
    i32 33, label %sw.bb48
    i32 34, label %sw.bb55
    i32 35, label %sw.bb62
    i32 36, label %sw.bb69
    i32 43, label %sw.bb76
    i32 26, label %sw.bb83
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uplink)
  %tobool.not = icmp eq i32 %uplink, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt8192_afe_gpio_adda_ul(ptr noundef %dev, i1 noundef zeroext %enable)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt8192_afe_gpio_adda_dl(ptr noundef %dev, i1 noundef zeroext %enable)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uplink)
  %tobool5.not = icmp eq i32 %uplink, 0
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt8192_afe_gpio_adda_ch34_ul(ptr noundef %dev, i1 noundef zeroext %enable)
  br label %sw.epilog

if.else9:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @mt8192_afe_gpio_adda_ch34_dl(ptr noundef %dev, i1 noundef zeroext %enable)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br i1 %enable, label %if.then15, label %if.else17

if.then15:                                        ; preds = %sw.bb13
  %1 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 9, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 9) #6
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.then15
  %2 = load ptr, ptr @aud_pinctrl, align 4
  %3 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 9, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %2, ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.sw.epilog_crit_edge, label %do.body10.i

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i)) #3
          to label %sw.epilog [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 9) #3
  br label %sw.epilog

if.else17:                                        ; preds = %sw.bb13
  %4 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 8, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i136 = icmp eq i8 %4, 0
  br i1 %tobool.not.i136, label %do.end5.i137, label %if.end6.i140

do.end5.i137:                                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 8) #6
  br label %sw.epilog

if.end6.i140:                                     ; preds = %if.else17
  %5 = load ptr, ptr @aud_pinctrl, align 4
  %6 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 8, i32 2), align 4
  %call.i138 = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool8.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool8.not.i139, label %if.end6.i140.sw.epilog_crit_edge, label %do.body10.i141

if.end6.i140.sw.epilog_crit_edge:                 ; preds = %if.end6.i140
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i141:                                   ; preds = %if.end6.i140
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i142)) #3
          to label %sw.epilog [label %if.then15.i142], !srcloc !119

if.then15.i142:                                   ; preds = %do.body10.i141
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 8) #3
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  br i1 %enable, label %if.then22, label %if.else24

if.then22:                                        ; preds = %sw.bb20
  %7 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 11, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i145 = icmp eq i8 %7, 0
  br i1 %tobool.not.i145, label %do.end5.i146, label %if.end6.i149

do.end5.i146:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 11) #6
  br label %sw.epilog

if.end6.i149:                                     ; preds = %if.then22
  %8 = load ptr, ptr @aud_pinctrl, align 4
  %9 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 11, i32 2), align 4
  %call.i147 = tail call i32 @pinctrl_select_state(ptr noundef %8, ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool8.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool8.not.i148, label %if.end6.i149.sw.epilog_crit_edge, label %do.body10.i150

if.end6.i149.sw.epilog_crit_edge:                 ; preds = %if.end6.i149
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i150:                                   ; preds = %if.end6.i149
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i151)) #3
          to label %sw.epilog [label %if.then15.i151], !srcloc !119

if.then15.i151:                                   ; preds = %do.body10.i150
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 11) #3
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb20
  %10 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 10, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i154 = icmp eq i8 %10, 0
  br i1 %tobool.not.i154, label %do.end5.i155, label %if.end6.i158

do.end5.i155:                                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 10) #6
  br label %sw.epilog

if.end6.i158:                                     ; preds = %if.else24
  %11 = load ptr, ptr @aud_pinctrl, align 4
  %12 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 10, i32 2), align 4
  %call.i156 = tail call i32 @pinctrl_select_state(ptr noundef %11, ptr noundef %12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool8.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool8.not.i157, label %if.end6.i158.sw.epilog_crit_edge, label %do.body10.i159

if.end6.i158.sw.epilog_crit_edge:                 ; preds = %if.end6.i158
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i159:                                   ; preds = %if.end6.i158
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i160)) #3
          to label %sw.epilog [label %if.then15.i160], !srcloc !119

if.then15.i160:                                   ; preds = %do.body10.i159
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 10) #3
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  br i1 %enable, label %if.then29, label %if.else31

if.then29:                                        ; preds = %sw.bb27
  %13 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 13, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i163 = icmp eq i8 %13, 0
  br i1 %tobool.not.i163, label %do.end5.i164, label %if.end6.i167

do.end5.i164:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 13) #6
  br label %sw.epilog

if.end6.i167:                                     ; preds = %if.then29
  %14 = load ptr, ptr @aud_pinctrl, align 4
  %15 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 13, i32 2), align 4
  %call.i165 = tail call i32 @pinctrl_select_state(ptr noundef %14, ptr noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool8.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool8.not.i166, label %if.end6.i167.sw.epilog_crit_edge, label %do.body10.i168

if.end6.i167.sw.epilog_crit_edge:                 ; preds = %if.end6.i167
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i168:                                   ; preds = %if.end6.i167
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i169)) #3
          to label %sw.epilog [label %if.then15.i169], !srcloc !119

if.then15.i169:                                   ; preds = %do.body10.i168
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 13) #3
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb27
  %16 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 12, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i172 = icmp eq i8 %16, 0
  br i1 %tobool.not.i172, label %do.end5.i173, label %if.end6.i176

do.end5.i173:                                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 12) #6
  br label %sw.epilog

if.end6.i176:                                     ; preds = %if.else31
  %17 = load ptr, ptr @aud_pinctrl, align 4
  %18 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 12, i32 2), align 4
  %call.i174 = tail call i32 @pinctrl_select_state(ptr noundef %17, ptr noundef %18) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool8.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool8.not.i175, label %if.end6.i176.sw.epilog_crit_edge, label %do.body10.i177

if.end6.i176.sw.epilog_crit_edge:                 ; preds = %if.end6.i176
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i177:                                   ; preds = %if.end6.i176
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i178)) #3
          to label %sw.epilog [label %if.then15.i178], !srcloc !119

if.then15.i178:                                   ; preds = %do.body10.i177
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 12) #3
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  br i1 %enable, label %if.then36, label %if.else38

if.then36:                                        ; preds = %sw.bb34
  %19 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 15, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i181 = icmp eq i8 %19, 0
  br i1 %tobool.not.i181, label %do.end5.i182, label %if.end6.i185

do.end5.i182:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 15) #6
  br label %sw.epilog

if.end6.i185:                                     ; preds = %if.then36
  %20 = load ptr, ptr @aud_pinctrl, align 4
  %21 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 15, i32 2), align 4
  %call.i183 = tail call i32 @pinctrl_select_state(ptr noundef %20, ptr noundef %21) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool8.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool8.not.i184, label %if.end6.i185.sw.epilog_crit_edge, label %do.body10.i186

if.end6.i185.sw.epilog_crit_edge:                 ; preds = %if.end6.i185
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i186:                                   ; preds = %if.end6.i185
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i187)) #3
          to label %sw.epilog [label %if.then15.i187], !srcloc !119

if.then15.i187:                                   ; preds = %do.body10.i186
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 15) #3
  br label %sw.epilog

if.else38:                                        ; preds = %sw.bb34
  %22 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 14, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i190 = icmp eq i8 %22, 0
  br i1 %tobool.not.i190, label %do.end5.i191, label %if.end6.i194

do.end5.i191:                                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 14) #6
  br label %sw.epilog

if.end6.i194:                                     ; preds = %if.else38
  %23 = load ptr, ptr @aud_pinctrl, align 4
  %24 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 14, i32 2), align 4
  %call.i192 = tail call i32 @pinctrl_select_state(ptr noundef %23, ptr noundef %24) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool8.not.i193 = icmp eq i32 %call.i192, 0
  br i1 %tobool8.not.i193, label %if.end6.i194.sw.epilog_crit_edge, label %do.body10.i195

if.end6.i194.sw.epilog_crit_edge:                 ; preds = %if.end6.i194
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i195:                                   ; preds = %if.end6.i194
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i196)) #3
          to label %sw.epilog [label %if.then15.i196], !srcloc !119

if.then15.i196:                                   ; preds = %do.body10.i195
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 14) #3
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  br i1 %enable, label %if.then43, label %if.else45

if.then43:                                        ; preds = %sw.bb41
  %25 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 17, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i199 = icmp eq i8 %25, 0
  br i1 %tobool.not.i199, label %do.end5.i200, label %if.end6.i203

do.end5.i200:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 17) #6
  br label %sw.epilog

if.end6.i203:                                     ; preds = %if.then43
  %26 = load ptr, ptr @aud_pinctrl, align 4
  %27 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 17, i32 2), align 4
  %call.i201 = tail call i32 @pinctrl_select_state(ptr noundef %26, ptr noundef %27) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool8.not.i202 = icmp eq i32 %call.i201, 0
  br i1 %tobool8.not.i202, label %if.end6.i203.sw.epilog_crit_edge, label %do.body10.i204

if.end6.i203.sw.epilog_crit_edge:                 ; preds = %if.end6.i203
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i204:                                   ; preds = %if.end6.i203
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i205)) #3
          to label %sw.epilog [label %if.then15.i205], !srcloc !119

if.then15.i205:                                   ; preds = %do.body10.i204
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 17) #3
  br label %sw.epilog

if.else45:                                        ; preds = %sw.bb41
  %28 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 16, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i208 = icmp eq i8 %28, 0
  br i1 %tobool.not.i208, label %do.end5.i209, label %if.end6.i212

do.end5.i209:                                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 16) #6
  br label %sw.epilog

if.end6.i212:                                     ; preds = %if.else45
  %29 = load ptr, ptr @aud_pinctrl, align 4
  %30 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 16, i32 2), align 4
  %call.i210 = tail call i32 @pinctrl_select_state(ptr noundef %29, ptr noundef %30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool8.not.i211 = icmp eq i32 %call.i210, 0
  br i1 %tobool8.not.i211, label %if.end6.i212.sw.epilog_crit_edge, label %do.body10.i213

if.end6.i212.sw.epilog_crit_edge:                 ; preds = %if.end6.i212
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i213:                                   ; preds = %if.end6.i212
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i214)) #3
          to label %sw.epilog [label %if.then15.i214], !srcloc !119

if.then15.i214:                                   ; preds = %do.body10.i213
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 16) #3
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  br i1 %enable, label %if.then50, label %if.else52

if.then50:                                        ; preds = %sw.bb48
  %31 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 19, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i217 = icmp eq i8 %31, 0
  br i1 %tobool.not.i217, label %do.end5.i218, label %if.end6.i221

do.end5.i218:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 19) #6
  br label %sw.epilog

if.end6.i221:                                     ; preds = %if.then50
  %32 = load ptr, ptr @aud_pinctrl, align 4
  %33 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 19, i32 2), align 4
  %call.i219 = tail call i32 @pinctrl_select_state(ptr noundef %32, ptr noundef %33) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool8.not.i220 = icmp eq i32 %call.i219, 0
  br i1 %tobool8.not.i220, label %if.end6.i221.sw.epilog_crit_edge, label %do.body10.i222

if.end6.i221.sw.epilog_crit_edge:                 ; preds = %if.end6.i221
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i222:                                   ; preds = %if.end6.i221
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i223)) #3
          to label %sw.epilog [label %if.then15.i223], !srcloc !119

if.then15.i223:                                   ; preds = %do.body10.i222
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 19) #3
  br label %sw.epilog

if.else52:                                        ; preds = %sw.bb48
  %34 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 18, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i226 = icmp eq i8 %34, 0
  br i1 %tobool.not.i226, label %do.end5.i227, label %if.end6.i230

do.end5.i227:                                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 18) #6
  br label %sw.epilog

if.end6.i230:                                     ; preds = %if.else52
  %35 = load ptr, ptr @aud_pinctrl, align 4
  %36 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 18, i32 2), align 4
  %call.i228 = tail call i32 @pinctrl_select_state(ptr noundef %35, ptr noundef %36) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool8.not.i229 = icmp eq i32 %call.i228, 0
  br i1 %tobool8.not.i229, label %if.end6.i230.sw.epilog_crit_edge, label %do.body10.i231

if.end6.i230.sw.epilog_crit_edge:                 ; preds = %if.end6.i230
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i231:                                   ; preds = %if.end6.i230
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i232)) #3
          to label %sw.epilog [label %if.then15.i232], !srcloc !119

if.then15.i232:                                   ; preds = %do.body10.i231
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 18) #3
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  br i1 %enable, label %if.then57, label %if.else59

if.then57:                                        ; preds = %sw.bb55
  %37 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 21, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i235 = icmp eq i8 %37, 0
  br i1 %tobool.not.i235, label %do.end5.i236, label %if.end6.i239

do.end5.i236:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 21) #6
  br label %sw.epilog

if.end6.i239:                                     ; preds = %if.then57
  %38 = load ptr, ptr @aud_pinctrl, align 4
  %39 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 21, i32 2), align 4
  %call.i237 = tail call i32 @pinctrl_select_state(ptr noundef %38, ptr noundef %39) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool8.not.i238 = icmp eq i32 %call.i237, 0
  br i1 %tobool8.not.i238, label %if.end6.i239.sw.epilog_crit_edge, label %do.body10.i240

if.end6.i239.sw.epilog_crit_edge:                 ; preds = %if.end6.i239
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i240:                                   ; preds = %if.end6.i239
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i241)) #3
          to label %sw.epilog [label %if.then15.i241], !srcloc !119

if.then15.i241:                                   ; preds = %do.body10.i240
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 21) #3
  br label %sw.epilog

if.else59:                                        ; preds = %sw.bb55
  %40 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 20, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i244 = icmp eq i8 %40, 0
  br i1 %tobool.not.i244, label %do.end5.i245, label %if.end6.i248

do.end5.i245:                                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 20) #6
  br label %sw.epilog

if.end6.i248:                                     ; preds = %if.else59
  %41 = load ptr, ptr @aud_pinctrl, align 4
  %42 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 20, i32 2), align 4
  %call.i246 = tail call i32 @pinctrl_select_state(ptr noundef %41, ptr noundef %42) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool8.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool8.not.i247, label %if.end6.i248.sw.epilog_crit_edge, label %do.body10.i249

if.end6.i248.sw.epilog_crit_edge:                 ; preds = %if.end6.i248
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i249:                                   ; preds = %if.end6.i248
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i250)) #3
          to label %sw.epilog [label %if.then15.i250], !srcloc !119

if.then15.i250:                                   ; preds = %do.body10.i249
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 20) #3
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  br i1 %enable, label %if.then64, label %if.else66

if.then64:                                        ; preds = %sw.bb62
  %43 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 23, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i253 = icmp eq i8 %43, 0
  br i1 %tobool.not.i253, label %do.end5.i254, label %if.end6.i257

do.end5.i254:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 23) #6
  br label %sw.epilog

if.end6.i257:                                     ; preds = %if.then64
  %44 = load ptr, ptr @aud_pinctrl, align 4
  %45 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 23, i32 2), align 4
  %call.i255 = tail call i32 @pinctrl_select_state(ptr noundef %44, ptr noundef %45) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %tobool8.not.i256 = icmp eq i32 %call.i255, 0
  br i1 %tobool8.not.i256, label %if.end6.i257.sw.epilog_crit_edge, label %do.body10.i258

if.end6.i257.sw.epilog_crit_edge:                 ; preds = %if.end6.i257
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i258:                                   ; preds = %if.end6.i257
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i259)) #3
          to label %sw.epilog [label %if.then15.i259], !srcloc !119

if.then15.i259:                                   ; preds = %do.body10.i258
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 23) #3
  br label %sw.epilog

if.else66:                                        ; preds = %sw.bb62
  %46 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 22, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i262 = icmp eq i8 %46, 0
  br i1 %tobool.not.i262, label %do.end5.i263, label %if.end6.i266

do.end5.i263:                                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 22) #6
  br label %sw.epilog

if.end6.i266:                                     ; preds = %if.else66
  %47 = load ptr, ptr @aud_pinctrl, align 4
  %48 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 22, i32 2), align 4
  %call.i264 = tail call i32 @pinctrl_select_state(ptr noundef %47, ptr noundef %48) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool8.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool8.not.i265, label %if.end6.i266.sw.epilog_crit_edge, label %do.body10.i267

if.end6.i266.sw.epilog_crit_edge:                 ; preds = %if.end6.i266
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i267:                                   ; preds = %if.end6.i266
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i268)) #3
          to label %sw.epilog [label %if.then15.i268], !srcloc !119

if.then15.i268:                                   ; preds = %do.body10.i267
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 22) #3
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  br i1 %enable, label %if.then71, label %if.else73

if.then71:                                        ; preds = %sw.bb69
  %49 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 25, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i271 = icmp eq i8 %49, 0
  br i1 %tobool.not.i271, label %do.end5.i272, label %if.end6.i275

do.end5.i272:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 25) #6
  br label %sw.epilog

if.end6.i275:                                     ; preds = %if.then71
  %50 = load ptr, ptr @aud_pinctrl, align 4
  %51 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 25, i32 2), align 4
  %call.i273 = tail call i32 @pinctrl_select_state(ptr noundef %50, ptr noundef %51) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %tobool8.not.i274 = icmp eq i32 %call.i273, 0
  br i1 %tobool8.not.i274, label %if.end6.i275.sw.epilog_crit_edge, label %do.body10.i276

if.end6.i275.sw.epilog_crit_edge:                 ; preds = %if.end6.i275
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i276:                                   ; preds = %if.end6.i275
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i277)) #3
          to label %sw.epilog [label %if.then15.i277], !srcloc !119

if.then15.i277:                                   ; preds = %do.body10.i276
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 25) #3
  br label %sw.epilog

if.else73:                                        ; preds = %sw.bb69
  %52 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 24, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i280 = icmp eq i8 %52, 0
  br i1 %tobool.not.i280, label %do.end5.i281, label %if.end6.i284

do.end5.i281:                                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 24) #6
  br label %sw.epilog

if.end6.i284:                                     ; preds = %if.else73
  %53 = load ptr, ptr @aud_pinctrl, align 4
  %54 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 24, i32 2), align 4
  %call.i282 = tail call i32 @pinctrl_select_state(ptr noundef %53, ptr noundef %54) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %tobool8.not.i283 = icmp eq i32 %call.i282, 0
  br i1 %tobool8.not.i283, label %if.end6.i284.sw.epilog_crit_edge, label %do.body10.i285

if.end6.i284.sw.epilog_crit_edge:                 ; preds = %if.end6.i284
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i285:                                   ; preds = %if.end6.i284
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i286)) #3
          to label %sw.epilog [label %if.then15.i286], !srcloc !119

if.then15.i286:                                   ; preds = %do.body10.i285
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 24) #3
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  br i1 %enable, label %if.then78, label %if.else80

if.then78:                                        ; preds = %sw.bb76
  %55 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 33, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i289 = icmp eq i8 %55, 0
  br i1 %tobool.not.i289, label %do.end5.i290, label %if.end6.i293

do.end5.i290:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 33) #6
  br label %sw.epilog

if.end6.i293:                                     ; preds = %if.then78
  %56 = load ptr, ptr @aud_pinctrl, align 4
  %57 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 33, i32 2), align 4
  %call.i291 = tail call i32 @pinctrl_select_state(ptr noundef %56, ptr noundef %57) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %tobool8.not.i292 = icmp eq i32 %call.i291, 0
  br i1 %tobool8.not.i292, label %if.end6.i293.sw.epilog_crit_edge, label %do.body10.i294

if.end6.i293.sw.epilog_crit_edge:                 ; preds = %if.end6.i293
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i294:                                   ; preds = %if.end6.i293
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i295)) #3
          to label %sw.epilog [label %if.then15.i295], !srcloc !119

if.then15.i295:                                   ; preds = %do.body10.i294
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 33) #3
  br label %sw.epilog

if.else80:                                        ; preds = %sw.bb76
  %58 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 32, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i298 = icmp eq i8 %58, 0
  br i1 %tobool.not.i298, label %do.end5.i299, label %if.end6.i302

do.end5.i299:                                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 32) #6
  br label %sw.epilog

if.end6.i302:                                     ; preds = %if.else80
  %59 = load ptr, ptr @aud_pinctrl, align 4
  %60 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 32, i32 2), align 4
  %call.i300 = tail call i32 @pinctrl_select_state(ptr noundef %59, ptr noundef %60) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i300)
  %tobool8.not.i301 = icmp eq i32 %call.i300, 0
  br i1 %tobool8.not.i301, label %if.end6.i302.sw.epilog_crit_edge, label %do.body10.i303

if.end6.i302.sw.epilog_crit_edge:                 ; preds = %if.end6.i302
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i303:                                   ; preds = %if.end6.i302
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i304)) #3
          to label %sw.epilog [label %if.then15.i304], !srcloc !119

if.then15.i304:                                   ; preds = %do.body10.i303
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 32) #3
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  br i1 %enable, label %if.then85, label %if.else88

if.then85:                                        ; preds = %sw.bb83
  %61 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 29, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i307 = icmp eq i8 %61, 0
  br i1 %tobool.not.i307, label %do.end5.i308, label %if.end6.i311

do.end5.i308:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 29) #6
  br label %mt8192_afe_gpio_select.exit315

if.end6.i311:                                     ; preds = %if.then85
  %62 = load ptr, ptr @aud_pinctrl, align 4
  %63 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 29, i32 2), align 4
  %call.i309 = tail call i32 @pinctrl_select_state(ptr noundef %62, ptr noundef %63) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool8.not.i310 = icmp eq i32 %call.i309, 0
  br i1 %tobool8.not.i310, label %if.end6.i311.mt8192_afe_gpio_select.exit315_crit_edge, label %do.body10.i312

if.end6.i311.mt8192_afe_gpio_select.exit315_crit_edge: ; preds = %if.end6.i311
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt8192_afe_gpio_select.exit315

do.body10.i312:                                   ; preds = %if.end6.i311
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i313)) #3
          to label %mt8192_afe_gpio_select.exit315 [label %if.then15.i313], !srcloc !119

if.then15.i313:                                   ; preds = %do.body10.i312
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 29) #3
  br label %mt8192_afe_gpio_select.exit315

mt8192_afe_gpio_select.exit315:                   ; preds = %if.then15.i313, %do.body10.i312, %if.end6.i311.mt8192_afe_gpio_select.exit315_crit_edge, %do.end5.i308
  %64 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 27, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i316 = icmp eq i8 %64, 0
  br i1 %tobool.not.i316, label %do.end5.i317, label %if.end6.i320

do.end5.i317:                                     ; preds = %mt8192_afe_gpio_select.exit315
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 27) #6
  br label %sw.epilog

if.end6.i320:                                     ; preds = %mt8192_afe_gpio_select.exit315
  %65 = load ptr, ptr @aud_pinctrl, align 4
  %66 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 27, i32 2), align 4
  %call.i318 = tail call i32 @pinctrl_select_state(ptr noundef %65, ptr noundef %66) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool8.not.i319 = icmp eq i32 %call.i318, 0
  br i1 %tobool8.not.i319, label %if.end6.i320.sw.epilog_crit_edge, label %do.body10.i321

if.end6.i320.sw.epilog_crit_edge:                 ; preds = %if.end6.i320
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i321:                                   ; preds = %if.end6.i320
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i322)) #3
          to label %sw.epilog [label %if.then15.i322], !srcloc !119

if.then15.i322:                                   ; preds = %do.body10.i321
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 27) #3
  br label %sw.epilog

if.else88:                                        ; preds = %sw.bb83
  %67 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 28, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i325 = icmp eq i8 %67, 0
  br i1 %tobool.not.i325, label %do.end5.i326, label %if.end6.i329

do.end5.i326:                                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 28) #6
  br label %mt8192_afe_gpio_select.exit333

if.end6.i329:                                     ; preds = %if.else88
  %68 = load ptr, ptr @aud_pinctrl, align 4
  %69 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 28, i32 2), align 4
  %call.i327 = tail call i32 @pinctrl_select_state(ptr noundef %68, ptr noundef %69) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool8.not.i328 = icmp eq i32 %call.i327, 0
  br i1 %tobool8.not.i328, label %if.end6.i329.mt8192_afe_gpio_select.exit333_crit_edge, label %do.body10.i330

if.end6.i329.mt8192_afe_gpio_select.exit333_crit_edge: ; preds = %if.end6.i329
  call void @__sanitizer_cov_trace_pc() #5
  br label %mt8192_afe_gpio_select.exit333

do.body10.i330:                                   ; preds = %if.end6.i329
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i331)) #3
          to label %mt8192_afe_gpio_select.exit333 [label %if.then15.i331], !srcloc !119

if.then15.i331:                                   ; preds = %do.body10.i330
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 28) #3
  br label %mt8192_afe_gpio_select.exit333

mt8192_afe_gpio_select.exit333:                   ; preds = %if.then15.i331, %do.body10.i330, %if.end6.i329.mt8192_afe_gpio_select.exit333_crit_edge, %do.end5.i326
  %70 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 26, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i334 = icmp eq i8 %70, 0
  br i1 %tobool.not.i334, label %do.end5.i335, label %if.end6.i338

do.end5.i335:                                     ; preds = %mt8192_afe_gpio_select.exit333
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 26) #6
  br label %sw.epilog

if.end6.i338:                                     ; preds = %mt8192_afe_gpio_select.exit333
  %71 = load ptr, ptr @aud_pinctrl, align 4
  %72 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 26, i32 2), align 4
  %call.i336 = tail call i32 @pinctrl_select_state(ptr noundef %71, ptr noundef %72) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool8.not.i337 = icmp eq i32 %call.i336, 0
  br i1 %tobool8.not.i337, label %if.end6.i338.sw.epilog_crit_edge, label %do.body10.i339

if.end6.i338.sw.epilog_crit_edge:                 ; preds = %if.end6.i338
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body10.i339:                                   ; preds = %if.end6.i338
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_request, %if.then15.i340)) #3
          to label %sw.epilog [label %if.then15.i340], !srcloc !119

if.then15.i340:                                   ; preds = %do.body10.i339
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 26) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_request_mutex) #3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %dai) #6
  br label %return

sw.epilog:                                        ; preds = %if.then15.i340, %do.body10.i339, %if.end6.i338.sw.epilog_crit_edge, %do.end5.i335, %if.then15.i322, %do.body10.i321, %if.end6.i320.sw.epilog_crit_edge, %do.end5.i317, %if.then15.i304, %do.body10.i303, %if.end6.i302.sw.epilog_crit_edge, %do.end5.i299, %if.then15.i295, %do.body10.i294, %if.end6.i293.sw.epilog_crit_edge, %do.end5.i290, %if.then15.i286, %do.body10.i285, %if.end6.i284.sw.epilog_crit_edge, %do.end5.i281, %if.then15.i277, %do.body10.i276, %if.end6.i275.sw.epilog_crit_edge, %do.end5.i272, %if.then15.i268, %do.body10.i267, %if.end6.i266.sw.epilog_crit_edge, %do.end5.i263, %if.then15.i259, %do.body10.i258, %if.end6.i257.sw.epilog_crit_edge, %do.end5.i254, %if.then15.i250, %do.body10.i249, %if.end6.i248.sw.epilog_crit_edge, %do.end5.i245, %if.then15.i241, %do.body10.i240, %if.end6.i239.sw.epilog_crit_edge, %do.end5.i236, %if.then15.i232, %do.body10.i231, %if.end6.i230.sw.epilog_crit_edge, %do.end5.i227, %if.then15.i223, %do.body10.i222, %if.end6.i221.sw.epilog_crit_edge, %do.end5.i218, %if.then15.i214, %do.body10.i213, %if.end6.i212.sw.epilog_crit_edge, %do.end5.i209, %if.then15.i205, %do.body10.i204, %if.end6.i203.sw.epilog_crit_edge, %do.end5.i200, %if.then15.i196, %do.body10.i195, %if.end6.i194.sw.epilog_crit_edge, %do.end5.i191, %if.then15.i187, %do.body10.i186, %if.end6.i185.sw.epilog_crit_edge, %do.end5.i182, %if.then15.i178, %do.body10.i177, %if.end6.i176.sw.epilog_crit_edge, %do.end5.i173, %if.then15.i169, %do.body10.i168, %if.end6.i167.sw.epilog_crit_edge, %do.end5.i164, %if.then15.i160, %do.body10.i159, %if.end6.i158.sw.epilog_crit_edge, %do.end5.i155, %if.then15.i151, %do.body10.i150, %if.end6.i149.sw.epilog_crit_edge, %do.end5.i146, %if.then15.i142, %do.body10.i141, %if.end6.i140.sw.epilog_crit_edge, %do.end5.i137, %if.then15.i, %do.body10.i, %if.end6.i.sw.epilog_crit_edge, %do.end5.i, %if.else9, %if.then6, %if.else, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_request_mutex) #3
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8192_afe_gpio_adda_ul(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 1, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 1) #6
  br label %return

if.end6.i:                                        ; preds = %if.then
  %1 = load ptr, ptr @aud_pinctrl, align 4
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 1, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.return_crit_edge, label %do.body10.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ul, %if.then15.i)) #3
          to label %return [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 1) #3
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 0, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i1 = icmp eq i8 %3, 0
  br i1 %tobool.not.i1, label %do.end5.i2, label %if.end6.i5

do.end5.i2:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 0) #6
  br label %return

if.end6.i5:                                       ; preds = %if.else
  %4 = load ptr, ptr @aud_pinctrl, align 4
  %5 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 0, i32 2), align 4
  %call.i3 = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool8.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool8.not.i4, label %if.end6.i5.return_crit_edge, label %do.body10.i6

if.end6.i5.return_crit_edge:                      ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i6:                                     ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ul, %if.then15.i7)) #3
          to label %return [label %if.then15.i7], !srcloc !119

if.then15.i7:                                     ; preds = %do.body10.i6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 0) #3
  br label %return

return:                                           ; preds = %if.then15.i7, %do.body10.i6, %if.end6.i5.return_crit_edge, %do.end5.i2, %if.then15.i, %do.body10.i, %if.end6.i.return_crit_edge, %do.end5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8192_afe_gpio_adda_dl(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 3, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 3) #6
  br label %return

if.end6.i:                                        ; preds = %if.then
  %1 = load ptr, ptr @aud_pinctrl, align 4
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 3, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.return_crit_edge, label %do.body10.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_dl, %if.then15.i)) #3
          to label %return [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 3) #3
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 2, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i1 = icmp eq i8 %3, 0
  br i1 %tobool.not.i1, label %do.end5.i2, label %if.end6.i5

do.end5.i2:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 2) #6
  br label %return

if.end6.i5:                                       ; preds = %if.else
  %4 = load ptr, ptr @aud_pinctrl, align 4
  %5 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 2, i32 2), align 4
  %call.i3 = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool8.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool8.not.i4, label %if.end6.i5.return_crit_edge, label %do.body10.i6

if.end6.i5.return_crit_edge:                      ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i6:                                     ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_dl, %if.then15.i7)) #3
          to label %return [label %if.then15.i7], !srcloc !119

if.then15.i7:                                     ; preds = %do.body10.i6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 2) #3
  br label %return

return:                                           ; preds = %if.then15.i7, %do.body10.i6, %if.end6.i5.return_crit_edge, %do.end5.i2, %if.then15.i, %do.body10.i, %if.end6.i.return_crit_edge, %do.end5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8192_afe_gpio_adda_ch34_ul(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 5, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 5) #6
  br label %return

if.end6.i:                                        ; preds = %if.then
  %1 = load ptr, ptr @aud_pinctrl, align 4
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 5, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.return_crit_edge, label %do.body10.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ch34_ul, %if.then15.i)) #3
          to label %return [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 5) #3
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 4, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i1 = icmp eq i8 %3, 0
  br i1 %tobool.not.i1, label %do.end5.i2, label %if.end6.i5

do.end5.i2:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 4) #6
  br label %return

if.end6.i5:                                       ; preds = %if.else
  %4 = load ptr, ptr @aud_pinctrl, align 4
  %5 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 4, i32 2), align 4
  %call.i3 = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool8.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool8.not.i4, label %if.end6.i5.return_crit_edge, label %do.body10.i6

if.end6.i5.return_crit_edge:                      ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i6:                                     ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ch34_ul, %if.then15.i7)) #3
          to label %return [label %if.then15.i7], !srcloc !119

if.then15.i7:                                     ; preds = %do.body10.i6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 4) #3
  br label %return

return:                                           ; preds = %if.then15.i7, %do.body10.i6, %if.end6.i5.return_crit_edge, %do.end5.i2, %if.then15.i, %do.body10.i, %if.end6.i.return_crit_edge, %do.end5.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8192_afe_gpio_adda_ch34_dl(ptr noundef %dev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 7, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %do.end5.i, label %if.end6.i

do.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 7) #6
  br label %return

if.end6.i:                                        ; preds = %if.then
  %1 = load ptr, ptr @aud_pinctrl, align 4
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 7, i32 2), align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %1, ptr noundef %2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.return_crit_edge, label %do.body10.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ch34_dl, %if.then15.i)) #3
          to label %return [label %if.then15.i], !srcloc !119

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 7) #3
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 6, i32 1), align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i1 = icmp eq i8 %3, 0
  br i1 %tobool.not.i1, label %do.end5.i2, label %if.end6.i5

do.end5.i2:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 6) #6
  br label %return

if.end6.i5:                                       ; preds = %if.else
  %4 = load ptr, ptr @aud_pinctrl, align 4
  %5 = load ptr, ptr getelementptr inbounds ([34 x %struct.audio_gpio_attr], ptr @aud_gpios, i32 0, i32 6, i32 2), align 4
  %call.i3 = tail call i32 @pinctrl_select_state(ptr noundef %4, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool8.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool8.not.i4, label %if.end6.i5.return_crit_edge, label %do.body10.i6

if.end6.i5.return_crit_edge:                      ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body10.i6:                                     ; preds = %if.end6.i5
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_afe_gpio_adda_ch34_dl, %if.then15.i7)) #3
          to label %return [label %if.then15.i7], !srcloc !119

if.then15.i7:                                     ; preds = %do.body10.i6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.45, i32 noundef 6) #3
  br label %return

return:                                           ; preds = %if.then15.i7, %do.body10.i6, %if.end6.i5.return_crit_edge, %do.end5.i2, %if.then15.i, %do.body10.i, %if.end6.i.return_crit_edge, %do.end5.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 138, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt8192_afe_gpio_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt8192_afe_gpio_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 148, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt8192_afe_gpio_init.__UNIQUE_ID_ddebug239, !9, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mt8192_afe_gpio_init, !13, !"__ksymtab_mt8192_afe_gpio_init", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 163, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 301, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mt8192_afe_gpio_request._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt8192_afe_gpio_request._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_mt8192_afe_gpio_request, !21, !"__ksymtab_mt8192_afe_gpio_request", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 308, i32 1}
!22 = !{ptr @aud_pinctrl, !23, !"aud_pinctrl", i1 false, i1 false}
!23 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 15, i32 24}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 62, i32 36}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 63, i32 35}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 64, i32 36}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 65, i32 35}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 90, i32 41}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 92, i32 40}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 94, i32 41}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 96, i32 40}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 66, i32 32}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 67, i32 31}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 68, i32 32}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 69, i32 31}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 70, i32 32}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 71, i32 31}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 72, i32 32}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 73, i32 31}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 74, i32 32}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 75, i32 31}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 76, i32 32}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 77, i32 31}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 78, i32 32}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 79, i32 31}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 80, i32 32}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 81, i32 31}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 82, i32 32}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 83, i32 31}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 86, i32 35}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 87, i32 34}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 88, i32 35}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 89, i32 34}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 98, i32 36}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 99, i32 35}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 84, i32 31}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 85, i32 30}
!92 = !{ptr @aud_gpios, !93, !"aud_gpios", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 61, i32 31}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 110, i32 3}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mt8192_afe_gpio_select._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mt8192_afe_gpio_select._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 116, i32 3}
!101 = !{ptr @mt8192_afe_gpio_select._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mt8192_afe_gpio_select._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 124, i32 3}
!105 = !{ptr @mt8192_afe_gpio_select.__UNIQUE_ID_ddebug238, !104, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8192/mt8192-afe-gpio.c", i32 102, i32 8}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @gpio_request_mutex, !107, !"gpio_request_mutex", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2148327948, i64 2148327953, i64 2148327966, i64 2148328010, i64 2148328044, i64 2148328065}
!120 = !{i8 0, i8 2}
