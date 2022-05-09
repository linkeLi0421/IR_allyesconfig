; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/emulex/benet/be_roce.c_pt.bc'
source_filename = "../drivers/net/ethernet/emulex/benet/be_roce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+be_roce_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_be_roce_register_driver\09\09\09\09"
module asm "\09.long\09__crc_be_roce_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_be_roce_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22be_roce_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_be_roce_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+be_roce_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_be_roce_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_be_roce_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_be_roce_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22be_roce_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_be_roce_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.be_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.be_dma_mem, %struct.be_dma_mem, %struct.be_mcc_obj, %struct.mutex, %struct.spinlock, i16, i16, i16, i16, [20 x i8], [32 x %struct.be_eq_obj], [32 x %struct.msix_entry], i8, i16, [124 x i8], [32 x %struct.be_tx_obj], i16, i16, i16, [122 x i8], [32 x %struct.be_rx_obj], i32, %struct.be_drv_stats, [32 x %struct.be_aic_obj], i8, i8, i16, %struct.be_dma_mem, %struct.be_dma_mem, %struct.delayed_work, i16, i8, i8, i8, i32, i32, [32 x i8], [32 x i8], i32, i32, ptr, ptr, i32, ptr, i32, [128 x i32], i16, i8, i8, %struct.mutex, i32, i32, i8, i8, i32, i32, i32, i32, i8, %struct.anon.186, i32, ptr, %struct.list_head, i32, %struct.completion, %struct.be_resources, %struct.be_resources, i16, i8, i8, i8, ptr, i8, i32, i8, i16, i16, %struct.phy_info, i8, i8, i16, i16, i32, i32, %struct.be_hwmon, %struct.rss_info, i32, i32, [8 x i16], i8, [6 x i8], i32, %struct.be_error_recovery }
%struct.be_mcc_obj = type { %struct.be_queue_info, %struct.be_queue_info, i8 }
%struct.be_queue_info = type { i32, i32, i32, i32, %struct.atomic_t, i32, %struct.be_dma_mem, i8 }
%struct.be_eq_obj = type { %struct.be_queue_info, [32 x i8], ptr, %struct.napi_struct, i8, i8, i16, ptr, [72 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.be_tx_obj = type { i32, %struct.be_tx_compl_info, %struct.be_queue_info, %struct.be_queue_info, [2048 x ptr], %struct.be_tx_stats, i16, i16, i16, [18 x i8] }
%struct.be_tx_compl_info = type { i8, i16 }
%struct.be_tx_stats = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.be_rx_obj = type { ptr, %struct.be_queue_info, %struct.be_queue_info, %struct.be_rx_compl_info, [1024 x %struct.be_rx_page_info], %struct.be_rx_stats, i8, i8, [62 x i8] }
%struct.be_rx_compl_info = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.be_rx_page_info = type { ptr, i32, i16, i8 }
%struct.be_rx_stats = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.u64_stats_sync }
%struct.be_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_aic_obj = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.be_dma_mem = type { ptr, i32, i32 }
%struct.anon.186 = type { i32, i32, i64 }
%struct.be_resources = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16 }
%struct.phy_info = type { i8, i8, i8, i8, i16, i16, i32, i16, i16, i32, i32, i32, i8, [17 x i8], [17 x i8] }
%struct.be_hwmon = type { ptr, i8 }
%struct.rss_info = type { [128 x i8], [128 x i8], [40 x i8], i64 }
%struct.be_error_recovery = type { %union.anon.187, i8, i16, i16, i16, i32, i32, i32, %struct.delayed_work }
%union.anon.187 = type { i8 }
%struct.be_dev_info = type { ptr, i64, i32, i32, i64, i32, ptr, ptr, [6 x i8], i32, i32, %struct.anon.192 }
%struct.anon.192 = type { i32, i32, [32 x i32] }
%struct.ocrdma_driver = type { [32 x i8], i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.185, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.185 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@be_adapter_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @be_adapter_list_lock, i64 52), ptr getelementptr (i8, ptr @be_adapter_list_lock, i64 52) }, ptr @be_adapter_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@be_adapter_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @be_adapter_list, ptr @be_adapter_list }, [24 x i8] zeroinitializer }, align 32
@ocrdma_drv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_be_roce_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_be_roce_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_be_roce_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @be_roce_register_driver to i32), ptr @__kstrtab_be_roce_register_driver, ptr @__kstrtabns_be_roce_register_driver }, section "___ksymtab+be_roce_register_driver", align 4
@__kstrtab_be_roce_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_be_roce_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_be_roce_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @be_roce_unregister_driver to i32), ptr @__kstrtab_be_roce_unregister_driver, ptr @__kstrtabns_be_roce_unregister_driver }, section "___ksymtab+be_roce_unregister_driver", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"be_adapter_list_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"be_adapter_list_lock\00", [43 x i8] zeroinitializer }, align 32
@_be_roce_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 36, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot initialize RoCE due to ocrdma ABI mismatch\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_be_roce_dev_add\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/emulex/benet/be_roce.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_be_roce_dev_add._entry_ptr = internal global ptr @_be_roce_dev_add._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1824, i64 1832]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 1824, i64 1832]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 1824, i64 1832]
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"be_adapter_list_lock\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"be_adapter_list\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 23, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"ocrdma_drv\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 22, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 24, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [47 x i8] c"../drivers/net/ethernet/emulex/benet/be_roce.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 36, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_be_roce_register_driver, ptr @__ksymtab_be_roce_unregister_driver, ptr @_be_roce_dev_add._entry, ptr @_be_roce_dev_add._entry_ptr, ptr @be_adapter_list_lock, ptr @be_adapter_list, ptr @ocrdma_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_adapter_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @be_adapter_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocrdma_drv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_be_roce_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_roce_dev_add(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 1824, label %entry.land.lhs.true_crit_edge
    i16 1832, label %entry.land.lhs.true_crit_edge14
  ]

