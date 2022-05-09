; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-tx.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.160, i32 }
%struct.atomic_t = type { i32 }
%union.anon.160 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.octeon_ethernet = type { i32, i32, i32, ptr, i32, i32, [16 x %struct.sk_buff_head], i32, i32, i64, ptr, %struct.delayed_work, ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cvm_oct_xmit = private unnamed_addr constant [13 x i8] c"cvm_oct_xmit\00", align 1
@cvm_oct_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.cvm_oct_xmit, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Failed to send the packet\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/octeon/ethernet-tx.c\00", [59 x i8] zeroinitializer }, align 32
@cvm_oct_xmit._entry_ptr = internal global ptr @cvm_oct_xmit._entry, section ".printk_index", align 4
@cvm_oct_tx_cleanup_tasklet = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 0, %union.anon.160 { ptr @cvm_oct_tx_do_cleanup }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@cvm_oct_xmit_pow._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cvm_oct_xmit_pow = private unnamed_addr constant [17 x i8] c"cvm_oct_xmit_pow\00", align 1
@cvm_oct_xmit_pow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.cvm_oct_xmit_pow, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Failed to allocate a work queue entry\0A\00", [53 x i8] zeroinitializer }, align 32
@cvm_oct_xmit_pow._entry_ptr = internal global ptr @cvm_oct_xmit_pow._entry, section ".printk_index", align 4
@cvm_oct_xmit_pow._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.cvm_oct_xmit_pow, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to allocate a packet buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@cvm_oct_xmit_pow._entry_ptr.7 = internal global ptr @cvm_oct_xmit_pow._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@cvm_oct_device = external dso_local global [0 x ptr], align 4
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not acquire Ethernet IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 436, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"cvm_oct_tx_cleanup_tasklet\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 44, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 519, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 529, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 706, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [40 x i8] c"../drivers/staging/octeon/ethernet-tx.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 709, i32 9 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @cvm_oct_xmit._entry, ptr @cvm_oct_xmit._entry_ptr, ptr @cvm_oct_xmit_pow._entry, ptr @cvm_oct_xmit_pow._entry.5, ptr @cvm_oct_xmit_pow._entry_ptr, ptr @cvm_oct_xmit_pow._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cvm_oct_tx_cleanup_tasklet, ptr @cvm_oct_xmit_pow._rs, ptr @.str.3, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_tx_cleanup_tasklet to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_xmit_pow._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_xmit_pow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_xmit_pow._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr.i) #4, !srcloc !38
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp8 = icmp ugt i8 %3, 5
  br i1 %cmp8, label %if.then11, label %entry.if.end41_crit_edge, !prof !39

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then11:                                        ; preds = %entry
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %5) #4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %if.then20, label %if.then11.if.end41_crit_edge, !prof !39

if.then11.if.end41_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then20:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr i8, ptr %dev, i32 2340
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  br label %while.end

if.end41:                                         ; preds = %if.then11.if.end41_crit_edge, %entry.if.end41_crit_edge
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %nr_frags90 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags90 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags90, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp92 = icmp eq i8 %9, 0
  br i1 %cmp92, label %if.end41.do.end235_crit_edge, label %if.else110

if.end41.do.end235_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end235

if.else110:                                       ; preds = %if.end41
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %data111 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data111, align 4
  %14 = ptrtoint ptr %13 to i32
  %conv112 = zext i32 %14 to i64
  %data_len.i493 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i493 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i493, align 8
  %sub.i = sub i32 %11, %16
  %17 = and i32 %sub.i, 65535
  %bf.value123 = zext i32 %17 to i64
  %bf.shl124 = shl nuw nsw i64 %bf.value123, 40
  %bf.set126 = or i64 %bf.shl124, %conv112
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %bf.set126, ptr %cb, align 8
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %nr_frags129527 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags129527 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_frags129527, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp131529.not = icmp eq i8 %22, 0
  br i1 %cmp131529.not, label %if.else110.do.end235_crit_edge, label %if.else110.for.body_crit_edge

if.else110.for.body_crit_edge:                    ; preds = %if.else110
  br label %for.body

