; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/wcmd.c_pt.bc'
source_filename = "../drivers/staging/vt6656/wcmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@vnt_run_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Starting mac80211\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vnt_run_command\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/vt6656/wcmd.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vnt_run_command._entry_ptr = internal global ptr @vnt_run_command._entry, section ".printk_index", align 4
@vnt_run_command._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to start\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vnt_run_command._entry_ptr.8 = internal global ptr @vnt_run_command._entry.5, section ".printk_index", align 4
@vnt_run_command.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Change from Antenna%d to\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 95, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 99, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [33 x i8] c"../drivers/staging/vt6656/wcmd.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 128, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @vnt_run_command._entry, ptr @vnt_run_command._entry.5, ptr @vnt_run_command._entry_ptr, ptr @vnt_run_command._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_run_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_run_command._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnt_run_command(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1940
  %flags = getelementptr i8, ptr %work, i32 -1764
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_running = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %command_state = getelementptr i8, ptr %work, i32 -164
  %5 = ptrtoint ptr %command_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %command_state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end3.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb16
    i32 3, label %sw.bb18
    i32 1, label %sw.bb25
    i32 4, label %do.body29
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  %mac_hw = getelementptr i8, ptr %work, i32 -1932
  %8 = ptrtoint ptr %mac_hw to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_hw, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  %usb = getelementptr i8, ptr %work, i32 -1928
  %10 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #7
  %call7 = tail call i32 @vnt_init(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.sw.epilog_crit_edge, label %do.end12

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.6) #7
  %intf = getelementptr i8, ptr %work, i32 -1924
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_free_hw(ptr noundef %18) #4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @vnt_next_tbtt_wakeup(ptr noundef %add.ptr) #4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end3
  %vif = getelementptr i8, ptr %work, i32 -1936
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %sw.bb18.sw.epilog_crit_edge, label %if.end21

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end21:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 @vnt_beacon_make(ptr noundef %add.ptr, ptr noundef nonnull %20) #4
  %call24 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %add.ptr, i8 noundef zeroext 87, i8 noundef zeroext 1) #4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chandef, align 4
  %call27 = tail call i32 @vnt_rf_setpower(ptr noundef %add.ptr, ptr noundef %24) #4
  br label %sw.epilog

do.body29:                                        ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_run_command.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_run_command, %if.then35)) #4
          to label %do.end40 [label %if.then35], !srcloc !26

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #6
  %usb36 = getelementptr i8, ptr %work, i32 -1928
  %25 = ptrtoint ptr %usb36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb36, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %rx_antenna_sel = getelementptr i8, ptr %work, i32 -548
  %27 = ptrtoint ptr %rx_antenna_sel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_antenna_sel, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_run_command.__UNIQUE_ID_ddebug383, ptr noundef %dev37, ptr noundef nonnull @.str.10, i32 noundef %28) #4
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body29
  %rx_antenna_sel41 = getelementptr i8, ptr %work, i32 -548
  %29 = ptrtoint ptr %rx_antenna_sel41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_antenna_sel41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then42, label %if.else49

if.then42:                                        ; preds = %do.end40
  %31 = ptrtoint ptr %rx_antenna_sel41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %rx_antenna_sel41, align 8
  %tx_rx_ant_inv = getelementptr i8, ptr %work, i32 -552
  %32 = ptrtoint ptr %tx_rx_ant_inv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_rx_ant_inv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not = icmp eq i32 %33, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = tail call i32 @vnt_set_antenna_mode(ptr noundef %add.ptr, i8 noundef zeroext 2) #4
  br label %sw.epilog

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 @vnt_set_antenna_mode(ptr noundef %add.ptr, i8 noundef zeroext 3) #4
  br label %sw.epilog

if.else49:                                        ; preds = %do.end40
  %34 = ptrtoint ptr %rx_antenna_sel41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rx_antenna_sel41, align 8
  %tx_rx_ant_inv51 = getelementptr i8, ptr %work, i32 -552
  %35 = ptrtoint ptr %tx_rx_ant_inv51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_rx_ant_inv51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool52.not = icmp eq i32 %36, 0
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call i32 @vnt_set_antenna_mode(ptr noundef %add.ptr, i8 noundef zeroext 3) #4
  br label %sw.epilog

