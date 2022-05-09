; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/card.c_pt.bc'
source_filename = "../drivers/staging/vt6656/card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@vnt_rspinf_b_short_table = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p\00\00\008\00\09\00\15\00\0A\00\0B\00\0B\80", [16 x i8] zeroinitializer }, align 32
@vnt_rspinf_b_long_table = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p\00\00\008\00\01\00\15\00\02\00\0B\00\03\80", [16 x i8] zeroinitializer }, align 32
@vnt_rspinf_a_table = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\9B\18\9F\10\9A\0A\9E\08\99\08\9D\04\98\04\9C\04\9C\04", [46 x i8] zeroinitializer }, align 32
@vnt_rspinf_gb_table = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\8B\1E\8F\16\8A\12\8E\0E\89\0E\8D\0A\88\0A\8C\0A\8C\0A", [46 x i8] zeroinitializer }, align 32
@cw_rxbcntsf_off = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 192, i16 96, i16 34, i16 17, i16 34, i16 23, i16 17, i16 11, i16 8, i16 5, i16 4, i16 3], [40 x i8] zeroinitializer }, align 32
@vnt_update_next_tbtt.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_update_next_tbtt\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/vt6656/card.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s TBTT: %8llx\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 10, i64 12, i64 13, i64 14]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"vnt_rspinf_b_short_table\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 71, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"vnt_rspinf_b_long_table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 76, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"vnt_rspinf_a_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 81, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"vnt_rspinf_gb_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 86, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"cw_rxbcntsf_off\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 44, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [33 x i8] c"../drivers/staging/vt6656/card.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 349, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @vnt_rspinf_b_short_table, ptr @vnt_rspinf_b_long_table, ptr @vnt_rspinf_a_table, ptr @vnt_rspinf_gb_table, ptr @cw_rxbcntsf_off, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rspinf_b_short_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rspinf_b_long_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rspinf_a_table to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_rspinf_gb_table to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_rxbcntsf_off to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_channel(ptr noundef %priv, i32 noundef %connection_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %connection_channel, -57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -56, i32 %0)
  %1 = icmp ult i32 %0, -56
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 85, i8 noundef zeroext 1) #9
  %call1 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 109, i8 noundef zeroext -80) #9
  %conv = trunc i32 %connection_channel to i16
  %call2 = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 12, i16 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = trunc i32 %connection_channel to i8
  %conv6 = or i8 %2, -128
  %call7 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 3, i8 noundef zeroext 109, i8 noundef zeroext %conv6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_on(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_off(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out_u8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_rspinf(ptr noundef %priv, i8 noundef zeroext %bb_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %preamble_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 46
  %0 = ptrtoint ptr %preamble_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %preamble_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %vnt_rspinf_b_long_table.vnt_rspinf_b_short_table = select i1 %tobool.not, ptr @vnt_rspinf_b_long_table, ptr @vnt_rspinf_b_short_table
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 220, i16 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %vnt_rspinf_b_long_table.vnt_rspinf_b_short_table) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bb_type)
  %cmp = icmp eq i8 %bb_type, 0
  %vnt_rspinf_a_table.vnt_rspinf_gb_table = select i1 %cmp, ptr @vnt_rspinf_a_table, ptr @vnt_rspinf_gb_table
  %call8 = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 236, i16 noundef zeroext 3, i16 noundef zeroext 18, ptr noundef nonnull %vnt_rspinf_a_table.vnt_rspinf_gb_table) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end3 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_update_ifs(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %max_min = alloca i8, align 1
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %max_min) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %packet_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 41
  %3 = ptrtoint ptr %packet_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %packet_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %slot = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 39
  %5 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %slot, align 4
  %sifs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %6 = ptrtoint ptr %sifs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %sifs, align 8
  %difs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %7 = ptrtoint ptr %difs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 34, ptr %difs, align 4
  %8 = ptrtoint ptr %max_min to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %max_min, align 1
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sifs2 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %9 = ptrtoint ptr %sifs2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %sifs2, align 8
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 57
  %10 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %short_slot_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %spec.select = select i1 %tobool.not, i32 20, i32 9
  %spec.select47 = select i1 %tobool.not, i8 5, i8 4
  %12 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 39
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %12, align 4
  %14 = ptrtoint ptr %max_min to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select47, ptr %max_min, align 1
  %mul = shl nuw nsw i32 %spec.select, 1
  %add = add nuw nsw i32 %mul, 10
  %difs8 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %15 = ptrtoint ptr %difs8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %difs8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then
  %eifs = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 38
  %16 = ptrtoint ptr %eifs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 80, ptr %eifs, align 8
  %sifs10 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 36
  %17 = ptrtoint ptr %sifs10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sifs10, align 8
  %conv11 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %data, align 1
  %difs12 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 37
  %20 = ptrtoint ptr %difs12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %difs12, align 4
  %conv13 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv13, ptr %0, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 80, ptr %1, align 1
  %slot18 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 39
  %24 = ptrtoint ptr %slot18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slot18, align 4
  %conv19 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv19, ptr %2, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 34, i16 noundef zeroext 3, i16 noundef zeroext 4, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %max_min to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_min, align 1
  %29 = or i8 %28, -96
  store i8 %29, ptr %max_min, align 1
  %call27 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 40, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %max_min) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end24 ], [ %call, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %max_min) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vnt_update_top_rates(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %basic_rates, align 4
  %and = and i32 %1, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #9, !range !25
  %sub.i = sub nuw nsw i32 32, %2
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  %3 = trunc i32 %cond.i to i8
  %phi.cast = add nsw i8 %3, -1
  %cond = select i1 %tobool.not, i8 8, i8 %phi.cast
  %top_ofdm_basic_rate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 43
  %4 = ptrtoint ptr %top_ofdm_basic_rate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %cond, ptr %top_ofdm_basic_rate, align 8
  %and2 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not.i18 = icmp eq i32 %and2, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %and2, i1 true) #9, !range !25
  %sub.i19 = sub nuw nsw i32 32, %5
  %cond.i20 = select i1 %tobool.not.i18, i32 0, i32 %sub.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i20)
  %tobool4.not = icmp eq i32 %cond.i20, 0
  %6 = trunc i32 %cond.i20 to i8
  %phi.cast17 = add nsw i8 %6, -1
  %cond9 = select i1 %tobool4.not, i8 0, i8 %phi.cast17
  %top_cck_basic_rate = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 44
  %7 = ptrtoint ptr %top_cck_basic_rate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cond9, ptr %top_cck_basic_rate, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vnt_ofdm_min_rate(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %basic_rates, align 4
  %and = and i32 %1, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @vnt_get_pkt_type(ptr nocapture noundef readonly %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bb_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 40
  %0 = ptrtoint ptr %bb_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %basic_rates.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %2 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %basic_rates.i, align 4
  %and.i = and i32 %3, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %. = select i1 %tobool.i.not, i8 2, i8 3
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i8 [ %., %if.else ], [ %1, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @vnt_get_tsf_offset(i8 noundef zeroext %rx_rate, i64 noundef %tsf1, i64 noundef %tsf2) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = urem i8 %rx_rate, 12
  %rem = zext i8 %0 to i32
  %arrayidx = getelementptr [12 x i16], ptr @cw_rxbcntsf_off, i32 0, i32 %rem
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %2 to i64
  %3 = add i64 %conv1, %tsf2
  %sub2 = sub i64 %tsf1, %3
  ret i64 %sub2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_adjust_tsf(ptr noundef %priv, i8 noundef zeroext %rx_rate, i64 noundef %time_stamp, i64 noundef %local_tsf) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #9
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %7 = urem i8 %rx_rate, 12
  %rem.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [12 x i16], ptr @cw_rxbcntsf_off, i32 0, i32 %rem.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv1.i = zext i16 %9 to i64
  %10 = add i64 %conv1.i, %local_tsf
  %sub2.i = sub i64 %time_stamp, %10
  %conv = trunc i64 %sub2.i to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %data, align 1
  %shr = lshr i64 %sub2.i, 8
  %conv1 = trunc i64 %shr to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %0, align 1
  %shr3 = lshr i64 %sub2.i, 16
  %conv4 = trunc i64 %shr3 to i8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %1, align 1
  %shr6 = lshr i64 %sub2.i, 24
  %conv7 = trunc i64 %shr6 to i8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %2, align 1
  %shr9 = lshr i64 %sub2.i, 32
  %conv10 = trunc i64 %shr9 to i8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %3, align 1
  %shr12 = lshr i64 %sub2.i, 40
  %conv13 = trunc i64 %shr12 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13, ptr %4, align 1
  %shr15 = lshr i64 %sub2.i, 48
  %conv16 = trunc i64 %shr15 to i8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %5, align 1
  %shr18 = lshr i64 %sub2.i, 56
  %conv19 = trunc i64 %shr18 to i8
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %6, align 1
  %call21 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 13, i16 noundef zeroext 5, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #9
  ret i32 %call21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vnt_get_current_tsf(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %current_tsf) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_tsf1 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %current_tsf1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %current_tsf1, align 8
  %2 = ptrtoint ptr %current_tsf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %current_tsf, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vnt_clear_current_tsf(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 72, i8 noundef zeroext 2) #9
  %current_tsf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %current_tsf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %current_tsf, align 8
  ret i1 true
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vnt_get_next_tbtt(i64 noundef %tsf, i16 noundef zeroext %beacon_interval) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %beacon_interval to i32
  %mul = shl nuw nsw i32 %conv, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %beacon_interval)
  %tobool.not = icmp eq i16 %beacon_interval, 0
  br i1 %tobool.not, label %entry.if.end188_crit_edge, label %if.else167

entry.if.end188_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.else167:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tsf)
  %cmp169 = icmp ult i64 %tsf, 4294967296
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !26

if.then173:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %conv174 = trunc i64 %tsf to i32
  %div177 = udiv i32 %conv174, %mul
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %tsf) #12, !srcloc !27
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tsf.addr.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tsf.addr.0, 1
  %conv186 = zext i32 %mul to i64
  %mul187 = mul i64 %add185, %conv186
  br label %if.end188