entry.land.lhs.true_crit_edge14:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge14
  %function_mode = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 60
  %5 = ptrtoint ptr %function_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %function_mode, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %entry7 = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 68
  %7 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry7, ptr %prev.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @be_adapter_list_lock, i32 noundef 0) #5
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @be_adapter_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry7, ptr noundef %9, ptr noundef nonnull @be_adapter_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %entry7, ptr getelementptr inbounds (%struct.list_head, ptr @be_adapter_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @be_adapter_list, ptr %entry7, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry7, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call fastcc void @_be_roce_dev_add(ptr noundef %adapter)
  tail call void @mutex_unlock(ptr noundef nonnull @be_adapter_list_lock) #5
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_be_roce_dev_add(ptr nocapture noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %dev_info = alloca %struct.be_dev_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %dev_info) #5
  %0 = call ptr @memset(ptr %dev_info, i32 255, i32 200)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 128
  %3 = load ptr, ptr @ocrdma_drv, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %be_abi_version = getelementptr inbounds %struct.ocrdma_driver, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %be_abi_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %be_abi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1824, i16 %7)
  %cmp4 = icmp eq i16 %7, 1824
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %num_msix_vec = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 14
  %8 = ptrtoint ptr %num_msix_vec to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_msix_vec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp8.not = icmp eq i16 %9, 0
  br i1 %cmp8.not, label %if.then6.cleanup_crit_edge, label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %arrayidx = getelementptr %struct.pci_dev, ptr %2, i32 0, i32 47, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  %conv12 = zext i32 %11 to i64
  %dpp_unmapped_addr = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 4
  %12 = ptrtoint ptr %dpp_unmapped_addr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv12, ptr %dpp_unmapped_addr, align 8
  %end = getelementptr %struct.pci_dev, ptr %2, i32 0, i32 47, i32 2, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15 = icmp eq i32 %14, 0
  br i1 %cmp15, label %if.end11.if.end25_crit_edge, label %cond.false

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %14, 1
  %add = sub i32 %sub, %16
  br label %if.end25

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %dpp_unmapped_addr23 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 4
  %17 = ptrtoint ptr %dpp_unmapped_addr23 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %dpp_unmapped_addr23, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %cond.false, %if.end11.if.end25_crit_edge
  %.sink = phi i32 [ 0, %if.else ], [ %add, %cond.false ], [ 0, %if.end11.if.end25_crit_edge ]
  %dpp_unmapped_len24 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 5
  %18 = ptrtoint ptr %dpp_unmapped_len24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %dpp_unmapped_len24, align 8
  %pdev27 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 6
  %19 = ptrtoint ptr %pdev27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %2, ptr %pdev27, align 4
  %db = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %db, align 4
  %22 = ptrtoint ptr %dev_info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev_info, align 8
  %roce_db = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 65
  %io_addr = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 65, i32 2
  %23 = ptrtoint ptr %io_addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %io_addr, align 8
  %unmapped_db = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 1
  %25 = ptrtoint ptr %unmapped_db to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %unmapped_db, align 8
  %26 = ptrtoint ptr %roce_db to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %roce_db, align 16
  %db_page_size = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 2
  %28 = ptrtoint ptr %db_page_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %db_page_size, align 8
  %total_size = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 65, i32 1
  %29 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_size, align 4
  %db_total_size = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 3
  %31 = ptrtoint ptr %db_total_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %db_total_size, align 4
  %netdev = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 1
  %32 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev, align 4
  %netdev31 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 7
  %34 = ptrtoint ptr %netdev31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %netdev31, align 8
  %mac_addr = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %37 = call ptr @memcpy(ptr %mac_addr, ptr %36, i32 6)
  %sli_family = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 79
  %38 = ptrtoint ptr %sli_family to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sli_family, align 4
  %dev_family = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 9
  %40 = ptrtoint ptr %dev_family to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dev_family, align 4
  %num_msix_vec33 = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 14
  %41 = ptrtoint ptr %num_msix_vec33 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num_msix_vec33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp35.not = icmp eq i16 %42, 0
  br i1 %cmp35.not, label %if.else56, label %if.then37

