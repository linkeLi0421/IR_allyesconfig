; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc_x25.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc_x25.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lapb_register_struct = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lapb_parms_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x25_hdlc_proto = type { i16, i32, i32, i32, i32, i32 }
%struct.x25_state = type { %struct.x25_hdlc_proto, i8, %struct.spinlock, %struct.sk_buff_head, %struct.tasklet_struct }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%struct.atomic_t = type { i32 }
%union.anon.118 = type { ptr }
%struct.if_settings = type { i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@proto = internal global { %struct.hdlc_proto, [52 x i8] } { %struct.hdlc_proto { ptr @x25_open, ptr @x25_close, ptr null, ptr null, ptr null, ptr @x25_ioctl, ptr null, ptr @x25_rx, ptr @x25_xmit, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc_x25__343_379_hdlc_x25_init6 = internal global ptr @hdlc_x25_init, section ".initcall6.init", align 4
@__exitcall_hdlc_x25_exit = internal global ptr @hdlc_x25_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author344 = internal constant [49 x i8] c"hdlc_x25.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [60 x i8] c"hdlc_x25.description=X.25 protocol support for generic HDLC\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [39 x i8] c"hdlc_x25.file=drivers/net/wan/hdlc_x25\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [24 x i8] c"hdlc_x25.license=GPL v2\00", section ".modinfo", align 1
@x25_open.cb = internal constant { %struct.lapb_register_struct, [40 x i8] } { %struct.lapb_register_struct { ptr @x25_connected, ptr @x25_connected, ptr @x25_disconnected, ptr @x25_disconnected, ptr @x25_data_indication, ptr @x25_data_transmit }, [40 x i8] zeroinitializer }, align 32
@x25_ioctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&state(hdlc)->up_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LAPB connect request failed, error code = %i\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"LAPB disconnect request failed, error code = %i\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8198]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 128]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 268, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 181, i32 43 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 347, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 174, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1984, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 153, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [30 x i8] c"../drivers/net/wan/hdlc_x25.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 165, i32 21 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__exitcall_hdlc_x25_exit, ptr @__initcall__kmod_hdlc_x25__343_379_hdlc_x25_init6, ptr @hdlc_x25_exit, ptr @proto, ptr @x25_open.cb, ptr @x25_ioctl.__key, ptr @.str, ptr @.str.3, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_open.cb to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_ioctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_x25_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_hdlc_protocol(ptr noundef nonnull @proto) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_x25_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_hdlc_protocol(ptr noundef nonnull @proto) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_open(ptr noundef %dev) #2 align 64 {
entry:
  %params = alloca %struct.lapb_parms_struct, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %params) #7
  %2 = call ptr @memset(ptr %params, i32 255, i32 36)
  %call2 = tail call i32 @lapb_register(ptr noundef %dev, ptr noundef nonnull @x25_open.cb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @lapb_getparms(ptr noundef %dev, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.lapb_parms_struct, ptr %params, i32 0, i32 8
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %or = or i32 %8, 4
  store i32 %or, ptr %mode, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %modulo = getelementptr inbounds %struct.x25_hdlc_proto, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %modulo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %modulo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp13 = icmp eq i32 %10, 128
  br i1 %cmp13, label %if.then14, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mode15 = getelementptr inbounds %struct.lapb_parms_struct, ptr %params, i32 0, i32 8
  %11 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode15, align 4
  %or16 = or i32 %12, 1
  store i32 %or16, ptr %mode15, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %window = getelementptr inbounds %struct.x25_hdlc_proto, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %window, align 4
  %window21 = getelementptr inbounds %struct.lapb_parms_struct, ptr %params, i32 0, i32 6
  %15 = ptrtoint ptr %window21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %window21, align 4
  %t1 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %4, i32 0, i32 3
  %16 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t1, align 4
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %params, align 4
  %t2 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t2, align 4
  %t227 = getelementptr inbounds %struct.lapb_parms_struct, ptr %params, i32 0, i32 2
  %21 = ptrtoint ptr %t227 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %t227, align 4
  %n2 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %4, i32 0, i32 5
  %22 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n2, align 4
  %n230 = getelementptr inbounds %struct.lapb_parms_struct, ptr %params, i32 0, i32 4
  %24 = ptrtoint ptr %n230 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %n230, align 4
  %call31 = call i32 @lapb_setparms(ptr noundef %dev, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end34, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %up_lock = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %up_lock) #7
  %up = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %up, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %up_lock = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #7
  %up = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %up, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  %call3 = tail call i32 @lapb_unregister(ptr noundef %dev) #7
  %rx_tasklet = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_ioctl(ptr noundef %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  %new_settings = alloca %struct.x25_hdlc_proto, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %0 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifs_ifsu, align 4
  %add.ptr.i.i148 = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_settings) #7
  %2 = call ptr @memset(ptr %new_settings, i32 255, i32 24)
  %3 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifs, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8198, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %proto = getelementptr i8, ptr %dev, i32 2312
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %cmp.not = icmp eq ptr %7, @proto
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8198, ptr %ifs, align 4
  %size3 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %9 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %10)
  %cmp4 = icmp ult i32 %10, 24
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24, ptr %size3, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end7.cleanup_crit_edge, label %if.end.i.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #10, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %13, i32 noundef 24) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %13, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %call13 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call13, label %if.end15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %size19 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %17 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20 = icmp eq i32 %18, 0
  br i1 %cmp20, label %if.then21, label %if.then.i142

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %new_settings to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %new_settings, align 4
  %modulo = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 1
  %20 = ptrtoint ptr %modulo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %modulo, align 4
  %window = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 2
  %21 = ptrtoint ptr %window to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %window, align 4
  %t1 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 3
  %22 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %t1, align 4
  %t2 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 4
  %23 = ptrtoint ptr %t2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %t2, align 4
  %n2 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 5
  %24 = ptrtoint ptr %n2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %n2, align 4
  br label %if.end86

if.then.i142:                                     ; preds = %if.end18
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i141 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i141, label %if.then.i142.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i142.if.then11.i.i_crit_edge:             ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i142
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #10, !srcloc !45
  %asmresult.i.i143 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i143)
  %cmp.i.i144 = icmp eq i32 %asmresult.i.i143, 0
  br i1 %cmp.i.i144, label %if.end.i.i146, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !46

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i146:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i145 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_settings, i32 noundef 24) #7
  %26 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !47
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_settings, ptr noundef %1, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #7, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end25, label %if.end.i.i146.if.then11.i.i_crit_edge, !prof !46

if.end.i.i146.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i146.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i142.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i146.if.then11.i.i_crit_edge ], [ 24, %if.then.i142.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %new_settings, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end25:                                         ; preds = %if.end.i.i146
  %30 = ptrtoint ptr %new_settings to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %new_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %31)
  %switch = icmp ult i16 %31, 2
  br i1 %switch, label %lor.lhs.false, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end25
  %modulo33 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 1
  %32 = ptrtoint ptr %modulo33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %modulo33, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %33, label %lor.lhs.false.cleanup_crit_edge [
    i32 8, label %lor.lhs.false.lor.lhs.false40_crit_edge
    i32 128, label %lor.lhs.false.lor.lhs.false40_crit_edge160
  ]

