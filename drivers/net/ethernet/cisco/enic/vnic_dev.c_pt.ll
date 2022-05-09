; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/vnic_dev.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/vnic_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vnic_dev_get_res_count\22, \22a\22\09"
module asm "\09.weak\09__crc_vnic_dev_get_res_count\09\09\09\09"
module asm "\09.long\09__crc_vnic_dev_get_res_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vnic_dev_get_res_count:\09\09\09\09\09"
module asm "\09.asciz \09\22vnic_dev_get_res_count\22\09\09\09\09\09"
module asm "__kstrtabns_vnic_dev_get_res_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vnic_dev_get_res\22, \22a\22\09"
module asm "\09.weak\09__crc_vnic_dev_get_res\09\09\09\09"
module asm "\09.long\09__crc_vnic_dev_get_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vnic_dev_get_res:\09\09\09\09\09"
module asm "\09.asciz \09\22vnic_dev_get_res\22\09\09\09\09\09"
module asm "__kstrtabns_vnic_dev_get_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vnic_dev_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_vnic_dev_unregister\09\09\09\09"
module asm "\09.long\09__crc_vnic_dev_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vnic_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22vnic_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_vnic_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vnic_dev_register\22, \22a\22\09"
module asm "\09.weak\09__crc_vnic_dev_register\09\09\09\09"
module asm "\09.long\09__crc_vnic_dev_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vnic_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22vnic_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_vnic_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vnic_dev_get_pdev\22, \22a\22\09"
module asm "\09.weak\09__crc_vnic_dev_get_pdev\09\09\09\09"
module asm "\09.long\09__crc_vnic_dev_get_pdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vnic_dev_get_pdev:\09\09\09\09\09"
module asm "\09.asciz \09\22vnic_dev_get_pdev\22\09\09\09\09\09"
module asm "__kstrtabns_vnic_dev_get_pdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vnic_dev = type { ptr, ptr, [25 x %struct.vnic_res], i32, ptr, ptr, %struct.vnic_devcmd_notify, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, [15 x i64], %struct.vnic_intr_coal_timer_info, ptr, ptr }
%struct.vnic_res = type { ptr, i32, i32 }
%struct.vnic_devcmd_notify = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_intr_coal_timer_info = type { i32, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.devcmd2_controller = type { ptr, ptr, ptr, i16, i16, i32, %struct.vnic_dev_ring, %struct.vnic_wq, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.vnic_resource_header = type { i32, i32 }
%struct.mgmt_barmap_hdr = type { i32, i32, i16, i16, [16 x i8] }
%struct.vnic_resource = type { i8, i8, [2 x i8], i32, i32 }
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.filter_tlv = type { i32, i32, [0 x i32] }
%struct.vnic_devcmd2 = type { i16, i16, i32, [15 x i64] }
%struct.devcmd2_result = type { [15 x i64], i32, i16, i8, i8 }
%struct.vnic_devcmd = type { i32, i32, [15 x i64] }

@__kstrtab_vnic_dev_get_res_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_vnic_dev_get_res_count = external dso_local constant [0 x i8], align 1
@__ksymtab_vnic_dev_get_res_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vnic_dev_get_res_count to i32), ptr @__kstrtab_vnic_dev_get_res_count, ptr @__kstrtabns_vnic_dev_get_res_count }, section "___ksymtab+vnic_dev_get_res_count", align 4
@__kstrtab_vnic_dev_get_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_vnic_dev_get_res = external dso_local constant [0 x i8], align 1
@__ksymtab_vnic_dev_get_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vnic_dev_get_res to i32), ptr @__kstrtab_vnic_dev_get_res, ptr @__kstrtabns_vnic_dev_get_res }, section "___ksymtab+vnic_dev_get_res", align 4
@vnic_dev_alloc_desc_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to allocate ring (size=%d), aborting\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vnic_dev_alloc_desc_ring\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/cisco/enic/vnic_dev.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vnic_dev_alloc_desc_ring._entry_ptr = internal global ptr @vnic_dev_alloc_desc_ring._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't set packet filter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't add addr [%pM], %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't del addr [%pM], %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"notify block %p still allocated\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Using default conversion factor for interrupt coalesce timer\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_vnic_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_vnic_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_vnic_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vnic_dev_unregister to i32), ptr @__kstrtab_vnic_dev_unregister, ptr @__kstrtabns_vnic_dev_unregister }, section "___ksymtab+vnic_dev_unregister", align 4
@__kstrtab_vnic_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_vnic_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_vnic_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vnic_dev_register to i32), ptr @__kstrtab_vnic_dev_register, ptr @__kstrtabns_vnic_dev_register }, section "___ksymtab+vnic_dev_register", align 4
@__kstrtab_vnic_dev_get_pdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_vnic_dev_get_pdev = external dso_local constant [0 x i8], align 1
@__ksymtab_vnic_dev_get_pdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vnic_dev_get_pdev to i32), ptr @__kstrtab_vnic_dev_get_pdev, ptr @__kstrtabns_vnic_dev_get_pdev }, section "___ksymtab+vnic_dev_get_pdev", align 4
@vnic_devcmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1108, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DEVCMD2 init failed: %d, Using DEVCMD1\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vnic_devcmd_init\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vnic_devcmd_init._entry_ptr = internal global ptr @vnic_devcmd_init._entry, section ".printk_index", align 4
@vnic_devcmd_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 1112, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DEVCMD2 resource not found (old firmware?) Using DEVCMD1\0A\00", [38 x i8] zeroinitializer }, align 32
@vnic_devcmd_init._entry_ptr.15 = internal global ptr @vnic_devcmd_init._entry.13, section ".printk_index", align 4
@vnic_devcmd_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DEVCMD1 initialization failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vnic_devcmd_init._entry_ptr.18 = internal global ptr @vnic_devcmd_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d proxy devcmd %d\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vnic_dev_discover_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vNIC BAR0 res hdr length error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnic_dev_discover_res\00", [42 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr = internal global ptr @vnic_dev_discover_res._entry, section ".printk_index", align 4
@vnic_dev_discover_res._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vNIC BAR0 res hdr not mem-mapped\0A\00", [62 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.24 = internal global ptr @vnic_dev_discover_res._entry.22, section ".printk_index", align 4
@vnic_dev_discover_res._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"vNIC BAR0 res magic/version error exp (%lx/%lx) or (%lx/%lx), curr (%x/%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.27 = internal global ptr @vnic_dev_discover_res._entry.25, section ".printk_index", align 4
@vnic_dev_discover_res._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"vNIC BAR0 resource %d out-of-bounds, offset 0x%x + size 0x%x > bar len 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.30 = internal global ptr @vnic_dev_discover_res._entry.28, section ".printk_index", align 4
@vnic_dev_init_devcmd2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Fatal error in devcmd2 init - hardware surprise removal\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnic_dev_init_devcmd2\00", [42 x i8] zeroinitializer }, align 32
@vnic_dev_init_devcmd2._entry_ptr = internal global ptr @vnic_dev_init_devcmd2._entry, section ".printk_index", align 4
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"devcmd2 %d: wq is full. fetch index: %u, posted index: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error %d devcmd %d\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devcmd %d timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Busy devcmd %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timedout devcmd %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 10, i64 13, i64 16, i64 24]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 202, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 773, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 790, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 807, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 851, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 970, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1107, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1112, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1116, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 478, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 56, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 63, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 72, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 109, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 404, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 316, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 355, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 368, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 244, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [46 x i8] c"../drivers/net/ethernet/cisco/enic/vnic_dev.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 293, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__ksymtab_vnic_dev_get_pdev, ptr @__ksymtab_vnic_dev_get_res, ptr @__ksymtab_vnic_dev_get_res_count, ptr @__ksymtab_vnic_dev_register, ptr @__ksymtab_vnic_dev_unregister, ptr @vnic_dev_alloc_desc_ring._entry, ptr @vnic_dev_alloc_desc_ring._entry_ptr, ptr @vnic_dev_discover_res._entry, ptr @vnic_dev_discover_res._entry.22, ptr @vnic_dev_discover_res._entry.25, ptr @vnic_dev_discover_res._entry.28, ptr @vnic_dev_discover_res._entry_ptr, ptr @vnic_dev_discover_res._entry_ptr.24, ptr @vnic_dev_discover_res._entry_ptr.27, ptr @vnic_dev_discover_res._entry_ptr.30, ptr @vnic_dev_init_devcmd2._entry, ptr @vnic_dev_init_devcmd2._entry_ptr, ptr @vnic_devcmd_init._entry, ptr @vnic_devcmd_init._entry.13, ptr @vnic_devcmd_init._entry.16, ptr @vnic_devcmd_init._entry_ptr, ptr @vnic_devcmd_init._entry_ptr.15, ptr @vnic_devcmd_init._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_alloc_desc_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_devcmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_devcmd_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_devcmd_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_init_devcmd2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vnic_dev_priv(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vnic_dev_get_res_count(ptr nocapture noundef readonly %vdev, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 %type, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vnic_dev_get_res(ptr nocapture noundef readonly %vdev, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.return_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge12
    i32 3, label %if.end.sw.bb_crit_edge13
    i32 10, label %if.end.sw.bb_crit_edge14
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13, %if.end.sw.bb_crit_edge14
  %mul = shl i32 %index, 7
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %sw.bb ], [ null, %entry.return_crit_edge ], [ %1, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vnic_dev_clear_desc_ring(ptr nocapture noundef readonly %ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %size = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_alloc_desc_ring(ptr nocapture noundef readonly %vdev, ptr noundef %ring, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base_align.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %base_align.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %base_align.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count)
  %cmp.i = icmp eq i32 %desc_count, 0
  %desc_count.op.i = add i32 %desc_count, 31
  %desc_count.op.op.i = and i32 %desc_count.op.i, -32
  %and.i = select i1 %cmp.i, i32 4096, i32 %desc_count.op.op.i
  %desc_count2.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 8
  %1 = ptrtoint ptr %desc_count2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and.i, ptr %desc_count2.i, align 4
  %add4.i = add i32 %desc_size, 15
  %and7.i = and i32 %add4.i, -16
  %desc_size8.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %desc_size8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and7.i, ptr %desc_size8.i, align 4
  %mul.i = mul i32 %and.i, %and7.i
  %size.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul.i, ptr %size.i, align 4
  %add13.i = add i32 %mul.i, 512
  %size_unaligned.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %size_unaligned.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add13.i, ptr %size_unaligned.i, align 4
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %base_addr_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add13.i, ptr noundef %base_addr_unaligned, i32 noundef 3264, i32 noundef 0) #11
  %descs_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %descs_unaligned to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %descs_unaligned, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str, i32 noundef %11) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %base_addr_unaligned to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_addr_unaligned, align 4
  %14 = ptrtoint ptr %base_align.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_align.i, align 4
  %sub = add i32 %13, -1
  %add = add i32 %sub, %15
  %neg = sub i32 0, %15
  %and = and i32 %add, %neg
  %base_addr = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 2
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %base_addr, align 4
  %sub11 = sub i32 %and, %13
  %add.ptr = getelementptr i8, ptr %call.i, i32 %sub11
  %17 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %ring, align 4
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 %19)
  %21 = ptrtoint ptr %desc_count2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_count2.i, align 4
  %sub13 = add i32 %22, -1
  %desc_avail = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 9
  %23 = ptrtoint ptr %desc_avail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub13, ptr %desc_avail, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_dev_free_desc_ring(ptr nocapture noundef readonly %vdev, ptr nocapture noundef %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %size_unaligned to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_unaligned, align 4
  %descs_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %descs_unaligned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs_unaligned, align 4
  %base_addr_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 6
  %8 = ptrtoint ptr %base_addr_unaligned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr_unaligned, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ring, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vnic_dev_cmd_proxy_by_index_start(ptr nocapture noundef writeonly %vdev, i16 noundef zeroext %index) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %proxy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %proxy, align 4
  %conv = zext i16 %index to i32
  %proxy_index = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %1 = ptrtoint ptr %proxy_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %proxy_index, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vnic_dev_cmd_proxy_end(ptr nocapture noundef writeonly %vdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %proxy = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %proxy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %proxy, align 4
  %proxy_index = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %1 = ptrtoint ptr %proxy_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %proxy_index, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef %cmd, ptr nocapture noundef %a0, ptr nocapture noundef %a1, i32 noundef %wait) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args, i32 0, i32 120)
  %proxy = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %1 = ptrtoint ptr %proxy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proxy, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %4 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 2
  %5 = call ptr @memset(ptr %4, i32 0, i32 104)
  %proxy_index.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %6 = ptrtoint ptr %proxy_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %proxy_index.i, align 8
  %conv.i = zext i32 %7 to i64
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %args, align 8
  %conv2.i = zext i32 %cmd to i64
  %arrayidx4.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv2.i, ptr %arrayidx4.i, align 8
  %10 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %a0, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %4, align 8
  %13 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %a1, align 8
  %arrayidx8.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx8.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %16 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devcmd_rtn.i, align 8
  %call.i = tail call i32 %17(ptr noundef %vdev, i32 noundef -1073627093, i32 noundef %wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %args, align 8
  %and50.i = and i64 %19, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50.i)
  %tobool12.not.i = icmp eq i64 %and50.i, 0
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx4.i, align 8
  br i1 %tobool12.not.i, label %if.end24.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  %conv16.i = trunc i64 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv16.i)
  %cmp.not.i = icmp eq i32 %conv16.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073627100, i32 %cmd)
  %cmp18.not.i = icmp eq i32 %cmd, -1073627100
  %or.cond.i = and i1 %cmp18.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then13.i.return_crit_edge, label %if.then20.i