if.end188:                                        ; preds = %if.end183, %entry.if.end188_crit_edge
  %tsf.addr.1 = phi i64 [ %tsf, %entry.if.end188_crit_edge ], [ %mul187, %if.end183 ]
  ret i64 %tsf.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_reset_next_tbtt(ptr noundef %priv, i16 noundef zeroext %beacon_interval) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #9
  %call.i = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 72, i8 noundef zeroext 2) #9
  %current_tsf.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %current_tsf.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %current_tsf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %beacon_interval)
  %tobool.not.i = icmp eq i16 %beacon_interval, 0
  br i1 %tobool.not.i, label %entry.vnt_get_next_tbtt.exit_crit_edge, label %if.end183.i

entry.vnt_get_next_tbtt.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vnt_get_next_tbtt.exit

if.end183.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %beacon_interval to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  %conv186.i = zext i32 %mul.i to i64
  %extract = lshr exact i64 %conv186.i, 8
  %extract.t32 = trunc i64 %extract to i8
  %extract33 = lshr i64 %conv186.i, 16
  %extract.t34 = trunc i64 %extract33 to i8
  %extract35 = lshr i64 %conv186.i, 24
  %extract.t36 = trunc i64 %extract35 to i8
  br label %vnt_get_next_tbtt.exit