lor.lhs.false.lor.lhs.false40_crit_edge160:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false40

lor.lhs.false.lor.lhs.false40_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false40

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false40:                                  ; preds = %lor.lhs.false.lor.lhs.false40_crit_edge, %lor.lhs.false.lor.lhs.false40_crit_edge160
  %window41 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 2
  %35 = ptrtoint ptr %window41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %window41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp42 = icmp eq i32 %36, 0
  br i1 %cmp42, label %lor.lhs.false40.cleanup_crit_edge, label %lor.lhs.false44

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp46 = icmp eq i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cmp50 = icmp ugt i32 %36, 7
  %or.cond = select i1 %cmp46, i1 %cmp50, i1 false
  br i1 %or.cond, label %lor.lhs.false44.cleanup_crit_edge, label %lor.lhs.false52

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %33)
  %cmp54 = icmp eq i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %36)
  %cmp58 = icmp ugt i32 %36, 127
  %or.cond159 = select i1 %cmp54, i1 %cmp58, i1 false
  br i1 %or.cond159, label %lor.lhs.false52.cleanup_crit_edge, label %lor.lhs.false60

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %t161 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 3
  %37 = ptrtoint ptr %t161 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %t161, align 4
  %39 = add i32 %38, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %39)
  %40 = icmp ult i32 %39, -255
  br i1 %40, label %lor.lhs.false60.cleanup_crit_edge, label %lor.lhs.false68

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false68:                                  ; preds = %lor.lhs.false60
  %t269 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 4
  %41 = ptrtoint ptr %t269 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %t269, align 4
  %43 = add i32 %42, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %43)
  %44 = icmp ult i32 %43, -255
  br i1 %44, label %lor.lhs.false68.cleanup_crit_edge, label %lor.lhs.false76