if.then37:                                        ; preds = %if.end25
  %conv34 = zext i16 %42 to i32
  %num_msix_roce_vec = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 66
  %43 = ptrtoint ptr %num_msix_roce_vec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_msix_roce_vec, align 32
  %add40 = add i32 %44, %conv34
  %intr_mode = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 10
  %45 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %intr_mode, align 8
  %46 = tail call i32 @llvm.smin.i32(i32 %add40, i32 32)
  %msix = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 11
  %47 = ptrtoint ptr %msix to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %msix, align 4
  %num_evt_qs = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 13
  %48 = ptrtoint ptr %num_evt_qs to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_evt_qs, align 8
  %conv47 = zext i16 %49 to i32
  %start_vector = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %start_vector to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv47, ptr %start_vector, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40)
  %cmp5191 = icmp sgt i32 %add40, 0
  br i1 %cmp5191, label %if.then37.for.body_crit_edge, label %if.then37.if.end60_crit_edge

if.then37.if.end60_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then37.for.body_crit_edge:                     ; preds = %if.then37
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then37.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then37.for.body_crit_edge ]
  %arrayidx53 = getelementptr %struct.be_adapter, ptr %adapter, i32 0, i32 17, i32 %i.092
  %51 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx53, align 8
  %arrayidx55 = getelementptr %struct.be_dev_info, ptr %dev_info, i32 0, i32 11, i32 2, i32 %i.092
  %53 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx55, align 4
  %inc = add nuw nsw i32 %i.092, 1
  %54 = ptrtoint ptr %msix to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msix, align 4
  %cmp51 = icmp slt i32 %inc, %55
  br i1 %cmp51, label %for.body.for.body_crit_edge, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else56:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %msix57 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 11
  %56 = ptrtoint ptr %msix57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %msix57, align 4
  %intr_mode59 = getelementptr inbounds %struct.be_dev_info, ptr %dev_info, i32 0, i32 10
  %57 = ptrtoint ptr %intr_mode59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %intr_mode59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %for.body.if.end60_crit_edge, %if.then37.if.end60_crit_edge
  %add61 = getelementptr inbounds %struct.ocrdma_driver, ptr %3, i32 0, i32 2
  %58 = ptrtoint ptr %add61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add61, align 4
  %call = call ptr %59(ptr noundef nonnull %dev_info) #5
  %ocrdma_dev = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 67
  %60 = ptrtoint ptr %ocrdma_dev to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call, ptr %ocrdma_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %dev_info) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_roce_dev_remove(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %3, label %entry.if.end_crit_edge [
    i16 1824, label %entry.land.lhs.true_crit_edge
    i16 1832, label %entry.land.lhs.true_crit_edge12
  ]

entry.land.lhs.true_crit_edge12:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge12
  %function_mode = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 60
  %5 = ptrtoint ptr %function_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %function_mode, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef nonnull @be_adapter_list_lock, i32 noundef 0) #5
  %7 = load ptr, ptr @ocrdma_drv, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then._be_roce_dev_remove.exit_crit_edge, label %land.lhs.true.i

if.then._be_roce_dev_remove.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

land.lhs.true.i:                                  ; preds = %if.then
  %remove.i = getelementptr inbounds %struct.ocrdma_driver, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i._be_roce_dev_remove.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i._be_roce_dev_remove.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %ocrdma_dev.i = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 67
  %10 = ptrtoint ptr %ocrdma_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ocrdma_dev.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge, label %if.then.i

land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef nonnull %11) #5
  br label %_be_roce_dev_remove.exit