vnt_get_next_tbtt.exit:                           ; preds = %if.end183.i, %entry.vnt_get_next_tbtt.exit_crit_edge
  %tsf.addr.1.i.off8 = phi i8 [ 0, %entry.vnt_get_next_tbtt.exit_crit_edge ], [ %extract.t32, %if.end183.i ]
  %tsf.addr.1.i.off16 = phi i8 [ 0, %entry.vnt_get_next_tbtt.exit_crit_edge ], [ %extract.t34, %if.end183.i ]
  %tsf.addr.1.i.off24 = phi i8 [ 0, %entry.vnt_get_next_tbtt.exit_crit_edge ], [ %extract.t36, %if.end183.i ]
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %data, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %tsf.addr.1.i.off8, ptr %7, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %tsf.addr.1.i.off16, ptr %6, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %tsf.addr.1.i.off24, ptr %5, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %3, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %2, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %1, align 1
  %call22 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 13, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #9
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_update_next_tbtt(ptr noundef %priv, i64 noundef %tsf, i16 noundef zeroext %beacon_interval) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #9
  %0 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %data, i32 0, i32 7
  %conv.i = zext i16 %beacon_interval to i32
  %mul.i = shl nuw nsw i32 %conv.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %beacon_interval)
  %tobool.not.i = icmp eq i16 %beacon_interval, 0
  br i1 %tobool.not.i, label %entry.vnt_get_next_tbtt.exit_crit_edge, label %if.else167.i