if.else110.do.end235_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end235

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else110.for.body_crit_edge
  %23 = phi ptr [ %34, %for.body.for.body_crit_edge ], [ %20, %if.else110.for.body_crit_edge ]
  %hw_buffer.sroa.0.0531 = phi i64 [ %bf.set148, %for.body.for.body_crit_edge ], [ %bf.set126, %if.else110.for.body_crit_edge ]
  %i.0530 = phi i32 [ %add151, %for.body.for.body_crit_edge ], [ 0, %if.else110.for.body_crit_edge ]
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 12
  %add.ptr135 = getelementptr %struct.bio_vec, ptr %frags, i32 %i.0530
  %24 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr135, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %25) #4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %frags, i32 %i.0530, i32 2
  %26 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i496 = getelementptr i8, ptr %call1.i, i32 %27
  %28 = ptrtoint ptr %add.ptr.i496 to i32
  %conv137 = zext i32 %28 to i64
  %bf.clear140 = and i64 %hw_buffer.sroa.0.0531, -72057594037927936
  %bf.set141 = or i64 %bf.clear140, %conv137
  %bv_len.i = getelementptr %struct.bio_vec, ptr %frags, i32 %i.0530, i32 1
  %29 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bv_len.i, align 4
  %31 = and i32 %30, 65535
  %bf.value145 = zext i32 %31 to i64
  %bf.shl146 = shl nuw nsw i64 %bf.value145, 40
  %bf.set148 = or i64 %bf.set141, %bf.shl146
  %add151 = add nuw nsw i32 %i.0530, 1
  %arrayidx152 = getelementptr i64, ptr %cb, i32 %add151
  %32 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %bf.set148, ptr %arrayidx152, align 8
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i, align 4
  %nr_frags129 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %nr_frags129 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags129, align 2
  %conv130 = zext i8 %36 to i32
  %cmp131 = icmp ult i32 %add151, %conv130
  br i1 %cmp131, label %for.body.for.body_crit_edge, label %for.body.do.end235_crit_edge

for.body.do.end235_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end235

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end235:                                        ; preds = %for.body.do.end235_crit_edge, %if.else110.do.end235_crit_edge, %if.end41.do.end235_crit_edge
  %lock281 = getelementptr i8, ptr %dev, i32 2340
  %call283 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock281) #4
  %qlen.i = getelementptr i8, ptr %dev, i32 2336
  %37 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %38)
  %cmp291 = icmp ugt i32 %38, 999
  br i1 %cmp291, label %if.then299, label %do.end235.while.end.thread_crit_edge, !prof !39

do.end235.while.end.thread_crit_edge:             ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.thread

if.then299:                                       ; preds = %do.end235
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %39 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp300.not = icmp eq i32 %40, 0
  br i1 %cmp300.not, label %if.then299.while.end_crit_edge, label %if.then302

if.then299.while.end_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then302:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock281, i32 noundef %call283) #4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %41 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %42, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  %call317 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock281) #4
  br label %while.end.thread

while.end.thread:                                 ; preds = %if.then302, %do.end235.while.end.thread_crit_edge
  %flags.1 = phi i32 [ %call317, %if.then302 ], [ %call283, %do.end235.while.end.thread_crit_edge ]
  %tx_free_list358 = getelementptr i8, ptr %dev, i32 2328
  %prev.i.i = getelementptr i8, ptr %dev, i32 2332
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %tx_free_list358, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %46 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %skb, ptr %44, align 4
  %48 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %lock374537 = getelementptr i8, ptr %dev, i32 2340
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock374537, i32 noundef %flags.1) #4
  br label %do.end383

while.end:                                        ; preds = %if.then299.while.end_crit_edge, %if.then20
  %flags.1526 = phi i32 [ %call283, %if.then299.while.end_crit_edge ], [ %call35, %if.then20 ]
  %50 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %skb, align 8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %51 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_dropped, align 4
  %inc355 = add i32 %52, 1
  store i32 %inc355, ptr %tx_dropped, align 4
  %lock374 = getelementptr i8, ptr %dev, i32 2340
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock374, i32 noundef %flags.1526) #4
  %tobool376.not532 = icmp eq ptr %skb, null
  br i1 %tobool376.not532, label %while.end.do.end383_crit_edge, label %while.end.while.body377_crit_edge