if.then13.i.return_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then20.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %and22.i = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.19, i32 noundef %conv16.i, i32 noundef %and22.i) #14
  br label %return

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %21, ptr %a0, align 8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %4, align 8
  %29 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %a1, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %30 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 2
  %31 = call ptr @memset(ptr %30, i32 0, i32 104)
  %proxy_index.i18 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %32 = ptrtoint ptr %proxy_index.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %proxy_index.i18, align 8
  %conv.i19 = zext i32 %33 to i64
  %34 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i19, ptr %args, align 8
  %conv2.i20 = zext i32 %cmd to i64
  %arrayidx4.i21 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %35 = ptrtoint ptr %arrayidx4.i21 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv2.i20, ptr %arrayidx4.i21, align 8
  %36 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %a0, align 8
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %30, align 8
  %39 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %a1, align 8
  %arrayidx8.i23 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 3
  %41 = ptrtoint ptr %arrayidx8.i23 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx8.i23, align 8
  %devcmd_rtn.i24 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %42 = ptrtoint ptr %devcmd_rtn.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devcmd_rtn.i24, align 8
  %call.i25 = tail call i32 %43(ptr noundef %vdev, i32 noundef -1073627094, i32 noundef %wait) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i29:                                       ; preds = %sw.bb1
  %44 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %args, align 8
  %and50.i27 = and i64 %45, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50.i27)
  %tobool12.not.i28 = icmp eq i64 %and50.i27, 0
  %46 = ptrtoint ptr %arrayidx4.i21 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx4.i21, align 8
  br i1 %tobool12.not.i28, label %if.end24.i37, label %if.then13.i34

if.then13.i34:                                    ; preds = %if.end.i29
  %conv16.i30 = trunc i64 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv16.i30)
  %cmp.not.i31 = icmp eq i32 %conv16.i30, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073627100, i32 %cmd)
  %cmp18.not.i32 = icmp eq i32 %cmd, -1073627100
  %or.cond.i33 = and i1 %cmp18.not.i32, %cmp.not.i31
  br i1 %or.cond.i33, label %if.then13.i34.return_crit_edge, label %if.then20.i36

if.then13.i34.return_crit_edge:                   ; preds = %if.then13.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then20.i36:                                    ; preds = %if.then13.i34
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdev, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 128
  %and22.i35 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.19, i32 noundef %conv16.i30, i32 noundef %and22.i35) #14
  br label %return

if.end24.i37:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %47, ptr %a0, align 8
  %53 = ptrtoint ptr %30 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %30, align 8
  %55 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %a1, align 8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %a0, align 8
  %58 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %args, align 8
  %59 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %a1, align 8
  %arrayidx2.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %61 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx2.i, align 8
  %devcmd_rtn.i41 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %62 = ptrtoint ptr %devcmd_rtn.i41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %devcmd_rtn.i41, align 8
  %call.i42 = tail call i32 %63(ptr noundef %vdev, i32 noundef %cmd, i32 noundef %wait) #11
  %64 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %args, align 8
  %66 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %a0, align 8
  %67 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx2.i, align 8
  %69 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %a1, align 8
  br label %return

return:                                           ; preds = %sw.default, %if.end24.i37, %if.then20.i36, %if.then13.i34.return_crit_edge, %sw.bb1.return_crit_edge, %if.end24.i, %if.then20.i, %if.then13.i.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call.i42, %sw.default ], [ 0, %if.end24.i ], [ %call.i, %sw.bb.return_crit_edge ], [ 5, %if.then13.i.return_crit_edge ], [ %conv16.i, %if.then20.i ], [ 0, %if.end24.i37 ], [ %call.i25, %sw.bb1.return_crit_edge ], [ 5, %if.then13.i34.return_crit_edge ], [ %conv16.i30, %if.then20.i36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_fw_info(ptr noundef %vdev, ptr nocapture noundef writeonly %fw_info) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %fw_info1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_info1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %fw_info_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 13
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 132, ptr noundef %fw_info_pa, i32 noundef 2592, i32 noundef 0) #11
  %4 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %fw_info1, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %fw_info_pa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_info_pa, align 8
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %a0, align 8
  %8 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 132, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %9 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 3221340161, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %10 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %a1.i, align 8
  %call.i28 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.else

vnic_dev_capable.exit:                            ; preds = %if.end
  %11 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool1.i.not = icmp eq i64 %12, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %vnic_dev_capable.exit.if.end13.sink.split_crit_edge, label %vnic_dev_capable.exit.if.else_crit_edge

vnic_dev_capable.exit.if.else_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

vnic_dev_capable.exit.if.end13.sink.split_crit_edge: ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.sink.split