entry.vnt_get_next_tbtt.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vnt_get_next_tbtt.exit

if.else167.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tsf)
  %cmp169.i = icmp ult i64 %tsf, 4294967296
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !26

if.then173.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv174.i = trunc i64 %tsf to i32
  %div177.i = udiv i32 %conv174.i, %mul.i
  %conv178.i = zext i32 %div177.i to i64
  br label %if.end183.i

if.else179.i:                                     ; preds = %if.else167.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 %tsf) #12, !srcloc !27
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  br label %if.end183.i

if.end183.i:                                      ; preds = %if.else179.i, %if.then173.i
  %tsf.addr.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tsf.addr.0.i, 1
  %conv186.i = zext i32 %mul.i to i64
  %mul187.i = mul i64 %add185.i, %conv186.i
  br label %vnt_get_next_tbtt.exit

vnt_get_next_tbtt.exit:                           ; preds = %if.end183.i, %entry.vnt_get_next_tbtt.exit_crit_edge
  %tsf.addr.1.i = phi i64 [ %tsf, %entry.vnt_get_next_tbtt.exit_crit_edge ], [ %mul187.i, %if.end183.i ]
  %conv = trunc i64 %tsf.addr.1.i to i8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %data, align 1
  %shr = lshr i64 %tsf.addr.1.i, 8
  %conv1 = trunc i64 %shr to i8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1, ptr %0, align 1
  %shr3 = lshr i64 %tsf.addr.1.i, 16
  %conv4 = trunc i64 %shr3 to i8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %1, align 1
  %shr6 = lshr i64 %tsf.addr.1.i, 24
  %conv7 = trunc i64 %shr6 to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %2, align 1
  %shr9 = lshr i64 %tsf.addr.1.i, 32
  %conv10 = trunc i64 %shr9 to i8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %3, align 1
  %shr12 = lshr i64 %tsf.addr.1.i, 40
  %conv13 = trunc i64 %shr12 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %4, align 1
  %shr15 = lshr i64 %tsf.addr.1.i, 48
  %conv16 = trunc i64 %shr15 to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %5, align 1
  %shr18 = lshr i64 %tsf.addr.1.i, 56
  %conv19 = trunc i64 %shr18 to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv19, ptr %6, align 1
  %call21 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 13, i16 noundef zeroext 6, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %do.body, label %vnt_get_next_tbtt.exit.cleanup_crit_edge

vnt_get_next_tbtt.exit.cleanup_crit_edge:         ; preds = %vnt_get_next_tbtt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %vnt_get_next_tbtt.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_update_next_tbtt.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_update_next_tbtt, %if.then26)) #9
          to label %cleanup [label %if.then26], !srcloc !28

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_update_next_tbtt.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i64 noundef %tsf.addr.1.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body, %vnt_get_next_tbtt.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #9
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_radio_power_off(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 3, label %entry.sw.epilog_crit_edge
    i8 14, label %entry.sw.epilog_crit_edge19
    i8 10, label %entry.sw.epilog_crit_edge20
    i8 9, label %entry.sw.epilog_crit_edge21
    i8 12, label %entry.sw.epilog_crit_edge22
    i8 13, label %entry.sw.epilog_crit_edge23
  ]