if.else55:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call i32 @vnt_set_antenna_mode(ptr noundef %add.ptr, i8 noundef zeroext 2) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else55, %if.then53, %if.else, %if.then45, %sw.bb25, %if.end21, %sw.bb18.sw.epilog_crit_edge, %sw.bb16, %do.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end3.sw.epilog_crit_edge
  %37 = ptrtoint ptr %command_state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %command_state, align 8
  %free_cmd_queue.i = getelementptr i8, ptr %work, i32 -20
  %38 = ptrtoint ptr %free_cmd_queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %free_cmd_queue.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %39)
  %cmp.i = icmp eq i32 %39, 32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cmd_running, align 4
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %cmd_dequeue_idx.i = getelementptr i8, ptr %work, i32 -28
  %41 = ptrtoint ptr %cmd_dequeue_idx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmd_dequeue_idx.i, align 8
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %add.ptr, i32 0, i32 62, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %command.i = getelementptr i8, ptr %work, i32 -160
  %45 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %command.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %42)
  %cmp2.i = icmp ugt i32 %42, 30
  %inc.i = add i32 %42, 1
  %storemerge.i = select i1 %cmp2.i, i32 0, i32 %inc.i
  %46 = ptrtoint ptr %cmd_dequeue_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i, ptr %cmd_dequeue_idx.i, align 8
  %inc8.i = add i32 %39, 1
  %47 = ptrtoint ptr %free_cmd_queue.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc8.i, ptr %free_cmd_queue.i, align 8
  %48 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %switch = icmp ult i32 %44, 5
  br i1 %switch, label %sw.epilog.sink.split.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %command_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %44, ptr %command_state, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.i.sw.epilog.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %work, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.then.i, %do.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_next_tbtt_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_beacon_make(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_on(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_rf_setpower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_set_antenna_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_schedule_command(ptr noundef %priv, i32 noundef %command) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cmd_queue = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 65
  %0 = ptrtoint ptr %free_cmd_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_cmd_queue, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %cmd_enqueue_idx = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %2 = ptrtoint ptr %cmd_enqueue_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_enqueue_idx, align 4
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 62, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %command, ptr %arrayidx, align 4
  %5 = load i32, ptr %cmd_enqueue_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %5)
  %cmp2 = icmp ugt i32 %5, 30
  %inc = add i32 %5, 1
  %storemerge = select i1 %cmp2, i32 0, i32 %inc
  %6 = ptrtoint ptr %cmd_enqueue_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %cmd_enqueue_idx, align 4
  %7 = ptrtoint ptr %free_cmd_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_cmd_queue, align 8
  %dec = add i32 %8, -1
  store i32 %dec, ptr %free_cmd_queue, align 8
  %cmd_running = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 66
  %9 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then8, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then8:                                         ; preds = %if.end
  %command_state.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 60
  %11 = ptrtoint ptr %command_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %command_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %dec)
  %cmp.i = icmp eq i32 %dec, 32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmd_running, align 4
  br label %return

if.end.i:                                         ; preds = %if.then8
  %cmd_dequeue_idx.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 63
  %13 = ptrtoint ptr %cmd_dequeue_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_dequeue_idx.i, align 8
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 62, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %command.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 61
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %command.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %14)
  %cmp2.i = icmp ugt i32 %14, 30
  %inc.i = add i32 %14, 1
  %storemerge.i = select i1 %cmp2.i, i32 0, i32 %inc.i
  %18 = ptrtoint ptr %cmd_dequeue_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %cmd_dequeue_idx.i, align 8
  %19 = ptrtoint ptr %free_cmd_queue to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %8, ptr %free_cmd_queue, align 8
  %20 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %switch = icmp ult i32 %16, 5
  br i1 %switch, label %sw.epilog.sink.split.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.sink.split.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %command_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %command_state.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.i.sw.epilog.i_crit_edge
  %run_command_work.i.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %run_command_work.i.i, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %sw.epilog.i, %if.then.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %if.then.i ], [ 1, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vnt_reset_command_timer(ptr nocapture noundef writeonly %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %free_cmd_queue = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 65
  %0 = ptrtoint ptr %free_cmd_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %free_cmd_queue, align 8
  %cmd_dequeue_idx = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 63
  %1 = ptrtoint ptr %cmd_dequeue_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmd_dequeue_idx, align 8
  %cmd_enqueue_idx = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 64
  %2 = ptrtoint ptr %cmd_enqueue_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_enqueue_idx, align 4
  %command_state = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 60
  %3 = ptrtoint ptr %command_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %command_state, align 8
  %cmd_running = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 66
  %4 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cmd_running, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/wcmd.c", i32 95, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vnt_run_command._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vnt_run_command._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/vt6656/wcmd.c", i32 99, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vnt_run_command._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @vnt_run_command._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/vt6656/wcmd.c", i32 128, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vnt_run_command.__UNIQUE_ID_ddebug383, !14, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148963016, i64 2148963021, i64 2148963034, i64 2148963078, i64 2148963112, i64 2148963133}