if.else:                                          ; preds = %vnic_dev_capable.exit.if.else_crit_edge, %vnic_dev_capable.exit.thread
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.else, %vnic_dev_capable.exit.if.end13.sink.split_crit_edge
  %.sink = phi i32 [ 1073856513, %if.else ], [ -1073627135, %vnic_dev_capable.exit.if.end13.sink.split_crit_edge ]
  %call10 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef %.sink, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %entry.if.end13_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end13_crit_edge ], [ %call10, %if.end13.sink.split ]
  %13 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_info1, align 4
  %15 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fw_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end13 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_spec(ptr noundef %vdev, i32 noundef %offset, i32 noundef %size, ptr nocapture noundef writeonly %value) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %conv = zext i32 %offset to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  %conv1 = zext i32 %size to i64
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv1, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627134, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %size, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
    i32 8, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %a0, align 8
  %conv2 = trunc i64 %4 to i8
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %value, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %a0, align 8
  %conv4 = trunc i64 %7 to i16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %value, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %a0, align 8
  %conv6 = trunc i64 %10 to i32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %value, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %a0, align 8
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %value, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/cisco/enic/vnic_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #11, !srcloc !85
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_stats_dump(ptr noundef %vdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %stats1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %stats_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %stats_pa, i32 noundef 2592, i32 noundef 0) #11
  %4 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %stats1, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats1, align 4
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %stats, align 4
  %stats_pa8 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %8 = ptrtoint ptr %stats_pa8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_pa8, align 8
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %a0, align 8
  %11 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 512, ptr %a1, align 8
  %call9 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073856516, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_close(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 114713, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_enable_wait(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1073856540, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %3 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.else

vnic_dev_capable.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.i.not = icmp eq i64 %5, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %vnic_dev_capable.exit.cleanup_crit_edge, label %vnic_dev_capable.exit.if.else_crit_edge

vnic_dev_capable.exit.if.else_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

vnic_dev_capable.exit.cleanup_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %vnic_dev_capable.exit.if.else_crit_edge, %vnic_dev_capable.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %if.else, %vnic_dev_capable.exit.cleanup_crit_edge
  %.sink = phi i32 [ 1090633756, %if.else ], [ 1073856540, %vnic_dev_capable.exit.cleanup_crit_edge ]
  %call2 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef %.sink, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_disable(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 114717, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_open(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i32 %arg to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090633751, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_open_done(ptr noundef %vdev, ptr nocapture noundef writeonly %done) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147368936, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %a0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  %conv = zext i1 %cmp to i32
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_soft_reset(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i32 %arg to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 16891923, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_soft_reset_done(ptr noundef %vdev, ptr nocapture noundef writeonly %done) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147368940, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %a0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  %conv = zext i1 %cmp to i32
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_hang_reset(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %a0.i14 = alloca i64, align 8
  %a1.i15 = alloca i64, align 8
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i32 %arg to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 114727, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %3 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.else

vnic_dev_capable.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.i.not = icmp eq i64 %5, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %if.then, label %vnic_dev_capable.exit.if.else_crit_edge

vnic_dev_capable.exit.if.else_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 114727, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %cleanup

if.else:                                          ; preds = %vnic_dev_capable.exit.if.else_crit_edge, %vnic_dev_capable.exit.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i14) #11
  %6 = ptrtoint ptr %a0.i14 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %a0.i14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i15) #11
  %7 = ptrtoint ptr %a1.i15 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %a1.i15, align 8
  %call.i16 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 16891923, ptr noundef nonnull %a0.i14, ptr noundef nonnull %a1.i15, i32 noundef 1000) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool3.not = icmp eq i32 %call.i16, 0
  br i1 %tobool3.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 @vnic_dev_init(ptr noundef %vdev, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.end ], [ %call.i16, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_init(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i32 %arg to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1090633763, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %3 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.else

vnic_dev_capable.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.i.not = icmp eq i64 %5, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %if.then, label %vnic_dev_capable.exit.if.else_crit_edge

vnic_dev_capable.exit.if.else_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090633763, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %if.end7

if.else:                                          ; preds = %vnic_dev_capable.exit.if.else_crit_edge, %vnic_dev_capable.exit.thread
  %call2 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2130591718, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  %6 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %a0, align 8
  %and = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.else.if.end7_crit_edge, label %if.then4

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147434487, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  %call6 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090568204, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else.if.end7_crit_edge, %if.then
  %r.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then4 ], [ 0, %if.else.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_hang_reset_done(ptr noundef %vdev, ptr nocapture noundef writeonly %done) local_unnamed_addr #2 align 64 {
entry:
  %a0.i14 = alloca i64, align 8
  %a1.i15 = alloca i64, align 8
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %3 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 2147598376, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %4 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.else

vnic_dev_capable.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool1.i.not = icmp eq i64 %6, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %if.then, label %vnic_dev_capable.exit.if.else_crit_edge

vnic_dev_capable.exit.if.else_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %vnic_dev_capable.exit
  %call1 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147368920, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %vnic_dev_capable.exit.if.else_crit_edge, %vnic_dev_capable.exit.thread
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i14) #11
  %7 = ptrtoint ptr %a0.i14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %a0.i14, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i15) #11
  %8 = ptrtoint ptr %a1.i15 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %a1.i15, align 8
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done, align 4
  %call.i16 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147368940, ptr noundef nonnull %a0.i14, ptr noundef nonnull %a1.i15, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i, label %if.else.vnic_dev_soft_reset_done.exit_crit_edge

if.else.vnic_dev_soft_reset_done.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %vnic_dev_soft_reset_done.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %a0.i14 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %a0.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp.i = icmp eq i64 %11, 0
  %conv.i = zext i1 %cmp.i to i32
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i, ptr %done, align 4
  br label %vnic_dev_soft_reset_done.exit

vnic_dev_soft_reset_done.exit:                    ; preds = %if.end.i, %if.else.vnic_dev_soft_reset_done.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i14) #11
  br label %cleanup

if.end5:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %a0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp = icmp eq i64 %14, 0
  %conv = zext i1 %cmp to i32
  %15 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %vnic_dev_soft_reset_done.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i16, %vnic_dev_soft_reset_done.exit ], [ %call1, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_hang_notify(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %a0, align 8, !annotation !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %a1, align 8, !annotation !86
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 114696, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_get_mac_addr(ptr noundef %vdev, ptr nocapture noundef writeonly %mac_addr) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %a0, align 8, !annotation !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %a1, align 8, !annotation !86
  %2 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -2147434487, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body3.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body3.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call ptr @memcpy(ptr %mac_addr, ptr %a0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %for.body3.preheader, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_packet_filter(ptr noundef %vdev, i32 noundef %directed, i32 noundef %multicast, i32 noundef %broadcast, i32 noundef %promisc, i32 noundef %allmulti) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %directed)
  %tobool.not = icmp ne i32 %directed, 0
  %cond = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multicast)
  %tobool1.not = icmp eq i32 %multicast, 0
  %cond2 = select i1 %tobool1.not, i32 0, i32 2
  %or = or i32 %cond2, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %broadcast)
  %tobool3.not = icmp eq i32 %broadcast, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 4
  %or5 = or i32 %or, %cond4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %promisc)
  %tobool6.not = icmp eq i32 %promisc, 0
  %cond7 = select i1 %tobool6.not, i32 0, i32 8
  %or8 = or i32 %or5, %cond7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allmulti)
  %tobool9.not = icmp eq i32 %allmulti, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 16
  %or11 = or i32 %or8, %cond10
  %conv = zext i32 %or11 to i64
  %1 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %a0, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090535431, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_add_addr(ptr noundef %vdev, ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %2 = call ptr @memcpy(ptr %a0, ptr %addr, i32 6)
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090568204, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %addr, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_del_addr(ptr noundef %vdev, ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %2 = call ptr @memcpy(ptr %a0, ptr %addr, i32 6)
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1090568205, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %addr, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_set_ig_vlan_rewrite_mode(ptr noundef %vdev, i8 noundef zeroext %ig_vlan_rewrite_mode) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i8 %ig_vlan_rewrite_mode to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 3221241897, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %3 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %cleanup

vnic_dev_capable.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.i.not = icmp eq i64 %5, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %if.then, label %vnic_dev_capable.exit.cleanup_crit_edge

vnic_dev_capable.exit.cleanup_crit_edge:          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073725399, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %vnic_dev_capable.exit.cleanup_crit_edge, %vnic_dev_capable.exit.thread
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %vnic_dev_capable.exit.cleanup_crit_edge ], [ 0, %vnic_dev_capable.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_notify_set(ptr noundef %vdev, i16 noundef zeroext %intr) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  %notify_pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %notify_pa) #11
  %0 = ptrtoint ptr %notify_pa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %notify_pa, align 4, !annotation !86
  %notify = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %1 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %notify_pa1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %3 = ptrtoint ptr %notify_pa1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %notify_pa1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef %2) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %notify_pa, i32 noundef 2592, i32 noundef 0) #11
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %notify_pa, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %13 = call ptr @memset(ptr %call.i, i32 0, i32 40)
  %14 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %notify, align 4
  %15 = ptrtoint ptr %notify_pa1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %notify_pa1, align 8
  %conv.i = zext i32 %12 to i64
  %16 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv.i, ptr %a0.i, align 8
  %conv2.i = zext i16 %intr to i64
  %shl.i = shl nuw nsw i64 %conv2.i, 32
  %add.i = or i64 %shl.i, 40
  %17 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i, ptr %a1.i, align 8
  %call.i16 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627115, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i = icmp eq i32 %call.i16, 0
  br i1 %cmp.i, label %cond.true.i, label %if.end7.vnic_dev_notify_setcmd.exit_crit_edge

if.end7.vnic_dev_notify_setcmd.exit_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %vnic_dev_notify_setcmd.exit

cond.true.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %a1.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %a1.i, align 8
  %conv4.i = trunc i64 %19 to i32
  br label %vnic_dev_notify_setcmd.exit