entry.sw.epilog_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22, %entry.sw.epilog_crit_edge23
  %call = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 120, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %sw.epilog.end_crit_edge

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 84, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @vnt_set_deep_sleep(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.end_crit_edge

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 123, i8 noundef zeroext -128) #9
  br label %end

end:                                              ; preds = %if.end8, %if.end4.end_crit_edge, %if.end.end_crit_edge, %sw.epilog.end_crit_edge
  %ret.1 = phi i32 [ %call, %sw.epilog.end_crit_edge ], [ %call1, %if.end.end_crit_edge ], [ %call5, %if.end4.end_crit_edge ], [ %call9, %if.end8 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_deep_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_radio_power_on(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_exit_deep_sleep(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 84, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %if.end4.sw.epilog_crit_edge [
    i8 3, label %if.end4.sw.bb_crit_edge
    i8 14, label %if.end4.sw.bb_crit_edge19
    i8 10, label %if.end4.sw.bb_crit_edge20
    i8 9, label %if.end4.sw.bb_crit_edge21
    i8 12, label %if.end4.sw.bb_crit_edge22
    i8 13, label %if.end4.sw.bb_crit_edge23
  ]

if.end4.sw.bb_crit_edge23:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.bb_crit_edge22:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.bb_crit_edge21:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.bb_crit_edge20:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.bb_crit_edge19:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge19, %if.end4.sw.bb_crit_edge20, %if.end4.sw.bb_crit_edge21, %if.end4.sw.bb_crit_edge22, %if.end4.sw.bb_crit_edge23
  %call5 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 120, i8 noundef zeroext 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  %call9 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 123, i8 noundef zeroext -128) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_exit_deep_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_bss_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bb_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 40
  %0 = ptrtoint ptr %bb_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bb_type, align 8
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp eq i8 %3, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4 = icmp eq i8 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  %type.0 = select i1 %or.cond, i8 2, i8 %1
  %call = tail call i32 @vnt_mac_set_bb_type(ptr noundef %priv, i8 noundef zeroext %type.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %bb_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.i = icmp ult i8 %5, 2
  br i1 %switch.i, label %if.end7.vnt_get_pkt_type.exit_crit_edge, label %if.else.i

if.end7.vnt_get_pkt_type.exit_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %vnt_get_pkt_type.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %basic_rates.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %6 = ptrtoint ptr %basic_rates.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %basic_rates.i.i, align 4
  %and.i.i = and i32 %7, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %..i = select i1 %tobool.i.not.i, i8 2, i8 3
  br label %vnt_get_pkt_type.exit

vnt_get_pkt_type.exit:                            ; preds = %if.else.i, %if.end7.vnt_get_pkt_type.exit_crit_edge
  %retval.0.i = phi i8 [ %..i, %if.else.i ], [ %5, %if.end7.vnt_get_pkt_type.exit_crit_edge ]
  %packet_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 41
  %8 = ptrtoint ptr %packet_type to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %packet_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %9 = icmp ult i8 %5, 3
  br i1 %9, label %switch.lookup, label %vnt_get_pkt_type.exit.if.end34_crit_edge

vnt_get_pkt_type.exit.if.end34_crit_edge:         ; preds = %vnt_get_pkt_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

switch.lookup:                                    ; preds = %vnt_get_pkt_type.exit
  %switch.cast = zext i8 %5 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 524803, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %switch.cast110 = zext i8 %5 to i24
  %switch.shiftamt111 = shl nuw nsw i24 %switch.cast110, 3
  %switch.downshift112 = lshr i24 1842208, %switch.shiftamt111
  %switch.masked113 = trunc i24 %switch.downshift112 to i8
  %switch.cast114 = zext i8 %5 to i24
  %switch.shiftamt115 = shl nuw nsw i24 %switch.cast114, 3
  %switch.downshift116 = lshr i24 16, %switch.shiftamt115
  %switch.masked117 = trunc i24 %switch.downshift116 to i8
  %call30 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -120, i8 noundef zeroext %switch.masked) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %switch.lookup.if.end34_crit_edge, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup.if.end34_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %switch.lookup.if.end34_crit_edge, %vnt_get_pkt_type.exit.if.end34_crit_edge
  %bb_vga_2_3.0107 = phi i8 [ %switch.masked117, %switch.lookup.if.end34_crit_edge ], [ 0, %vnt_get_pkt_type.exit.if.end34_crit_edge ]
  %bb_vga_0.0105 = phi i8 [ %switch.masked113, %switch.lookup.if.end34_crit_edge ], [ 28, %vnt_get_pkt_type.exit.if.end34_crit_edge ]
  %call35 = tail call i32 @vnt_update_ifs(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %10 = ptrtoint ptr %bb_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bb_type, align 8
  %preamble_type.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 46
  %12 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %preamble_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %vnt_rspinf_b_long_table.vnt_rspinf_b_short_table.i = select i1 %tobool.not.i, ptr @vnt_rspinf_b_long_table, ptr @vnt_rspinf_b_short_table
  %call.i = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 220, i16 noundef zeroext 3, i16 noundef zeroext 16, ptr noundef nonnull %vnt_rspinf_b_long_table.vnt_rspinf_b_short_table.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %vnt_set_rspinf.exit, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vnt_set_rspinf.exit:                              ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i = icmp eq i8 %11, 0
  %vnt_rspinf_a_table.vnt_rspinf_gb_table.i = select i1 %cmp.i, ptr @vnt_rspinf_a_table, ptr @vnt_rspinf_gb_table
  %call8.i = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 236, i16 noundef zeroext 3, i16 noundef zeroext 18, ptr noundef nonnull %vnt_rspinf_a_table.vnt_rspinf_gb_table.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool41.not = icmp eq i32 %call8.i, 0
  br i1 %tobool41.not, label %if.end43, label %vnt_set_rspinf.exit.cleanup_crit_edge

vnt_set_rspinf.exit.cleanup_crit_edge:            ; preds = %vnt_set_rspinf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %vnt_set_rspinf.exit
  %14 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp46 = icmp eq i8 %15, 10
  br i1 %cmp46, label %if.then48, label %if.end43.if.end55_crit_edge

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then48:                                        ; preds = %if.end43
  %bb_vga = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %16 = ptrtoint ptr %bb_vga to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bb_vga_0.0105, ptr %bb_vga, align 1
  %call51 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -25, i8 noundef zeroext %bb_vga_0.0105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then48.if.end55_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %bb_vga56 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %arrayidx57 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 2
  %17 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bb_vga_2_3.0107, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 3
  %18 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %bb_vga_2_3.0107, ptr %arrayidx59, align 1
  %19 = ptrtoint ptr %bb_vga56 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bb_vga56, align 1
  %call62 = tail call i32 @vnt_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then48.cleanup_crit_edge, %vnt_set_rspinf.exit.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %if.end55 ], [ %call, %entry.cleanup_crit_edge ], [ %call30, %switch.lookup.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call8.i, %vnt_set_rspinf.exit.cleanup_crit_edge ], [ %call51, %if.then48.cleanup_crit_edge ], [ %call.i, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_bb_type(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_vga_gain_offset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/card.c", i32 349, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_update_next_tbtt.__UNIQUE_ID_ddebug383, !1, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!6 = !{ptr @vnt_rspinf_b_short_table, !7, !"vnt_rspinf_b_short_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/card.c", i32 71, i32 17}
!8 = !{ptr @vnt_rspinf_b_long_table, !9, !"vnt_rspinf_b_long_table", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6656/card.c", i32 76, i32 17}
!10 = !{ptr @vnt_rspinf_a_table, !11, !"vnt_rspinf_a_table", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6656/card.c", i32 81, i32 17}
!12 = !{ptr @vnt_rspinf_gb_table, !13, !"vnt_rspinf_gb_table", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6656/card.c", i32 86, i32 17}
!14 = !{ptr @cw_rxbcntsf_off, !15, !"cw_rxbcntsf_off", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6656/card.c", i32 44, i32 18}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i32 0, i32 33}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148707370, i64 2148707650, i64 2148707984, i64 2148708318}
!28 = !{i64 2148972085, i64 2148972090, i64 2148972103, i64 2148972147, i64 2148972181, i64 2148972202}
