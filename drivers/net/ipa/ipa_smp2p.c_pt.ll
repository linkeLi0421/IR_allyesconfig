; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_smp2p.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_smp2p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_smp2p = type { ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.notifier_block }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipa-clock-enabled-valid\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipa-clock-enabled\00", [46 x i8] zeroinitializer }, align 32
@ipa_smp2p_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&smp2p->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipa-clock-query\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipa-setup-ready\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipa_smp2p_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 196, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d requesting \22%s\22 IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipa_smp2p_irq_init\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipa/ipa_smp2p.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_smp2p_irq_init._entry_ptr = internal global ptr @ipa_smp2p_irq_init._entry, section ".printk_index", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@ipa_smp2p_modem_setup_ready_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 166, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error %d getting power for setup\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ipa_smp2p_modem_setup_ready_isr\00", [32 x i8] zeroinitializer }, align 32
@ipa_smp2p_modem_setup_ready_isr._entry_ptr = internal global ptr @ipa_smp2p_modem_setup_ready_isr._entry, section ".printk_index", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error %d from ipa_setup()\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 232, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 239, i32 43 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 255, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 264, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 276, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 196, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 166, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [31 x i8] c"../drivers/net/ipa/ipa_smp2p.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 172, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @ipa_smp2p_irq_init._entry, ptr @ipa_smp2p_irq_init._entry_ptr, ptr @ipa_smp2p_modem_setup_ready_isr._entry, ptr @ipa_smp2p_modem_setup_ready_isr._entry_ptr, ptr @.str, ptr @.str.1, ptr @ipa_smp2p_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smp2p_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smp2p_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smp2p_modem_setup_ready_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_smp2p_init(ptr noundef %ipa, i1 noundef zeroext %modem_init) local_unnamed_addr #0 align 64 {
entry:
  %enabled_bit = alloca i32, align 4
  %valid_bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled_bit) #5
  %2 = ptrtoint ptr %enabled_bit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enabled_bit, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %valid_bit) #5
  %3 = ptrtoint ptr %valid_bit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %valid_bit, align 4, !annotation !35
  %call = call ptr @qcom_smem_state_get(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull %valid_bit) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %valid_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp = icmp ugt i32 %6, 31
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @qcom_smem_state_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %enabled_bit) #5
  %cmp.i77 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %enabled_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %9)
  %cmp11 = icmp ugt i32 %9, 31
  br i1 %cmp11, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 136) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ipa, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipa_smp2p_init.__key) #5
  %valid_state18 = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %valid_state18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %valid_state18, align 4
  %13 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid_bit, align 4
  %valid_bit19 = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %valid_bit19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %valid_bit19, align 4
  %enabled_state20 = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %enabled_state20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %enabled_state20, align 8
  %17 = ptrtoint ptr %enabled_bit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enabled_bit, align 4
  %enabled_bit21 = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %enabled_bit21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %enabled_bit21, align 8
  %smp2p22 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 6
  %20 = ptrtoint ptr %smp2p22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %smp2p22, align 16
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %call.i = call i32 @platform_get_irq_byname(ptr noundef %24, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i78 = icmp slt i32 %call.i, 1
  br i1 %cmp.i78, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %call.i
  br label %err_null_smp2p

if.end.i:                                         ; preds = %if.end16
  %call4.i = call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef null, ptr noundef nonnull @ipa_smp2p_modem_clk_query_isr, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end26_crit_edge, label %ipa_smp2p_irq_init.exit

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

ipa_smp2p_irq_init.exit:                          ; preds = %if.end.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.5, i32 noundef %call4.i, ptr noundef nonnull @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp24 = icmp slt i32 %call4.i, 0
  br i1 %cmp24, label %ipa_smp2p_irq_init.exit.err_null_smp2p_crit_edge, label %ipa_smp2p_irq_init.exit.if.end26_crit_edge

ipa_smp2p_irq_init.exit.if.end26_crit_edge:       ; preds = %ipa_smp2p_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

ipa_smp2p_irq_init.exit.err_null_smp2p_crit_edge: ; preds = %ipa_smp2p_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_null_smp2p

if.end26:                                         ; preds = %ipa_smp2p_irq_init.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %retval.0.i88 = phi i32 [ %call4.i, %ipa_smp2p_irq_init.exit.if.end26_crit_edge ], [ %call.i, %if.end.i.if.end26_crit_edge ]
  %clock_query_irq = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %clock_query_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i88, ptr %clock_query_irq, align 4
  %panic_notifier.i = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 11
  %26 = ptrtoint ptr %panic_notifier.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ipa_smp2p_panic_notifier, ptr %panic_notifier.i, align 4
  %priority.i = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2147483647, ptr %priority.i, align 4
  %call.i79 = call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_notifier.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool28.not = icmp eq i32 %call.i79, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_irq_exit_crit_edge

if.end26.err_irq_exit_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq_exit

if.end30:                                         ; preds = %if.end26
  br i1 %modem_init, label %if.then32, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  %call33 = call fastcc i32 @ipa_smp2p_irq_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @ipa_smp2p_modem_setup_ready_isr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %err_notifier_unregister, label %if.end36

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %setup_ready_irq = getelementptr inbounds %struct.ipa_smp2p, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %setup_ready_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call33, ptr %setup_ready_irq, align 8
  br label %cleanup

err_notifier_unregister:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81 = call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_notifier.i) #5
  br label %err_irq_exit