vnic_dev_notify_setcmd.exit:                      ; preds = %cond.true.i, %if.end7.vnic_dev_notify_setcmd.exit_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 0, %if.end7.vnic_dev_notify_setcmd.exit_crit_edge ]
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %20 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %notify_sz.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %vnic_dev_notify_setcmd.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call.i16, %vnic_dev_notify_setcmd.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %notify_pa) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_notify_unset(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %notify_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %4 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %6 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %a0.i, align 8
  %7 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 281470681743400, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627115, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %notify, align 4
  %notify_pa.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %9 = ptrtoint ptr %notify_pa.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %notify_pa.i, align 8
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %10 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %notify_sz.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_deinit(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 16891938, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vnic_dev_intr_coal_timer_info_default(ptr nocapture noundef %vdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_coal_timer_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17
  %0 = ptrtoint ptr %intr_coal_timer_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %intr_coal_timer_info, align 8
  %div = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 1
  %1 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %div, align 4
  %max_usec = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %max_usec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 98302, ptr %max_usec, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vnic_dev_intr_coal_timer_hw_to_usec(ptr nocapture noundef readonly %vdev, i32 noundef %hw_cycles) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_coal_timer_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17
  %div = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %div, align 4
  %mul = mul i32 %1, %hw_cycles
  %2 = ptrtoint ptr %intr_coal_timer_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_coal_timer_info, align 8
  %div3 = udiv i32 %mul, %3
  ret i32 %div3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_intr_coal_timer_info(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args, i32 0, i32 120)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %1 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 2147598386, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %2 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vnic_dev_capable.exit, label %vnic_dev_capable.exit.thread

vnic_dev_capable.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br label %if.then13

vnic_dev_capable.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %a0.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.i.not = icmp eq i64 %4, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  br i1 %tobool1.i.not, label %if.end, label %vnic_dev_capable.exit.if.then13_crit_edge

vnic_dev_capable.exit.if.then13_crit_edge:        ; preds = %vnic_dev_capable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end:                                           ; preds = %vnic_dev_capable.exit
  %devcmd_rtn = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %5 = ptrtoint ptr %devcmd_rtn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devcmd_rtn, align 8
  %call1 = tail call i32 %6(ptr noundef %vdev, i32 noundef -2147368910, i32 noundef 1000) #11
  %7 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call1, label %if.end.cleanup_crit_edge [
    i32 5, label %if.end.if.then13_crit_edge
    i32 0, label %land.lhs.true
  ]

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool4.not = icmp eq i64 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true5

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool8.not = icmp eq i64 %11, 0
  br i1 %tobool8.not, label %land.lhs.true5.if.then13_crit_edge, label %land.lhs.true9

land.lhs.true5.if.then13_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %arrayidx11 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 2
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool12.not = icmp eq i64 %13, 0
  br i1 %tobool12.not, label %land.lhs.true9.if.then13_crit_edge, label %if.then17.critedge

land.lhs.true9.if.then13_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true9.if.then13_crit_edge, %land.lhs.true5.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge, %if.end.if.then13_crit_edge, %vnic_dev_capable.exit.if.then13_crit_edge, %vnic_dev_capable.exit.thread
  %14 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.9) #14
  %intr_coal_timer_info.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17
  %18 = ptrtoint ptr %intr_coal_timer_info.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %intr_coal_timer_info.i, align 8
  %div.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 1
  %19 = ptrtoint ptr %div.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %div.i, align 4
  br label %cleanup.sink.split

if.then17.critedge:                               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %9 to i32
  %intr_coal_timer_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17
  %20 = ptrtoint ptr %intr_coal_timer_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %intr_coal_timer_info, align 8
  %conv22 = trunc i64 %11 to i32
  %div = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv22, ptr %div, align 4
  %conv26 = trunc i64 %13 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then17.critedge, %if.then13
  %conv26.sink = phi i32 [ %conv26, %if.then17.critedge ], [ 98302, %if.then13 ]
  %max_usec = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %max_usec to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv26.sink, ptr %max_usec, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_link_status(ptr nocapture noundef %vdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notify_sz.i, align 4
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %entry.return_crit_edge, label %do.body.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body.preheader.i:                              ; preds = %entry
  %div21.i = lshr i32 %1, 2
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp22.i = icmp ugt i32 %1, 7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div21.i, i32 2) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %4 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_sz.i, align 4
  %6 = call ptr @memcpy(ptr %notify_copy.i, ptr %3, i32 %5)
  br i1 %cmp22.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %csum.024.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %do.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %notify_copy.i, i32 %i.023.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %csum.024.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.cond.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.do.cond.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %do.body.i.do.cond.i_crit_edge ], [ %add.i, %for.body.i.do.cond.i_crit_edge ]
  %9 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %notify_copy.i, align 4
  %cmp7.not.i = icmp eq i32 %csum.0.lcssa.i, %10
  br i1 %cmp7.not.i, label %if.end, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end:                                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %link_state = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link_state, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_port_speed(ptr nocapture noundef %vdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notify_sz.i, align 4
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %entry.return_crit_edge, label %do.body.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body.preheader.i:                              ; preds = %entry
  %div21.i = lshr i32 %1, 2
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp22.i = icmp ugt i32 %1, 7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div21.i, i32 2) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %4 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_sz.i, align 4
  %6 = call ptr @memcpy(ptr %notify_copy.i, ptr %3, i32 %5)
  br i1 %cmp22.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %csum.024.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %do.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %notify_copy.i, i32 %i.023.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %csum.024.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.cond.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.do.cond.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %do.body.i.do.cond.i_crit_edge ], [ %add.i, %for.body.i.do.cond.i_crit_edge ]
  %9 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %notify_copy.i, align 4
  %cmp7.not.i = icmp eq i32 %csum.0.lcssa.i, %10
  br i1 %cmp7.not.i, label %if.end, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end:                                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %port_speed = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %port_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_speed, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_msg_lvl(ptr nocapture noundef %vdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notify_sz.i, align 4
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %entry.return_crit_edge, label %do.body.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body.preheader.i:                              ; preds = %entry
  %div21.i = lshr i32 %1, 2
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp22.i = icmp ugt i32 %1, 7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div21.i, i32 2) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %4 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_sz.i, align 4
  %6 = call ptr @memcpy(ptr %notify_copy.i, ptr %3, i32 %5)
  br i1 %cmp22.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %csum.024.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %do.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %notify_copy.i, i32 %i.023.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %csum.024.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.cond.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.do.cond.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %do.body.i.do.cond.i_crit_edge ], [ %add.i, %for.body.i.do.cond.i_crit_edge ]
  %9 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %notify_copy.i, align 4
  %cmp7.not.i = icmp eq i32 %csum.0.lcssa.i, %10
  br i1 %cmp7.not.i, label %if.end, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end:                                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %msglvl = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %msglvl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msglvl, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_mtu(ptr nocapture noundef %vdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_sz.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notify_sz.i, align 4
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %entry.return_crit_edge, label %do.body.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body.preheader.i:                              ; preds = %entry
  %div21.i = lshr i32 %1, 2
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp22.i = icmp ugt i32 %1, 7
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div21.i, i32 2) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %4 = ptrtoint ptr %notify_sz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_sz.i, align 4
  %6 = call ptr @memcpy(ptr %notify_copy.i, ptr %3, i32 %5)
  br i1 %cmp22.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.do.cond.i_crit_edge

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %csum.024.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %do.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %notify_copy.i, i32 %i.023.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %csum.024.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.cond.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.do.cond.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %for.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %do.body.i.do.cond.i_crit_edge ], [ %add.i, %for.body.i.do.cond.i_crit_edge ]
  %9 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %notify_copy.i, align 4
  %cmp7.not.i = icmp eq i32 %csum.0.lcssa.i, %10
  br i1 %cmp7.not.i, label %if.end, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end:                                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %mtu = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @vnic_dev_set_intr_mode(ptr nocapture noundef writeonly %vdev, i32 noundef %intr_mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %intr_mode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %intr_mode, ptr %intr_mode1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vnic_dev_get_intr_mode(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vnic_dev_intr_coal_timer_usec_to_hw(ptr nocapture noundef readonly %vdev, i32 noundef %usec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_coal_timer_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17
  %0 = ptrtoint ptr %intr_coal_timer_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_coal_timer_info, align 8
  %mul1 = mul i32 %1, %usec
  %div = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div, align 4
  %div3 = udiv i32 %mul1, %3
  ret i32 %div3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vnic_dev_get_intr_coal_timer_max(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %max_usec = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %max_usec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_usec, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_dev_unregister(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then:                                          ; preds = %entry
  %notify = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %notify_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %4 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 40, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %stats = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 10
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pdev6 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %8 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %stats_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %10 = ptrtoint ptr %stats_pa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 512, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %fw_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 12
  %12 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_info, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %pdev12 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %14 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %fw_info_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 13
  %16 = ptrtoint ptr %fw_info_pa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_info_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 132, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %devcmd2 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 18
  %18 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devcmd2, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  %results_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %results_ring.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then17.vnic_dev_deinit_devcmd2.exit_crit_edge, label %if.then.i.i

if.then17.vnic_dev_deinit_devcmd2.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %vnic_dev_deinit_devcmd2.exit

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %22 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %size_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %19, i32 0, i32 6, i32 5
  %24 = ptrtoint ptr %size_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size_unaligned.i.i, align 4
  %descs_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %19, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %descs_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %descs_unaligned.i.i, align 4
  %base_addr_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %19, i32 0, i32 6, i32 6
  %28 = ptrtoint ptr %base_addr_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_addr_unaligned.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %25, ptr noundef %27, i32 noundef %29, i32 noundef 0) #11
  %30 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %results_ring.i, align 4
  br label %vnic_dev_deinit_devcmd2.exit

vnic_dev_deinit_devcmd2.exit:                     ; preds = %if.then.i.i, %if.then17.vnic_dev_deinit_devcmd2.exit_crit_edge
  %31 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devcmd2, align 4
  %wq.i = getelementptr inbounds %struct.devcmd2_controller, ptr %32, i32 0, i32 7
  %call.i = tail call i32 @vnic_wq_disable(ptr noundef %wq.i) #11
  %33 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %devcmd2, align 4
  %wq3.i = getelementptr inbounds %struct.devcmd2_controller, ptr %34, i32 0, i32 7
  tail call void @vnic_wq_free(ptr noundef %wq3.i) #11
  %35 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devcmd2, align 4
  tail call void @kfree(ptr noundef %36) #11
  br label %if.end18

if.end18:                                         ; preds = %vnic_dev_deinit_devcmd2.exit, %if.end15.if.end18_crit_edge
  tail call void @kfree(ptr noundef nonnull %vdev) #11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vnic_dev_register(ptr noundef %vdev, ptr noundef %priv, ptr noundef %pdev, ptr nocapture noundef readonly %bar, i32 noundef %num_bars) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 544) #15
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %vdev.addr.0 = phi ptr [ %vdev, %entry.if.end3_crit_edge ], [ %call7.i.i, %if.then.if.end3_crit_edge ]
  %1 = ptrtoint ptr %vdev.addr.0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %vdev.addr.0, align 8
  %pdev5 = getelementptr inbounds %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bars)
  %cmp.i = icmp eq i32 %num_bars, 0
  br i1 %cmp.i, label %if.end3.err_out_crit_edge, label %if.end.i

if.end3.err_out_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end.i:                                         ; preds = %if.end3
  %len.i = getelementptr inbounds %struct.vnic_dev_bar, ptr %bar, i32 0, i32 2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 308, i32 %4)
  %cmp1.i = icmp ult i32 %4, 308
  br i1 %cmp1.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #14
  br label %err_out

if.end3.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bar, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.23) #14
  br label %err_out

if.end11.i:                                       ; preds = %if.end3.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1667853942, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 1667853942
  br i1 %cmp12.not.i, label %lor.lhs.false.i, label %if.end11.i.if.then15.i_crit_edge

if.end11.i.if.then15.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %version.i = getelementptr inbounds %struct.vnic_resource_header, ptr %6, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version.i) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14.not.i = icmp eq i32 %8, 0
  br i1 %cmp14.not.i, label %lor.lhs.false.i.if.end34.i_crit_edge, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

lor.lhs.false.i.if.end34.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.end11.i.if.then15.i_crit_edge
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296518484, i32 %9)
  %cmp18.not.i = icmp eq i32 %9, 1296518484
  br i1 %cmp18.not.i, label %lor.lhs.false19.i, label %if.then15.i.do.end26.i_crit_edge

if.then15.i.do.end26.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

lor.lhs.false19.i:                                ; preds = %if.then15.i
  %version20.i = getelementptr inbounds %struct.mgmt_barmap_hdr, ptr %6, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version20.i) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp22.not.i = icmp eq i32 %10, 0
  br i1 %cmp22.not.i, label %lor.lhs.false19.i.if.end34.i_crit_edge, label %lor.lhs.false19.i.do.end26.i_crit_edge

lor.lhs.false19.i.do.end26.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

lor.lhs.false19.i.if.end34.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

do.end26.i:                                       ; preds = %lor.lhs.false19.i.do.end26.i_crit_edge, %if.then15.i.do.end26.i_crit_edge
  %11 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev5, align 4
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !87
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  %version31.i = getelementptr inbounds %struct.vnic_resource_header, ptr %6, i32 0, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version31.i) #11, !srcloc !87
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.26, i32 noundef 1986947427, i32 noundef 0, i32 noundef 1414350669, i32 noundef 0, i32 noundef %14, i32 noundef %16) #14
  br label %err_out

if.end34.i:                                       ; preds = %lor.lhs.false19.i.if.end34.i_crit_edge, %lor.lhs.false.i.if.end34.i_crit_edge
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 1296518484, i32 %17)
  %cmp37.i = icmp eq i32 %17, 1296518484
  %add.ptr.i = getelementptr %struct.mgmt_barmap_hdr, ptr %6, i32 1
  %add.ptr39.i = getelementptr %struct.vnic_resource_header, ptr %6, i32 1
  %r.0.i = select i1 %cmp37.i, ptr %add.ptr.i, ptr %add.ptr39.i
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %r.0.i) #11, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp43.not157.i = icmp eq i8 %18, 0
  br i1 %cmp43.not157.i, label %if.end34.i.return_crit_edge, label %if.end34.i.while.body.i_crit_edge