lor.lhs.false68.cleanup_crit_edge:                ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false76:                                  ; preds = %lor.lhs.false68
  %n277 = getelementptr inbounds %struct.x25_hdlc_proto, ptr %new_settings, i32 0, i32 5
  %45 = ptrtoint ptr %n277 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n277, align 4
  %47 = add i32 %46, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %47)
  %48 = icmp ult i32 %47, -255
  br i1 %48, label %lor.lhs.false76.cleanup_crit_edge, label %lor.lhs.false76.if.end86_crit_edge

lor.lhs.false76.if.end86_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

lor.lhs.false76.cleanup_crit_edge:                ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false76.if.end86_crit_edge, %if.then21
  %49 = ptrtoint ptr %add.ptr.i.i148 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i.i148, align 4
  %call87 = call i32 %50(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %call91 = call i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef nonnull @proto, i32 noundef 152) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %state.i150 = getelementptr i8, ptr %dev, i32 2368
  %51 = ptrtoint ptr %state.i150 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state.i150, align 4
  %53 = call ptr @memcpy(ptr %52, ptr %new_settings, i32 24)
  %54 = load ptr, ptr %state.i150, align 4
  %up = getelementptr inbounds %struct.x25_state, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %up, align 4
  %56 = load ptr, ptr %state.i150, align 4
  %up_lock = getelementptr inbounds %struct.x25_state, ptr %56, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %up_lock, ptr noundef nonnull @.str, ptr noundef nonnull @x25_ioctl.__key, i16 noundef signext 3) #7
  %57 = ptrtoint ptr %state.i150 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state.i150, align 4
  %rx_queue = getelementptr inbounds %struct.x25_state, ptr %58, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.x25_state, ptr %58, i32 0, i32 3, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %59 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.x25_state, ptr %58, i32 0, i32 3, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.x25_state, ptr %58, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %qlen.i.i, align 4
  %62 = ptrtoint ptr %state.i150 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state.i150, align 4
  %rx_tasklet = getelementptr inbounds %struct.x25_state, ptr %63, i32 0, i32 4
  call void @tasklet_setup(ptr noundef %rx_tasklet, ptr noundef nonnull @x25_rx_queue_kick) #7
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %64 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %hard_header_len, align 2
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %65 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 2, ptr %needed_headroom, align 8
  %type102 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %66 = ptrtoint ptr %type102 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 271, ptr %type102, align 16
  %call103 = call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %dev) #7
  call fastcc void @netif_dormant_off(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end90.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %lor.lhs.false76.cleanup_crit_edge, %lor.lhs.false68.cleanup_crit_edge, %lor.lhs.false60.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false44.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then11.i.i, %if.end15.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -105, %if.then5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb12.cleanup_crit_edge ], [ -16, %if.end15.cleanup_crit_edge ], [ -22, %lor.lhs.false44.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -22, %lor.lhs.false76.cleanup_crit_edge ], [ -22, %lor.lhs.false68.cleanup_crit_edge ], [ -22, %lor.lhs.false60.cleanup_crit_edge ], [ -22, %lor.lhs.false40.cleanup_crit_edge ], [ %call87, %if.end86.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ], [ -22, %lor.lhs.false52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_settings) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_rx(ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %state.i = getelementptr i8, ptr %2, i32 2368
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread34, !prof !50

skb_share_check.exit.thread34:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %if.then

skb_share_check.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.if.then_crit_edge, label %skb_share_check.exit.if.end_crit_edge

skb_share_check.exit.if.end_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_share_check.exit.if.then_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %skb_share_check.exit.if.then_crit_edge, %skb_share_check.exit.thread
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 6
  %7 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end:                                           ; preds = %skb_share_check.exit.if.end_crit_edge, %skb_share_check.exit.thread34
  %skb.addr.0.i37 = phi ptr [ %call7.i, %skb_share_check.exit.thread34 ], [ %skb, %skb_share_check.exit.if.end_crit_edge ]
  %up_lock = getelementptr inbounds %struct.x25_state, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #7
  %up = getelementptr inbounds %struct.x25_state, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %up, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i37, i32 noundef 0) #7
  %rx_dropped7 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 6
  %11 = ptrtoint ptr %rx_dropped7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_dropped7, align 8
  %inc8 = add i32 %12, 1
  store i32 %inc8, ptr %rx_dropped7, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @lapb_data_received(ptr noundef %2, ptr noundef nonnull %skb.addr.0.i37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %13 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_errors, align 8
  %inc16 = add i32 %14, 1
  store i32 %inc16, ptr %rx_errors, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb.addr.0.i37, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 1, %if.then4 ], [ 1, %if.then ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %up_lock = getelementptr inbounds %struct.x25_state, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #7
  %up = getelementptr inbounds %struct.x25_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %9, label %if.end4.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb12
    i8 2, label %sw.bb22
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  %call6 = tail call i32 @lapb_data_request(ptr noundef %dev, ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %sw.bb.if.end10_crit_edge, label %if.then9

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end4
  %call13 = tail call i32 @lapb_connect_request(ptr noundef %dev) #7
  %11 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call13, label %if.else [
    i32 0, label %sw.bb12.sw.epilog_crit_edge
    i32 3, label %if.then19
  ]

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @x25_connect_disconnect(ptr noundef %dev, i32 noundef 1) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call13) #11
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end4
  %call23 = tail call i32 @lapb_disconnect_request(ptr noundef %dev) #7
  %12 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call23, label %if.else30 [
    i32 0, label %sw.bb22.sw.epilog_crit_edge
    i32 4, label %if.then29
  ]

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @x25_connect_disconnect(ptr noundef %dev, i32 noundef 2) #7
  br label %sw.epilog

if.else30:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call23) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else30, %if.then29, %sw.bb22.sw.epilog_crit_edge, %if.else, %if.then19, %sw.bb12.sw.epilog_crit_edge, %if.end4.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #7
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10, %if.then2, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_connected(ptr noundef %dev, i32 noundef %reason) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @x25_connect_disconnect(ptr noundef %dev, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_disconnected(ptr noundef %dev, i32 noundef %reason) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @x25_connect_disconnect(ptr noundef %dev, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @x25_data_indication(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_cloned.exit.thread.i, label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %cmp.i1.i = icmp eq ptr %8, %10
  br i1 %cmp.i1.i, label %skb_cloned.exit.i.skb_cow.exit_crit_edge, label %if.end.i.i

skb_cloned.exit.i.skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow.exit

skb_cloned.exit.thread.i:                         ; preds = %entry
  %data.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i2.i, align 4
  %head.i.i3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i3.i, align 8
  %cmp.i14.i = icmp eq ptr %12, %14
  br i1 %cmp.i14.i, label %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge, label %skb_cloned.exit.thread.i.if.end_crit_edge

skb_cloned.exit.thread.i.if.end_crit_edge:        ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_cloned.exit.thread.i.skb_cow.exit_crit_edge:  ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow.exit

if.end.i.i:                                       ; preds = %skb_cloned.exit.i
  %and.i.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.skb_cow.exit_crit_edge

if.end.i.i.skb_cow.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_cow.exit:                                     ; preds = %if.end.i.i.skb_cow.exit_crit_edge, %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge, %skb_cloned.exit.i.skb_cow.exit_crit_edge
  %delta.010.i.i = phi i32 [ 0, %if.end.i.i.skb_cow.exit_crit_edge ], [ 128, %skb_cloned.exit.i.skb_cow.exit_crit_edge ], [ 128, %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow.exit.if.end_crit_edge, label %if.then

skb_cow.exit.if.end_crit_edge:                    ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %skb_cow.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %skb_cloned.exit.thread.i.if.end_crit_edge
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  %18 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %18, align 8
  %20 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %23 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2053, ptr %protocol, align 8
  %rx_queue = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #7
  %state.i14 = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_tasklet = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_data_transmit(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %network_header.i, align 4
  %5 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %5, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %mac_header.i.i, align 2
  %proto.i = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proto.i, align 4
  %type_trans.i = getelementptr inbounds %struct.hdlc_proto, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %type_trans.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type_trans.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.hdlc_type_trans.exit_crit_edge, label %if.then.i

entry.hdlc_type_trans.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hdlc_type_trans.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call zeroext i16 %11(ptr noundef %skb, ptr noundef %dev) #7
  br label %hdlc_type_trans.exit

hdlc_type_trans.exit:                             ; preds = %if.then.i, %entry.hdlc_type_trans.exit_crit_edge
  %retval.0.i = phi i16 [ %call3.i, %if.then.i ], [ 25, %entry.hdlc_type_trans.exit_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %retval.0.i, ptr %protocol, align 8
  %call2 = tail call zeroext i1 @dev_nit_active(ptr noundef %dev) #7
  br i1 %call2, label %if.then, label %hdlc_type_trans.exit.if.end_crit_edge

hdlc_type_trans.exit.if.end_crit_edge:            ; preds = %hdlc_type_trans.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hdlc_type_trans.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_queue_xmit_nit(ptr noundef %skb, ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hdlc_type_trans.exit.if.end_crit_edge
  %xmit = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmit, align 4
  %call3 = tail call i32 %14(ptr noundef %skb, ptr noundef %dev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_getparms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_setparms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @x25_connect_disconnect(ptr noundef %dev, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %dev, i32 2368
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1, i32 noundef 526880) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  %conv = trunc i32 %code to i8
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %call3, align 1
  %3 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %3, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2053, ptr %protocol, align 8
  %rx_queue = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i) #7
  %state.i1 = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 4, i32 1
  %call.i2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_tasklet = getelementptr inbounds %struct.x25_state, ptr %1, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_nit_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_queue_xmit_nit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_hdlc_protocol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x25_rx_queue_kick(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue = getelementptr i8, ptr %t, i32 -56
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #7
  %tobool.not6 = icmp eq ptr %call, null
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %skb.07 = phi ptr [ %call3, %while.body.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %call1 = tail call i32 @netif_receive_skb_core(ptr noundef nonnull %skb.07) #7
  %call3 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_off(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @linkwatch_fire_event(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb_core(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_received(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_connect_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_disconnect_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !30, !32}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_hdlc_x25__343_379_hdlc_x25_init6, !1, !"__initcall__kmod_hdlc_x25__343_379_hdlc_x25_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc_x25.c", i32 379, i32 1}
!2 = !{ptr @__exitcall_hdlc_x25_exit, !3, !"__exitcall_hdlc_x25_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc_x25.c", i32 380, i32 1}
!4 = !{ptr @__UNIQUE_ID_author344, !5, !"__UNIQUE_ID_author344", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc_x25.c", i32 382, i32 1}
!6 = !{ptr @__UNIQUE_ID_description345, !7, !"__UNIQUE_ID_description345", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc_x25.c", i32 383, i32 1}
!8 = !{ptr @__UNIQUE_ID_file346, !9, !"__UNIQUE_ID_file346", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc_x25.c", i32 384, i32 1}
!10 = !{ptr @__UNIQUE_ID_license347, !9, !"__UNIQUE_ID_license347", i1 false, i1 false}
!11 = !{ptr @proto, !12, !"proto", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/hdlc_x25.c", i32 268, i32 26}
!13 = !{ptr @x25_open.cb, !14, !"cb", i1 false, i1 false}
!14 = !{!"../drivers/net/wan/hdlc_x25.c", i32 181, i32 43}
!15 = !{ptr @x25_ioctl.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wan/hdlc_x25.c", i32 347, i32 3}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!20 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!25 = !{ptr @skb_queue_head_init.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/hdlc_x25.c", i32 153, i32 21}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/hdlc_x25.c", i32 165, i32 21}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2152332725, i64 2152332750}
!45 = !{i64 2152332044, i64 2152332069}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 4827599}
!48 = !{i64 4827796}
!49 = !{i64 2152313029}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i8 0, i8 2}