err_irq_exit:                                     ; preds = %err_notifier_unregister, %if.end26.err_irq_exit_crit_edge
  %ret.0 = phi i32 [ %call.i79, %if.end26.err_irq_exit_crit_edge ], [ %call33, %err_notifier_unregister ]
  %29 = ptrtoint ptr %clock_query_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clock_query_irq, align 4
  %call.i82 = call ptr @free_irq(i32 noundef %30, ptr noundef nonnull %call7.i.i) #5
  br label %err_null_smp2p

err_null_smp2p:                                   ; preds = %err_irq_exit, %ipa_smp2p_irq_init.exit.err_null_smp2p_crit_edge, %if.then.i
  %ret.1 = phi i32 [ %call4.i, %ipa_smp2p_irq_init.exit.err_null_smp2p_crit_edge ], [ %ret.0, %err_irq_exit ], [ %spec.select, %if.then.i ]
  %31 = ptrtoint ptr %smp2p22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %smp2p22, align 16
  call void @mutex_destroy(ptr noundef %mutex) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_null_smp2p, %if.end36, %if.end30.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %7, %if.then8 ], [ %ret.1, %err_null_smp2p ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %if.end36 ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %valid_bit) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled_bit) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_state_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipa_smp2p_irq_init(ptr noundef %smp2p, ptr noundef %name, ptr noundef %handler) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smp2p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp2p, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %3, ptr noundef %name) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -22, i32 %call
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef null, ptr noundef %handler, i32 noundef 0, ptr noundef %name, ptr noundef %smp2p) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call4, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %call4, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_smp2p_modem_clk_query_isr(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notified.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %notified.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %notified.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ipa_smp2p_notify.exit_crit_edge

entry.ipa_smp2p_notify.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_smp2p_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev1.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %power_on.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 7
  %frombool.i = zext i1 %cmp.i to i8
  %6 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool.i, ptr %power_on.i, align 4
  %enabled_bit.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 4
  %7 = ptrtoint ptr %enabled_bit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled_bit.i, align 4
  %shl.i = shl nuw i32 1, %8
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 0
  %enabled_state.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 2
  %9 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enabled_state.i, align 4
  %call4.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %10, i32 noundef %shl.i, i32 noundef %spec.select.i) #5
  %valid_bit.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 3
  %11 = ptrtoint ptr %valid_bit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valid_bit.i, align 4
  %shl5.i = shl nuw i32 1, %12
  %valid_state.i = getelementptr inbounds %struct.ipa_smp2p, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %valid_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %valid_state.i, align 4
  %call6.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %14, i32 noundef %shl5.i, i32 noundef %shl5.i) #5
  %15 = ptrtoint ptr %notified.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %notified.i, align 1
  br label %ipa_smp2p_notify.exit

ipa_smp2p_notify.exit:                            ; preds = %if.end.i, %entry.ipa_smp2p_notify.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_smp2p_modem_setup_ready_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %setup_complete = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %setup_complete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setup_complete, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  br label %out_power_put

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %call6 = tail call i32 @ipa_setup(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end4.out_power_put_crit_edge, label %do.end19, !prof !37

if.end4.out_power_put_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_power_put

do.end19:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 172, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %call6) #5
  br label %out_power_put

out_power_put:                                    ; preds = %do.end19, %if.end4.out_power_put_crit_edge, %do.end
  %call.i44 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i44, ptr %last_busy.i, align 8
  %call.i45 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev2, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %out_power_put, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_smp2p_exit(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smp2p1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 6
  %0 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp2p1, align 16
  %setup_ready_irq = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %setup_ready_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %setup_ready_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %panic_notifier.i = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 11
  %call.i13 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef %panic_notifier.i) #5
  %clock_query_irq = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clock_query_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock_query_irq, align 4
  %call.i14 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #5
  %6 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smp2p1, align 16
  %power_on.i = getelementptr inbounds %struct.ipa_smp2p, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_on.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.ipa_smp2p_power_release.exit_crit_edge, label %if.end.i

if.end.ipa_smp2p_power_release.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_smp2p_power_release.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i, i32 noundef 13) #5
  %13 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smp2p1, align 16
  %power_on3.i = getelementptr inbounds %struct.ipa_smp2p, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %power_on3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %power_on3.i, align 4
  br label %ipa_smp2p_power_release.exit