if.end34.i.while.body.i_crit_edge:                ; preds = %if.end34.i
  br label %while.body.i

if.end34.i.return_crit_edge:                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end34.i.while.body.i_crit_edge
  %19 = phi i8 [ %39, %cleanup.i.while.body.i_crit_edge ], [ %18, %if.end34.i.while.body.i_crit_edge ]
  %r.1158.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %r.0.i, %if.end34.i.while.body.i_crit_edge ]
  %conv159.i = zext i8 %19 to i32
  %bar45.i = getelementptr inbounds %struct.vnic_resource, ptr %r.1158.i, i32 0, i32 1
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %bar45.i) #11, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !90
  %bar_offset47.i = getelementptr inbounds %struct.vnic_resource, ptr %r.1158.i, i32 0, i32 3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bar_offset47.i) #11, !srcloc !87
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  %count49.i = getelementptr inbounds %struct.vnic_resource, ptr %r.1158.i, i32 0, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %count49.i) #11, !srcloc !87
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  %incdec.ptr.i = getelementptr %struct.vnic_resource, ptr %r.1158.i, i32 1
  %conv52.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52.i, i32 %num_bars)
  %cmp53.not.i = icmp ult i32 %conv52.i, %num_bars
  br i1 %cmp53.not.i, label %if.end56.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end56.i:                                       ; preds = %while.body.i
  %arrayidx.i = getelementptr %struct.vnic_dev_bar, ptr %bar, i32 %conv52.i
  %len57.i = getelementptr %struct.vnic_dev_bar, ptr %bar, i32 %conv52.i, i32 2
  %25 = ptrtoint ptr %len57.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool58.not.i = icmp eq i32 %26, 0
  br i1 %tobool58.not.i, label %if.end56.i.cleanup.i_crit_edge, label %lor.lhs.false59.i

if.end56.i.cleanup.i_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

lor.lhs.false59.i:                                ; preds = %if.end56.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool63.not.i = icmp eq ptr %28, null
  br i1 %tobool63.not.i, label %lor.lhs.false59.i.cleanup.i_crit_edge, label %if.end65.i

lor.lhs.false59.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end65.i:                                       ; preds = %lor.lhs.false59.i
  %29 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %19, label %if.end65.i.cleanup.i_crit_edge [
    i8 1, label %if.end65.i.sw.bb.i_crit_edge
    i8 2, label %if.end65.i.sw.bb.i_crit_edge36
    i8 3, label %if.end65.i.sw.bb.i_crit_edge37
    i8 10, label %if.end65.i.sw.bb.i_crit_edge38
    i8 13, label %if.end65.i.sw.epilog.i_crit_edge
    i8 16, label %if.end65.i.sw.epilog.i_crit_edge39
    i8 24, label %if.end65.i.sw.epilog.i_crit_edge40
  ]

if.end65.i.sw.epilog.i_crit_edge40:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end65.i.sw.epilog.i_crit_edge39:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end65.i.sw.epilog.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end65.i.sw.bb.i_crit_edge38:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end65.i.sw.bb.i_crit_edge37:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end65.i.sw.bb.i_crit_edge36:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end65.i.sw.bb.i_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end65.i.cleanup.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end65.i.sw.bb.i_crit_edge, %if.end65.i.sw.bb.i_crit_edge36, %if.end65.i.sw.bb.i_crit_edge37, %if.end65.i.sw.bb.i_crit_edge38
  %mul.i = shl i32 %24, 7
  %add.i = add i32 %mul.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp70.i = icmp ugt i32 %add.i, %26
  br i1 %cmp70.i, label %cleanup.thread.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

cleanup.thread.i:                                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev5, align 4
  %dev77.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77.i, ptr noundef nonnull @.str.29, i32 noundef %conv159.i, i32 noundef %22, i32 noundef %mul.i, i32 noundef %26) #14
  br label %err_out

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %if.end65.i.sw.epilog.i_crit_edge, %if.end65.i.sw.epilog.i_crit_edge39, %if.end65.i.sw.epilog.i_crit_edge40
  %arrayidx85.i = getelementptr %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 2, i32 %conv159.i
  %count86.i = getelementptr %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 2, i32 %conv159.i, i32 2
  %32 = ptrtoint ptr %count86.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %count86.i, align 4
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr90.i = getelementptr i8, ptr %34, i32 %22
  %35 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr90.i, ptr %arrayidx85.i, align 4
  %bus_addr.i = getelementptr %struct.vnic_dev_bar, ptr %bar, i32 %conv52.i, i32 1
  %36 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_addr.i, align 4
  %add97.i = add i32 %37, %22
  %bus_addr101.i = getelementptr %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 2, i32 %conv159.i, i32 1
  %38 = ptrtoint ptr %bus_addr101.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add97.i, ptr %bus_addr101.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.epilog.i, %if.end65.i.cleanup.i_crit_edge, %lor.lhs.false59.i.cleanup.i_crit_edge, %if.end56.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr.i) #11, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !90
  %cmp43.not.i = icmp eq i8 %39, 0
  br i1 %cmp43.not.i, label %cleanup.i.return_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

err_out:                                          ; preds = %cleanup.thread.i, %do.end26.i, %do.end8.i, %do.end.i, %if.end3.err_out_crit_edge
  tail call void @vnic_dev_unregister(ptr noundef %vdev.addr.0)
  br label %return

return:                                           ; preds = %err_out, %cleanup.i.return_crit_edge, %if.end34.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi ptr [ null, %err_out ], [ null, %if.then.return_crit_edge ], [ %vdev.addr.0, %if.end34.i.return_crit_edge ], [ %vdev.addr.0, %cleanup.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vnic_dev_get_pdev(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_devcmd_init(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 24
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end7, label %if.then

if.then:                                          ; preds = %entry
  %devcmd2.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 18
  %2 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devcmd2.i, align 4
  %tobool.not.i30 = icmp eq ptr %3, null
  br i1 %tobool.not.i30, label %if.end.i31, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i31:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 384) #15
  %5 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %devcmd2.i, align 4
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i31.do.end_crit_edge, label %if.end5.i

if.end.i31.do.end_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end5.i:                                        ; preds = %if.end.i31
  %color.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %color.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %color.i, align 8
  %result_size.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32, ptr %result_size.i, align 2
  %wq.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 7
  %call9.i = tail call i32 @enic_wq_devcmd2_alloc(ptr noundef %vdev, ptr noundef %wq.i, i32 noundef 32, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end5.i.err_free_devcmd2.i_crit_edge

if.end5.i.err_free_devcmd2.i_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_devcmd2.i

if.end12.i:                                       ; preds = %if.end5.i
  %8 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devcmd2.i, align 4
  %ctrl.i = getelementptr inbounds %struct.devcmd2_controller, ptr %9, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl.i, align 4
  %fetch_index15.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %11, i32 0, i32 11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fetch_index15.i) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp eq i32 %12, -1
  br i1 %cmp.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31) #14
  br label %err_free_wq.i

if.end18.i:                                       ; preds = %if.end12.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %16 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devcmd2.i, align 4
  %wq20.i = getelementptr inbounds %struct.devcmd2_controller, ptr %17, i32 0, i32 7
  tail call void @enic_wq_init_start(ptr noundef %wq20.i, i32 noundef 0, i32 noundef %15, i32 noundef %15, i32 noundef 0, i32 noundef 0) #11
  %18 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devcmd2.i, align 4
  %posted.i = getelementptr inbounds %struct.devcmd2_controller, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %posted.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %15, ptr %posted.i, align 4
  %21 = load ptr, ptr %devcmd2.i, align 4
  %wq23.i = getelementptr inbounds %struct.devcmd2_controller, ptr %21, i32 0, i32 7
  tail call void @vnic_wq_enable(ptr noundef %wq23.i) #11
  %22 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %devcmd2.i, align 4
  %base_align.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %base_align.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %base_align.i.i.i, align 4
  %desc_count2.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %desc_count2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %desc_count2.i.i.i, align 4
  %desc_size8.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 7
  %26 = ptrtoint ptr %desc_size8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %desc_size8.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4096, ptr %size.i.i.i, align 4
  %size_unaligned.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %size_unaligned.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4608, ptr %size_unaligned.i.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %29 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %base_addr_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 6
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4608, ptr noundef %base_addr_unaligned.i.i, i32 noundef 3264, i32 noundef 0) #11
  %descs_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %descs_unaligned.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.i, ptr %descs_unaligned.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %vnic_dev_alloc_desc_ring.exit.i, label %if.end28.i

vnic_dev_alloc_desc_ring.exit.i:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i.i, ptr noundef nonnull @.str, i32 noundef %35) #14
  br label %err_disable_wq.i

