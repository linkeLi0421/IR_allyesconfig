; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/dot11d.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/dot11d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dot11d_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dot11d_init\09\09\09\09"
module asm "\09.long\09__crc_dot11d_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dot11d_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dot11d_init\22\09\09\09\09\09"
module asm "__kstrtabns_dot11d_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dot11d_channel_map\22, \22a\22\09"
module asm "\09.weak\09__crc_dot11d_channel_map\09\09\09\09"
module asm "\09.long\09__crc_dot11d_channel_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dot11d_channel_map:\09\09\09\09\09"
module asm "\09.asciz \09\22dot11d_channel_map\22\09\09\09\09\09"
module asm "__kstrtabns_dot11d_channel_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.114 }
%struct.anon.114 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.115 }
%struct.anon.115 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rt_dot11d_info = type { i8, i16, [255 x i8], [6 x i8], i8, [162 x i8], [162 x i8], i32 }
%struct.channel_list = type { [32 x i8], i8 }

@__kstrtab_dot11d_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dot11d_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dot11d_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dot11d_init to i32), ptr @__kstrtab_dot11d_init, ptr @__kstrtabns_dot11d_init }, section "___ksymtab+dot11d_init", align 4
@__kstrtab_dot11d_channel_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_dot11d_channel_map = external dso_local constant [0 x i8], align 1
@__ksymtab_dot11d_channel_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dot11d_channel_map to i32), ptr @__kstrtab_dot11d_channel_map, ptr @__kstrtabns_dot11d_channel_map }, section "___ksymtab+dot11d_channel_map", align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Invalid country IE, skip it......1\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.dot11d_update_country = private unnamed_addr constant [22 x i8] c"dot11d_update_country\00", align 1
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Invalid country IE, skip it......2\0A\00", [56 x i8] zeroinitializer }, align 32
@channel_array = internal constant { <{ { <{ [24 x i8], [8 x i8] }>, i8 }, { <{ [11 x i8], [21 x i8] }>, i8 }, { <{ [21 x i8], [11 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [14 x i8], [18 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [21 x i8], [11 x i8] }>, i8 } }>, [115 x i8] } { <{ { <{ [24 x i8], [8 x i8] }>, i8 }, { <{ [11 x i8], [21 x i8] }>, i8 }, { <{ [21 x i8], [11 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [22 x i8], [10 x i8] }>, i8 }, { <{ [14 x i8], [18 x i8] }>, i8 }, { <{ [13 x i8], [19 x i8] }>, i8 }, { <{ [21 x i8], [11 x i8] }>, i8 } }> <{ { <{ [24 x i8], [8 x i8] }>, i8 } { <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B$(,048<@\95\99\9D\A1\A5", [8 x i8] zeroinitializer }>, i8 24 }, { <{ [11 x i8], [21 x i8] }>, i8 } { <{ [11 x i8], [21 x i8] }> <{ [11 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B", [21 x i8] zeroinitializer }>, i8 11 }, { <{ [21 x i8], [11 x i8] }>, i8 } { <{ [21 x i8], [11 x i8] }> <{ [21 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D$(,048<@", [11 x i8] zeroinitializer }>, i8 21 }, { <{ [13 x i8], [19 x i8] }>, i8 } { <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [19 x i8] zeroinitializer }>, i8 13 }, { <{ [13 x i8], [19 x i8] }>, i8 } { <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [19 x i8] zeroinitializer }>, i8 13 }, { <{ [22 x i8], [10 x i8] }>, i8 } { <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$(,048<@", [10 x i8] zeroinitializer }>, i8 22 }, { <{ [22 x i8], [10 x i8] }>, i8 } { <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$(,048<@", [10 x i8] zeroinitializer }>, i8 22 }, { <{ [13 x i8], [19 x i8] }>, i8 } { <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [19 x i8] zeroinitializer }>, i8 13 }, { <{ [22 x i8], [10 x i8] }>, i8 } { <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$(,048<@", [10 x i8] zeroinitializer }>, i8 22 }, { <{ [22 x i8], [10 x i8] }>, i8 } { <{ [22 x i8], [10 x i8] }> <{ [22 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$(,048<@", [10 x i8] zeroinitializer }>, i8 22 }, { <{ [14 x i8], [18 x i8] }>, i8 } { <{ [14 x i8], [18 x i8] }> <{ [14 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E", [18 x i8] zeroinitializer }>, i8 14 }, { <{ [13 x i8], [19 x i8] }>, i8 } { <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D", [19 x i8] zeroinitializer }>, i8 13 }, { <{ [21 x i8], [11 x i8] }>, i8 } { <{ [21 x i8], [11 x i8] }> <{ [21 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D$(,048<@", [11 x i8] zeroinitializer }>, i8 21 } }>, [115 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 125, i32 9 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 132, i32 9 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"channel_array\00", align 1
@___asan_gen_.11 = private constant [37 x i8] c"../drivers/staging/rtl8192e/dot11d.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 15, i32 28 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_dot11d_channel_map, ptr @__ksymtab_dot11d_init, ptr @.str, ptr @.str.1, ptr @channel_array], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_array to i32), i32 429, i32 544, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dot11d_init(ptr nocapture noundef readonly %ieee) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11d_info1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %0 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dot11d_info1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 4
  %state = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  %country_len = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %country_len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %country_len, align 2
  %channel_map = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 5
  %5 = call ptr @memset(ptr %channel_map, i32 0, i32 162)
  %max_tx_power_list = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 6
  %6 = call ptr @memset(ptr %max_tx_power_list, i32 255, i32 162)
  %7 = load ptr, ptr %dot11d_info1, align 4
  %country_watchdog.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %country_watchdog.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %country_watchdog.i, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dot11d_channel_map(i8 noundef zeroext %channel_plan, ptr nocapture noundef %ieee) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %global_domain = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 97
  %0 = ptrtoint ptr %global_domain to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %global_domain, align 8
  %idxprom = zext i8 %channel_plan to i32
  %arrayidx = getelementptr [13 x %struct.channel_list], ptr @channel_array, i32 0, i32 %idxprom
  %len = getelementptr [13 x %struct.channel_list], ptr @channel_array, i32 0, i32 %idxprom, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then:                                          ; preds = %entry
  %dot11d_info = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %3 = ptrtoint ptr %dot11d_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dot11d_info, align 4
  %channel_map = getelementptr inbounds %struct.rt_dot11d_info, ptr %4, i32 0, i32 5
  %5 = call ptr @memset(ptr %channel_map, i32 0, i32 162)
  %conv5 = zext i8 %2 to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then
  %i.084 = phi i32 [ 0, %if.then ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx10 = getelementptr [32 x i8], ptr %arrayidx, i32 0, i32 %i.084
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = add i8 %7, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %8)
  %9 = icmp ult i8 %8, -14
  br i1 %9, label %for.body.if.end30_crit_edge, label %if.end

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.end:                                           ; preds = %for.body
  %conv11 = zext i8 %7 to i32
  %10 = ptrtoint ptr %dot11d_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dot11d_info, align 4
  %arrayidx29 = getelementptr %struct.rt_dot11d_info, ptr %11, i32 0, i32 5, i32 %conv11
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx29, align 1
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %conv5
  br i1 %exitcond.not, label %if.end.if.end30_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.end30:                                         ; preds = %if.end.if.end30_crit_edge, %for.body.if.end30_crit_edge, %entry.if.end30_crit_edge
  %13 = zext i8 %channel_plan to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %channel_plan, label %if.end30.sw.epilog_crit_edge [
    i8 10, label %sw.bb
    i8 11, label %for.cond44.preheader
  ]

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond44.preheader:                             ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %dot11d_info48 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %14 = ptrtoint ptr %dot11d_info48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dot11d_info48, align 4
  %arrayidx50 = getelementptr %struct.rt_dot11d_info, ptr %15, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %arrayidx50, align 1
  %17 = load ptr, ptr %dot11d_info48, align 4
  %arrayidx50.1 = getelementptr %struct.rt_dot11d_info, ptr %17, i32 0, i32 5, i32 13
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %global_domain to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %global_domain, align 8
  %dot11d_info37 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %19 = ptrtoint ptr %dot11d_info37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dot11d_info37, align 4
  %arrayidx39 = getelementptr %struct.rt_dot11d_info, ptr %20, i32 0, i32 5, i32 12
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx39, align 1
  %22 = load ptr, ptr %dot11d_info37, align 4
  %arrayidx39.1 = getelementptr %struct.rt_dot11d_info, ptr %22, i32 0, i32 5, i32 13
  %23 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx39.1, align 1
  %24 = load ptr, ptr %dot11d_info37, align 4
  %arrayidx39.2 = getelementptr %struct.rt_dot11d_info, ptr %24, i32 0, i32 5, i32 14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %for.cond44.preheader
  %arrayidx50.1.sink = phi ptr [ %arrayidx50.1, %for.cond44.preheader ], [ %arrayidx39.2, %sw.bb ]
  %25 = ptrtoint ptr %arrayidx50.1.sink to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %arrayidx50.1.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end30.sw.epilog_crit_edge
  %.sink89 = phi i8 [ 1, %if.end30.sw.epilog_crit_edge ], [ 10, %sw.epilog.sink.split ]
  %.sink = phi i8 [ 14, %if.end30.sw.epilog_crit_edge ], [ 11, %sw.epilog.sink.split ]
  %bss_start_channel56 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 99
  %26 = ptrtoint ptr %bss_start_channel56 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink89, ptr %bss_start_channel56, align 1
  %ibss_maxjoin_chal57 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 100
  %27 = ptrtoint ptr %ibss_maxjoin_chal57 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %ibss_maxjoin_chal57, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dot11d_reset(ptr nocapture noundef readonly %ieee) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11d_info1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 96
  %0 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dot11d_info1, align 4
  %channel_map = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %channel_map, i32 0, i32 162)
  %max_tx_power_list = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 6
  %3 = call ptr @memset(ptr %max_tx_power_list, i32 255, i32 162)
  %uglygep = getelementptr i8, ptr %1, i32 267
  %4 = call ptr @memset(ptr %uglygep, i32 1, i32 11)
  %uglygep25 = getelementptr i8, ptr %1, i32 278
  %5 = call ptr @memset(ptr %uglygep25, i32 2, i32 3)
  %state = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %country_len = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %country_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %country_len, align 2
  %8 = load ptr, ptr %dot11d_info1, align 4
  %country_watchdog.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %country_watchdog.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %country_watchdog.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dot11d_update_country(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %address, i16 noundef zeroext %country_len, ptr nocapture noundef readonly %country) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11d_info1 = getelementptr inbounds %struct.rtllib_device, ptr %dev, i32 0, i32 96
  %0 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dot11d_info1, align 4
  %channel_map = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 5
  %2 = call ptr @memset(ptr %channel_map, i32 0, i32 162)
  %max_tx_power_list = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 6
  %3 = call ptr @memset(ptr %max_tx_power_list, i32 255, i32 162)
  %conv = zext i16 %country_len to i32
  %sub = add nsw i32 %conv, -3
  %div = sdiv i32 %sub, 3
  %conv5 = and i32 %div, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp85.not = icmp eq i32 %conv5, 0
  br i1 %cmp85.not, label %entry.for.end46_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv90 = phi i32 [ %indvars.iv.next91, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %country.pn88 = phi ptr [ %triple.089, %for.end.for.body_crit_edge ], [ %country, %entry.for.body_crit_edge ]
  %max_channel_number.087 = phi i8 [ %max_channel_number.1.lcssa, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %triple.089 = getelementptr i8, ptr %country.pn88, i32 3
  %4 = ptrtoint ptr %triple.089 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %triple.089, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %max_channel_number.087, i8 %5)
  %cmp9.not = icmp ult i8 %max_channel_number.087, %5
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev11 = getelementptr inbounds %struct.rtllib_device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dot11d_update_country) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv8 = zext i8 %5 to i32
  %num_channels = getelementptr i8, ptr %country.pn88, i32 4
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_channels, align 1
  %conv14 = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv14, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add)
  %cmp15 = icmp ugt i32 %add, 161
  br i1 %cmp15, label %if.then17, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %if.end
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2482.not = icmp eq i8 %11, 0
  br i1 %cmp2482.not, label %for.cond20.preheader.for.end_crit_edge, label %for.body26.lr.ph

for.cond20.preheader.for.end_crit_edge:           ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body26.lr.ph:                                 ; preds = %for.cond20.preheader
  %max_tx_power = getelementptr i8, ptr %country.pn88, i32 5
  br label %for.body26

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev18 = getelementptr inbounds %struct.rtllib_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dot11d_update_country) #7
  br label %cleanup

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.body26.for.body26_crit_edge ]
  %14 = ptrtoint ptr %triple.089 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %triple.089, align 1
  %conv29 = zext i8 %15 to i32
  %add31 = add nuw nsw i32 %indvars.iv, %conv29
  %arrayidx = getelementptr %struct.rt_dot11d_info, ptr %1, i32 0, i32 5, i32 %add31
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %max_tx_power to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_tx_power, align 1
  %19 = load i8, ptr %triple.089, align 1
  %conv34 = zext i8 %19 to i32
  %add36 = add nuw nsw i32 %indvars.iv, %conv34
  %arrayidx37 = getelementptr %struct.rt_dot11d_info, ptr %1, i32 0, i32 6, i32 %add36
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %arrayidx37, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_channels, align 1
  %23 = zext i8 %22 to i32
  %cmp24 = icmp ult i32 %indvars.iv.next, %23
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.cond20.for.end_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26

for.cond20.for.end_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  %24 = trunc i32 %indvars.iv to i8
  %25 = ptrtoint ptr %triple.089 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %triple.089, align 1
  %add41.le = add i8 %26, %24
  br label %for.end

for.end:                                          ; preds = %for.cond20.for.end_crit_edge, %for.cond20.preheader.for.end_crit_edge
  %max_channel_number.1.lcssa = phi i8 [ %add41.le, %for.cond20.for.end_crit_edge ], [ %max_channel_number.087, %for.cond20.preheader.for.end_crit_edge ]
  %indvars.iv.next91 = add nuw nsw i32 %indvars.iv90, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next91, %conv5
  br i1 %exitcond.not, label %for.end.for.end46_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.for.end46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46

for.end46:                                        ; preds = %for.end.for.end46_crit_edge, %entry.for.end46_crit_edge
  %27 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dot11d_info1, align 4
  %country_src_addr = getelementptr inbounds %struct.rt_dot11d_info, ptr %28, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %country_src_addr, ptr %address, i32 6)
  %country_len49 = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %country_len49 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %country_len, ptr %country_len49, align 2
  %country_buffer = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %country_buffer, ptr %country, i32 %conv)
  %state = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end46, %if.then17, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dot11d_scan_complete(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dot11d_info1 = getelementptr inbounds %struct.rtllib_device, ptr %dev, i32 0, i32 96
  %0 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dot11d_info1, align 4
  %state = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %channel_map.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 5
  %6 = call ptr @memset(ptr %channel_map.i, i32 0, i32 162)
  %max_tx_power_list.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 6
  %7 = call ptr @memset(ptr %max_tx_power_list.i, i32 255, i32 162)
  %uglygep.i = getelementptr i8, ptr %1, i32 267
  %8 = call ptr @memset(ptr %uglygep.i, i32 1, i32 11)
  %uglygep25.i = getelementptr i8, ptr %1, i32 278
  %9 = call ptr @memset(ptr %uglygep25.i, i32 2, i32 3)
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %country_len.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %country_len.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %country_len.i, align 2
  %12 = ptrtoint ptr %dot11d_info1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dot11d_info1, align 4
  %country_watchdog.i.i = getelementptr inbounds %struct.rt_dot11d_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %country_watchdog.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %country_watchdog.i.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_dot11d_init, !1, !"__ksymtab_dot11d_init", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 50, i32 1}
!2 = !{ptr @__ksymtab_dot11d_channel_map, !3, !"__ksymtab_dot11d_channel_map", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 92, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 125, i32 9}
!6 = !{ptr @__func__.dot11d_update_country, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 126, i32 9}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 132, i32 9}
!10 = !{ptr @channel_array, !11, !"channel_array", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/dot11d.c", i32 15, i32 28}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