while.end.while.body377_crit_edge:                ; preds = %while.end
  br label %while.body377

while.end.do.end383_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end383

while.body377:                                    ; preds = %while.body377.while.body377_crit_edge, %while.end.while.body377_crit_edge
  %to_free_list.2533 = phi ptr [ %54, %while.body377.while.body377_crit_edge ], [ %skb, %while.end.while.body377_crit_edge ]
  %53 = ptrtoint ptr %to_free_list.2533 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %to_free_list.2533, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %to_free_list.2533, i32 noundef 1) #4
  %tobool376.not = icmp eq ptr %54, null
  br i1 %tobool376.not, label %while.body377.do.end383_crit_edge, label %while.body377.while.body377_crit_edge

while.body377.while.body377_crit_edge:            ; preds = %while.body377
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body377

while.body377.do.end383_crit_edge:                ; preds = %while.body377
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end383

do.end383:                                        ; preds = %while.body377.do.end383_crit_edge, %while.end.do.end383_crit_edge, %while.end.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_xmit_pow(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @cvm_oct_xmit_pow._rs, ptr noundef nonnull @__func__.cvm_oct_xmit_pow) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %0 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_tx_shutdown_dev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %do.body1

do.body1:                                         ; preds = %while.end.do.body1_crit_edge, %entry
  %qos.025 = phi i32 [ 0, %entry ], [ %inc, %while.end.do.body1_crit_edge ]
  %arrayidx = getelementptr %struct.octeon_ethernet, ptr %add.ptr.i, i32 0, i32 6, i32 %qos.025
  %lock = getelementptr %struct.octeon_ethernet, ptr %add.ptr.i, i32 0, i32 6, i32 %qos.025, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not24 = icmp eq i32 %1, 0
  br i1 %tobool.not24, label %do.body1.while.end_crit_edge, label %do.body1.while.body_crit_edge

do.body1.while.body_crit_edge:                    ; preds = %do.body1
  br label %while.body

do.body1.while.end_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %__skb_dequeue.exit.while.body_crit_edge, %do.body1.while.body_crit_edge
  %2 = phi i32 [ %13, %__skb_dequeue.exit.while.body_crit_edge ], [ %1, %do.body1.while.body_crit_edge ]
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp.i.i = icmp eq ptr %4, %arrayidx
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %4
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %while.body.__skb_dequeue.exit_crit_edge, label %if.then.i

while.body.__skb_dequeue.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_dequeue.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %2, -1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %6 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %spec.store.select.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  br label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %if.then.i, %while.body.__skb_dequeue.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %spec.store.select.i.i, i32 noundef 1) #4
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %__skb_dequeue.exit.while.end_crit_edge, label %__skb_dequeue.exit.while.body_crit_edge

__skb_dequeue.exit.while.body_crit_edge:          ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

__skb_dequeue.exit.while.end_crit_edge:           ; preds = %__skb_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %__skb_dequeue.exit.while.end_crit_edge, %do.body1.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #4
  %inc = add nuw nsw i32 %qos.025, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %while.end.do.body1_crit_edge