if.end28.i:                                       ; preds = %if.end18.i
  %results_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6
  %36 = ptrtoint ptr %base_addr_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr_unaligned.i.i, align 4
  %38 = ptrtoint ptr %base_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_align.i.i.i, align 4
  %sub.i.i = add i32 %37, -1
  %add.i.i = add i32 %sub.i.i, %39
  %neg.i.i = sub i32 0, %39
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %base_addr.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i.i, ptr %base_addr.i.i, align 4
  %sub11.i.i = sub i32 %and.i.i, %37
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %sub11.i.i
  %41 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i, ptr %results_ring.i, align 4
  %42 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size.i.i.i, align 4
  %44 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %43)
  %45 = ptrtoint ptr %desc_count2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc_count2.i.i.i, align 4
  %sub13.i.i = add i32 %46, -1
  %desc_avail.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %23, i32 0, i32 6, i32 9
  %47 = ptrtoint ptr %desc_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub13.i.i, ptr %desc_avail.i.i, align 4
  %48 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %devcmd2.i, align 4
  %results_ring30.i = getelementptr inbounds %struct.devcmd2_controller, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %results_ring30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %results_ring30.i, align 4
  %result.i = getelementptr inbounds %struct.devcmd2_controller, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %result.i, align 4
  %53 = load ptr, ptr %devcmd2.i, align 4
  %ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %53, i32 0, i32 7, i32 3
  %54 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring.i, align 4
  %cmd_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %cmd_ring.i, align 4
  %57 = load ptr, ptr %devcmd2.i, align 4
  %ctrl38.i = getelementptr inbounds %struct.devcmd2_controller, ptr %57, i32 0, i32 7, i32 2
  %58 = ptrtoint ptr %ctrl38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl38.i, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %57, align 4
  %61 = load ptr, ptr %devcmd2.i, align 4
  %base_addr.i = getelementptr inbounds %struct.devcmd2_controller, ptr %61, i32 0, i32 6, i32 2
  %62 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_addr.i, align 4
  %conv.i = zext i32 %63 to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %64 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv.i, ptr %args.i, align 8
  %arrayidx43.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %65 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 32, ptr %arrayidx43.i, align 8
  %call44.i = tail call i32 @_vnic_dev_cmd2(ptr noundef %vdev, i32 noundef 1073856569, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %err_free_desc_ring.i

if.end47.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %66 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @_vnic_dev_cmd2, ptr %devcmd_rtn.i, align 8
  br label %cleanup

err_free_desc_ring.i:                             ; preds = %if.end28.i
  %67 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %devcmd2.i, align 4
  %results_ring49.i = getelementptr inbounds %struct.devcmd2_controller, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %results_ring49.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %results_ring49.i, align 4
  %tobool.not.i94.i = icmp eq ptr %70, null
  br i1 %tobool.not.i94.i, label %err_free_desc_ring.i.err_disable_wq.i_crit_edge, label %if.then.i.i

err_free_desc_ring.i.err_disable_wq.i_crit_edge:  ; preds = %err_free_desc_ring.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_disable_wq.i

if.then.i.i:                                      ; preds = %err_free_desc_ring.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev.i.i, align 4
  %dev.i96.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %size_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %68, i32 0, i32 6, i32 5
  %73 = ptrtoint ptr %size_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size_unaligned.i.i, align 4
  %descs_unaligned.i97.i = getelementptr inbounds %struct.devcmd2_controller, ptr %68, i32 0, i32 6, i32 4
  %75 = ptrtoint ptr %descs_unaligned.i97.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %descs_unaligned.i97.i, align 4
  %base_addr_unaligned.i98.i = getelementptr inbounds %struct.devcmd2_controller, ptr %68, i32 0, i32 6, i32 6
  %77 = ptrtoint ptr %base_addr_unaligned.i98.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base_addr_unaligned.i98.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i96.i, i32 noundef %74, ptr noundef %76, i32 noundef %78, i32 noundef 0) #11
  %79 = ptrtoint ptr %results_ring49.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %results_ring49.i, align 4
  br label %err_disable_wq.i

err_disable_wq.i:                                 ; preds = %if.then.i.i, %err_free_desc_ring.i.err_disable_wq.i_crit_edge, %vnic_dev_alloc_desc_ring.exit.i
  %err.0.i = phi i32 [ -12, %vnic_dev_alloc_desc_ring.exit.i ], [ %call44.i, %err_free_desc_ring.i.err_disable_wq.i_crit_edge ], [ %call44.i, %if.then.i.i ]
  %80 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %devcmd2.i, align 4
  %wq51.i = getelementptr inbounds %struct.devcmd2_controller, ptr %81, i32 0, i32 7
  %call52.i = tail call i32 @vnic_wq_disable(ptr noundef %wq51.i) #11
  br label %err_free_wq.i

err_free_wq.i:                                    ; preds = %err_disable_wq.i, %do.end.i
  %err.1.i = phi i32 [ -19, %do.end.i ], [ %err.0.i, %err_disable_wq.i ]
  %82 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %devcmd2.i, align 4
  %wq54.i = getelementptr inbounds %struct.devcmd2_controller, ptr %83, i32 0, i32 7
  tail call void @vnic_wq_free(ptr noundef %wq54.i) #11
  br label %err_free_devcmd2.i

err_free_devcmd2.i:                               ; preds = %err_free_wq.i, %if.end5.i.err_free_devcmd2.i_crit_edge
  %err.2.i = phi i32 [ %call9.i, %if.end5.i.err_free_devcmd2.i_crit_edge ], [ %err.1.i, %err_free_wq.i ]
  %84 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %devcmd2.i, align 4
  tail call void @kfree(ptr noundef %85) #11
  %86 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %devcmd2.i, align 4
  br label %do.end

do.end:                                           ; preds = %err_free_devcmd2.i, %if.end.i31.do.end_crit_edge
  %retval.0.i32 = phi i32 [ %err.2.i, %err_free_devcmd2.i ], [ -12, %if.end.i31.do.end_crit_edge ]
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i32) #14
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev8 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %89 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.14) #14
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %do.end
  %arrayidx.i.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 16
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i33 = icmp eq ptr %92, null
  br i1 %tobool.not.i.i33, label %do.end16, label %vnic_dev_init_devcmd1.exit.thread

vnic_dev_init_devcmd1.exit.thread:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %devcmd_rtn.i34 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 19
  %93 = ptrtoint ptr %devcmd_rtn.i34 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @_vnic_dev_cmd, ptr %devcmd_rtn.i34, align 8
  %94 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %94, align 8
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %96 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %96, align 8
  %pdev17 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %98 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.17, i32 noundef -19) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %vnic_dev_init_devcmd1.exit.thread, %if.end47.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end16 ], [ 0, %vnic_dev_init_devcmd1.exit.thread ], [ 0, %if.end47.i ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_init_prov2(ptr noundef %vdev, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  %prov_pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %conv = zext i32 %len to i64
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prov_pa) #11
  %1 = ptrtoint ptr %prov_pa to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %prov_pa, align 4, !annotation !86
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %len, ptr noundef nonnull %prov_pa, i32 noundef 2592, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %len)
  %5 = ptrtoint ptr %prov_pa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prov_pa, align 4
  %conv1 = zext i32 %6 to i64
  %7 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv1, ptr %a0, align 8
  %call2 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758255, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %prov_pa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prov_pa, align 4
  call void @dma_free_attrs(ptr noundef %dev4, i32 noundef %len, ptr noundef nonnull %call.i, i32 noundef %11, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prov_pa) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_enable2(ptr noundef %vdev, i32 noundef %active) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %a1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp ne i32 %active, 0
  %1 = zext i1 %tobool.not to i64
  %2 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %a0, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758256, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_enable2_done(ptr noundef %vdev, ptr nocapture noundef writeonly %status) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %0 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1073758256, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %1 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627087, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.vnic_dev_cmd_status.exit_crit_edge

entry.vnic_dev_cmd_status.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vnic_dev_cmd_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %a0.i, align 8
  %conv1.i = trunc i64 %3 to i32
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1.i, ptr %status, align 4
  br label %vnic_dev_cmd_status.exit

vnic_dev_cmd_status.exit:                         ; preds = %if.then.i, %entry.vnic_dev_cmd_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_deinit_done(ptr noundef %vdev, ptr nocapture noundef writeonly %status) local_unnamed_addr #2 align 64 {
entry:
  %a0.i = alloca i64, align 8
  %a1.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0.i) #11
  %0 = ptrtoint ptr %a0.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 16891938, ptr %a0.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1.i) #11
  %1 = ptrtoint ptr %a1.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1.i, align 8
  %call.i = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627087, ptr noundef nonnull %a0.i, ptr noundef nonnull %a1.i, i32 noundef 1000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.vnic_dev_cmd_status.exit_crit_edge

entry.vnic_dev_cmd_status.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vnic_dev_cmd_status.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %a0.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %a0.i, align 8
  %conv1.i = trunc i64 %3 to i32
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1.i, ptr %status, align 4
  br label %vnic_dev_cmd_status.exit

vnic_dev_cmd_status.exit:                         ; preds = %if.then.i, %entry.vnic_dev_cmd_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_set_mac_addr(ptr noundef %vdev, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %a0, align 8, !annotation !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %a1, align 8, !annotation !86
  %2 = call ptr @memcpy(ptr %a0, ptr %mac_addr, i32 6)
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758263, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_classifier(ptr noundef %vdev, i8 noundef zeroext %cmd, ptr nocapture noundef %entry1, ptr nocapture noundef readonly %data) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  %tlv_pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %a1, align 8, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tlv_pa) #11
  %1 = ptrtoint ptr %tlv_pa to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tlv_pa, align 4, !annotation !86
  %2 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %cmd, label %entry.cleanup_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 48, ptr noundef nonnull %tlv_pa, i32 noundef 2592, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %tlv_pa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_pa, align 4
  %conv5 = zext i32 %6 to i64
  %7 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv5, ptr %a0, align 8
  %8 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 48, ptr %a1, align 8
  %length = getelementptr inbounds %struct.filter_tlv, ptr %call.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %call.i, i32 0, i32 48)
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %length, align 4
  %val = getelementptr inbounds %struct.filter_tlv, ptr %call.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %val, ptr %data, i32 24)
  %add.ptr7 = getelementptr i8, ptr %call.i, i32 32
  %12 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %add.ptr7, align 4
  %length9 = getelementptr i8, ptr %call.i, i32 36
  %13 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %length9, align 4
  %val10 = getelementptr i8, ptr %call.i, i32 40
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %val10, align 1
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %entry1, align 2
  %conv12 = zext i16 %16 to i32
  %u = getelementptr i8, ptr %call.i, i32 44
  %17 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %conv12, ptr %u, align 1
  %call13 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073725382, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  %18 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %a0, align 8
  %conv14 = trunc i64 %19 to i16
  %20 = ptrtoint ptr %entry1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv14, ptr %entry1, align 2
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %tlv_pa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tlv_pa, align 4
  call void @dma_free_attrs(ptr noundef %dev16, i32 noundef 48, ptr noundef nonnull %call.i, i32 noundef %24, i32 noundef 0) #11
  br label %cleanup

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %entry1, align 2
  %conv22 = zext i16 %26 to i64
  %27 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv22, ptr %a0, align 8
  %call23 = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758267, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call13, %if.end ], [ %call23, %if.then21 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tlv_pa) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_overlay_offload_ctrl(ptr noundef %vdev, i8 noundef zeroext %overlay, i8 noundef zeroext %config) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i8 %overlay to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %conv1 = zext i8 %config to i64
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv1, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758280, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_overlay_offload_cfg(ptr noundef %vdev, i8 noundef zeroext %overlay, i16 noundef zeroext %vxlan_udp_port_number) local_unnamed_addr #2 align 64 {
entry:
  %a1 = alloca i64, align 8
  %a0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %conv = zext i16 %vxlan_udp_port_number to i64
  %0 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv1 = zext i8 %overlay to i64
  %1 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv1, ptr %a0, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef 1073758281, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_get_supported_feature_ver(ptr noundef %vdev, i8 noundef zeroext %feature, ptr nocapture noundef writeonly %supported_versions, ptr nocapture noundef %a1) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %conv = zext i8 %feature to i64
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %a0, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073725371, ptr noundef nonnull %a0, ptr noundef %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %a0, align 8
  %3 = ptrtoint ptr %supported_versions to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %supported_versions, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_dev_capable_rss_hash_type(ptr noundef %vdev, ptr nocapture noundef writeonly %rss_hash_type) local_unnamed_addr #2 align 64 {