ipa_smp2p_power_release.exit:                     ; preds = %if.end.i, %if.end.ipa_smp2p_power_release.exit_crit_edge
  %16 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %smp2p1, align 16
  %mutex = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %mutex) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_smp2p_irq_disable_setup(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smp2p1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 6
  %0 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp2p1, align 16
  %setup_ready_irq = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %setup_ready_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %setup_ready_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %setup_disabled = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %setup_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %setup_disabled, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %setup_ready_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %setup_ready_irq, align 4
  tail call void @disable_irq(i32 noundef %7) #5
  %8 = ptrtoint ptr %setup_disabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %setup_disabled, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_smp2p_notify_reset(ptr nocapture noundef readonly %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %smp2p1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 6
  %0 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp2p1, align 16
  %notified = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %notified to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %notified, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_on.i = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_on.i, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.ipa_smp2p_power_release.exit_crit_edge, label %if.end.i

if.end.ipa_smp2p_power_release.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_smp2p_power_release.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i7.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i, i32 noundef 13) #5
  %9 = ptrtoint ptr %smp2p1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smp2p1, align 16
  %power_on3.i = getelementptr inbounds %struct.ipa_smp2p, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %power_on3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %power_on3.i, align 4
  br label %ipa_smp2p_power_release.exit

ipa_smp2p_power_release.exit:                     ; preds = %if.end.i, %if.end.ipa_smp2p_power_release.exit_crit_edge
  %valid_bit = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %valid_bit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %valid_bit, align 4
  %shl = shl nuw i32 1, %13
  %valid_state = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %valid_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %valid_state, align 4
  %call = tail call i32 @qcom_smem_state_update_bits(ptr noundef %15, i32 noundef %shl, i32 noundef 0) #5
  %enabled_bit = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %enabled_bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enabled_bit, align 4
  %shl2 = shl nuw i32 1, %17
  %enabled_state = getelementptr inbounds %struct.ipa_smp2p, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %enabled_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enabled_state, align 4
  %call3 = tail call i32 @qcom_smem_state_update_bits(ptr noundef %19, i32 noundef %shl2, i32 noundef 0) #5
  %20 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %notified, align 1
  br label %cleanup

cleanup:                                          ; preds = %ipa_smp2p_power_release.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_state_update_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_smp2p_panic_notifier(ptr nocapture noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -124
  %notified.i = getelementptr i8, ptr %nb, i32 -95
  %0 = ptrtoint ptr %notified.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %notified.i, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ipa_smp2p_notify.exit_crit_edge

entry.ipa_smp2p_notify.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_smp2p_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %dev1.i, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %power_on.i = getelementptr i8, ptr %nb, i32 -96
  %frombool.i = zext i1 %cmp.i to i8
  %6 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool.i, ptr %power_on.i, align 4
  %enabled_bit.i = getelementptr i8, ptr %nb, i32 -108
  %7 = ptrtoint ptr %enabled_bit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled_bit.i, align 4
  %shl.i = shl nuw i32 1, %8
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 0
  %enabled_state.i = getelementptr i8, ptr %nb, i32 -116
  %9 = ptrtoint ptr %enabled_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enabled_state.i, align 4
  %call4.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %10, i32 noundef %shl.i, i32 noundef %spec.select.i) #5
  %valid_bit.i = getelementptr i8, ptr %nb, i32 -112
  %11 = ptrtoint ptr %valid_bit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valid_bit.i, align 4
  %shl5.i = shl nuw i32 1, %12
  %valid_state.i = getelementptr i8, ptr %nb, i32 -120
  %13 = ptrtoint ptr %valid_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %valid_state.i, align 4
  %call6.i = tail call i32 @qcom_smem_state_update_bits(ptr noundef %14, i32 noundef %shl5.i, i32 noundef %shl5.i) #5
  %15 = ptrtoint ptr %notified.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %notified.i, align 1
  br label %ipa_smp2p_notify.exit

ipa_smp2p_notify.exit:                            ; preds = %if.end.i, %entry.ipa_smp2p_notify.exit_crit_edge
  %power_on = getelementptr i8, ptr %nb, i32 -96
  %16 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_on, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %ipa_smp2p_notify.exit.if.end_crit_edge, label %if.then

ipa_smp2p_notify.exit.if.end_crit_edge:           ; preds = %ipa_smp2p_notify.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ipa_smp2p_notify.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void @ipa_uc_panic_notifier(ptr noundef %19) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %ipa_smp2p_notify.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_uc_panic_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 232, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 239, i32 43}
!4 = !{ptr @ipa_smp2p_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 255, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 264, i32 34}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 276, i32 35}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 196, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ipa_smp2p_irq_init._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @ipa_smp2p_irq_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 166, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipa_smp2p_modem_setup_ready_isr._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipa_smp2p_modem_setup_ready_isr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ipa/ipa_smp2p.c", i32 172, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{i8 0, i8 2}
!37 = !{!"branch_weights", i32 2000, i32 1}