_be_roce_dev_remove.exit:                         ; preds = %if.then.i, %land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge, %land.lhs.true.i._be_roce_dev_remove.exit_crit_edge, %if.then._be_roce_dev_remove.exit_crit_edge
  %ocrdma_dev6.i = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 67
  %12 = ptrtoint ptr %ocrdma_dev6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ocrdma_dev6.i, align 4
  %entry7 = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 68
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry7) #5
  br i1 %call.i.i, label %if.end.i.i, label %_be_roce_dev_remove.exit.list_del.exit_crit_edge

_be_roce_dev_remove.exit.list_del.exit_crit_edge: ; preds = %_be_roce_dev_remove.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %_be_roce_dev_remove.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %entry7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %_be_roce_dev_remove.exit.list_del.exit_crit_edge
  %19 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @be_adapter_list_lock) #5
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_roce_dev_shutdown(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 128
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %3, label %entry.if.end15_crit_edge [
    i16 1824, label %entry.land.lhs.true_crit_edge
    i16 1832, label %entry.land.lhs.true_crit_edge22
  ]

entry.land.lhs.true_crit_edge22:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge22
  %function_mode = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 60
  %5 = ptrtoint ptr %function_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %function_mode, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef nonnull @be_adapter_list_lock, i32 noundef 0) #5
  %7 = load ptr, ptr @ocrdma_drv, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %land.lhs.true8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true8:                                   ; preds = %if.then
  %ocrdma_dev = getelementptr inbounds %struct.be_adapter, ptr %adapter, i32 0, i32 67
  %8 = ptrtoint ptr %ocrdma_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ocrdma_dev, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true10

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %state_change_handler = getelementptr inbounds %struct.ocrdma_driver, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %state_change_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state_change_handler, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end_crit_edge, label %if.then12

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef nonnull %9, i32 noundef 2) #5
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10.if.end_crit_edge, %land.lhs.true8.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @be_adapter_list_lock) #5
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @be_roce_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @be_adapter_list_lock, i32 noundef 0) #5
  %0 = load ptr, ptr @ocrdma_drv, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %drv, ptr @ocrdma_drv, align 4
  %.pn8 = load ptr, ptr @be_adapter_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @be_adapter_list
  br i1 %cmp.not9, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %if.end.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn10, i32 -687272
  tail call fastcc void @_be_roce_dev_add(ptr noundef %dev.0)
  %1 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @be_adapter_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @be_adapter_list_lock) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @be_roce_unregister_driver(ptr nocapture readnone %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @be_adapter_list_lock, i32 noundef 0) #5
  %.pn9 = load ptr, ptr @be_adapter_list, align 4
  %cmp.not10 = icmp eq ptr %.pn9, @be_adapter_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn9, %entry.for.body_crit_edge ]
  %ocrdma_dev = getelementptr i8, ptr %.pn11, i32 -4
  %0 = ptrtoint ptr %ocrdma_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ocrdma_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = load ptr, ptr @ocrdma_drv, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then._be_roce_dev_remove.exit_crit_edge, label %land.lhs.true.i

if.then._be_roce_dev_remove.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

land.lhs.true.i:                                  ; preds = %if.then
  %remove.i = getelementptr inbounds %struct.ocrdma_driver, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i._be_roce_dev_remove.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i._be_roce_dev_remove.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %ocrdma_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ocrdma_dev, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge, label %if.then.i

land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_be_roce_dev_remove.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %4(ptr noundef nonnull %6) #5
  br label %_be_roce_dev_remove.exit

_be_roce_dev_remove.exit:                         ; preds = %if.then.i, %land.lhs.true2.i._be_roce_dev_remove.exit_crit_edge, %land.lhs.true.i._be_roce_dev_remove.exit_crit_edge, %if.then._be_roce_dev_remove.exit_crit_edge
  %7 = ptrtoint ptr %ocrdma_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ocrdma_dev, align 4
  br label %for.inc

for.inc:                                          ; preds = %_be_roce_dev_remove.exit, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, @be_adapter_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  store ptr null, ptr @ocrdma_drv, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @be_adapter_list_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_be_roce_register_driver, !1, !"__ksymtab_be_roce_register_driver", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 143, i32 1}
!2 = !{ptr @__ksymtab_be_roce_unregister_driver, !3, !"__ksymtab_be_roce_unregister_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 157, i32 1}
!4 = !{ptr @ocrdma_drv, !5, !"ocrdma_drv", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 22, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 24, i32 8}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @be_adapter_list_lock, !7, !"be_adapter_list_lock", i1 false, i1 false}
!10 = !{ptr @be_adapter_list, !11, !"be_adapter_list", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 23, i32 8}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/emulex/benet/be_roce.c", i32 36, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_be_roce_dev_add._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @_be_roce_dev_add._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