entry:
  %a0 = alloca i64, align 8
  %a1 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a0) #11
  %0 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1090633744, ptr %a0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a1) #11
  %1 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %a1, align 8
  %call = call i32 @vnic_dev_cmd(ptr noundef %vdev, i32 noundef -1073627100, ptr noundef nonnull %a0, ptr noundef nonnull %a1, i32 noundef 1000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %a0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %3)
  %cmp.not = icmp eq i64 %3, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a1, align 8
  %shr = lshr i64 %5, 8
  %conv = trunc i64 %shr to i8
  %6 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %rss_hash_type, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a0) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_wq_disable(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_wq_devcmd2_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_wq_init_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_enable(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_vnic_dev_cmd2(ptr nocapture noundef %vdev, i32 noundef %cmd, i32 noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd2 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 18
  %0 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcmd2, align 4
  %posted1 = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %posted1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %posted1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %fetch_index2 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %5, i32 0, i32 11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fetch_index2) #11, !srcloc !87
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %3, 1
  %rem = and i32 %add, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %7)
  %cmp3 = icmp eq i32 %rem, %7
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %and = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.33, i32 noundef %and, i32 noundef %7, i32 noundef %3) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cmd_ring = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_ring, align 4
  %cmd7 = getelementptr %struct.vnic_devcmd2, ptr %13, i32 %3, i32 2
  %14 = ptrtoint ptr %cmd7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cmd, ptr %cmd7, align 4
  %15 = load ptr, ptr %cmd_ring, align 4
  %flags = getelementptr %struct.vnic_devcmd2, ptr %15, i32 %3, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %17 = and i32 %cmd, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end6.if.end18_crit_edge, label %if.then13

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_ring, align 4
  %flags16 = getelementptr %struct.vnic_devcmd2, ptr %19, i32 %3, i32 1
  %20 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags16, align 2
  %22 = or i16 %21, 1
  store i16 %22, ptr %flags16, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end6.if.end18_crit_edge
  %23 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %if.end18.do.body_crit_edge, label %for.body.preheader

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.preheader:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx26 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 0
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx26, align 8
  %26 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30 = getelementptr %struct.vnic_devcmd2, ptr %27, i32 %3, i32 3, i32 0
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %25, ptr %arrayidx30, align 8
  %arrayidx26.1 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %29 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx26.1, align 8
  %31 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.1 = getelementptr %struct.vnic_devcmd2, ptr %31, i32 %3, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %30, ptr %arrayidx30.1, align 8
  %arrayidx26.2 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 2
  %33 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx26.2, align 8
  %35 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.2 = getelementptr %struct.vnic_devcmd2, ptr %35, i32 %3, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %34, ptr %arrayidx30.2, align 8
  %arrayidx26.3 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 3
  %37 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx26.3, align 8
  %39 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.3 = getelementptr %struct.vnic_devcmd2, ptr %39, i32 %3, i32 3, i32 3
  %40 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %arrayidx30.3, align 8
  %arrayidx26.4 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 4
  %41 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx26.4, align 8
  %43 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.4 = getelementptr %struct.vnic_devcmd2, ptr %43, i32 %3, i32 3, i32 4
  %44 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %42, ptr %arrayidx30.4, align 8
  %arrayidx26.5 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 5
  %45 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx26.5, align 8
  %47 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.5 = getelementptr %struct.vnic_devcmd2, ptr %47, i32 %3, i32 3, i32 5
  %48 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %46, ptr %arrayidx30.5, align 8
  %arrayidx26.6 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 6
  %49 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx26.6, align 8
  %51 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.6 = getelementptr %struct.vnic_devcmd2, ptr %51, i32 %3, i32 3, i32 6
  %52 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %50, ptr %arrayidx30.6, align 8
  %arrayidx26.7 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 7
  %53 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx26.7, align 8
  %55 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.7 = getelementptr %struct.vnic_devcmd2, ptr %55, i32 %3, i32 3, i32 7
  %56 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %54, ptr %arrayidx30.7, align 8
  %arrayidx26.8 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 8
  %57 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx26.8, align 8
  %59 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.8 = getelementptr %struct.vnic_devcmd2, ptr %59, i32 %3, i32 3, i32 8
  %60 = ptrtoint ptr %arrayidx30.8 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %58, ptr %arrayidx30.8, align 8
  %arrayidx26.9 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 9
  %61 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx26.9, align 8
  %63 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.9 = getelementptr %struct.vnic_devcmd2, ptr %63, i32 %3, i32 3, i32 9
  %64 = ptrtoint ptr %arrayidx30.9 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %62, ptr %arrayidx30.9, align 8
  %arrayidx26.10 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 10
  %65 = ptrtoint ptr %arrayidx26.10 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx26.10, align 8
  %67 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.10 = getelementptr %struct.vnic_devcmd2, ptr %67, i32 %3, i32 3, i32 10
  %68 = ptrtoint ptr %arrayidx30.10 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %66, ptr %arrayidx30.10, align 8
  %arrayidx26.11 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 11
  %69 = ptrtoint ptr %arrayidx26.11 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx26.11, align 8
  %71 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.11 = getelementptr %struct.vnic_devcmd2, ptr %71, i32 %3, i32 3, i32 11
  %72 = ptrtoint ptr %arrayidx30.11 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %70, ptr %arrayidx30.11, align 8
  %arrayidx26.12 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 12
  %73 = ptrtoint ptr %arrayidx26.12 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx26.12, align 8
  %75 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.12 = getelementptr %struct.vnic_devcmd2, ptr %75, i32 %3, i32 3, i32 12
  %76 = ptrtoint ptr %arrayidx30.12 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %74, ptr %arrayidx30.12, align 8
  %arrayidx26.13 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 13
  %77 = ptrtoint ptr %arrayidx26.13 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx26.13, align 8
  %79 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.13 = getelementptr %struct.vnic_devcmd2, ptr %79, i32 %3, i32 3, i32 13
  %80 = ptrtoint ptr %arrayidx30.13 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %78, ptr %arrayidx30.13, align 8
  %arrayidx26.14 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 14
  %81 = ptrtoint ptr %arrayidx26.14 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx26.14, align 8
  %83 = load ptr, ptr %cmd_ring, align 4
  %arrayidx30.14 = getelementptr %struct.vnic_devcmd2, ptr %83, i32 %3, i32 3, i32 14
  %84 = ptrtoint ptr %arrayidx30.14 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %82, ptr %arrayidx30.14, align 8
  br label %do.body

do.body:                                          ; preds = %for.body.preheader, %if.end18.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %posted_index = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %86, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %87 = shl nuw nsw i32 %rem, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index, i32 %87) #11, !srcloc !93
  %88 = ptrtoint ptr %posted1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %rem, ptr %posted1, align 4
  %89 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cmd_ring, align 4
  %flags36 = getelementptr %struct.vnic_devcmd2, ptr %90, i32 %3, i32 1
  %91 = ptrtoint ptr %flags36 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %flags36, align 2
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool39.not = icmp eq i16 %93, 0
  br i1 %tobool39.not, label %if.end41, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %do.body
  %result42 = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %result42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %result42, align 4
  %next_result = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %next_result to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %next_result, align 4
  %conv43 = zext i16 %97 to i32
  %add.ptr = getelementptr %struct.devcmd2_result, ptr %95, i32 %conv43
  %color44 = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %color44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %color44, align 4
  %inc47 = add i16 %97, 1
  store i16 %inc47, ptr %next_result, align 4
  %result_size = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %result_size to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %result_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc47, i16 %101)
  %cmp51 = icmp eq i16 %inc47, %101
  br i1 %cmp51, label %if.then53, label %if.end41.if.end58_crit_edge

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %next_result to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %next_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool56.not = icmp eq i32 %99, 0
  %cond = zext i1 %tobool56.not to i32
  %103 = ptrtoint ptr %color44 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond, ptr %color44, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end41.if.end58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp60167 = icmp sgt i32 %wait, 0
  br i1 %cmp60167, label %for.body62.lr.ph, label %if.end58.for.end102_crit_edge

if.end58.for.end102_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end102

for.body62.lr.ph:                                 ; preds = %if.end58
  %color63 = getelementptr %struct.devcmd2_result, ptr %95, i32 %conv43, i32 4
  %104 = trunc i32 %99 to i8
  br label %for.body62

for.body62:                                       ; preds = %if.end99.for.body62_crit_edge, %for.body62.lr.ph
  %delay.0168 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc101, %if.end99.for.body62_crit_edge ]
  %105 = ptrtoint ptr %color63 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %color63, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %104)
  %cmp66 = icmp eq i8 %106, %104
  br i1 %cmp66, label %if.then68, label %if.end99

if.then68:                                        ; preds = %for.body62
  %error = getelementptr %struct.devcmd2_result, ptr %95, i32 %conv43, i32 3
  %107 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool69.not = icmp eq i8 %108, 0
  br i1 %tobool69.not, label %if.end82, label %if.then70

if.then70:                                        ; preds = %if.then68
  %conv72 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %108)
  %cmp73.not = icmp eq i8 %108, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073627100, i32 %cmd)
  %cmp75.not = icmp eq i32 %cmd, -1073627100
  %or.cond = and i1 %cmp75.not, %cmp73.not
  br i1 %or.cond, label %if.then70.if.end81_crit_edge, label %if.then77

if.then70.if.end81_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then77:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vdev, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 128
  %and80 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %112, ptr noundef nonnull @.str.34, i32 noundef %conv72, i32 noundef %and80) #14
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.then70.if.end81_crit_edge
  %sub = sub nsw i32 0, %conv72
  br label %cleanup