while.end.do.body1_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_tx_initialize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @request_threaded_irq(i32 noundef 0, ptr noundef nonnull @cvm_oct_tx_cleanup_watchdog, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @cvm_oct_device) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9, i32 noundef 0) #8
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_tx_cleanup_watchdog(i32 noundef %cpl, ptr nocapture noundef readnone %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @cvm_oct_tx_cleanup_tasklet, i32 0, i32 1)) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__tasklet_schedule(ptr noundef nonnull @cvm_oct_tx_cleanup_tasklet) #4
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_tx_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @free_irq(i32 noundef 0, ptr noundef nonnull @cvm_oct_device) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_tx_do_cleanup(i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cvm_oct_device to i32))
  %0 = load ptr, ptr @cvm_oct_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp77.i = icmp sgt i32 %2, 0
  br i1 %cmp77.i, label %if.then.for.body.i_crit_edge, label %if.then.land.lhs.true.i_crit_edge

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %qos.080.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %total_remaining.079.i = phi i32 [ %add37.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.octeon_ethernet, ptr %add.ptr.i.i, i32 0, i32 6, i32 %qos.080.i
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx.i, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %add37.i = add i32 %4, %total_remaining.079.i
  %inc.i = add nuw nsw i32 %qos.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add37.i)
  %phi.cmp.i = icmp slt i32 %add37.i, 1000
  br i1 %phi.cmp.i, label %for.end.i.land.lhs.true.i_crit_edge, label %for.end.i.for.inc_crit_edge

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.end.i.land.lhs.true.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.end.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.then42.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then42.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @netif_tx_wake_queue(ptr noundef %6) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then42.i, %land.lhs.true.i.for.inc_crit_edge, %for.end.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cvm_oct_device, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cvm_oct_device, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %add.ptr.i.i.1 = getelementptr i8, ptr %9, i32 2304
  %10 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp77.i.1 = icmp sgt i32 %11, 0
  br i1 %cmp77.i.1, label %if.then.1.for.body.i.1_crit_edge, label %if.then.1.land.lhs.true.i.1_crit_edge

if.then.1.land.lhs.true.i.1_crit_edge:            ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.1

if.then.1.for.body.i.1_crit_edge:                 ; preds = %if.then.1
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %if.then.1.for.body.i.1_crit_edge
  %qos.080.i.1 = phi i32 [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %if.then.1.for.body.i.1_crit_edge ]
  %total_remaining.079.i.1 = phi i32 [ %add37.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %if.then.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr %struct.octeon_ethernet, ptr %add.ptr.i.i.1, i32 0, i32 6, i32 %qos.080.i.1
  %qlen.i.i.1 = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx.i.1, i32 0, i32 1
  %12 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i.1, align 4
  %add37.i.1 = add i32 %13, %total_remaining.079.i.1
  %inc.i.1 = add nuw nsw i32 %qos.080.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %11
  br i1 %exitcond.not.i.1, label %for.end.i.1, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.1

for.end.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add37.i.1)
  %phi.cmp.i.1 = icmp slt i32 %add37.i.1, 1000
  br i1 %phi.cmp.i.1, label %for.end.i.1.land.lhs.true.i.1_crit_edge, label %for.end.i.1.for.inc.1_crit_edge

for.end.i.1.for.inc.1_crit_edge:                  ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.end.i.1.land.lhs.true.i.1_crit_edge:          ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.1

land.lhs.true.i.1:                                ; preds = %for.end.i.1.land.lhs.true.i.1_crit_edge, %if.then.1.land.lhs.true.i.1_crit_edge
  %_tx.i.i.i.1 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i.i.1, align 128
  %state.i.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %state.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i.i.1, align 4
  %and1.i.i.i.i.1 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.1)
  %tobool.i.i.not.i.1 = icmp eq i32 %and1.i.i.i.i.1, 0
  br i1 %tobool.i.i.not.i.1, label %land.lhs.true.i.1.for.inc.1_crit_edge, label %if.then42.i.1

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then42.i.1:                                    ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @netif_tx_wake_queue(ptr noundef %15) #4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then42.i.1, %land.lhs.true.i.1.for.inc.1_crit_edge, %for.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 436, i32 3}
!2 = distinct !{null, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.cvm_oct_xmit, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cvm_oct_xmit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cvm_oct_xmit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @cvm_oct_xmit_pow._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 519, i32 3}
!10 = !{ptr @__func__.cvm_oct_xmit_pow, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cvm_oct_xmit_pow._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @cvm_oct_xmit_pow._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 529, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cvm_oct_xmit_pow._entry.5, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cvm_oct_xmit_pow._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 706, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 709, i32 9}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 8}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 56}
!27 = !{ptr @cvm_oct_tx_cleanup_tasklet, !28, !"cvm_oct_tx_cleanup_tasklet", i1 false, i1 false}
!28 = !{!"../drivers/staging/octeon/ethernet-tx.c", i32 44, i32 8}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 856861}
!39 = !{!"branch_weights", i32 1, i32 2000}