if.end82:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool86.not = icmp sgt i32 %cmd, -1
  br i1 %tobool86.not, label %if.end82.cleanup_crit_edge, label %for.body91.preheader

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body91.preheader:                             ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr, align 8
  %arrayidx94 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 0
  %115 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx94, align 8
  %arrayidx92.1 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx92.1, align 8
  %arrayidx94.1 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 1
  %118 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx94.1, align 8
  %arrayidx92.2 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx92.2, align 8
  %arrayidx94.2 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 2
  %121 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx94.2, align 8
  %arrayidx92.3 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 3
  %122 = ptrtoint ptr %arrayidx92.3 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx92.3, align 8
  %arrayidx94.3 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 3
  %124 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx94.3, align 8
  %arrayidx92.4 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 4
  %125 = ptrtoint ptr %arrayidx92.4 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx92.4, align 8
  %arrayidx94.4 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 4
  %127 = ptrtoint ptr %arrayidx94.4 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %arrayidx94.4, align 8
  %arrayidx92.5 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx92.5 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx92.5, align 8
  %arrayidx94.5 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 5
  %130 = ptrtoint ptr %arrayidx94.5 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %arrayidx94.5, align 8
  %arrayidx92.6 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 6
  %131 = ptrtoint ptr %arrayidx92.6 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx92.6, align 8
  %arrayidx94.6 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 6
  %133 = ptrtoint ptr %arrayidx94.6 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %arrayidx94.6, align 8
  %arrayidx92.7 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 7
  %134 = ptrtoint ptr %arrayidx92.7 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx92.7, align 8
  %arrayidx94.7 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 7
  %136 = ptrtoint ptr %arrayidx94.7 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %arrayidx94.7, align 8
  %arrayidx92.8 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 8
  %137 = ptrtoint ptr %arrayidx92.8 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx92.8, align 8
  %arrayidx94.8 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 8
  %139 = ptrtoint ptr %arrayidx94.8 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx94.8, align 8
  %arrayidx92.9 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 9
  %140 = ptrtoint ptr %arrayidx92.9 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx92.9, align 8
  %arrayidx94.9 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 9
  %142 = ptrtoint ptr %arrayidx94.9 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %arrayidx94.9, align 8
  %arrayidx92.10 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 10
  %143 = ptrtoint ptr %arrayidx92.10 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx92.10, align 8
  %arrayidx94.10 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 10
  %145 = ptrtoint ptr %arrayidx94.10 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %arrayidx94.10, align 8
  %arrayidx92.11 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 11
  %146 = ptrtoint ptr %arrayidx92.11 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx92.11, align 8
  %arrayidx94.11 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 11
  %148 = ptrtoint ptr %arrayidx94.11 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %arrayidx94.11, align 8
  %arrayidx92.12 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 12
  %149 = ptrtoint ptr %arrayidx92.12 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx92.12, align 8
  %arrayidx94.12 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 12
  %151 = ptrtoint ptr %arrayidx94.12 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %arrayidx94.12, align 8
  %arrayidx92.13 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 13
  %152 = ptrtoint ptr %arrayidx92.13 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx92.13, align 8
  %arrayidx94.13 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 13
  %154 = ptrtoint ptr %arrayidx94.13 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %arrayidx94.13, align 8
  %arrayidx92.14 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 14
  %155 = ptrtoint ptr %arrayidx92.14 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %arrayidx92.14, align 8
  %arrayidx94.14 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 14
  %157 = ptrtoint ptr %arrayidx94.14 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %arrayidx94.14, align 8
  br label %cleanup

if.end99:                                         ; preds = %for.body62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 21474800) #11
  %inc101 = add nuw nsw i32 %delay.0168, 1
  %exitcond.not = icmp eq i32 %inc101, %wait
  br i1 %exitcond.not, label %if.end99.for.end102_crit_edge, label %if.end99.for.body62_crit_edge

if.end99.for.body62_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body62

if.end99.for.end102_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end102

for.end102:                                       ; preds = %if.end99.for.end102_crit_edge, %if.end58.for.end102_crit_edge
  %159 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %vdev, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 128
  %and105 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %162, ptr noundef nonnull @.str.35, i32 noundef %and105) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end102, %for.body91.preheader, %if.end82.cleanup_crit_edge, %if.end81, %do.body.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then4 ], [ %sub, %if.end81 ], [ -110, %for.end102 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ], [ 0, %for.body91.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_vnic_dev_cmd(ptr nocapture noundef %vdev, i32 noundef %cmd, i32 noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 4
  %0 = ptrtoint ptr %devcmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcmd1, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %and5 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %and5) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %if.end6.if.end15_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0125 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 %i.0125
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %arrayidx14 = getelementptr %struct.vnic_devcmd, ptr %1, i32 0, i32 2, i32 %i.0125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !94
  tail call void @arm_heavy_mb() #11
  %conv.i = trunc i64 %10 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx14, i32 %11) #11, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %shr.i = lshr i64 %10, 32
  %conv3.i = trunc i64 %shr.i to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #11
  %add.ptr.i = getelementptr i8, ptr %arrayidx14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #11, !srcloc !93
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.end6.if.end15_crit_edge
  %cmd16 = getelementptr inbounds %struct.vnic_devcmd, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %cmd) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmd16, i32 %13) #11, !srcloc !93
  %14 = and i32 %cmd, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %for.cond23.preheader, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond23.preheader:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp24126 = icmp sgt i32 %wait, 0
  br i1 %cmp24126, label %for.cond23.preheader.for.body25_crit_edge, label %for.cond23.preheader.for.end78_crit_edge

for.cond23.preheader.for.end78_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.cond23.preheader.for.body25_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body25

for.cond23:                                       ; preds = %if.end30
  %inc77 = add nuw nsw i32 %delay.0127, 1
  %exitcond131.not = icmp eq i32 %inc77, %wait
  br i1 %exitcond131.not, label %for.cond23.for.end78_crit_edge, label %for.cond23.for.body25_crit_edge

for.cond23.for.body25_crit_edge:                  ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body25

for.cond23.for.end78_crit_edge:                   ; preds = %for.cond23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end78

for.body25:                                       ; preds = %for.cond23.for.body25_crit_edge, %for.cond23.preheader.for.body25_crit_edge
  %delay.0127 = phi i32 [ %inc77, %for.cond23.for.body25_crit_edge ], [ 0, %for.cond23.preheader.for.body25_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp28 = icmp eq i32 %16, -1
  br i1 %cmp28, label %for.body25.cleanup_crit_edge, label %if.end30

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %for.body25
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  %and31 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %for.cond23

if.then33:                                        ; preds = %if.end30
  %and34 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end56, label %if.then36

if.then36:                                        ; preds = %if.then33
  %args37 = getelementptr inbounds %struct.vnic_devcmd, ptr %1, i32 0, i32 2
  %add.ptr.i121 = getelementptr i8, ptr %args37, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !97
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %args37) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !98
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %19)
  %cmp40 = icmp eq i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073627100, i32 %cmd)
  %cmp42 = icmp eq i32 %cmd, -1073627100
  %or.cond = and i1 %cmp42, %cmp40
  br i1 %or.cond, label %if.then36.cleanup_crit_edge, label %if.end45

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %19)
  %cmp46.not = icmp eq i32 %19, 83886080
  %or.cond120 = and i1 %cmp42, %cmp46.not
  br i1 %or.cond120, label %if.end45.if.end54_crit_edge, label %if.then50

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdev, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %and53 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %20, i32 noundef %and53) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end45.if.end54_crit_edge
  %sub55 = sub i32 0, %20
  br label %cleanup

if.end56:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool60.not = icmp sgt i32 %cmd, -1
  br i1 %tobool60.not, label %if.end56.cleanup_crit_edge, label %if.then61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %if.then61
  %i.1128 = phi i32 [ 0, %if.then61 ], [ %inc72, %for.body65.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.vnic_devcmd, ptr %1, i32 0, i32 2, i32 %i.1128
  %add.ptr.i122 = getelementptr i8, ptr %arrayidx67, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !97
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx67) #11, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !98
  %27 = zext i32 %25 to i64
  %28 = zext i32 %26 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %27
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #11
  %arrayidx70 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 16, i32 %i.1128
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx70, align 8
  %inc72 = add nuw nsw i32 %i.1128, 1
  %exitcond132.not = icmp eq i32 %inc72, 15
  br i1 %exitcond132.not, label %for.body65.cleanup_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body65

for.body65.cleanup_crit_edge:                     ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end78:                                        ; preds = %for.cond23.for.end78_crit_edge, %for.cond23.preheader.for.end78_crit_edge
  %33 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdev, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %and81 = and i32 %cmd, 16383
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.37, i32 noundef %and81) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end78, %for.body65.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end54, %if.then36.cleanup_crit_edge, %for.body25.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ %sub55, %if.end54 ], [ -110, %for.end78 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -1, %if.then36.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %for.body65.cleanup_crit_edge ], [ -19, %for.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__ksymtab_vnic_dev_get_res_count, !1, !"__ksymtab_vnic_dev_get_res_count", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 138, i32 1}
!2 = !{ptr @__ksymtab_vnic_dev_get_res, !3, !"__ksymtab_vnic_dev_get_res", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 157, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 202, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vnic_dev_alloc_desc_ring._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vnic_dev_alloc_desc_ring._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 773, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 790, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 807, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 851, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 970, i32 3}
!22 = !{ptr @__ksymtab_vnic_dev_unregister, !23, !"__ksymtab_vnic_dev_unregister", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1066, i32 1}
!24 = !{ptr @__ksymtab_vnic_dev_register, !25, !"__ksymtab_vnic_dev_register", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1090, i32 1}
!26 = !{ptr @__ksymtab_vnic_dev_get_pdev, !27, !"__ksymtab_vnic_dev_get_pdev", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1096, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1107, i32 4}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vnic_devcmd_init._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @vnic_devcmd_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1112, i32 3}
!36 = !{ptr @vnic_devcmd_init._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @vnic_devcmd_init._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 1116, i32 3}
!40 = !{ptr @vnic_devcmd_init._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vnic_devcmd_init._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 478, i32 4}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 56, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @vnic_dev_discover_res._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @vnic_dev_discover_res._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 63, i32 3}
!51 = !{ptr @vnic_dev_discover_res._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vnic_dev_discover_res._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 72, i32 4}
!55 = !{ptr @vnic_dev_discover_res._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vnic_dev_discover_res._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 109, i32 5}
!59 = !{ptr @vnic_dev_discover_res._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vnic_dev_discover_res._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 404, i32 3}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vnic_dev_init_devcmd2._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @vnic_dev_init_devcmd2._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 316, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 355, i32 6}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 368, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 244, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/cisco/enic/vnic_dev.c", i32 293, i32 2}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2156381956, i64 2156382463, i64 2156381993, i64 2156382049, i64 2156382083, i64 2156382107, i64 2156382148, i64 2156382169, i64 2156382197, i64 2156382231}
!86 = !{!"auto-init"}
!87 = !{i64 5008419}
!88 = !{i64 2152548768}
!89 = !{i64 5008199}
!90 = !{i64 2152547544}
!91 = !{i64 2156377945}
!92 = !{i64 2152550123}
!93 = !{i64 5008001}
!94 = !{i64 2155181584}
!95 = !{i64 2155181998}
!96 = !{i64 2156375904}
!97 = !{i64 2155180772}
!98 = !{i64 2155181202}
!99 = !{i64 2156377056}
