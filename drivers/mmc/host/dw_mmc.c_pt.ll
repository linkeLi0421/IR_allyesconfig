; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/dw_mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/dw_mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dw_mci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_probe\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dw_mci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_remove\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dw_mci_runtime_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_runtime_suspend\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_runtime_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dw_mci_runtime_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_mci_runtime_resume\09\09\09\09"
module asm "\09.long\09__crc_dw_mci_runtime_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_mci_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_mci_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dw_mci_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dw_mci_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mci = type { %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i8, ptr, %struct.sg_mapping_iter, ptr, ptr, ptr, %struct.mmc_command, i32, i8, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.tasklet_struct, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, %union.anon.77, ptr, ptr, i32, i8, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.fault_attr, %struct.hrtimer }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dw_mci_board = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.dw_mci_drv_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dw_mci_slot = type { ptr, ptr, i32, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.idmac_desc_64addr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idmac_desc = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform data not available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"biu\00", [28 x i8] zeroinitializer }, align 32
@dw_mci_probe.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 3, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw_mmc\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_mci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/dw_mmc.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"biu clock not available\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 3297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable biu clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr = internal global ptr @dw_mci_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ciu\00", [28 x i8] zeroinitializer }, align 32
@dw_mci_probe.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 3, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ciu clock not available\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 3309, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable ciu clock\0A\00", [36 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.13 = internal global ptr @dw_mci_probe._entry.11, section ".printk_index", align 4
@dw_mci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 3318, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to set bus rate to %uHz\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.17 = internal global ptr @dw_mci_probe._entry.14, section ".printk_index", align 4
@dw_mci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 3325, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Platform data must supply bus speed\0A\00", [59 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.20 = internal global ptr @dw_mci_probe._entry.18, section ".printk_index", align 4
@dw_mci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 3340, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"implementation specific init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.23 = internal global ptr @dw_mci_probe._entry.21, section ".printk_index", align 4
@dw_mci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&host->cmd11_timer)\00", [43 x i8] zeroinitializer }, align 32
@dw_mci_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&host->cto_timer)\00", [45 x i8] zeroinitializer }, align 32
@dw_mci_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&host->dto_timer)\00", [45 x i8] zeroinitializer }, align 32
@dw_mci_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@dw_mci_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&host->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"HCON reports a reserved host data width!\0ADefaulting to 32-bit access.\0A\00", [57 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 3427, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Version ID is %04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.37 = internal global ptr @dw_mci_probe._entry.34, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw-mci\00", [25 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 3454, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"DW MMC controller at irq %d,%d bit host data width,%u deep fifo\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_mci_probe._entry_ptr.41 = internal global ptr @dw_mci_probe._entry.39, section ".printk_index", align 4
@dw_mci_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.42, i8 3, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"slot %d init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_dw_mci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_probe to i32), ptr @__kstrtab_dw_mci_probe, ptr @__kstrtabns_dw_mci_probe }, section "___ksymtab+dw_mci_probe", align 4
@dw_mci_remove.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 3, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_mci_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remove slot\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_dw_mci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_remove to i32), ptr @__kstrtab_dw_mci_remove, ptr @__kstrtabns_dw_mci_remove }, section "___ksymtab+dw_mci_remove", align 4
@__kstrtab_dw_mci_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_runtime_suspend to i32), ptr @__kstrtab_dw_mci_runtime_suspend, ptr @__kstrtabns_dw_mci_runtime_suspend }, section "___ksymtab+dw_mci_runtime_suspend", align 4
@__kstrtab_dw_mci_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_mci_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_mci_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_mci_runtime_resume to i32), ptr @__kstrtab_dw_mci_runtime_resume, ptr @__kstrtabns_dw_mci_runtime_resume }, section "___ksymtab+dw_mci_runtime_resume", align 4
@__initcall__kmod_dw_mmc__326_3607_dw_mci_init6 = internal global ptr @dw_mci_init, section ".initcall6.init", align 4
@__exitcall_dw_mci_exit = internal global ptr @dw_mci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description327 = internal constant [55 x i8] c"dw_mmc.description=DW Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [40 x i8] c"dw_mmc.author=NXP Semiconductor VietNam\00", section ".modinfo", align 1
@__UNIQUE_ID_author329 = internal constant [43 x i8] c"dw_mmc.author=Imagination Technologies Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [36 x i8] c"dw_mmc.file=drivers/mmc/host/dw_mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [22 x i8] c"dw_mmc.license=GPL v2\00", section ".modinfo", align 1
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fifo-depth\00", [21 x i8] zeroinitializer }, align 32
@dw_mci_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 3228, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"fifo-depth property not found, using value of FIFOTH register as default\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_mci_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@dw_mci_parse_dt._entry_ptr = internal global ptr @dw_mci_parse_dt._entry, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"card-detect-delay\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data-addr\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fifo-watermark-aligned\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@dw_mci_cmd11_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 3093, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected CMD11 timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dw_mci_cmd11_timer\00", [45 x i8] zeroinitializer }, align 32
@dw_mci_cmd11_timer._entry_ptr = internal global ptr @dw_mci_cmd11_timer._entry, section ".printk_index", align 4
@dw_mci_cto_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 3121, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unexpected interrupt latency\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_mci_cto_timer\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_cto_timer._entry_ptr = internal global ptr @dw_mci_cto_timer._entry, section ".printk_index", align 4
@dw_mci_cto_timer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 3126, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CTO timeout when already completed\0A\00", [60 x i8] zeroinitializer }, align 32
@dw_mci_cto_timer._entry_ptr.59 = internal global ptr @dw_mci_cto_timer._entry.57, section ".printk_index", align 4
@dw_mci_cto_timer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 3149, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unexpected command timeout, state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dw_mci_cto_timer._entry_ptr.62 = internal global ptr @dw_mci_cto_timer._entry.60, section ".printk_index", align 4
@dw_mci_dto_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 3172, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected data interrupt latency\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_mci_dto_timer\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_dto_timer._entry_ptr = internal global ptr @dw_mci_dto_timer._entry, section ".printk_index", align 4
@dw_mci_dto_timer._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 3177, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DTO timeout when already completed\0A\00", [60 x i8] zeroinitializer }, align 32
@dw_mci_dto_timer._entry_ptr.67 = internal global ptr @dw_mci_dto_timer._entry.65, section ".printk_index", align 4
@dw_mci_dto_timer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.4, i32 3200, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected data timeout, state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dw_mci_dto_timer._entry_ptr.70 = internal global ptr @dw_mci_dto_timer._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dw_mci_ctrl_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 206, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Timeout resetting block (ctrl reset %#x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_mci_ctrl_reset\00", [46 x i8] zeroinitializer }, align 32
@dw_mci_ctrl_reset._entry_ptr = internal global ptr @dw_mci_ctrl_reset._entry, section ".printk_index", align 4
@dw_mci_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 3034, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IDMAC supports 64-bit address mode.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_mci_init_dma\00", [16 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr = internal global ptr @dw_mci_init_dma._entry, section ".printk_index", align 4
@dw_mci_init_dma._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 3042, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IDMAC supports 32-bit address mode.\0A\00", [59 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.78 = internal global ptr @dw_mci_init_dma._entry.76, section ".printk_index", align 4
@dw_mci_init_dma._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.4, i32 3052, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: could not alloc DMA memory\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.81 = internal global ptr @dw_mci_init_dma._entry.79, section ".printk_index", align 4
@dw_mci_idmac_ops = internal constant { %struct.dw_mci_dma_ops, [40 x i8] } { %struct.dw_mci_dma_ops { ptr @dw_mci_idmac_init, ptr @dw_mci_idmac_start_dma, ptr @dw_mci_dmac_complete_dma, ptr @dw_mci_idmac_stop_dma, ptr @dw_mci_dma_cleanup, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.4, i32 3057, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using internal DMA controller.\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.84 = internal global ptr @dw_mci_init_dma._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@dw_mci_edmac_ops = internal constant { %struct.dw_mci_dma_ops, [40 x i8] } { %struct.dw_mci_dma_ops { ptr @dw_mci_edmac_init, ptr @dw_mci_edmac_start_dma, ptr @dw_mci_dmac_complete_dma, ptr @dw_mci_edmac_stop_dma, ptr @dw_mci_dma_cleanup, ptr @dw_mci_edmac_exit }, [40 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.75, ptr @.str.4, i32 3066, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using external DMA controller.\0A\00", [32 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.89 = internal global ptr @dw_mci_init_dma._entry.87, section ".printk_index", align 4
@dw_mci_init_dma._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.75, ptr @.str.4, i32 3073, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unable to initialize DMA Controller.\0A\00", [54 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.92 = internal global ptr @dw_mci_init_dma._entry.90, section ".printk_index", align 4
@dw_mci_init_dma._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.75, ptr @.str.4, i32 3077, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA initialization not found.\0A\00", [33 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.95 = internal global ptr @dw_mci_init_dma._entry.93, section ".printk_index", align 4
@dw_mci_init_dma._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.75, ptr @.str.4, i32 3084, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using PIO mode.\0A\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_init_dma._entry_ptr.98 = internal global ptr @dw_mci_init_dma._entry.96, section ".printk_index", align 4
@dw_mci_prepare_desc64.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.99, ptr @.str.4, ptr @.str.100, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_prepare_desc64\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"descriptor is still owned by IDMAC.\0A\00", [59 x i8] zeroinitializer }, align 32
@dw_mci_prepare_desc32.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.101, ptr @.str.4, ptr @.str.100, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_prepare_desc32\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@dw_mci_edmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.4, i32 847, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get external DMA channel.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_mci_edmac_init\00", [46 x i8] zeroinitializer }, align 32
@dw_mci_edmac_init._entry_ptr = internal global ptr @dw_mci_edmac_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dw_mci_edmac_start_dma.mszs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256], [32 x i8] zeroinitializer }, align 32
@dw_mci_edmac_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 809, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to config edmac.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_mci_edmac_start_dma\00", [41 x i8] zeroinitializer }, align 32
@dw_mci_edmac_start_dma._entry_ptr = internal global ptr @dw_mci_edmac_start_dma._entry, section ".printk_index", align 4
@dw_mci_edmac_start_dma._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.4, i32 817, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't prepare slave sg.\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_mci_edmac_start_dma._entry_ptr.109 = internal global ptr @dw_mci_edmac_start_dma._entry.107, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dw_mci_set_data_timeout.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.110, ptr @.str.4, ptr @.str.111, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw_mci_set_data_timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout_ns: %u => TMOUT[31:8]: %#08x\00", [59 x i8] zeroinitializer }, align 32
@mci_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 250, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Timeout sending command (cmd %#x arg %#x status %#x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mci_send_cmd\00", [19 x i8] zeroinitializer }, align 32
@mci_send_cmd._entry_ptr = internal global ptr @mci_send_cmd._entry, section ".printk_index", align 4
@dw_mci_wait_while_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 231, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Busy; trying anyway\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_mci_wait_while_busy\00", [41 x i8] zeroinitializer }, align 32
@dw_mci_wait_while_busy._entry_ptr = internal global ptr @dw_mci_wait_while_busy._entry, section ".printk_index", align 4
@dw_mci_submit_data_dma.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.116, ptr @.str.4, ptr @.str.117, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw_mci_submit_data_dma\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: fall back to PIO mode for current transfer\0A\00", [48 x i8] zeroinitializer }, align 32
@dw_mci_set_drto.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.118, ptr @.str.4, ptr @.str.119, i8 1, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw_mci_set_drto\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drto_ms: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@dw_mci_data_complete.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.120, ptr @.str.4, ptr @.str.121, i8 1, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_mci_data_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"data error, status 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@dw_mci_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.4, i32 1778, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Timeout waiting for dma_req to be cleared\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_mci_reset\00", [19 x i8] zeroinitializer }, align 32
@dw_mci_reset._entry_ptr = internal global ptr @dw_mci_reset._entry, section ".printk_index", align 4
@dw_mci_reset._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.4, i32 1790, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s: fifo/dma reset bits didn't clear but ciu was reset, doing clock update\0A\00", [52 x i8] zeroinitializer }, align 32
@dw_mci_reset._entry_ptr.126 = internal global ptr @dw_mci_reset._entry.124, section ".printk_index", align 4
@dw_mci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @dw_mci_post_req, ptr @dw_mci_pre_req, ptr @dw_mci_request, ptr null, ptr @dw_mci_set_ios, ptr @dw_mci_get_ro, ptr @dw_mci_get_cd, ptr @dw_mci_enable_sdio_irq, ptr @dw_mci_ack_sdio_irq, ptr null, ptr @dw_mci_switch_voltage, ptr @dw_mci_card_busy, ptr @dw_mci_execute_tuning, ptr @dw_mci_prepare_hs400_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mci_hw_reset, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw_mci_queue_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 1400, ptr @.str.16, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Voltage change didn't complete\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw_mci_queue_request\00", [43 x i8] zeroinitializer }, align 32
@dw_mci_queue_request._entry_ptr = internal global ptr @dw_mci_queue_request._entry, section ".printk_index", align 4
@dw_mci_get_ro.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.129, ptr @.str.4, ptr @.str.130, i8 1, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_mci_get_ro\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"card is %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read-write\00", [21 x i8] zeroinitializer }, align 32
@dw_mci_switch_voltage.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.133, ptr @.str.4, ptr @.str.134, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_switch_voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Regulator set error %d - %s V\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.8\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.3\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mshc\00", [27 x i8] zeroinitializer }, align 32
@dw_mci_init_slot_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.4, i32 2892, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid controller id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_mci_init_slot_caps\00", [42 x i8] zeroinitializer }, align 32
@dw_mci_init_slot_caps._entry_ptr = internal global ptr @dw_mci_init_slot_caps._entry, section ".printk_index", align 4
@dw_mci_get_cd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.4, i32 965, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"card is polling.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_mci_get_cd\00", [18 x i8] zeroinitializer }, align 32
@dw_mci_get_cd._entry_ptr = internal global ptr @dw_mci_get_cd._entry, section ".printk_index", align 4
@dw_mci_get_cd._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.4, i32 968, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"card is non-removable.\0A\00", [40 x i8] zeroinitializer }, align 32
@dw_mci_get_cd._entry_ptr.144 = internal global ptr @dw_mci_get_cd._entry.142, section ".printk_index", align 4
@dw_mci_get_cd.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.141, ptr @.str.4, ptr @.str.145, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"card is present\0A\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_get_cd.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.141, ptr @.str.4, ptr @.str.146, i8 0, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"card is not present\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@dw_mci_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dw_mci_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@dw_mci_req_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dw_mci_req_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pending_events\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"completed_events\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fail_data_crc\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STATUS:\090x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RINTSTS:\090x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CMD:\090x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CTRL:\090x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTMASK:\090x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLKENA:\090x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CMD%u(0x%x) flg %x rsp %x %x %x %x err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DATA %u / %u * %u flg %x err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dw_mci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.4, i32 1491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable vmmc regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw_mci_set_ios\00", [17 x i8] zeroinitializer }, align 32
@dw_mci_set_ios._entry_ptr = internal global ptr @dw_mci_set_ios._entry, section ".printk_index", align 4
@dw_mci_set_ios._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.4, i32 1507, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable vqmmc\0A\00", [40 x i8] zeroinitializer }, align 32
@dw_mci_set_ios._entry_ptr.165 = internal global ptr @dw_mci_set_ios._entry.163, section ".printk_index", align 4
@dw_mci_setup_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.4, i32 1242, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Bus speed (slot %d) = %dHz (slot req %dHz, actual %dHZ div = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_mci_setup_bus\00", [47 x i8] zeroinitializer }, align 32
@dw_mci_setup_bus._entry_ptr = internal global ptr @dw_mci_setup_bus._entry, section ".printk_index", align 4
@dw_mci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.4, i32 3599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Synopsys Designware Multimedia Card Interface Driver\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dw_mci_init\00", [20 x i8] zeroinitializer }, align 32
@dw_mci_init._entry_ptr = internal global ptr @dw_mci_init._entry, section ".printk_index", align 4
@switch.table.dw_mci_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dw_mci_push_data16, ptr @dw_mci_push_data32, ptr @dw_mci_push_data64], [20 x i8] zeroinitializer }, align 32
@switch.table.dw_mci_probe.170 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dw_mci_pull_data16, ptr @dw_mci_pull_data32, ptr @dw_mci_pull_data64], [20 x i8] zeroinitializer }, align 32
@switch.table.dw_mci_probe.171 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 64], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.173 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.178 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 12, i64 13, i64 15, i64 52]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.180 = internal global [10 x i64] [i64 8, i64 32, i64 17, i64 18, i64 19, i64 21, i64 24, i64 25, i64 53, i64 56]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3288, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3291, i32 42 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3293, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3297, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3302, i32 42 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3304, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3309, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3316, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3324, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3339, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3345, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3346, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3347, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3349, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3350, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3372, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3427, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3438, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3452, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3459, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3486, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3222, i32 63 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3226, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3227, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3230, i32 32 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3233, i32 32 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3235, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3238, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3093, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3121, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3126, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3148, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3172, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3177, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3199, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1872, i32 44 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 204, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3033, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3041, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3050, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant [17 x i8] c"dw_mci_idmac_ops\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 765, i32 36 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3057, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3060, i32 47 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3062, i32 37 }
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"dw_mci_edmac_ops\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 868, i32 36 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3066, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3072, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3077, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3084, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 645, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 719, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 843, i32 46 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 847, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [5 x i8] c"mszs\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 784, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 809, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 817, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1314, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 248, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 231, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1133, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2019, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1985, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1776, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1788, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant [11 x i8] c"dw_mci_ops\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1808, i32 34 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1399, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1612, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1588, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2882, i32 49 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 2891, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 964, i32 5 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 967, i32 5 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 982, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 985, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 179, i32 22 }
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"dw_mci_regs_fops\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 167, i32 1 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 180, i32 22 }
@___asan_gen_.632 = private unnamed_addr constant [16 x i8] c"dw_mci_req_fops\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 148, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 181, i32 21 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 182, i32 21 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 184, i32 21 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 187, i32 28 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 156, i32 16 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 157, i32 16 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 158, i32 16 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 159, i32 16 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 160, i32 16 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 161, i32 16 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 128, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 133, i32 18 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1490, i32 5 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1506, i32 6 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1238, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.702 = private constant [29 x i8] c"../drivers/mmc/host/dw_mmc.c\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 3599, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [26 x i8] c"switch.table.dw_mci_probe\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [30 x i8] c"switch.table.dw_mci_probe.170\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [30 x i8] c"switch.table.dw_mci_probe.171\00", align 1
@llvm.compiler.used = appending global [228 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_dw_mci_exit, ptr @__initcall__kmod_dw_mmc__326_3607_dw_mci_init6, ptr @__ksymtab_dw_mci_probe, ptr @__ksymtab_dw_mci_remove, ptr @__ksymtab_dw_mci_runtime_resume, ptr @__ksymtab_dw_mci_runtime_suspend, ptr @dw_mci_cmd11_timer._entry, ptr @dw_mci_cmd11_timer._entry_ptr, ptr @dw_mci_cto_timer._entry, ptr @dw_mci_cto_timer._entry.57, ptr @dw_mci_cto_timer._entry.60, ptr @dw_mci_cto_timer._entry_ptr, ptr @dw_mci_cto_timer._entry_ptr.59, ptr @dw_mci_cto_timer._entry_ptr.62, ptr @dw_mci_ctrl_reset._entry, ptr @dw_mci_ctrl_reset._entry_ptr, ptr @dw_mci_dto_timer._entry, ptr @dw_mci_dto_timer._entry.65, ptr @dw_mci_dto_timer._entry.68, ptr @dw_mci_dto_timer._entry_ptr, ptr @dw_mci_dto_timer._entry_ptr.67, ptr @dw_mci_dto_timer._entry_ptr.70, ptr @dw_mci_edmac_init._entry, ptr @dw_mci_edmac_init._entry_ptr, ptr @dw_mci_edmac_start_dma._entry, ptr @dw_mci_edmac_start_dma._entry.107, ptr @dw_mci_edmac_start_dma._entry_ptr, ptr @dw_mci_edmac_start_dma._entry_ptr.109, ptr @dw_mci_exit, ptr @dw_mci_get_cd._entry, ptr @dw_mci_get_cd._entry.142, ptr @dw_mci_get_cd._entry_ptr, ptr @dw_mci_get_cd._entry_ptr.144, ptr @dw_mci_init._entry, ptr @dw_mci_init._entry_ptr, ptr @dw_mci_init_dma._entry, ptr @dw_mci_init_dma._entry.76, ptr @dw_mci_init_dma._entry.79, ptr @dw_mci_init_dma._entry.82, ptr @dw_mci_init_dma._entry.87, ptr @dw_mci_init_dma._entry.90, ptr @dw_mci_init_dma._entry.93, ptr @dw_mci_init_dma._entry.96, ptr @dw_mci_init_dma._entry_ptr, ptr @dw_mci_init_dma._entry_ptr.78, ptr @dw_mci_init_dma._entry_ptr.81, ptr @dw_mci_init_dma._entry_ptr.84, ptr @dw_mci_init_dma._entry_ptr.89, ptr @dw_mci_init_dma._entry_ptr.92, ptr @dw_mci_init_dma._entry_ptr.95, ptr @dw_mci_init_dma._entry_ptr.98, ptr @dw_mci_init_slot_caps._entry, ptr @dw_mci_init_slot_caps._entry_ptr, ptr @dw_mci_parse_dt._entry, ptr @dw_mci_parse_dt._entry_ptr, ptr @dw_mci_probe._entry, ptr @dw_mci_probe._entry.11, ptr @dw_mci_probe._entry.14, ptr @dw_mci_probe._entry.18, ptr @dw_mci_probe._entry.21, ptr @dw_mci_probe._entry.34, ptr @dw_mci_probe._entry.39, ptr @dw_mci_probe._entry_ptr, ptr @dw_mci_probe._entry_ptr.13, ptr @dw_mci_probe._entry_ptr.17, ptr @dw_mci_probe._entry_ptr.20, ptr @dw_mci_probe._entry_ptr.23, ptr @dw_mci_probe._entry_ptr.37, ptr @dw_mci_probe._entry_ptr.41, ptr @dw_mci_queue_request._entry, ptr @dw_mci_queue_request._entry_ptr, ptr @dw_mci_reset._entry, ptr @dw_mci_reset._entry.124, ptr @dw_mci_reset._entry_ptr, ptr @dw_mci_reset._entry_ptr.126, ptr @dw_mci_set_ios._entry, ptr @dw_mci_set_ios._entry.163, ptr @dw_mci_set_ios._entry_ptr, ptr @dw_mci_set_ios._entry_ptr.165, ptr @dw_mci_setup_bus._entry, ptr @dw_mci_setup_bus._entry_ptr, ptr @dw_mci_wait_while_busy._entry, ptr @dw_mci_wait_while_busy._entry_ptr, ptr @mci_send_cmd._entry, ptr @mci_send_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @dw_mci_probe.__key, ptr @.str.24, ptr @dw_mci_probe.__key.25, ptr @.str.26, ptr @dw_mci_probe.__key.27, ptr @.str.28, ptr @dw_mci_probe.__key.29, ptr @.str.30, ptr @dw_mci_probe.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @dw_mci_idmac_ops, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @dw_mci_edmac_ops, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @dw_mci_edmac_start_dma.mszs, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @dw_mci_ops, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @dw_mci_regs_fops, ptr @.str.148, ptr @dw_mci_req_fops, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @switch.table.dw_mci_probe, ptr @switch.table.dw_mci_probe.170, ptr @switch.table.dw_mci_probe.171], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_cmd11_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_cto_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_cto_timer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_cto_timer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_dto_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_dto_timer._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_dto_timer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_ctrl_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_idmac_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_edmac_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_dma._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_edmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_edmac_start_dma.mszs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_edmac_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_edmac_start_dma._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_wait_while_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_reset._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_queue_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init_slot_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_get_cd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_get_cd._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_req_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_set_ios._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_setup_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mci_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mci_probe.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mci_probe.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mci_probe(ptr noundef %host) #0 align 64 {
entry:
  %clock_frequency.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %pdata = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_frequency.i) #11
  %6 = ptrtoint ptr %clock_frequency.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %clock_frequency.i, align 4, !annotation !353
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dw_mci_parse_dt.exit.thread, label %if.end.i

dw_mci_parse_dt.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_frequency.i) #11
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -12 to ptr), ptr %pdata, align 8
  br label %if.then5

if.end.i:                                         ; preds = %if.then
  %call.i60.i = tail call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull @.str.45, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %rstc.i = getelementptr inbounds %struct.dw_mci_board, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %rstc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i60.i, ptr %rstc.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i60.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.dw_mci_parse_dt.exit_crit_edge, label %if.end10.i

if.end.i.dw_mci_parse_dt.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_parse_dt.exit

if.end10.i:                                       ; preds = %if.end.i
  %fifo_depth.i = getelementptr inbounds %struct.dw_mci_board, ptr %call.i.i, i32 0, i32 4
  %call.i61.i = tail call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.46, ptr noundef %fifo_depth.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool12.not.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %do.end.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.47) #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end10.i.if.end14.i_crit_edge
  %detect_delay_ms.i = getelementptr inbounds %struct.dw_mci_board, ptr %call.i.i, i32 0, i32 5
  %call.i62.i = tail call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef %detect_delay_ms.i, i32 noundef 1) #11
  %data_addr_override.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 4
  %call.i63.i = tail call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.50, ptr noundef %data_addr_override.i, i32 noundef 1) #11
  %call17.i = tail call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.51) #11
  br i1 %call17.i, label %if.then18.i, label %if.end14.i.if.end19.i_crit_edge

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %wm_aligned.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 5
  %9 = ptrtoint ptr %wm_aligned.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %wm_aligned.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end19.i_crit_edge
  %call.i64.i = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull %clock_frequency.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool21.not.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end23.i_crit_edge

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %clock_frequency.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clock_frequency.i, align 4
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end23.i_crit_edge
  %tobool24.not.i = icmp eq ptr %1, null
  br i1 %tobool24.not.i, label %if.end23.i.dw_mci_parse_dt.exit_crit_edge, label %land.lhs.true.i

if.end23.i.dw_mci_parse_dt.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_parse_dt.exit

land.lhs.true.i:                                  ; preds = %if.end23.i
  %parse_dt.i = getelementptr inbounds %struct.dw_mci_drv_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %parse_dt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parse_dt.i, align 4
  %tobool25.not.i = icmp eq ptr %14, null
  br i1 %tobool25.not.i, label %land.lhs.true.i.dw_mci_parse_dt.exit_crit_edge, label %if.then26.i

land.lhs.true.i.dw_mci_parse_dt.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_parse_dt.exit

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i = call i32 %14(ptr noundef %host) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  %15 = inttoptr i32 %call28.i to ptr
  %spec.select.i = select i1 %tobool29.not.i, ptr %call.i.i, ptr %15
  br label %dw_mci_parse_dt.exit

dw_mci_parse_dt.exit:                             ; preds = %if.then26.i, %land.lhs.true.i.dw_mci_parse_dt.exit_crit_edge, %if.end23.i.dw_mci_parse_dt.exit_crit_edge, %if.end.i.dw_mci_parse_dt.exit_crit_edge
  %retval.0.i431 = phi ptr [ %call.i.i, %land.lhs.true.i.dw_mci_parse_dt.exit_crit_edge ], [ %call.i.i, %if.end23.i.dw_mci_parse_dt.exit_crit_edge ], [ %call.i60.i, %if.end.i.dw_mci_parse_dt.exit_crit_edge ], [ %spec.select.i, %if.then26.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_frequency.i) #11
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i431, ptr %pdata, align 8
  %cmp.i = icmp ugt ptr %retval.0.i431, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dw_mci_parse_dt.exit.if.then5_crit_edge, label %dw_mci_parse_dt.exit.if.end9_crit_edge

dw_mci_parse_dt.exit.if.end9_crit_edge:           ; preds = %dw_mci_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

dw_mci_parse_dt.exit.if.then5_crit_edge:          ; preds = %dw_mci_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %dw_mci_parse_dt.exit.if.then5_crit_edge, %dw_mci_parse_dt.exit.thread
  %retval.0.i431452 = phi ptr [ inttoptr (i32 -12 to ptr), %dw_mci_parse_dt.exit.thread ], [ %retval.0.i431, %dw_mci_parse_dt.exit.if.then5_crit_edge ]
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %retval.0.i431452 to i32
  %call8 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end9:                                          ; preds = %dw_mci_parse_dt.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %20 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev10, align 4
  %call11 = call ptr @devm_clk_get(ptr noundef %21, ptr noundef nonnull @.str.1) #11
  %biu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 40
  %22 = ptrtoint ptr %biu_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11, ptr %biu_clk, align 4
  %cmp.i432 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i432, label %do.body, label %if.else

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_probe.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_probe, %if.then19)) #11
          to label %if.end31 [label %if.then19], !srcloc !354

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_probe.__UNIQUE_ID_ddebug322, ptr noundef %24, ptr noundef nonnull @.str.5) #11
  br label %if.end31

if.else:                                          ; preds = %if.end9
  %call.i = call i32 @clk_prepare(ptr noundef %call11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i433 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i433, label %if.end.i434, label %if.else.do.end28_crit_edge

if.else.do.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.end.i434:                                      ; preds = %if.else
  %call1.i = call i32 @clk_enable(ptr noundef %call11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i434.if.end31_crit_edge, label %if.then3.i

if.end.i434.if.end31_crit_edge:                   ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i434
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call11) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then3.i, %if.else.do.end28_crit_edge
  %retval.0.i435.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.else.do.end28_crit_edge ]
  %25 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end31:                                         ; preds = %if.end.i434.if.end31_crit_edge, %if.then19, %do.body
  %27 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev10, align 4
  %call33 = call ptr @devm_clk_get(ptr noundef %28, ptr noundef nonnull @.str.9) #11
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %29 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call33, ptr %ciu_clk, align 8
  %cmp.i436 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i436, label %do.body37, label %if.else56

do.body37:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_probe.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_probe, %if.then49)) #11
          to label %do.end53 [label %if.then49], !srcloc !354

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_probe.__UNIQUE_ID_ddebug323, ptr noundef %31, ptr noundef nonnull @.str.10) #11
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body37
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %if.end87

if.else56:                                        ; preds = %if.end31
  %call.i437 = call i32 @clk_prepare(ptr noundef %call33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i437)
  %tobool.not.i438 = icmp eq i32 %call.i437, 0
  br i1 %tobool.not.i438, label %if.end.i441, label %if.else56.do.end63_crit_edge

if.else56.do.end63_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

if.end.i441:                                      ; preds = %if.else56
  %call1.i439 = call i32 @clk_enable(ptr noundef %call33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i439)
  %tobool2.not.i440 = icmp eq i32 %call1.i439, 0
  br i1 %tobool2.not.i440, label %if.end65, label %if.then3.i442

if.then3.i442:                                    ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #13
  call void @clk_unprepare(ptr noundef %call33) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then3.i442, %if.else56.do.end63_crit_edge
  %retval.0.i443.ph = phi i32 [ %call1.i439, %if.then3.i442 ], [ %call.i437, %if.else56.do.end63_crit_edge ]
  %36 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.12) #14
  br label %err_clk_biu

if.end65:                                         ; preds = %if.end.i441
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool68.not = icmp eq i32 %41, 0
  br i1 %tobool68.not, label %if.end65.if.end83_crit_edge, label %if.then69

if.end65.if.end83_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then69:                                        ; preds = %if.end65
  %42 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ciu_clk, align 8
  %call73 = call i32 @clk_set_rate(ptr noundef %43, i32 noundef %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then69.if.end83_crit_edge, label %do.end78

if.then69.if.end83_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

do.end78:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev10, align 4
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.15, i32 noundef %49) #14
  br label %if.end83

if.end83:                                         ; preds = %do.end78, %if.then69.if.end83_crit_edge, %if.end65.if.end83_crit_edge
  %50 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ciu_clk, align 8
  %call85 = call i32 @clk_get_rate(ptr noundef %51) #11
  br label %if.end87

if.end87:                                         ; preds = %if.end83, %do.end53
  %call85.sink = phi i32 [ %call85, %if.end83 ], [ %35, %do.end53 ]
  %bus_hz86 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %52 = ptrtoint ptr %bus_hz86 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call85.sink, ptr %bus_hz86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.sink)
  %tobool89.not = icmp eq i32 %call85.sink, 0
  br i1 %tobool89.not, label %do.end93, label %if.end95

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.19) #14
  br label %err_clk_ciu

if.end95:                                         ; preds = %if.end87
  %55 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdata, align 8
  %rstc = getelementptr inbounds %struct.dw_mci_board, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rstc, align 4
  %tobool97.not = icmp eq ptr %58, null
  br i1 %tobool97.not, label %if.end95.if.end105_crit_edge, label %if.then98

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %call101 = call i32 @reset_control_assert(ptr noundef nonnull %58) #11
  call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #11
  %59 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata, align 8
  %rstc103 = getelementptr inbounds %struct.dw_mci_board, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %rstc103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rstc103, align 4
  %call104 = call i32 @reset_control_deassert(ptr noundef %62) #11
  br label %if.end105

if.end105:                                        ; preds = %if.then98, %if.end95.if.end105_crit_edge
  %tobool106.not = icmp eq ptr %1, null
  br i1 %tobool106.not, label %if.end105.do.body119_crit_edge, label %land.lhs.true

if.end105.do.body119_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119

land.lhs.true:                                    ; preds = %if.end105
  %init = getelementptr inbounds %struct.dw_mci_drv_data, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init, align 4
  %tobool107.not = icmp eq ptr %64, null
  br i1 %tobool107.not, label %land.lhs.true.do.body119_crit_edge, label %if.then108

land.lhs.true.do.body119_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119

if.then108:                                       ; preds = %land.lhs.true
  %call110 = call i32 %64(ptr noundef %host) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then108.do.body119_crit_edge, label %do.end115

if.then108.do.body119_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body119

do.end115:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.22) #14
  br label %err_clk_ciu

do.body119:                                       ; preds = %if.then108.do.body119_crit_edge, %land.lhs.true.do.body119_crit_edge, %if.end105.do.body119_crit_edge
  %cmd11_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 55
  call void @init_timer_key(ptr noundef %cmd11_timer, ptr noundef nonnull @dw_mci_cmd11_timer, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @dw_mci_probe.__key) #11
  %cto_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 56
  call void @init_timer_key(ptr noundef %cto_timer, ptr noundef nonnull @dw_mci_cto_timer, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @dw_mci_probe.__key.25) #11
  %dto_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 57
  call void @init_timer_key(ptr noundef %dto_timer, ptr noundef nonnull @dw_mci_dto_timer, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @dw_mci_probe.__key.27) #11
  call void @__raw_spin_lock_init(ptr noundef %host, ptr noundef nonnull @.str.30, ptr noundef nonnull @dw_mci_probe.__key.29, i16 noundef signext 3) #11
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @dw_mci_probe.__key.31, i16 noundef signext 3) #11
  %queue = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 31
  %67 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 31, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %queue, ptr %prev.i, align 4
  %fail_data_crc.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58
  %69 = ptrtoint ptr %fail_data_crc.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %fail_data_crc.i, align 4
  %.compoundliteral.sroa.2.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 1
  %70 = ptrtoint ptr %.compoundliteral.sroa.2.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %.compoundliteral.sroa.2.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 2
  %71 = ptrtoint ptr %.compoundliteral.sroa.3.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %.compoundliteral.sroa.3.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 3
  %72 = ptrtoint ptr %.compoundliteral.sroa.4.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %.compoundliteral.sroa.4.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 4
  %73 = ptrtoint ptr %.compoundliteral.sroa.5.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %.compoundliteral.sroa.5.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 5
  %74 = ptrtoint ptr %.compoundliteral.sroa.6.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %.compoundliteral.sroa.6.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.73.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 6
  %75 = ptrtoint ptr %.compoundliteral.sroa.73.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32, ptr %.compoundliteral.sroa.73.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 7
  %76 = ptrtoint ptr %.compoundliteral.sroa.8.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %.compoundliteral.sroa.8.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.9.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 8
  %77 = ptrtoint ptr %.compoundliteral.sroa.9.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %.compoundliteral.sroa.9.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 9
  %.compoundliteral.sroa.14.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 1
  %78 = call ptr @memset(ptr %.compoundliteral.sroa.10.0.fail_data_crc.sroa_idx.i, i32 0, i32 16)
  %79 = ptrtoint ptr %.compoundliteral.sroa.14.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -559067475, ptr %.compoundliteral.sroa.14.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.15.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 2
  %80 = ptrtoint ptr %.compoundliteral.sroa.15.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %.compoundliteral.sroa.15.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.16.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 3
  %81 = ptrtoint ptr %.compoundliteral.sroa.16.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.16.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.17.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 4
  %82 = call ptr @memset(ptr %.compoundliteral.sroa.17.0.fail_data_crc.sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.18.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %.compoundliteral.sroa.18.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.71, ptr %.compoundliteral.sroa.18.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.19.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 4, i32 3
  %84 = ptrtoint ptr %.compoundliteral.sroa.19.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %.compoundliteral.sroa.19.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.194.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 4, i32 4
  %85 = ptrtoint ptr %.compoundliteral.sroa.194.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %.compoundliteral.sroa.194.0.fail_data_crc.sroa_idx.i, align 1
  %.compoundliteral.sroa.20.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 0, i32 4, i32 5
  %.compoundliteral.sroa.21.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 2
  %86 = call ptr @memset(ptr %.compoundliteral.sroa.20.0.fail_data_crc.sroa_idx.i, i32 0, i32 14)
  %87 = ptrtoint ptr %.compoundliteral.sroa.21.0.fail_data_crc.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 10, ptr %.compoundliteral.sroa.21.0.fail_data_crc.sroa_idx.i, align 4
  %.compoundliteral.sroa.22.0.fail_data_crc.sroa_idx.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58, i32 12, i32 3
  %fault_timer.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 59
  %88 = call ptr @memset(ptr %.compoundliteral.sroa.22.0.fail_data_crc.sroa_idx.i, i32 0, i32 20)
  call void @hrtimer_init(ptr noundef %fault_timer.i, i32 noundef 1, i32 noundef 1) #11
  %function.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 59, i32 2
  %89 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @dw_mci_fault_timer, ptr %function.i, align 8
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %91, i32 112
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %shr = lshr i32 %93, 7
  %and = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %94 = icmp ult i32 %and, 3
  br i1 %94, label %switch.lookup, label %do.end162

do.end162:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 3374, i32 noundef 9, ptr noundef nonnull @.str.33) #11
  br label %if.end180

switch.lookup:                                    ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dw_mci_probe, i32 0, i32 %and
  %95 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep462 = getelementptr inbounds [3 x ptr], ptr @switch.table.dw_mci_probe.170, i32 0, i32 %and
  %96 = ptrtoint ptr %switch.gep462 to i32
  call void @__asan_load4_noabort(i32 %96)
  %switch.load463 = load ptr, ptr %switch.gep462, align 4
  %switch.offset = add nuw nsw i32 %and, 1
  %switch.gep464 = getelementptr inbounds [3 x i32], ptr @switch.table.dw_mci_probe.171, i32 0, i32 %and
  %97 = ptrtoint ptr %switch.gep464 to i32
  call void @__asan_load4_noabort(i32 %97)
  %switch.load465 = load i32, ptr %switch.gep464, align 4
  br label %if.end180

if.end180:                                        ; preds = %switch.lookup, %do.end162
  %dw_mci_push_data64.sink = phi ptr [ @dw_mci_push_data32, %do.end162 ], [ %switch.load, %switch.lookup ]
  %dw_mci_pull_data64.sink = phi ptr [ @dw_mci_pull_data32, %do.end162 ], [ %switch.load463, %switch.lookup ]
  %.sink = phi i32 [ 2, %do.end162 ], [ %switch.offset, %switch.lookup ]
  %width.0 = phi i32 [ 32, %do.end162 ], [ %switch.load465, %switch.lookup ]
  %push_data142 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 48
  %98 = ptrtoint ptr %push_data142 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %dw_mci_push_data64.sink, ptr %push_data142, align 8
  %pull_data143 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 49
  %99 = ptrtoint ptr %pull_data143 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dw_mci_pull_data64.sink, ptr %pull_data143, align 4
  %data_shift144 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %100 = ptrtoint ptr %data_shift144 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %.sink, ptr %data_shift144, align 4
  %call181 = call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %host, i32 noundef 7)
  br i1 %call181, label %if.end183, label %if.end180.err_clk_ciu_crit_edge

if.end180.err_clk_ciu_crit_edge:                  ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_clk_ciu

if.end183:                                        ; preds = %if.end180
  %101 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdata, align 8
  %dma_ops = getelementptr inbounds %struct.dw_mci_board, ptr %102, i32 0, i32 7
  %103 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma_ops, align 4
  %dma_ops185 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 19
  %105 = ptrtoint ptr %dma_ops185 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %dma_ops185, align 8
  %106 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev10, align 4
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %109, i32 112
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %111 = lshr i32 %110, 8
  %and.i = and i32 %111, 3
  %use_dma.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %112 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and.i, ptr %use_dma.i, align 4
  %113 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end183.do.end94.i_crit_edge [
    i32 0, label %if.then14.critedge.i
    i32 1, label %if.end183.if.else52.critedge.i_crit_edge
    i32 2, label %if.end183.if.else52.critedge.i_crit_edge466
  ]

if.end183.if.else52.critedge.i_crit_edge466:      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else52.critedge.i

if.end183.if.else52.critedge.i_crit_edge:         ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else52.critedge.i

if.end183.do.end94.i_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94.i

if.then14.critedge.i:                             ; preds = %if.end183
  %114 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %use_dma.i, align 4
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 8
  %add.ptr17.i = getelementptr i8, ptr %116, i32 112
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #11, !srcloc !355
  %118 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp22.not.i = icmp eq i32 %118, 0
  %dma_64bit_address32.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 16
  br i1 %cmp22.not.i, label %if.else31.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then14.critedge.i
  %119 = ptrtoint ptr %dma_64bit_address32.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %dma_64bit_address32.i, align 4
  %120 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %121, ptr noundef nonnull @.str.74) #14
  %122 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev10, align 4
  %call26.i = call i32 @dma_set_mask(ptr noundef %123, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not.i446 = icmp eq i32 %call26.i, 0
  br i1 %tobool.not.i446, label %if.then27.i, label %if.then23.i.if.end37.i_crit_edge

if.then23.i.if.end37.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then27.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev10, align 4
  %call29.i = call i32 @dma_set_coherent_mask(ptr noundef %125, i64 noundef -1) #11
  br label %if.end37.i

if.else31.i:                                      ; preds = %if.then14.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %dma_64bit_address32.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %dma_64bit_address32.i, align 4
  %127 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.77) #14
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else31.i, %if.then27.i, %if.then23.i.if.end37.i_crit_edge
  %129 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev10, align 4
  %sg_dma.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  %call.i.i447 = call ptr @dmam_alloc_attrs(ptr noundef %130, i32 noundef 4096, ptr noundef %sg_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %sg_cpu.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 18
  %131 = ptrtoint ptr %sg_cpu.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i.i447, ptr %sg_cpu.i, align 4
  %tobool41.not.i = icmp eq ptr %call.i.i447, null
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end37.i.if.end64.i_crit_edge

if.end37.i.if.end64.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

do.end45.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75) #14
  br label %do.end94.i

if.else52.critedge.i:                             ; preds = %if.end183.if.else52.critedge.i_crit_edge, %if.end183.if.else52.critedge.i_crit_edge466
  %134 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %use_dma.i, align 4
  %call53.i = call i32 @device_property_read_string_array(ptr noundef %107, ptr noundef nonnull @.str.85, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.else52.critedge.i.do.end94.i_crit_edge, label %lor.lhs.false55.i

if.else52.critedge.i.do.end94.i_crit_edge:        ; preds = %if.else52.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94.i

lor.lhs.false55.i:                                ; preds = %if.else52.critedge.i
  %call56.i = call zeroext i1 @device_property_present(ptr noundef %107, ptr noundef nonnull @.str.86) #11
  br i1 %call56.i, label %lor.lhs.false55.i.if.end64.i_crit_edge, label %lor.lhs.false55.i.do.end94.i_crit_edge

lor.lhs.false55.i.do.end94.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end94.i

lor.lhs.false55.i.if.end64.i_crit_edge:           ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

if.end64.i:                                       ; preds = %lor.lhs.false55.i.if.end64.i_crit_edge, %if.end37.i.if.end64.i_crit_edge
  %dw_mci_edmac_ops.sink.i = phi ptr [ @dw_mci_idmac_ops, %if.end37.i.if.end64.i_crit_edge ], [ @dw_mci_edmac_ops, %lor.lhs.false55.i.if.end64.i_crit_edge ]
  %.str.88.sink.i = phi ptr [ @.str.83, %if.end37.i.if.end64.i_crit_edge ], [ @.str.88, %lor.lhs.false55.i.if.end64.i_crit_edge ]
  %135 = ptrtoint ptr %dma_ops185 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %dw_mci_edmac_ops.sink.i, ptr %dma_ops185, align 8
  %136 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull %.str.88.sink.i) #14
  %138 = ptrtoint ptr %dma_ops185 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dma_ops185, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %tobool66.not.i = icmp eq ptr %141, null
  br i1 %tobool66.not.i, label %if.end64.i.do.end89.i_crit_edge, label %land.lhs.true.i448

if.end64.i.do.end89.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89.i

land.lhs.true.i448:                               ; preds = %if.end64.i
  %start.i = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %139, i32 0, i32 1
  %142 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %start.i, align 4
  %tobool68.not.i = icmp eq ptr %143, null
  br i1 %tobool68.not.i, label %land.lhs.true.i448.do.end89.i_crit_edge, label %land.lhs.true69.i

land.lhs.true.i448.do.end89.i_crit_edge:          ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89.i

land.lhs.true69.i:                                ; preds = %land.lhs.true.i448
  %stop.i = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %139, i32 0, i32 3
  %144 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %stop.i, align 4
  %tobool71.not.i = icmp eq ptr %145, null
  br i1 %tobool71.not.i, label %land.lhs.true69.i.do.end89.i_crit_edge, label %land.lhs.true72.i

land.lhs.true69.i.do.end89.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89.i

land.lhs.true72.i:                                ; preds = %land.lhs.true69.i
  %cleanup.i = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %139, i32 0, i32 4
  %146 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cleanup.i, align 4
  %tobool74.not.i = icmp eq ptr %147, null
  br i1 %tobool74.not.i, label %land.lhs.true72.i.do.end89.i_crit_edge, label %if.then75.i

land.lhs.true72.i.do.end89.i_crit_edge:           ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end89.i

if.then75.i:                                      ; preds = %land.lhs.true72.i
  %call78.i = call i32 %141(ptr noundef %host) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.then75.i.dw_mci_init_dma.exit_crit_edge, label %do.end83.i

if.then75.i.dw_mci_init_dma.exit_crit_edge:       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_init_dma.exit

do.end83.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.75) #14
  br label %do.end94.i

do.end89.i:                                       ; preds = %land.lhs.true72.i.do.end89.i_crit_edge, %land.lhs.true69.i.do.end89.i_crit_edge, %land.lhs.true.i448.do.end89.i_crit_edge, %if.end64.i.do.end89.i_crit_edge
  %150 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.94) #14
  br label %do.end94.i

do.end94.i:                                       ; preds = %do.end89.i, %do.end83.i, %lor.lhs.false55.i.do.end94.i_crit_edge, %if.else52.critedge.i.do.end94.i_crit_edge, %do.end45.i, %if.end183.do.end94.i_crit_edge
  %152 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %153, ptr noundef nonnull @.str.97) #14
  %154 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %use_dma.i, align 4
  br label %dw_mci_init_dma.exit

dw_mci_init_dma.exit:                             ; preds = %do.end94.i, %if.then75.i.dw_mci_init_dma.exit_crit_edge
  %155 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs, align 8
  %add.ptr187 = getelementptr i8, ptr %156, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 -1) #11, !srcloc !356
  %157 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs, align 8
  %add.ptr189 = getelementptr i8, ptr %158, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr189, i32 0) #11, !srcloc !356
  %159 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs, align 8
  %add.ptr191 = getelementptr i8, ptr %160, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 -1) #11, !srcloc !356
  %161 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdata, align 8
  %fifo_depth = getelementptr inbounds %struct.dw_mci_board, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool193.not = icmp eq i32 %164, 0
  br i1 %tobool193.not, label %if.then194, label %dw_mci_init_dma.exit.if.end205_crit_edge

dw_mci_init_dma.exit.if.end205_crit_edge:         ; preds = %dw_mci_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then194:                                       ; preds = %dw_mci_init_dma.exit
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs, align 8
  %add.ptr197 = getelementptr i8, ptr %166, i32 76
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #11, !srcloc !355
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  %shr200 = lshr i32 %168, 16
  %and201 = and i32 %shr200, 4095
  %add = add nuw nsw i32 %and201, 1
  br label %if.end205

if.end205:                                        ; preds = %if.then194, %dw_mci_init_dma.exit.if.end205_crit_edge
  %fifo_size.0 = phi i32 [ %add, %if.then194 ], [ %164, %dw_mci_init_dma.exit.if.end205_crit_edge ]
  %fifo_depth206 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 43
  %169 = ptrtoint ptr %fifo_depth206 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %fifo_size.0, ptr %fifo_depth206, align 8
  %div424 = lshr i32 %fifo_size.0, 1
  %sub = shl i32 %div424, 16
  %and207 = add i32 %sub, 268369920
  %shl = and i32 %and207, 268369920
  %and209 = and i32 %div424, 4095
  %or = or i32 %and209, %shl
  %or210 = or i32 %or, 536870912
  %fifoth_val = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 34
  %170 = ptrtoint ptr %fifoth_val to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or210, ptr %fifoth_val, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %or210)
  %172 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs, align 8
  %add.ptr213 = getelementptr i8, ptr %173, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %171) #11, !srcloc !356
  %174 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs, align 8
  %add.ptr215 = getelementptr i8, ptr %175, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 0) #11, !srcloc !356
  %176 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs, align 8
  %add.ptr217 = getelementptr i8, ptr %177, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 0) #11, !srcloc !356
  %178 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs, align 8
  %add.ptr220 = getelementptr i8, ptr %179, i32 108
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #11, !srcloc !355
  %181 = and i32 %180, -65536
  %182 = call i32 @llvm.bswap.i32(i32 %181)
  %conv = trunc i32 %182 to i16
  %verid = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 35
  %183 = ptrtoint ptr %verid to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv, ptr %verid, align 8
  %184 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.35, i32 noundef %182) #14
  %data_addr_override = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 4
  %186 = ptrtoint ptr %data_addr_override to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data_addr_override, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool230.not = icmp eq i32 %187, 0
  br i1 %tobool230.not, label %if.else235, label %if.then231

if.then231:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs, align 8
  %add.ptr234 = getelementptr i8, ptr %189, i32 %187
  br label %if.end249

if.else235:                                       ; preds = %if.end205
  %190 = ptrtoint ptr %verid to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %verid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9226, i16 %191)
  %cmp238 = icmp ult i16 %191, 9226
  %192 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs, align 8
  br i1 %cmp238, label %if.then240, label %if.else244

if.then240:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr242 = getelementptr i8, ptr %193, i32 256
  br label %if.end249

if.else244:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr246 = getelementptr i8, ptr %193, i32 512
  br label %if.end249

if.end249:                                        ; preds = %if.else244, %if.then240, %if.then231
  %add.ptr242.sink = phi ptr [ %add.ptr242, %if.then240 ], [ %add.ptr246, %if.else244 ], [ %add.ptr234, %if.then231 ]
  %fifo_reg243 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %194 = ptrtoint ptr %fifo_reg243 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %add.ptr242.sink, ptr %fifo_reg243, align 4
  %tasklet = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 27
  call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @dw_mci_tasklet_func) #11
  %195 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev10, align 4
  %irq = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 53
  %197 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %irq, align 4
  %irq_flags = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 52
  %199 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %irq_flags, align 8
  %call.i449 = call i32 @devm_request_threaded_irq(ptr noundef %196, i32 noundef %198, ptr noundef nonnull @dw_mci_interrupt, ptr noundef null, i32 noundef %200, ptr noundef nonnull @.str.38, ptr noundef %host) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449)
  %tobool252.not = icmp eq i32 %call.i449, 0
  br i1 %tobool252.not, label %if.end254, label %if.end249.err_dmaunmap_crit_edge

if.end249.err_dmaunmap_crit_edge:                 ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dmaunmap

if.end254:                                        ; preds = %if.end249
  %201 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs, align 8
  %add.ptr256 = getelementptr i8, ptr %202, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr256, i32 -21561344) #11, !srcloc !356
  %203 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 268435456) #11, !srcloc !356
  %205 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev10, align 4
  %207 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %206, ptr noundef nonnull @.str.40, i32 noundef %208, i32 noundef %width.0, i32 noundef %fifo_size.0) #14
  %call264 = call fastcc i32 @dw_mci_init_slot(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool265.not = icmp eq i32 %call264, 0
  br i1 %tobool265.not, label %if.end284, label %do.body267

do.body267:                                       ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_probe, %if.then279)) #11
          to label %err_dmaunmap [label %if.then279], !srcloc !354

if.then279:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_probe.__UNIQUE_ID_ddebug324, ptr noundef %210, ptr noundef nonnull @.str.42, i32 noundef %and) #11
  br label %err_dmaunmap

if.end284:                                        ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @dw_mci_enable_cd(ptr noundef %host)
  br label %cleanup

err_dmaunmap:                                     ; preds = %if.then279, %do.body267, %if.end249.err_dmaunmap_crit_edge
  %ret.0 = phi i32 [ %call.i449, %if.end249.err_dmaunmap_crit_edge ], [ %call264, %if.then279 ], [ %call264, %do.body267 ]
  %211 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool285.not = icmp eq i32 %212, 0
  br i1 %tobool285.not, label %err_dmaunmap.if.end292_crit_edge, label %land.lhs.true286

err_dmaunmap.if.end292_crit_edge:                 ; preds = %err_dmaunmap
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end292

land.lhs.true286:                                 ; preds = %err_dmaunmap
  %213 = ptrtoint ptr %dma_ops185 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dma_ops185, align 8
  %exit = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %214, i32 0, i32 5
  %215 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %exit, align 4
  %tobool288.not = icmp eq ptr %216, null
  br i1 %tobool288.not, label %land.lhs.true286.if.end292_crit_edge, label %if.then289

land.lhs.true286.if.end292_crit_edge:             ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end292

if.then289:                                       ; preds = %land.lhs.true286
  call void @__sanitizer_cov_trace_pc() #13
  call void %216(ptr noundef %host) #11
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %land.lhs.true286.if.end292_crit_edge, %err_dmaunmap.if.end292_crit_edge
  %217 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pdata, align 8
  %rstc294 = getelementptr inbounds %struct.dw_mci_board, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %rstc294 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rstc294, align 4
  %call295 = call i32 @reset_control_assert(ptr noundef %220) #11
  br label %err_clk_ciu

err_clk_ciu:                                      ; preds = %if.end292, %if.end180.err_clk_ciu_crit_edge, %do.end115, %do.end93
  %ret.1 = phi i32 [ %call110, %do.end115 ], [ %ret.0, %if.end292 ], [ -19, %do.end93 ], [ -19, %if.end180.err_clk_ciu_crit_edge ]
  %221 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ciu_clk, align 8
  call void @clk_disable(ptr noundef %222) #11
  call void @clk_unprepare(ptr noundef %222) #11
  br label %err_clk_biu

err_clk_biu:                                      ; preds = %err_clk_ciu, %do.end63
  %ret.2 = phi i32 [ %ret.1, %err_clk_ciu ], [ %retval.0.i443.ph, %do.end63 ]
  %223 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %biu_clk, align 4
  call void @clk_disable(ptr noundef %224) #11
  call void @clk_unprepare(ptr noundef %224) #11
  br label %cleanup

cleanup:                                          ; preds = %err_clk_biu, %if.end284, %do.end28, %if.then5
  %retval.0 = phi i32 [ %ret.2, %err_clk_biu ], [ 0, %if.end284 ], [ %retval.0.i435.ph, %do.end28 ], [ %call8, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_cmd11_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %t, i32 -108
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %t, i32 -80
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.53) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_status = getelementptr i8, ptr %t, i32 -156
  %4 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %cmd_status, align 8
  %pending_events = getelementptr i8, ptr %t, i32 -116
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_events) #11
  %state.i = getelementptr i8, ptr %t, i32 -136
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr i8, ptr %t, i32 -140
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_cto_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %t, i32 -416
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %regs = getelementptr i8, ptr %t, i32 -372
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !355
  %3 = and i32 %2, 1175519232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %t, i32 -128
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.55) #14
  br label %exit

if.end:                                           ; preds = %entry
  %pending_events = getelementptr i8, ptr %t, i32 -164
  %6 = ptrtoint ptr %pending_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %pending_events, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool13.not = icmp eq i32 %and1.i, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr i8, ptr %t, i32 -128
  %8 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.58) #14
  br label %exit

if.end19:                                         ; preds = %if.end
  %state = getelementptr i8, ptr %t, i32 -156
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %11, label %do.end23 [
    i32 6, label %if.end19.sw.bb_crit_edge
    i32 1, label %if.end19.sw.bb_crit_edge38
    i32 4, label %if.end19.sw.bb_crit_edge39
  ]

if.end19.sw.bb_crit_edge39:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end19.sw.bb_crit_edge38:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end19.sw.bb_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end19.sw.bb_crit_edge, %if.end19.sw.bb_crit_edge38, %if.end19.sw.bb_crit_edge39
  %cmd_status = getelementptr i8, ptr %t, i32 -204
  %13 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %cmd_status, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_events) #11
  %state.i = getelementptr i8, ptr %t, i32 -184
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.exit_crit_edge

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr i8, ptr %t, i32 -188
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %exit

do.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %dev24 = getelementptr i8, ptr %t, i32 -128
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.61, i32 noundef %11) #14
  br label %exit

exit:                                             ; preds = %do.end23, %if.then.i, %sw.bb.exit_crit_edge, %do.end17, %do.end11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_dto_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %t, i32 -464
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %regs = getelementptr i8, ptr %t, i32 -420
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !355
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %t, i32 -176
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.63) #14
  br label %exit

if.end:                                           ; preds = %entry
  %pending_events = getelementptr i8, ptr %t, i32 -212
  %6 = ptrtoint ptr %pending_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %pending_events, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr i8, ptr %t, i32 -176
  %9 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.66) #14
  br label %exit

if.end19:                                         ; preds = %if.end
  %state = getelementptr i8, ptr %t, i32 -204
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 8
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp eq i32 %13, 2
  br i1 %switch, label %sw.bb, label %do.end24

sw.bb:                                            ; preds = %if.end19
  %data_status = getelementptr i8, ptr %t, i32 -248
  %14 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %data_status, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pending_events) #11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %pending_events) #11
  %state.i = getelementptr i8, ptr %t, i32 -232
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.exit_crit_edge

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr i8, ptr %t, i32 -236
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %exit

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr i8, ptr %t, i32 -176
  %15 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.69, i32 noundef %12) #14
  br label %exit

exit:                                             ; preds = %do.end24, %if.then.i, %sw.bb.exit_crit_edge, %do.end17, %do.end11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_push_data16(ptr nocapture noundef %host, ptr nocapture noundef readonly %buf, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %part_buf_count = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %2 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %part_buf_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !prof !357

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %4 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %5
  %conv.i = zext i8 %3 to i32
  %sub.i = sub i32 %shl.i, %conv.i
  %6 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %cnt) #11
  %7 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %6)
  %9 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %part_buf_count, align 1
  %11 = trunc i32 %6 to i8
  %conv6.i = add i8 %10, %11
  store i8 %conv6.i, ptr %part_buf_count, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %6
  %sub = sub i32 %cnt, %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv6.i)
  %cmp = icmp eq i8 %conv6.i, 2
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %7, align 8
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %14 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo_reg, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #11, !srcloc !358
  %16 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %part_buf_count, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %cnt.addr.0 = phi i32 [ %cnt, %entry.if.end8_crit_edge ], [ %sub, %if.then6 ], [ %sub, %if.then.if.end8_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry.if.end8_crit_edge ], [ %add.ptr, %if.then6 ], [ %add.ptr, %if.then.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.addr.0)
  %cmp946 = icmp sgt i32 %cnt.addr.0, 1
  br i1 %cmp946, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %fifo_reg11 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.048 = phi ptr [ %buf.addr.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.147 = phi i32 [ %cnt.addr.0, %for.body.lr.ph ], [ %sub12, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %pdata.048, i32 1
  %17 = ptrtoint ptr %pdata.048 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pdata.048, align 2
  %19 = ptrtoint ptr %fifo_reg11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo_reg11, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #11, !srcloc !358
  %sub12 = add nsw i32 %cnt.addr.147, -2
  %cmp9 = icmp ugt i32 %cnt.addr.147, 3
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %cnt.addr.1.lcssa = phi i32 [ %cnt.addr.0, %if.end8.for.end_crit_edge ], [ %sub12, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf.addr.0, %if.end8.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.1.lcssa)
  %tobool13.not = icmp eq i32 %cnt.addr.1.lcssa, 0
  br i1 %tobool13.not, label %for.end.if.end20_crit_edge, label %if.then14

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %for.end
  %21 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %22 = call ptr @memcpy(ptr %21, ptr %pdata.0.lcssa, i32 %cnt.addr.1.lcssa)
  %conv.i44 = trunc i32 %cnt.addr.1.lcssa to i8
  %23 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i44, ptr %part_buf_count, align 1
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes_xfered, align 4
  %add = add i32 %25, %cnt
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %mul = mul i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp15 = icmp eq i32 %add, %mul
  br i1 %cmp15, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %21, align 8
  %fifo_reg18 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %32 = ptrtoint ptr %fifo_reg18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fifo_reg18, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #11, !srcloc !358
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_pull_data16(ptr nocapture noundef %host, ptr nocapture noundef writeonly %buf, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt)
  %cmp11 = icmp sgt i32 %cnt, 1
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.013 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.012 = phi i32 [ %cnt, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo_reg, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #11, !srcloc !359
  %incdec.ptr = getelementptr i16, ptr %pdata.013, i32 1
  %3 = ptrtoint ptr %pdata.013 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %pdata.013, align 2
  %sub = add nsw i32 %cnt.addr.012, -2
  %cmp = icmp ugt i32 %cnt.addr.012, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.addr.0.lcssa = phi i32 [ %cnt, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.0.lcssa)
  %tobool.not = icmp eq i32 %cnt.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifo_reg1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %fifo_reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo_reg1, align 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #11, !srcloc !359
  %7 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %7, align 8
  %9 = call ptr @memcpy(ptr %pdata.0.lcssa, ptr %7, i32 %cnt.addr.0.lcssa)
  %conv.i = trunc i32 %cnt.addr.0.lcssa to i8
  %part_buf_start.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 45
  %10 = ptrtoint ptr %part_buf_start.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %part_buf_start.i, align 8
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %11 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %12
  %sub.i = sub i32 %shl.i, %cnt.addr.0.lcssa
  %conv1.i = trunc i32 %sub.i to i8
  %part_buf_count.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %13 = ptrtoint ptr %part_buf_count.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %part_buf_count.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_push_data64(ptr nocapture noundef %host, ptr nocapture noundef readonly %buf, i32 noundef %cnt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %part_buf_count = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %2 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %part_buf_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !prof !357

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %4 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %5
  %conv.i = zext i8 %3 to i32
  %sub.i = sub i32 %shl.i, %conv.i
  %6 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %cnt) #11
  %7 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %6)
  %9 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %part_buf_count, align 1
  %11 = trunc i32 %6 to i8
  %conv6.i = add i8 %10, %11
  store i8 %conv6.i, ptr %part_buf_count, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %6
  %sub = sub i32 %cnt, %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv6.i)
  %cmp = icmp eq i8 %conv6.i, 8
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %7, align 8
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %14 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo_reg, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %13, ptr %15, align 8
  %17 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %part_buf_count, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %cnt.addr.0 = phi i32 [ %cnt, %entry.if.end8_crit_edge ], [ %sub, %if.then6 ], [ %sub, %if.then.if.end8_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry.if.end8_crit_edge ], [ %add.ptr, %if.then6 ], [ %add.ptr, %if.then.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cnt.addr.0)
  %cmp946 = icmp sgt i32 %cnt.addr.0, 7
  br i1 %cmp946, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %fifo_reg11 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.048 = phi ptr [ %buf.addr.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.147 = phi i32 [ %cnt.addr.0, %for.body.lr.ph ], [ %sub12, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %pdata.048, i32 1
  %18 = ptrtoint ptr %pdata.048 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pdata.048, align 8
  %20 = ptrtoint ptr %fifo_reg11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fifo_reg11, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %19, ptr %21, align 8
  %sub12 = add nsw i32 %cnt.addr.147, -8
  %cmp9 = icmp ugt i32 %cnt.addr.147, 15
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %cnt.addr.1.lcssa = phi i32 [ %cnt.addr.0, %if.end8.for.end_crit_edge ], [ %sub12, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf.addr.0, %if.end8.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.1.lcssa)
  %tobool13.not = icmp eq i32 %cnt.addr.1.lcssa, 0
  br i1 %tobool13.not, label %for.end.if.end20_crit_edge, label %if.then14

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %for.end
  %23 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %24 = call ptr @memcpy(ptr %23, ptr %pdata.0.lcssa, i32 %cnt.addr.1.lcssa)
  %conv.i44 = trunc i32 %cnt.addr.1.lcssa to i8
  %25 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i44, ptr %part_buf_count, align 1
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytes_xfered, align 4
  %add = add i32 %27, %cnt
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks, align 4
  %mul = mul i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp15 = icmp eq i32 %add, %mul
  br i1 %cmp15, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %23, align 8
  %fifo_reg18 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %34 = ptrtoint ptr %fifo_reg18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fifo_reg18, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store volatile i64 %33, ptr %35, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_pull_data64(ptr nocapture noundef %host, ptr nocapture noundef writeonly %buf, i32 noundef %cnt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cnt)
  %cmp10 = icmp sgt i32 %cnt, 7
  br i1 %cmp10, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.012 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.011 = phi i32 [ %cnt, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo_reg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load volatile i64, ptr %1, align 8
  %incdec.ptr = getelementptr i64, ptr %pdata.012, i32 1
  %4 = ptrtoint ptr %pdata.012 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %pdata.012, align 8
  %sub = add nsw i32 %cnt.addr.011, -8
  %cmp = icmp ugt i32 %cnt.addr.011, 15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.addr.0.lcssa = phi i32 [ %cnt, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.0.lcssa)
  %tobool.not = icmp eq i32 %cnt.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifo_reg1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %5 = ptrtoint ptr %fifo_reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fifo_reg1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load volatile i64, ptr %6, align 8
  %9 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %8, ptr %9, align 8
  %11 = call ptr @memcpy(ptr %pdata.0.lcssa, ptr %9, i32 %cnt.addr.0.lcssa)
  %conv.i = trunc i32 %cnt.addr.0.lcssa to i8
  %part_buf_start.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 45
  %12 = ptrtoint ptr %part_buf_start.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %part_buf_start.i, align 8
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %13 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %14
  %sub.i = sub i32 %shl.i, %cnt.addr.0.lcssa
  %conv1.i = trunc i32 %sub.i to i8
  %part_buf_count.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %15 = ptrtoint ptr %part_buf_count.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %part_buf_count.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_push_data32(ptr nocapture noundef %host, ptr nocapture noundef readonly %buf, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %part_buf_count = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %2 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %part_buf_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !prof !357

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %4 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %5
  %conv.i = zext i8 %3 to i32
  %sub.i = sub i32 %shl.i, %conv.i
  %6 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %cnt) #11
  %7 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %6)
  %9 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %part_buf_count, align 1
  %11 = trunc i32 %6 to i8
  %conv6.i = add i8 %10, %11
  store i8 %conv6.i, ptr %part_buf_count, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %6
  %sub = sub i32 %cnt, %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv6.i)
  %cmp = icmp eq i8 %conv6.i, 4
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %14 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fifo_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !356
  %16 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %part_buf_count, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %cnt.addr.0 = phi i32 [ %cnt, %entry.if.end8_crit_edge ], [ %sub, %if.then6 ], [ %sub, %if.then.if.end8_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry.if.end8_crit_edge ], [ %add.ptr, %if.then6 ], [ %add.ptr, %if.then.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.addr.0)
  %cmp946 = icmp sgt i32 %cnt.addr.0, 3
  br i1 %cmp946, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %fifo_reg11 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.048 = phi ptr [ %buf.addr.0, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.147 = phi i32 [ %cnt.addr.0, %for.body.lr.ph ], [ %sub12, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %pdata.048, i32 1
  %17 = ptrtoint ptr %pdata.048 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdata.048, align 4
  %19 = ptrtoint ptr %fifo_reg11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fifo_reg11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #11, !srcloc !356
  %sub12 = add nsw i32 %cnt.addr.147, -4
  %cmp9 = icmp ugt i32 %cnt.addr.147, 7
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %cnt.addr.1.lcssa = phi i32 [ %cnt.addr.0, %if.end8.for.end_crit_edge ], [ %sub12, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf.addr.0, %if.end8.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.1.lcssa)
  %tobool13.not = icmp eq i32 %cnt.addr.1.lcssa, 0
  br i1 %tobool13.not, label %for.end.if.end20_crit_edge, label %if.then14

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %for.end
  %21 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %22 = call ptr @memcpy(ptr %21, ptr %pdata.0.lcssa, i32 %cnt.addr.1.lcssa)
  %conv.i44 = trunc i32 %cnt.addr.1.lcssa to i8
  %23 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i44, ptr %part_buf_count, align 1
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes_xfered, align 4
  %add = add i32 %25, %cnt
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %mul = mul i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp15 = icmp eq i32 %add, %mul
  br i1 %cmp15, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 8
  %fifo_reg18 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %32 = ptrtoint ptr %fifo_reg18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fifo_reg18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #11, !srcloc !356
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_pull_data32(ptr nocapture noundef %host, ptr nocapture noundef writeonly %buf, i32 noundef %cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt)
  %cmp11 = icmp sgt i32 %cnt, 3
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pdata.013 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %cnt.addr.012 = phi i32 [ %cnt, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !355
  %incdec.ptr = getelementptr i32, ptr %pdata.013, i32 1
  %3 = ptrtoint ptr %pdata.013 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pdata.013, align 4
  %sub = add nsw i32 %cnt.addr.012, -4
  %cmp = icmp ugt i32 %cnt.addr.012, 7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.addr.0.lcssa = phi i32 [ %cnt, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %pdata.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.0.lcssa)
  %tobool.not = icmp eq i32 %cnt.addr.0.lcssa, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifo_reg1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %fifo_reg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo_reg1, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !355
  %7 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 8
  %9 = call ptr @memcpy(ptr %pdata.0.lcssa, ptr %7, i32 %cnt.addr.0.lcssa)
  %conv.i = trunc i32 %cnt.addr.0.lcssa to i8
  %part_buf_start.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 45
  %10 = ptrtoint ptr %part_buf_start.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %part_buf_start.i, align 8
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %11 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_shift.i, align 4
  %shl.i = shl nuw i32 1, %12
  %sub.i = sub i32 %shl.i, %cnt.addr.0.lcssa
  %conv1.i = trunc i32 %sub.i to i8
  %part_buf_count.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %13 = ptrtoint ptr %part_buf_count.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %part_buf_count.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dw_mci_ctrl_reset(ptr nocapture noundef readonly %host, i32 noundef %reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !355
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, %reset
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !356
  %call3 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call3, 500000000
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !355
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  %and54 = and i32 %10, %reset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool.not55 = icmp eq i32 %and54, 0
  br i1 %tobool.not55, label %entry.cleanup_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #11
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !355
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  %and = and i32 %15, %reset
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.cleanup_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !355
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  %.pre = and i32 %19, %reset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool32.not = icmp eq i32 %.pre, 0
  br i1 %tobool32.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.72, i32 noundef %.pre) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tobool32.not58 = phi i1 [ true, %for.end.cleanup_crit_edge ], [ false, %do.end ], [ true, %entry.cleanup_crit_edge ], [ true, %cond.false.cleanup_crit_edge ]
  ret i1 %tobool32.not58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_tasklet_func(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -272
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #11
  %state1 = getelementptr i8, ptr %t, i32 32
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 8
  %data2 = getelementptr i8, ptr %t, i32 -112
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 8
  %mrq3 = getelementptr i8, ptr %t, i32 -120
  %4 = ptrtoint ptr %mrq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq3, align 8
  %pending_events.i = getelementptr i8, ptr %t, i32 24
  %cto_timer.i = getelementptr i8, ptr %t, i32 188
  %cmd5 = getelementptr i8, ptr %t, i32 -116
  %completed_events = getelementptr i8, ptr %t, i32 28
  %cmd_status.i = getelementptr i8, ptr %t, i32 -16
  %regs28.i = getelementptr i8, ptr %t, i32 -184
  %dir_status = getelementptr i8, ptr %t, i32 -4
  %stop_abort.i = getelementptr i8, ptr %t, i32 -108
  %stop_cmdr.i = getelementptr i8, ptr %t, i32 -8
  %using_dma.i = getelementptr i8, ptr %t, i32 -48
  %dma_ops.i = getelementptr i8, ptr %t, i32 -32
  %data_status = getelementptr i8, ptr %t, i32 -12
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %state.0 = phi i32 [ %1, %entry ], [ %state.4, %do.cond.do.body_crit_edge ]
  %6 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %state.0, label %do.body.do.end_crit_edge [
    i32 5, label %sw.bb118
    i32 4, label %do.body.sw.bb93_crit_edge
    i32 6, label %do.body.sw.bb4_crit_edge
    i32 1, label %do.body.sw.bb4_crit_edge314
    i32 2, label %do.body.sw.bb27_crit_edge
    i32 3, label %do.body.sw.bb55_crit_edge
  ]

do.body.sw.bb55_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

do.body.sw.bb27_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

do.body.sw.bb4_crit_edge314:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

do.body.sw.bb4_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

do.body.sw.bb93_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb4:                                           ; preds = %do.body.sw.bb4_crit_edge, %do.body.sw.bb4_crit_edge314
  %7 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %pending_events.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %sw.bb4.do.end_crit_edge, label %if.end.i

sw.bb4.do.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %sw.bb4
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %cto_timer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i, !prof !357

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2043, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %pending_events.i) #11
  %9 = ptrtoint ptr %cmd5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd5, align 4
  store ptr null, ptr %cmd5, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %completed_events) #11
  %11 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_status.i, align 8
  store i32 0, ptr %cmd_status.i, align 8
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i209 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i209, label %if.end.if.end40.i_crit_edge, label %if.then.i

if.end.if.end40.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i

if.then.i:                                        ; preds = %if.end
  %and3.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %15 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs28.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %16, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %resp32.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 2
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs28.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #11, !srcloc !355
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %arrayidx12.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx12.i, align 4
  %25 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs28.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %26, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #11, !srcloc !355
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %arrayidx19.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx19.i, align 4
  %30 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs28.i, align 8
  %add.ptr22.i = getelementptr i8, ptr %31, i32 60
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #11, !srcloc !355
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %34 = ptrtoint ptr %resp32.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %resp32.i, align 4
  br label %if.end40.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %resp32.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %18, ptr %resp32.i, align 4
  %arrayidx35.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx35.i, align 4
  %arrayidx37.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx37.i, align 4
  %arrayidx39.i = getelementptr %struct.mmc_command, ptr %10, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx39.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i, %if.then5.i, %if.end.if.end40.i_crit_edge
  %and41.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else44.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -110, ptr %error.i, align 4
  br label %dw_mci_command_complete.exit

if.else44.i:                                      ; preds = %if.end40.i
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and46.i = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  %and48.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %or.cond.i = select i1 %tobool47.not.i, i1 true, i1 %tobool49.not.i
  br i1 %or.cond.i, label %if.else52.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #13
  %error51.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %42 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -84, ptr %error51.i, align 4
  br label %dw_mci_command_complete.exit

if.else52.i:                                      ; preds = %if.else44.i
  %and53.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %error58.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  br i1 %tobool54.not.i, label %if.else57.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %error58.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -5, ptr %error58.i, align 4
  br label %dw_mci_command_complete.exit

if.else57.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %error58.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %error58.i, align 4
  br label %dw_mci_command_complete.exit

dw_mci_command_complete.exit:                     ; preds = %if.else57.i, %if.then55.i, %if.then50.i, %if.then43.i
  %error62.i = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 5
  %45 = ptrtoint ptr %error62.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error62.i, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %cmp = icmp eq ptr %10, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then8, label %if.end10

if.then8:                                         ; preds = %dw_mci_command_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  %slot = getelementptr i8, ptr %t, i32 84
  %49 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slot, align 4
  %cmd9 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %cmd9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd9, align 4
  tail call fastcc void @__dw_mci_start_request(ptr noundef %add.ptr, ptr noundef %50, ptr noundef %52)
  br label %unlock

if.end10:                                         ; preds = %dw_mci_command_complete.exit
  %data11 = getelementptr inbounds %struct.mmc_command, ptr %10, i32 0, i32 7
  %53 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data11, align 4
  %tobool12.not = icmp eq ptr %54, null
  %or.cond207 = select i1 %tobool12.not, i1 true, i1 %tobool.not
  br i1 %or.cond207, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %46)
  %cmp16.not = icmp eq i32 %46, -110
  br i1 %cmp16.not, label %if.then15.if.end20_crit_edge, label %land.lhs.true17

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true17:                                  ; preds = %if.then15
  %55 = ptrtoint ptr %dir_status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dir_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp18 = icmp eq i32 %56, 2
  br i1 %cmp18, label %land.lhs.true17.do.cond_crit_edge, label %land.lhs.true17.if.end20_crit_edge

land.lhs.true17.if.end20_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true17.do.cond_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.end20:                                         ; preds = %land.lhs.true17.if.end20_crit_edge, %if.then15.if.end20_crit_edge
  %57 = ptrtoint ptr %stop_cmdr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stop_cmdr.i, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %add.ptr, ptr noundef %stop_abort.i, i32 noundef %58) #11
  %59 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %using_dma.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i210 = icmp eq i32 %60, 0
  br i1 %tobool.not.i210, label %if.end20.dw_mci_stop_dma.exit_crit_edge, label %if.then.i211

if.end20.dw_mci_stop_dma.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_stop_dma.exit

if.then.i211:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_ops.i, align 8
  %stop.i = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stop.i, align 4
  tail call void %64(ptr noundef %add.ptr) #11
  %65 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_ops.i, align 8
  %cleanup.i = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cleanup.i, align 4
  tail call void %68(ptr noundef %add.ptr) #11
  br label %dw_mci_stop_dma.exit

dw_mci_stop_dma.exit:                             ; preds = %if.then.i211, %if.end20.dw_mci_stop_dma.exit_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  br label %do.cond

if.end21:                                         ; preds = %if.end10
  %tobool23.not = icmp ne ptr %54, null
  %or.cond208 = select i1 %tobool23.not, i1 %tobool.not, i1 false
  br i1 %or.cond208, label %if.end21.sw.bb27_crit_edge, label %if.then25

if.end21.sw.bb27_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_request_end(ptr noundef %add.ptr, ptr noundef %5)
  br label %unlock

sw.bb27:                                          ; preds = %if.end21.sw.bb27_crit_edge, %do.body.sw.bb27_crit_edge
  %call28 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %pending_events.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %sw.bb27
  %69 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_status, align 4
  %and = and i32 %70, 33280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %if.then30.if.end33_crit_edge

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %stop_cmdr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stop_cmdr.i, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %add.ptr, ptr noundef %stop_abort.i, i32 noundef %72) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30.if.end33_crit_edge
  %73 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %using_dma.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i217 = icmp eq i32 %74, 0
  br i1 %tobool.not.i217, label %if.end33.dw_mci_stop_dma.exit224_crit_edge, label %if.then.i221

if.end33.dw_mci_stop_dma.exit224_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_stop_dma.exit224

if.then.i221:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_ops.i, align 8
  %stop.i219 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %stop.i219 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stop.i219, align 4
  tail call void %78(ptr noundef %add.ptr) #11
  %79 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma_ops.i, align 8
  %cleanup.i220 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %cleanup.i220 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cleanup.i220, align 4
  tail call void %82(ptr noundef %add.ptr) #11
  br label %dw_mci_stop_dma.exit224

dw_mci_stop_dma.exit224:                          ; preds = %if.then.i221, %if.end33.dw_mci_stop_dma.exit224_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  br label %do.cond

if.end34:                                         ; preds = %sw.bb27
  %call36 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end34
  %83 = ptrtoint ptr %dir_status to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dir_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp40 = icmp eq i32 %84, 2
  br i1 %cmp40, label %if.then38.do.end.sink.split_crit_edge, label %if.then38.do.end_crit_edge

if.then38.do.end_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then38.do.end.sink.split_crit_edge:            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split

if.end43:                                         ; preds = %if.end34
  tail call void @_set_bit(i32 noundef 1, ptr noundef %completed_events) #11
  %call46 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %pending_events.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.sw.bb55_crit_edge, label %if.then48

if.end43.sw.bb55_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

if.then48:                                        ; preds = %if.end43
  %85 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_status, align 4
  %and50 = and i32 %86, 33280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then52, label %if.then48.if.end53_crit_edge

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %stop_cmdr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stop_cmdr.i, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %add.ptr, ptr noundef %stop_abort.i, i32 noundef %88) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then48.if.end53_crit_edge
  %89 = ptrtoint ptr %using_dma.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %using_dma.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i228 = icmp eq i32 %90, 0
  br i1 %tobool.not.i228, label %if.end53.dw_mci_stop_dma.exit235_crit_edge, label %if.then.i232

if.end53.dw_mci_stop_dma.exit235_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_stop_dma.exit235

if.then.i232:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_ops.i, align 8
  %stop.i230 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %stop.i230 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stop.i230, align 4
  tail call void %94(ptr noundef %add.ptr) #11
  %95 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_ops.i, align 8
  %cleanup.i231 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %cleanup.i231 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cleanup.i231, align 4
  tail call void %98(ptr noundef %add.ptr) #11
  br label %dw_mci_stop_dma.exit235

dw_mci_stop_dma.exit235:                          ; preds = %if.then.i232, %if.end53.dw_mci_stop_dma.exit235_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  br label %do.cond

sw.bb55:                                          ; preds = %if.end43.sw.bb55_crit_edge, %do.body.sw.bb55_crit_edge
  %99 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %pending_events.i, align 4
  %101 = and i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i237 = icmp eq i32 %101, 0
  br i1 %tobool.not.i237, label %if.then57, label %if.end.i240

if.end.i240:                                      ; preds = %sw.bb55
  %dto_timer.i = getelementptr i8, ptr %t, i32 236
  %call1.i238 = tail call i32 @del_timer_sync(ptr noundef %dto_timer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i238)
  %tobool2.not.i239 = icmp eq i32 %call1.i238, 0
  br i1 %tobool2.not.i239, label %if.end.i240.if.end62_crit_edge, label %do.end.i241, !prof !357

if.end.i240.if.end62_crit_edge:                   ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

do.end.i241:                                      ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2055, i32 noundef 9, ptr noundef null) #11
  br label %if.end62

if.then57:                                        ; preds = %sw.bb55
  %102 = ptrtoint ptr %dir_status to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dir_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp59 = icmp eq i32 %103, 2
  br i1 %cmp59, label %if.then57.do.end.sink.split_crit_edge, label %if.then57.do.end_crit_edge

if.then57.do.end_crit_edge:                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then57.do.end.sink.split_crit_edge:            ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split

if.end62:                                         ; preds = %do.end.i241, %if.end.i240.if.end62_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %pending_events.i) #11
  %fault_timer.i = getelementptr i8, ptr %t, i32 408
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %fault_timer.i) #11
  %104 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %data2, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %completed_events) #11
  %105 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_status, align 4
  %and.i243 = and i32 %106, 46720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243)
  %tobool.not.i244 = icmp eq i32 %and.i243, 0
  br i1 %tobool.not.i244, label %if.else31.i, label %if.then.i247

if.then.i247:                                     ; preds = %if.end62
  %and1.i245 = and i32 %106, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i245)
  %tobool2.not.i246 = icmp eq i32 %and1.i245, 0
  br i1 %tobool2.not.i246, label %if.else.i248, label %if.then.i247.do.body.sink.split.i_crit_edge

if.then.i247.do.body.sink.split.i_crit_edge:      ; preds = %if.then.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.i

if.else.i248:                                     ; preds = %if.then.i247
  %107 = and i32 %106, 32896
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %107)
  %.not.i = icmp eq i32 %107, 32768
  br i1 %.not.i, label %if.then11.i, label %if.else.i248.do.body.sink.split.i_crit_edge

if.else.i248.do.body.sink.split.i_crit_edge:      ; preds = %if.else.i248
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.i

if.then11.i:                                      ; preds = %if.else.i248
  %108 = ptrtoint ptr %dir_status to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dir_status, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %109, label %if.then11.i.do.body.i_crit_edge [
    i32 1, label %if.then12.i
    i32 2, label %if.then11.i.do.body.sink.split.i_crit_edge
  ]

if.then11.i.do.body.sink.split.i_crit_edge:       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.sink.split.i

if.then11.i.do.body.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then12.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %111 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %bytes_xfered.i, align 4
  br label %do.body.sink.split.i

do.body.sink.split.i:                             ; preds = %if.then12.i, %if.then11.i.do.body.sink.split.i_crit_edge, %if.else.i248.do.body.sink.split.i_crit_edge, %if.then.i247.do.body.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -110, %if.then12.i ], [ -110, %if.then.i247.do.body.sink.split.i_crit_edge ], [ -84, %if.else.i248.do.body.sink.split.i_crit_edge ], [ -84, %if.then11.i.do.body.sink.split.i_crit_edge ]
  %error.i249 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %112 = ptrtoint ptr %error.i249 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i, ptr %error.i249, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.sink.split.i, %if.then11.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_data_complete.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_tasklet_func, %if.then28.i)) #11
          to label %do.end.i250 [label %if.then28.i], !srcloc !354

if.then28.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr i8, ptr %t, i32 60
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_data_complete.__UNIQUE_ID_ddebug312, ptr noundef %114, ptr noundef nonnull @.str.121, i32 noundef %106) #11
  br label %do.end.i250

do.end.i250:                                      ; preds = %if.then28.i, %do.body.i
  tail call fastcc void @dw_mci_reset(ptr noundef %add.ptr) #11
  br label %dw_mci_data_complete.exit

if.else31.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %115 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %117 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %118, %116
  %bytes_xfered32.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %119 = ptrtoint ptr %bytes_xfered32.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %mul.i, ptr %bytes_xfered32.i, align 4
  %error33.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %120 = ptrtoint ptr %error33.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %error33.i, align 4
  br label %dw_mci_data_complete.exit

dw_mci_data_complete.exit:                        ; preds = %if.else31.i, %do.end.i250
  %error35.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %121 = ptrtoint ptr %error35.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %error35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool66.not = icmp eq i32 %122, 0
  br i1 %tobool66.not, label %if.then67, label %if.else

if.then67:                                        ; preds = %dw_mci_data_complete.exit
  %stop = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 8
  %123 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %stop, align 4
  %tobool68.not = icmp eq ptr %124, null
  br i1 %tobool68.not, label %if.then67.if.end80_crit_edge, label %lor.lhs.false69

if.then67.if.end80_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

lor.lhs.false69:                                  ; preds = %if.then67
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %5, align 4
  %tobool71.not = icmp eq ptr %126, null
  br i1 %tobool71.not, label %if.then84, label %if.then78

if.then78:                                        ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.mmc_command, ptr %124, i32 0, i32 5
  %127 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %error, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then67.if.end80_crit_edge
  tail call fastcc void @dw_mci_request_end(ptr noundef %add.ptr, ptr noundef %5)
  br label %unlock

if.then84:                                        ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %stop_cmdr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %stop_cmdr.i, align 8
  tail call fastcc void @dw_mci_start_command(ptr noundef %add.ptr, ptr noundef %stop_abort.i, i32 noundef %129) #11
  br label %sw.bb93

if.else:                                          ; preds = %dw_mci_data_complete.exit
  %130 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %pending_events.i, align 4
  %and1.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool88.not = icmp eq i32 %and1.i, 0
  br i1 %tobool88.not, label %if.then89, label %if.else.sw.bb93_crit_edge

if.else.sw.bb93_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb93

if.then89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %cmd5, align 4
  tail call fastcc void @dw_mci_request_end(ptr noundef %add.ptr, ptr noundef %5)
  br label %unlock

sw.bb93:                                          ; preds = %if.else.sw.bb93_crit_edge, %if.then84, %do.body.sw.bb93_crit_edge
  %133 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %pending_events.i, align 4
  %and1.i.i254 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i254)
  %tobool.not.i255 = icmp eq i32 %and1.i.i254, 0
  br i1 %tobool.not.i255, label %sw.bb93.do.end_crit_edge, label %if.end.i259

sw.bb93.do.end_crit_edge:                         ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i259:                                      ; preds = %sw.bb93
  %call1.i257 = tail call i32 @del_timer_sync(ptr noundef %cto_timer.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i257)
  %tobool2.not.i258 = icmp eq i32 %call1.i257, 0
  br i1 %tobool2.not.i258, label %if.end.i259.if.end96_crit_edge, label %do.end.i260, !prof !357

if.end.i259.if.end96_crit_edge:                   ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.end.i260:                                      ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2043, i32 noundef 9, ptr noundef null) #11
  br label %if.end96

if.end96:                                         ; preds = %do.end.i260, %if.end.i259.if.end96_crit_edge
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %pending_events.i) #11
  %cmd97 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %135 = ptrtoint ptr %cmd97 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cmd97, align 4
  %error98 = getelementptr inbounds %struct.mmc_command, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %error98 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %error98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool99.not = icmp eq i32 %138, 0
  br i1 %tobool99.not, label %if.end96.if.end105_crit_edge, label %land.lhs.true100

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

land.lhs.true100:                                 ; preds = %if.end96
  %data101 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %139 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data101, align 4
  %tobool102.not = icmp eq ptr %140, null
  br i1 %tobool102.not, label %land.lhs.true100.if.end105_crit_edge, label %if.then103

land.lhs.true100.if.end105_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then103:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_reset(ptr noundef %add.ptr)
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %land.lhs.true100.if.end105_crit_edge, %if.end96.if.end105_crit_edge
  %fault_timer.i263 = getelementptr i8, ptr %t, i32 408
  %call.i264 = tail call i32 @hrtimer_cancel(ptr noundef %fault_timer.i263) #11
  %141 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %cmd5, align 4
  %142 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %data2, align 8
  %143 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %5, align 4
  %tobool109.not = icmp eq ptr %144, null
  br i1 %tobool109.not, label %land.lhs.true110, label %if.end105.if.else116_crit_edge

if.end105.if.else116_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else116

land.lhs.true110:                                 ; preds = %if.end105
  %stop111 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %145 = ptrtoint ptr %stop111 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %stop111, align 4
  %tobool112.not = icmp eq ptr %146, null
  br i1 %tobool112.not, label %land.lhs.true110.if.else116_crit_edge, label %if.then113

land.lhs.true110.if.else116_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else116

if.then113:                                       ; preds = %land.lhs.true110
  %147 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cmd_status.i, align 8
  store i32 0, ptr %cmd_status.i, align 8
  %flags.i266 = getelementptr inbounds %struct.mmc_command, ptr %146, i32 0, i32 3
  %149 = ptrtoint ptr %flags.i266 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i266, align 4
  %and.i267 = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i268 = icmp eq i32 %and.i267, 0
  br i1 %tobool.not.i268, label %if.then113.if.end40.i288_crit_edge, label %if.then.i274

if.then113.if.end40.i288_crit_edge:               ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i288

if.then.i274:                                     ; preds = %if.then113
  %and3.i269 = and i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i269)
  %tobool4.not.i270 = icmp eq i32 %and3.i269, 0
  %151 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs28.i, align 8
  %add.ptr29.i272 = getelementptr i8, ptr %152, i32 48
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i272) #11
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #11
  %resp32.i273 = getelementptr inbounds %struct.mmc_command, ptr %146, i32 0, i32 2
  br i1 %tobool4.not.i270, label %if.else.i285, label %if.then5.i281

if.then5.i281:                                    ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i275 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 3
  %155 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx.i275, align 4
  %156 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs28.i, align 8
  %add.ptr8.i276 = getelementptr i8, ptr %157, i32 52
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i276) #11, !srcloc !355
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #11
  %arrayidx12.i277 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %arrayidx12.i277 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx12.i277, align 4
  %161 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs28.i, align 8
  %add.ptr15.i278 = getelementptr i8, ptr %162, i32 56
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i278) #11, !srcloc !355
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #11
  %arrayidx19.i279 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 1
  %165 = ptrtoint ptr %arrayidx19.i279 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx19.i279, align 4
  %166 = ptrtoint ptr %regs28.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs28.i, align 8
  %add.ptr22.i280 = getelementptr i8, ptr %167, i32 60
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i280) #11, !srcloc !355
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #11
  %170 = ptrtoint ptr %resp32.i273 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %resp32.i273, align 4
  br label %if.end40.i288

if.else.i285:                                     ; preds = %if.then.i274
  call void @__sanitizer_cov_trace_pc() #13
  %171 = ptrtoint ptr %resp32.i273 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %154, ptr %resp32.i273, align 4
  %arrayidx35.i282 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 1
  %172 = ptrtoint ptr %arrayidx35.i282 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %arrayidx35.i282, align 4
  %arrayidx37.i283 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 2
  %173 = ptrtoint ptr %arrayidx37.i283 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %arrayidx37.i283, align 4
  %arrayidx39.i284 = getelementptr %struct.mmc_command, ptr %146, i32 0, i32 2, i32 3
  %174 = ptrtoint ptr %arrayidx39.i284 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %arrayidx39.i284, align 4
  br label %if.end40.i288

if.end40.i288:                                    ; preds = %if.else.i285, %if.then5.i281, %if.then113.if.end40.i288_crit_edge
  %and41.i286 = and i32 %148, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i286)
  %tobool42.not.i287 = icmp eq i32 %and41.i286, 0
  br i1 %tobool42.not.i287, label %if.else44.i296, label %if.then43.i290

if.then43.i290:                                   ; preds = %if.end40.i288
  call void @__sanitizer_cov_trace_pc() #13
  %error.i289 = getelementptr inbounds %struct.mmc_command, ptr %146, i32 0, i32 5
  %175 = ptrtoint ptr %error.i289 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -110, ptr %error.i289, align 4
  br label %if.end117

if.else44.i296:                                   ; preds = %if.end40.i288
  %176 = ptrtoint ptr %flags.i266 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %flags.i266, align 4
  %and46.i291 = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i291)
  %tobool47.not.i292 = icmp eq i32 %and46.i291, 0
  %and48.i293 = and i32 %148, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i293)
  %tobool49.not.i294 = icmp eq i32 %and48.i293, 0
  %or.cond.i295 = select i1 %tobool47.not.i292, i1 true, i1 %tobool49.not.i294
  br i1 %or.cond.i295, label %if.else52.i302, label %if.then50.i298

if.then50.i298:                                   ; preds = %if.else44.i296
  call void @__sanitizer_cov_trace_pc() #13
  %error51.i297 = getelementptr inbounds %struct.mmc_command, ptr %146, i32 0, i32 5
  %178 = ptrtoint ptr %error51.i297 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -84, ptr %error51.i297, align 4
  br label %if.end117

if.else52.i302:                                   ; preds = %if.else44.i296
  %and53.i299 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i299)
  %tobool54.not.i300 = icmp eq i32 %and53.i299, 0
  %error58.i301 = getelementptr inbounds %struct.mmc_command, ptr %146, i32 0, i32 5
  br i1 %tobool54.not.i300, label %if.else57.i304, label %if.then55.i303

if.then55.i303:                                   ; preds = %if.else52.i302
  call void @__sanitizer_cov_trace_pc() #13
  %179 = ptrtoint ptr %error58.i301 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -5, ptr %error58.i301, align 4
  br label %if.end117

if.else57.i304:                                   ; preds = %if.else52.i302
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %error58.i301 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %error58.i301, align 4
  br label %if.end117

if.else116:                                       ; preds = %land.lhs.true110.if.else116_crit_edge, %if.end105.if.else116_crit_edge
  %181 = ptrtoint ptr %cmd_status.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %cmd_status.i, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.else57.i304, %if.then55.i303, %if.then50.i298, %if.then43.i290
  tail call fastcc void @dw_mci_request_end(ptr noundef %add.ptr, ptr noundef %5)
  br label %unlock

sw.bb118:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call120 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  %spec.select = select i1 %tobool121.not, i32 5, i32 3
  br label %do.cond

do.cond:                                          ; preds = %sw.bb118, %dw_mci_stop_dma.exit235, %dw_mci_stop_dma.exit224, %dw_mci_stop_dma.exit, %land.lhs.true17.do.cond_crit_edge
  %state.4 = phi i32 [ 5, %dw_mci_stop_dma.exit224 ], [ 5, %dw_mci_stop_dma.exit235 ], [ 4, %dw_mci_stop_dma.exit ], [ 2, %land.lhs.true17.do.cond_crit_edge ], [ %spec.select, %sw.bb118 ]
  %prev_state.3 = phi i32 [ 2, %dw_mci_stop_dma.exit224 ], [ 2, %dw_mci_stop_dma.exit235 ], [ %state.0, %dw_mci_stop_dma.exit ], [ %state.0, %land.lhs.true17.do.cond_crit_edge ], [ 5, %sw.bb118 ]
  %cmp124.not = icmp eq i32 %state.4, %prev_state.3
  br i1 %cmp124.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.sink.split:                                ; preds = %if.then57.do.end.sink.split_crit_edge, %if.then38.do.end.sink.split_crit_edge
  %state.4311.ph = phi i32 [ 2, %if.then38.do.end.sink.split_crit_edge ], [ 3, %if.then57.do.end.sink.split_crit_edge ]
  tail call fastcc void @dw_mci_set_drto(ptr noundef %add.ptr)
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %do.cond.do.end_crit_edge, %sw.bb93.do.end_crit_edge, %if.then57.do.end_crit_edge, %if.then38.do.end_crit_edge, %sw.bb4.do.end_crit_edge, %do.body.do.end_crit_edge
  %state.4311 = phi i32 [ 4, %sw.bb93.do.end_crit_edge ], [ 2, %if.then38.do.end_crit_edge ], [ 3, %if.then57.do.end_crit_edge ], [ %state.4311.ph, %do.end.sink.split ], [ %state.0, %do.body.do.end_crit_edge ], [ %state.0, %sw.bb4.do.end_crit_edge ], [ %state.4, %do.cond.do.end_crit_edge ]
  %182 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %state.4311, ptr %state1, align 8
  br label %unlock

unlock:                                           ; preds = %do.end, %if.end117, %if.then89, %if.end80, %if.then25, %if.then8
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot1 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 42
  %0 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot1, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end125_crit_edge, label %if.then

entry.if.end125_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 30
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp ne i32 %7, 6
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 262144) #11, !srcloc !356
  %and6 = and i32 %5, -1025
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #11
  tail call fastcc void @dw_mci_cmd_interrupt(ptr noundef %dev_id, i32 noundef %and6)
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #11
  %cmd11_timer = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 55
  %call8 = tail call i32 @del_timer(ptr noundef %cmd11_timer) #11
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %pending.0 = phi i32 [ %and6, %if.then3 ], [ %5, %if.then.if.end_crit_edge ]
  %and9 = and i32 %pending.0, 4418
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end20_crit_edge, label %if.then11

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_lock12 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %irq_lock12) #11
  %cto_timer = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 56
  %call13 = tail call i32 @del_timer(ptr noundef %cto_timer) #11
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1108410368) #11, !srcloc !356
  %cmd_status = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 23
  %12 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pending.0, ptr %cmd_status, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !362
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_events) #11
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock12) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.end.if.end20_crit_edge
  %and21 = and i32 %pending.0, 46720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end46_crit_edge, label %if.then23

if.end20.if.end46_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then23:                                        ; preds = %if.end20
  %irq_lock24 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %irq_lock24) #11
  %quirks = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 50
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %quirks, align 8
  %and25 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then27

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %dto_timer = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 57
  %call28 = tail call i32 @del_timer(ptr noundef %dto_timer) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23.if.end29_crit_edge
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr31 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 -2135556096) #11, !srcloc !356
  %data_status = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 24
  %17 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pending.0, ptr %data_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !363
  %pending_events38 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pending_events38) #11
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 8
  %and40 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end29.if.end44_crit_edge, label %if.then42

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %pending_events38) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end29.if.end44_crit_edge
  %state.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 27, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end44.tasklet_schedule.exit_crit_edge

if.end44.tasklet_schedule.exit_crit_edge:         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end44.tasklet_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock24) #11
  br label %if.end46

if.end46:                                         ; preds = %tasklet_schedule.exit, %if.end20.if.end46_crit_edge
  %and47 = and i32 %pending.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end75_crit_edge, label %if.then49

if.end46.if.end75_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then49:                                        ; preds = %if.end46
  %irq_lock50 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %irq_lock50) #11
  %dto_timer51 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 57
  %call52 = tail call i32 @del_timer(ptr noundef %dto_timer51) #11
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr54 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 134217728) #11, !srcloc !356
  %data_status55 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 24
  %22 = ptrtoint ptr %data_status55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_status55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool56.not = icmp eq i32 %23, 0
  br i1 %tobool56.not, label %if.then57, label %if.then49.do.end63_crit_edge

if.then49.do.end63_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end63

if.then57:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %data_status55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %pending.0, ptr %data_status55, align 4
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %if.then49.do.end63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !364
  %dir_status = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 26
  %25 = ptrtoint ptr %dir_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp66 = icmp eq i32 %26, 2
  br i1 %cmp66, label %if.then67, label %do.end63.if.end71_crit_edge

do.end63.if.end71_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then67:                                        ; preds = %do.end63
  %sg = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 6
  %27 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg, align 8
  %cmp68.not = icmp eq ptr %28, null
  br i1 %cmp68.not, label %if.then67.if.end71_crit_edge, label %if.then69

if.then67.if.end71_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_read_data_pio(ptr noundef %dev_id, i1 noundef zeroext true)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then67.if.end71_crit_edge, %do.end63.if.end71_crit_edge
  %pending_events72 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 2, ptr noundef %pending_events72) #11
  %state.i257 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 27, i32 1
  %call.i258 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i257) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool.not.i259 = icmp eq i32 %call.i258, 0
  br i1 %tobool.not.i259, label %if.then.i260, label %if.end71.tasklet_schedule.exit261_crit_edge

if.end71.tasklet_schedule.exit261_crit_edge:      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit261

if.then.i260:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet73 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %tasklet73) #11
  br label %tasklet_schedule.exit261

tasklet_schedule.exit261:                         ; preds = %if.then.i260, %if.end71.tasklet_schedule.exit261_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock50) #11
  br label %if.end75

if.end75:                                         ; preds = %tasklet_schedule.exit261, %if.end46.if.end75_crit_edge
  %and76 = and i32 %pending.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end88_crit_edge, label %if.then78

if.end75.if.end88_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then78:                                        ; preds = %if.end75
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %add.ptr80 = getelementptr i8, ptr %30, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 536870912) #11, !srcloc !356
  %dir_status81 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 26
  %31 = ptrtoint ptr %dir_status81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir_status81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp82 = icmp eq i32 %32, 2
  br i1 %cmp82, label %land.lhs.true83, label %if.then78.if.end88_crit_edge

if.then78.if.end88_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

land.lhs.true83:                                  ; preds = %if.then78
  %sg84 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 6
  %33 = ptrtoint ptr %sg84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sg84, align 8
  %tobool85.not = icmp eq ptr %34, null
  br i1 %tobool85.not, label %land.lhs.true83.if.end88_crit_edge, label %if.then86

land.lhs.true83.if.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_read_data_pio(ptr noundef %dev_id, i1 noundef zeroext false)
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true83.if.end88_crit_edge, %if.then78.if.end88_crit_edge, %if.end75.if.end88_crit_edge
  %and89 = and i32 %pending.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end101_crit_edge, label %if.then91

if.end88.if.end101_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then91:                                        ; preds = %if.end88
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr93 = getelementptr i8, ptr %36, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 268435456) #11, !srcloc !356
  %dir_status94 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 26
  %37 = ptrtoint ptr %dir_status94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir_status94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp95 = icmp eq i32 %38, 1
  br i1 %cmp95, label %land.lhs.true96, label %if.then91.if.end101_crit_edge

if.then91.if.end101_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

land.lhs.true96:                                  ; preds = %if.then91
  %sg97 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 6
  %39 = ptrtoint ptr %sg97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg97, align 8
  %tobool98.not = icmp eq ptr %40, null
  br i1 %tobool98.not, label %land.lhs.true96.if.end101_crit_edge, label %if.then99

land.lhs.true96.if.end101_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then99:                                        ; preds = %land.lhs.true96
  %sg_miter1.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 7
  %data2.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 10
  %41 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data2.i, align 8
  %data_shift.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 44
  %43 = ptrtoint ptr %data_shift.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_shift.i, align 4
  %fifo_depth3.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 43
  %45 = ptrtoint ptr %fifo_depth3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fifo_depth3.i, align 8
  %piter.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 7, i32 4
  %addr.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 7, i32 1
  %length.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 7, i32 2
  %push_data.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 48
  %part_buf_count.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 46
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %42, i32 0, i32 7
  %consumed.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 7, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.then99
  %call.i262 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1.i) #11
  br i1 %call.i262, label %if.end.i, label %do.body.i.done.i_crit_edge

do.body.i.done.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end.i:                                         ; preds = %do.body.i
  %47 = ptrtoint ptr %piter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %piter.i, align 4
  %49 = ptrtoint ptr %sg97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %sg97, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr.i, align 4
  %52 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %length.i, align 4
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end11.i.do.body5.i_crit_edge, %if.end.i
  %remain.0.i = phi i32 [ %53, %if.end.i ], [ %sub14.i, %if.end11.i.do.body5.i_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.end.i ], [ %add13.i, %if.end11.i.do.body5.i_crit_edge ]
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %55, i32 72
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  %shr.i263 = lshr i32 %57, 17
  %and.i = and i32 %shr.i263, 8191
  %sub.i = sub i32 %46, %and.i
  %shl.i = shl i32 %sub.i, %44
  %58 = ptrtoint ptr %part_buf_count.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %part_buf_count.i, align 1
  %conv.i = zext i8 %59 to i32
  %sub7.i = sub i32 %shl.i, %conv.i
  %60 = tail call i32 @llvm.umin.i32(i32 %remain.0.i, i32 %sub7.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i264 = icmp eq i32 %60, 0
  br i1 %tobool.not.i264, label %do.body5.i.do.end.i_crit_edge, label %if.end11.i

do.body5.i.do.end.i_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end11.i:                                       ; preds = %do.body5.i
  %61 = ptrtoint ptr %push_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %push_data.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %51, i32 %offset.0.i
  tail call void %62(ptr noundef %dev_id, ptr noundef %add.ptr12.i, i32 noundef %60) #11
  %63 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bytes_xfered.i, align 4
  %add.i = add i32 %64, %60
  store i32 %add.i, ptr %bytes_xfered.i, align 4
  %add13.i = add i32 %60, %offset.0.i
  %sub14.i = sub i32 %remain.0.i, %60
  %tobool15.not.i = icmp eq i32 %sub14.i, 0
  br i1 %tobool15.not.i, label %if.end11.i.do.end.i_crit_edge, label %if.end11.i.do.body5.i_crit_edge

if.end11.i.do.body5.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

if.end11.i.do.end.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end11.i.do.end.i_crit_edge, %do.body5.i.do.end.i_crit_edge
  %remain.1.i = phi i32 [ 0, %if.end11.i.do.end.i_crit_edge ], [ %remain.0.i, %do.body5.i.do.end.i_crit_edge ]
  %offset.1.i = phi i32 [ %add13.i, %if.end11.i.do.end.i_crit_edge ], [ %offset.0.i, %do.body5.i.do.end.i_crit_edge ]
  %65 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %offset.1.i, ptr %consumed.i, align 4
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 8
  %add.ptr18.i = getelementptr i8, ptr %67, i32 64
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !355
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 8
  %add.ptr22.i = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 268435456) #11, !srcloc !356
  %71 = and i32 %68, 268435456
  %tobool25.not.i = icmp eq i32 %71, 0
  br i1 %tobool25.not.i, label %do.end26.i, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end26.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.1.i)
  %tobool27.not.i = icmp eq i32 %remain.1.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %do.end26.i.if.end33.i_crit_edge

do.end26.i.if.end33.i_crit_edge:                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then28.i:                                      ; preds = %do.end26.i
  %call29.i = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1.i) #11
  br i1 %call29.i, label %if.end31.i, label %if.then28.i.done.i_crit_edge

if.then28.i.done.i_crit_edge:                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end31.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %consumed.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end31.i, %do.end26.i.if.end33.i_crit_edge
  tail call void @sg_miter_stop(ptr noundef %sg_miter1.i) #11
  br label %if.end101

done.i:                                           ; preds = %if.then28.i.done.i_crit_edge, %do.body.i.done.i_crit_edge
  tail call void @sg_miter_stop(ptr noundef %sg_miter1.i) #11
  %73 = ptrtoint ptr %sg97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %sg97, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !365
  %pending_events.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events.i) #11
  br label %if.end101

if.end101:                                        ; preds = %done.i, %if.end33.i, %land.lhs.true96.if.end101_crit_edge, %if.then91.if.end101_crit_edge, %if.end88.if.end101_crit_edge
  %and102 = and i32 %pending.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end109_crit_edge, label %if.then104

if.end101.if.end109_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %irq_lock105 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %irq_lock105) #11
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 8
  %add.ptr107 = getelementptr i8, ptr %75, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 67108864) #11, !srcloc !356
  tail call fastcc void @dw_mci_cmd_interrupt(ptr noundef %dev_id, i32 noundef %pending.0)
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock105) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end101.if.end109_crit_edge
  %and110 = and i32 %pending.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end115_crit_edge, label %if.then112

if.end109.if.end115_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 8
  %add.ptr114 = getelementptr i8, ptr %77, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 16777216) #11, !srcloc !356
  %78 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %slot1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %pdata.i = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 37
  %82 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata.i, align 8
  %detect_delay_ms.i = getelementptr inbounds %struct.dw_mci_board, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %detect_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %detect_delay_ms.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %85) #11
  tail call void @mmc_detect_change(ptr noundef %81, i32 noundef %call2.i.i) #11
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end109.if.end115_crit_edge
  %sdio_id = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 9
  %86 = ptrtoint ptr %sdio_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sdio_id, align 4
  %add = add i32 %87, 16
  %shl = shl nuw i32 1, %add
  %and116 = and i32 %shl, %pending.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end125_crit_edge, label %if.then118

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end125

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %88 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 8
  %add.ptr123 = getelementptr i8, ptr %90, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %88) #11, !srcloc !356
  %host1.i = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host1.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %92, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %regs.i265 = getelementptr inbounds %struct.dw_mci, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %regs.i265 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i265, align 8
  %add.ptr.i266 = getelementptr i8, ptr %94, i32 36
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #11, !srcloc !355
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #11
  %97 = ptrtoint ptr %sdio_id to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sdio_id, align 4
  %add9.i = add i32 %98, 16
  %shl10.i = shl nuw i32 1, %add9.i
  %neg.i = xor i32 %shl10.i, -1
  %and.i267 = and i32 %96, %neg.i
  %99 = tail call i32 @llvm.bswap.i32(i32 %and.i267) #11
  %100 = ptrtoint ptr %regs.i265 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i265, align 8
  %add.ptr12.i268 = getelementptr i8, ptr %101, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i268, i32 %99) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call3.i) #11
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  tail call void @sdio_signal_irq(ptr noundef %103) #11
  br label %if.end125

if.end125:                                        ; preds = %if.then118, %if.end115.if.end125_crit_edge, %entry.if.end125_crit_edge
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 14
  %104 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp126.not = icmp eq i32 %105, 1
  br i1 %cmp126.not, label %if.end128, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end128:                                        ; preds = %if.end125
  %dma_64bit_address = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 16
  %106 = ptrtoint ptr %dma_64bit_address to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_64bit_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp129 = icmp eq i32 %107, 1
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 8
  br i1 %cmp129, label %if.then130, label %if.else

if.then130:                                       ; preds = %if.end128
  %add.ptr133 = getelementptr i8, ptr %109, i32 144
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #11, !srcloc !355
  %111 = and i32 %110, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool137.not = icmp eq i32 %111, 0
  br i1 %tobool137.not, label %if.then130.cleanup_crit_edge, label %if.then138

if.then130.cleanup_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then138:                                       ; preds = %if.then130
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 8
  %add.ptr140 = getelementptr i8, ptr %113, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 50331648) #11, !srcloc !356
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 8
  %add.ptr142 = getelementptr i8, ptr %115, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 65536) #11, !srcloc !356
  %pending_events143 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  %116 = ptrtoint ptr %pending_events143 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %pending_events143, align 4
  %118 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool145.not = icmp eq i32 %118, 0
  br i1 %tobool145.not, label %if.then138.cleanup.sink.split_crit_edge, label %if.then138.cleanup_crit_edge

if.then138.cleanup_crit_edge:                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then138.cleanup.sink.split_crit_edge:          ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end128
  %add.ptr151 = getelementptr i8, ptr %109, i32 140
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #11, !srcloc !355
  %120 = and i32 %119, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool155.not = icmp eq i32 %120, 0
  br i1 %tobool155.not, label %if.else.cleanup_crit_edge, label %if.then156

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then156:                                       ; preds = %if.else
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 8
  %add.ptr158 = getelementptr i8, ptr %122, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 50331648) #11, !srcloc !356
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 8
  %add.ptr160 = getelementptr i8, ptr %124, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 65536) #11, !srcloc !356
  %pending_events161 = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 28
  %125 = ptrtoint ptr %pending_events161 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %pending_events161, align 4
  %127 = and i32 %126, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool163.not = icmp eq i32 %127, 0
  br i1 %tobool163.not, label %if.then156.cleanup.sink.split_crit_edge, label %if.then156.cleanup_crit_edge

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then156.cleanup.sink.split_crit_edge:          ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then156.cleanup.sink.split_crit_edge, %if.then138.cleanup.sink.split_crit_edge
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %dev_id, i32 0, i32 19
  %128 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_ops, align 8
  %complete = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %complete, align 4
  tail call void %131(ptr noundef %dev_id) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then156.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then138.cleanup_crit_edge, %if.then130.cleanup_crit_edge, %if.end125.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_init_slot(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @mmc_alloc_host(i32 noundef 44, ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %id = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %id, align 4
  %sdio_id0 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 54
  %3 = ptrtoint ptr %sdio_id0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sdio_id0, align 8
  %sdio_id = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7
  %5 = ptrtoint ptr %sdio_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sdio_id, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %private.i, align 4
  %host4 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %7 = ptrtoint ptr %host4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %host, ptr %host4, align 4
  %slot5 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %8 = ptrtoint ptr %slot5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %private.i, ptr %slot5, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dw_mci_ops, ptr %ops, align 4
  %call6 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.err_host_allocated_crit_edge

if.end.err_host_allocated_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_host_allocated

if.end9:                                          ; preds = %if.end
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 8
  %10 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocr_avail, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3145728, ptr %ocr_avail, align 64
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %call14 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_host_allocated_crit_edge

if.end13.err_host_allocated_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_host_allocated

if.end17:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %host4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host4, align 4
  %drv_data2.i = getelementptr inbounds %struct.dw_mci, ptr %14, i32 0, i32 38
  %15 = ptrtoint ptr %drv_data2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_data2.i, align 4
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %pdata.i = getelementptr inbounds %struct.dw_mci, ptr %14, i32 0, i32 37
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 8
  %caps.i = getelementptr inbounds %struct.dw_mci_board, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %caps6.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 16
  %23 = ptrtoint ptr %caps6.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %caps6.i, align 32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end17.if.end.i_crit_edge
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 8
  %pm_caps.i = getelementptr inbounds %struct.dw_mci_board, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pm_caps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pm_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not.i = icmp eq i32 %27, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then9.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pm_caps12.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 19
  %28 = ptrtoint ptr %pm_caps12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %pm_caps12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.end.i.if.end13.i_crit_edge
  %tobool14.not.i = icmp eq ptr %16, null
  br i1 %tobool14.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.then15.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %common_caps.i = getelementptr inbounds %struct.dw_mci_drv_data, ptr %16, i32 0, i32 2
  %29 = ptrtoint ptr %common_caps.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %common_caps.i, align 4
  %caps16.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 16
  %31 = ptrtoint ptr %caps16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps16.i, align 32
  %or.i = or i32 %32, %30
  store i32 %or.i, ptr %caps16.i, align 32
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end13.i.if.end17.i_crit_edge
  %dev.i = getelementptr inbounds %struct.dw_mci, ptr %14, i32 0, i32 36
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %tobool18.not.i = icmp eq ptr %36, null
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %36, ptr noundef nonnull @.str.137) #11
  %37 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0) #11
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %id.i = getelementptr i8, ptr %34, i32 -12
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then19.i
  %ctrl_id.0.i = phi i32 [ %37, %if.then19.i ], [ %39, %if.else.i ]
  br i1 %tobool14.not.i, label %if.end25.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.end25.i
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %16, align 4
  %tobool28.not.i = icmp eq ptr %41, null
  br i1 %tobool28.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.then29.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %num_caps.i = getelementptr inbounds %struct.dw_mci_drv_data, ptr %16, i32 0, i32 1
  %42 = ptrtoint ptr %num_caps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_caps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ctrl_id.0.i, i32 %43)
  %cmp30.not.i = icmp ult i32 %ctrl_id.0.i, %43
  br i1 %cmp30.not.i, label %if.end33.i, label %dw_mci_init_slot_caps.exit

if.end33.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i32, ptr %41, i32 %ctrl_id.0.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %caps35.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 16
  %46 = ptrtoint ptr %caps35.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %caps35.i, align 32
  %or36.i = or i32 %47, %45
  store i32 %or36.i, ptr %caps35.i, align 32
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end33.i, %land.lhs.true.i.if.end37.i_crit_edge, %if.end25.i.if.end37.i_crit_edge
  %48 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata.i, align 8
  %caps2.i = getelementptr inbounds %struct.dw_mci_board, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caps2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool39.not.i = icmp eq i32 %51, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end44.i_crit_edge, label %if.then40.i

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %caps243.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 17
  %52 = ptrtoint ptr %caps243.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %caps243.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end44.i_crit_edge
  %f_min.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 5
  %53 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 100000, ptr %f_min.i, align 4
  %f_max.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 6
  %54 = ptrtoint ptr %f_max.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool45.not.i = icmp eq i32 %55, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end44.i.if.end48.i_crit_edge

if.end44.i.if.end48.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %f_max.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 200000000, ptr %f_max.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end44.i.if.end48.i_crit_edge
  %caps49.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 16
  %57 = ptrtoint ptr %caps49.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %caps49.i, align 32
  %and.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool50.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end21_crit_edge, label %if.then51.i

if.end48.i.if.end21_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %caps252.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 17
  %59 = ptrtoint ptr %caps252.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps252.i, align 4
  %or53.i = or i32 %60, 131072
  store i32 %or53.i, ptr %caps252.i, align 4
  br label %if.end21

dw_mci_init_slot_caps.exit:                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.138, i32 noundef %ctrl_id.0.i) #14
  br label %err_host_allocated

if.end21:                                         ; preds = %if.then51.i, %if.end48.i.if.end21_crit_edge
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %63 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %use_dma, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %64, label %if.else39 [
    i32 1, label %if.then22
    i32 2, label %if.then29
  ]

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %ring_size = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 20
  %66 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ring_size, align 4
  %conv = trunc i32 %67 to i16
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %68 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %69 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 65535, ptr %max_blk_size, align 4
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %70 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4096, ptr %max_seg_size, align 16
  %71 = load i32, ptr %ring_size, align 4
  %mul = shl i32 %71, 12
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %72 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul, ptr %max_req_size, align 8
  %div109 = lshr exact i32 %mul, 9
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %73 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div109, ptr %max_blk_count, align 128
  br label %if.end50

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %max_segs30 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %74 = ptrtoint ptr %max_segs30 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 64, ptr %max_segs30, align 4
  %max_blk_size31 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %75 = ptrtoint ptr %max_blk_size31 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 65535, ptr %max_blk_size31, align 4
  %max_blk_count32 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %76 = ptrtoint ptr %max_blk_count32 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 65535, ptr %max_blk_count32, align 128
  %max_req_size36 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %77 = ptrtoint ptr %max_req_size36 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -131071, ptr %max_req_size36, align 8
  %max_seg_size38 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %78 = ptrtoint ptr %max_seg_size38 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -131071, ptr %max_seg_size38, align 16
  br label %if.end50

if.else39:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %max_segs40 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %79 = ptrtoint ptr %max_segs40 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 64, ptr %max_segs40, align 4
  %max_blk_size41 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %80 = ptrtoint ptr %max_blk_size41 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 65535, ptr %max_blk_size41, align 4
  %max_blk_count42 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %81 = ptrtoint ptr %max_blk_count42 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 512, ptr %max_blk_count42, align 128
  %max_req_size46 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %82 = ptrtoint ptr %max_req_size46 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 33553920, ptr %max_req_size46, align 8
  %max_seg_size48 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %83 = ptrtoint ptr %max_seg_size48 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 33553920, ptr %max_seg_size48, align 16
  br label %if.end50

if.end50:                                         ; preds = %if.else39, %if.then29, %if.then22
  %call51 = tail call i32 @dw_mci_get_cd(ptr noundef nonnull %call)
  %call52 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.err_host_allocated_crit_edge

if.end50.err_host_allocated_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_host_allocated

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_init_debugfs(ptr noundef %private.i)
  br label %cleanup

err_host_allocated:                               ; preds = %if.end50.err_host_allocated_crit_edge, %dw_mci_init_slot_caps.exit, %if.end13.err_host_allocated_crit_edge, %if.end.err_host_allocated_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.err_host_allocated_crit_edge ], [ %call14, %if.end13.err_host_allocated_crit_edge ], [ -22, %dw_mci_init_slot_caps.exit ], [ %call52, %if.end50.err_host_allocated_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err_host_allocated, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_host_allocated ], [ 0, %if.end55 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_enable_cd(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mmc_gpio_get_cd(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_mci_remove(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_remove.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_remove, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !354

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_remove.__UNIQUE_ID_ddebug325, ptr noundef %1, ptr noundef nonnull @.str.44) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %slot = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @mmc_remove_host(ptr noundef %5) #11
  %host.i = getelementptr inbounds %struct.dw_mci_slot, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %slot1.i = getelementptr inbounds %struct.dw_mci, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %slot1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %slot1.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void @mmc_free_host(ptr noundef %10) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #11, !srcloc !356
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #11, !srcloc !356
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #11, !srcloc !356
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #11, !srcloc !356
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %19 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.end6.if.end18_crit_edge, label %land.lhs.true

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end6
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 19
  %21 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_ops, align 8
  %exit = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exit, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %24(ptr noundef %host) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %pdata = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 37
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 8
  %rstc = getelementptr inbounds %struct.dw_mci_board, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rstc, align 4
  %call19 = tail call i32 @reset_control_assert(ptr noundef %28) #11
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 41
  %29 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ciu_clk, align 8
  tail call void @clk_disable(ptr noundef %30) #11
  tail call void @clk_unprepare(ptr noundef %30) #11
  %biu_clk = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 40
  %31 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %biu_clk, align 4
  tail call void @clk_disable(ptr noundef %32) #11
  tail call void @clk_unprepare(ptr noundef %32) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mci_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_ops, align 8
  %exit = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exit, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 41
  %8 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ciu_clk, align 8
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %slot = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 42
  %10 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slot, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true5:                                   ; preds = %if.end
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call7 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %13) #11
  br i1 %call7, label %land.lhs.true5.if.then12_crit_edge, label %lor.lhs.false

land.lhs.true5.if.then12_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %14 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slot, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps.i, align 32
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.not = icmp eq i32 %20, 0
  br i1 %tobool11.not.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %land.lhs.true5.if.then12_crit_edge
  %biu_clk = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 40
  %21 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %biu_clk, align 4
  tail call void @clk_disable(ptr noundef %22) #11
  tail call void @clk_unprepare(ptr noundef %22) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false.if.end13_crit_edge, %if.end.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_mci_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slot = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %5) #11
  br i1 %call2, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 32
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.not = icmp eq i32 %12, 0
  br i1 %tobool6.not.not, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %biu_clk = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 40
  %13 = ptrtoint ptr %biu_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %biu_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10_crit_edge, label %if.then3.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %14) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ciu_clk = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 41
  %15 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ciu_clk, align 8
  %call.i99 = tail call i32 @clk_prepare(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i103, label %if.end10.err_crit_edge

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i103:                                      ; preds = %if.end10
  %call1.i101 = tail call i32 @clk_enable(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i102, label %if.end14, label %if.end.i103.err.sink.split_crit_edge

if.end.i103.err.sink.split_crit_edge:             ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.sink.split

if.end14:                                         ; preds = %if.end.i103
  %call15 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %1, i32 noundef 7)
  br i1 %call15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ciu_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ciu_clk, align 8
  tail call void @clk_disable(ptr noundef %18) #11
  br label %err.sink.split

if.end18:                                         ; preds = %if.end14
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %if.end18.if.end26_crit_edge, label %land.lhs.true20

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end18
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_ops, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool21.not = icmp eq ptr %24, null
  br i1 %tobool21.not, label %land.lhs.true20.if.end26_crit_edge, label %if.then22

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 %24(ptr noundef %1) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %land.lhs.true20.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %fifoth_val = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 34
  %25 = ptrtoint ptr %fifoth_val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifoth_val, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #11, !srcloc !356
  %prev_blksz = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %prev_blksz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %prev_blksz, align 4
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #11, !srcloc !356
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %34, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #11, !srcloc !356
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr32 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -21561344) #11, !srcloc !356
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 268435456) #11, !srcloc !356
  %39 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slot, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 51
  %43 = ptrtoint ptr %pm_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pm_flags, align 4
  %and = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end26.if.end43_crit_edge, label %if.then38

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then38:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %ios = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 28
  tail call void @dw_mci_set_ios(ptr noundef %42, ptr noundef %ios)
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end26.if.end43_crit_edge
  %45 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %slot, align 4
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %46, i1 noundef zeroext true)
  %47 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slot, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %sdio_irqs.i = getelementptr inbounds %struct.mmc_host, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %sdio_irqs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sdio_irqs.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.not = icmp eq i32 %52, 0
  br i1 %cmp.i.not, label %if.end43.if.end50_crit_edge, label %if.then48

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %host1.i = getelementptr inbounds %struct.dw_mci_slot, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host1.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %54, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %56, i32 36
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  %sdio_id8.i = getelementptr inbounds %struct.dw_mci_slot, ptr %48, i32 0, i32 9
  %59 = ptrtoint ptr %sdio_id8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sdio_id8.i, align 4
  %add9.i = add i32 %60, 16
  %shl10.i = shl nuw i32 1, %add9.i
  %or.i = or i32 %shl10.i, %58
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %63, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %61) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call3.i) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end43.if.end50_crit_edge
  %64 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %slot, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %caps.i108 = getelementptr inbounds %struct.mmc_host, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %caps.i108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %caps.i108, align 32
  %and.i109 = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %if.end.i113, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i113:                                      ; preds = %if.end50
  %call.i111 = tail call i32 @mmc_gpio_get_cd(ptr noundef %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %do.body4.i, label %if.end.i113.cleanup_crit_edge

if.end.i113.cleanup_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body4.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #13
  %irq_lock.i114 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i114) #11
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 8
  %add.ptr.i116 = getelementptr i8, ptr %71, i32 36
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #11, !srcloc !355
  %73 = or i32 %72, 16777216
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 8
  %add.ptr13.i = getelementptr i8, ptr %75, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %73) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i114, i32 noundef %call7.i) #11
  br label %cleanup

err.sink.split:                                   ; preds = %if.then16, %if.end.i103.err.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.then16 ], [ %16, %if.end.i103.err.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -19, %if.then16 ], [ %call1.i101, %if.end.i103.err.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %err

err:                                              ; preds = %err.sink.split, %if.end10.err_crit_edge
  %ret.0 = phi i32 [ %call.i99, %if.end10.err_crit_edge ], [ %ret.0.ph, %err.sink.split ]
  %76 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %slot, align 4
  %tobool52.not = icmp eq ptr %77, null
  br i1 %tobool52.not, label %err.cleanup_crit_edge, label %land.lhs.true53

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true53:                                  ; preds = %err
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %call56 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %79) #11
  br i1 %call56, label %land.lhs.true53.if.then62_crit_edge, label %lor.lhs.false57

land.lhs.true53.if.then62_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

lor.lhs.false57:                                  ; preds = %land.lhs.true53
  %80 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %slot, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %caps.i117 = getelementptr inbounds %struct.mmc_host, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %caps.i117 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %caps.i117, align 32
  %86 = and i32 %85, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool61.not.not = icmp eq i32 %86, 0
  br i1 %tobool61.not.not, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false57.if.then62_crit_edge

lor.lhs.false57.if.then62_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then62:                                        ; preds = %lor.lhs.false57.if.then62_crit_edge, %land.lhs.true53.if.then62_crit_edge
  %biu_clk63 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 40
  %87 = ptrtoint ptr %biu_clk63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %biu_clk63, align 4
  tail call void @clk_disable(ptr noundef %88) #11
  tail call void @clk_unprepare(ptr noundef %88) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %lor.lhs.false57.cleanup_crit_edge, %err.cleanup_crit_edge, %do.body4.i, %if.end.i113.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then62 ], [ %ret.0, %lor.lhs.false57.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.end.i113.cleanup_crit_edge ], [ 0, %do.body4.i ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_set_ios(ptr noundef %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %drv_data1 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data1, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %switch.selectcmp = icmp eq i8 %5, 3
  %switch.select = select i1 %switch.selectcmp, i32 65536, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp202 = icmp eq i8 %5, 2
  %switch.select203 = select i1 %switch.selectcmp202, i32 1, i32 %switch.select
  %ctype4 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %6 = ptrtoint ptr %ctype4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.select203, ptr %ctype4, align 4
  %regs6 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs6, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 116
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %11 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %timing, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %12, label %if.else [
    i8 8, label %entry.if.then_crit_edge
    i8 7, label %entry.if.then_crit_edge204
    i8 10, label %entry.if.then_crit_edge205
  ]

entry.if.then_crit_edge205:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge204:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge204, %entry.if.then_crit_edge205
  %id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %shl19 = shl i32 65536, %15
  %or = or i32 %shl19, %10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id20 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %id20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id20, align 4
  %shl22 = shl i32 65536, %17
  %neg = xor i32 %shl22, -1
  %and = and i32 %10, %neg
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regs.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %regs.0)
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %regs24 = getelementptr inbounds %struct.dw_mci, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs24, align 8
  %add.ptr25 = getelementptr i8, ptr %22, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %18) #11, !srcloc !356
  %23 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %timing, align 4
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %timing28 = getelementptr inbounds %struct.dw_mci, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %timing28 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %timing28, align 8
  %28 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ios, align 4
  %clock29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %clock29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %clock29, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end34_crit_edge, label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %set_ios = getelementptr inbounds %struct.dw_mci_drv_data, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %set_ios to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_ios, align 4
  %tobool30.not = icmp eq ptr %32, null
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  tail call void %32(ptr noundef %34, ptr noundef %ios) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %35 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %power_mode, align 2
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %36, label %if.end34.sw.epilog126_crit_edge [
    i8 1, label %sw.bb36
    i8 2, label %sw.bb59
    i8 0, label %sw.bb88
  ]

if.end34.sw.epilog126_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog126

sw.bb36:                                          ; preds = %if.end34
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %38 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb36.if.end46_crit_edge, label %if.then38

sw.bb36.if.end46_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then38:                                        ; preds = %sw.bb36
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %40 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vdd, align 4
  %call41 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %39, i16 noundef zeroext %41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then38.if.end46_crit_edge, label %do.end

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.dw_mci, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.161) #14
  br label %cleanup

if.end46:                                         ; preds = %if.then38.if.end46_crit_edge, %sw.bb36.if.end46_crit_edge
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %46 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host, align 4
  %regs49 = getelementptr inbounds %struct.dw_mci, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %regs49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs49, align 8
  %add.ptr50 = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #11, !srcloc !355
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %id53 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %52 = ptrtoint ptr %id53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id53, align 4
  %shl54 = shl nuw i32 1, %53
  %or55 = or i32 %shl54, %51
  %54 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %55 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host, align 4
  %regs57 = getelementptr inbounds %struct.dw_mci, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs57, align 8
  %add.ptr58 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %54) #11, !srcloc !356
  br label %sw.epilog126

sw.bb59:                                          ; preds = %if.end34
  %59 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host, align 4
  %vqmmc_enabled = getelementptr inbounds %struct.dw_mci, ptr %60, i32 0, i32 51
  %61 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %vqmmc_enabled, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool61.not = icmp eq i8 %62, 0
  br i1 %tobool61.not, label %if.then62, label %sw.bb59.if.end87_crit_edge

sw.bb59.if.end87_crit_edge:                       ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then62:                                        ; preds = %sw.bb59
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %63 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vqmmc, align 4
  %cmp.i199 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.else81, label %if.then65

if.then65:                                        ; preds = %if.then62
  %call68 = tail call i32 @regulator_enable(ptr noundef %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  %65 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host, align 4
  br i1 %cmp69, label %do.end74, label %if.else77

do.end74:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %dev76 = getelementptr inbounds %struct.dw_mci, ptr %66, i32 0, i32 36
  %67 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.164) #14
  br label %if.end84

if.else77:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %vqmmc_enabled79 = getelementptr inbounds %struct.dw_mci, ptr %66, i32 0, i32 51
  %69 = ptrtoint ptr %vqmmc_enabled79 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %vqmmc_enabled79, align 4
  br label %if.end84

if.else81:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %vqmmc_enabled, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.else77, %do.end74
  %71 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %host, align 4
  %call86 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %72, i32 noundef 7)
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %sw.bb59.if.end87_crit_edge
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %private.i, i1 noundef zeroext false)
  br label %sw.epilog126

sw.bb88:                                          ; preds = %if.end34
  tail call fastcc void @dw_mci_setup_bus(ptr noundef %private.i, i1 noundef zeroext false)
  %supply89 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %73 = ptrtoint ptr %supply89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %supply89, align 16
  %cmp.i200 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %sw.bb88.if.end96_crit_edge, label %if.then92

sw.bb88.if.end96_crit_edge:                       ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then92:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #13
  %call95 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %74, i16 noundef zeroext 0) #11
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %sw.bb88.if.end96_crit_edge
  %vqmmc98 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %75 = ptrtoint ptr %vqmmc98 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vqmmc98, align 4
  %cmp.i201 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.end96.if.end109_crit_edge, label %land.lhs.true100

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

land.lhs.true100:                                 ; preds = %if.end96
  %77 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %host, align 4
  %vqmmc_enabled102 = getelementptr inbounds %struct.dw_mci, ptr %78, i32 0, i32 51
  %79 = ptrtoint ptr %vqmmc_enabled102 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %vqmmc_enabled102, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool103.not = icmp eq i8 %80, 0
  br i1 %tobool103.not, label %land.lhs.true100.if.end109_crit_edge, label %if.then105

land.lhs.true100.if.end109_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then105:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  %call108 = tail call i32 @regulator_disable(ptr noundef %76) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %land.lhs.true100.if.end109_crit_edge, %if.end96.if.end109_crit_edge
  %81 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host, align 4
  %vqmmc_enabled111 = getelementptr inbounds %struct.dw_mci, ptr %82, i32 0, i32 51
  %83 = ptrtoint ptr %vqmmc_enabled111 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %vqmmc_enabled111, align 4
  %84 = load ptr, ptr %host, align 4
  %regs114 = getelementptr inbounds %struct.dw_mci, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %regs114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs114, align 8
  %add.ptr115 = getelementptr i8, ptr %86, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #11, !srcloc !355
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %id118 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %89 = ptrtoint ptr %id118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id118, align 4
  %shl119 = shl nuw i32 1, %90
  %neg120 = xor i32 %shl119, -1
  %and121 = and i32 %88, %neg120
  %91 = tail call i32 @llvm.bswap.i32(i32 %and121)
  %92 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %host, align 4
  %regs123 = getelementptr inbounds %struct.dw_mci, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %regs123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs123, align 8
  %add.ptr124 = getelementptr i8, ptr %95, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %91) #11, !srcloc !356
  br label %sw.epilog126

sw.epilog126:                                     ; preds = %if.end109, %if.end87, %if.end46, %if.end34.sw.epilog126_crit_edge
  %96 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %host, align 4
  %state = getelementptr inbounds %struct.dw_mci, ptr %97, i32 0, i32 30
  %98 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %99)
  %cmp128 = icmp eq i32 %99, 7
  br i1 %cmp128, label %land.lhs.true130, label %sw.epilog126.cleanup_crit_edge

sw.epilog126.cleanup_crit_edge:                   ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true130:                                 ; preds = %sw.epilog126
  %100 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp132.not = icmp eq i32 %101, 0
  br i1 %cmp132.not, label %land.lhs.true130.cleanup_crit_edge, label %if.then134

land.lhs.true130.cleanup_crit_edge:               ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then134:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %land.lhs.true130.cleanup_crit_edge, %sw.epilog126.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_setup_bus(ptr noundef %slot, i1 noundef zeroext %force_clkinit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %clock2 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 5
  %2 = ptrtoint ptr %clock2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock2, align 4
  %state = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp eq i32 %5, 7
  %spec.select = select i1 %cmp, i32 270540800, i32 2105344
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot, align 4
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 58
  %8 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %slot, i32 noundef %spec.select)
  br label %if.end76

if.else:                                          ; preds = %entry
  %current_speed = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 33
  %11 = ptrtoint ptr %current_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_speed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp4.not = icmp ne i32 %3, %12
  %brmerge = or i1 %cmp4.not, %force_clkinit
  br i1 %brmerge, label %if.then6, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then6:                                         ; preds = %if.else
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus_hz, align 4
  %.frozen = freeze i32 %14
  %.frozen147 = freeze i32 %3
  %div7 = udiv i32 %.frozen, %.frozen147
  %15 = mul i32 %div7, %.frozen147
  %rem.decomposed = sub i32 %.frozen, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool9.not = icmp ne i32 %rem.decomposed, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp11 = icmp ugt i32 %14, %3
  %or.cond = and i1 %cmp11, %tobool9.not
  %add = zext i1 %or.cond to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp15.not = icmp eq i32 %14, %3
  %div.0 = add i32 %div7, 1
  %sub = add i32 %div.0, %add
  %div17143 = lshr i32 %sub, 1
  %cond = select i1 %cmp15.not, i32 0, i32 %div17143
  %__clk_old = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 6
  %16 = ptrtoint ptr %__clk_old to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__clk_old, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %17)
  %cmp18.not = icmp eq i32 %3, %17
  br i1 %cmp18.not, label %lor.lhs.false21, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.then6
  %flags = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 7
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  %brmerge144 = or i1 %tobool20.not, %force_clkinit
  br i1 %brmerge144, label %if.then23, label %land.lhs.true19.if.end45_crit_edge

land.lhs.true19.if.end45_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

lor.lhs.false21:                                  ; preds = %if.then6
  br i1 %force_clkinit, label %lor.lhs.false21.if.end36_crit_edge, label %lor.lhs.false21.if.end45_crit_edge

lor.lhs.false21.if.end45_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

lor.lhs.false21.if.end36_crit_edge:               ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then23:                                        ; preds = %land.lhs.true19
  br i1 %force_clkinit, label %if.then23.if.end36_crit_edge, label %do.end

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end:                                           ; preds = %if.then23
  %21 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slot, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 1
  %id = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 8
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool28.not = icmp eq i32 %cond, 0
  br i1 %tobool28.not, label %do.end.cond.end34_crit_edge, label %cond.true29

do.end.cond.end34_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end34

cond.true29:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %div31 = udiv i32 %14, %div17143
  %shr = lshr i32 %div31, 1
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true29, %do.end.cond.end34_crit_edge
  %cond35 = phi i32 [ %shr, %cond.true29 ], [ %14, %do.end.cond.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %class_dev, ptr noundef nonnull @.str.166, i32 noundef %24, i32 noundef %14, i32 noundef %3, i32 noundef %cond35, i32 noundef %cond) #14
  br label %if.end36

if.end36:                                         ; preds = %cond.end34, %if.then23.if.end36_crit_edge, %lor.lhs.false21.if.end36_crit_edge
  %25 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slot, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps, align 32
  %and = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end36.if.end45_crit_edge, label %land.lhs.true39

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true39:                                  ; preds = %if.end36
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %3)
  %cmp41 = icmp eq i32 %30, %3
  br i1 %cmp41, label %if.then42, label %land.lhs.true39.if.end45_crit_edge

land.lhs.true39.if.end45_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  %flags43 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags43) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true39.if.end45_crit_edge, %if.end36.if.end45_crit_edge, %lor.lhs.false21.if.end45_crit_edge, %land.lhs.true19.if.end45_crit_edge
  %regs46 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regs46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs46, align 8
  %add.ptr47 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #11, !srcloc !356
  %33 = ptrtoint ptr %regs46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs46, align 8
  %add.ptr49 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %slot, i32 noundef %spec.select)
  %35 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %36 = ptrtoint ptr %regs46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs46, align 8
  %add.ptr51 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %35) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %slot, i32 noundef %spec.select)
  %id52 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 8
  %38 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id52, align 4
  %flags53 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 7
  %40 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags53, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool55.not = icmp eq i32 %42, 0
  %clk_en_a.0.v = select i1 %tobool55.not, i32 65537, i32 1
  %clk_en_a.0 = shl i32 %clk_en_a.0.v, %39
  %43 = tail call i32 @llvm.bswap.i32(i32 %clk_en_a.0)
  %44 = ptrtoint ptr %regs46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs46, align 8
  %add.ptr62 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %43) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %slot, i32 noundef %spec.select)
  %46 = ptrtoint ptr %__clk_old to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %3, ptr %__clk_old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool64.not = icmp eq i32 %cond, 0
  %47 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bus_hz, align 4
  br i1 %tobool64.not, label %if.end45.cond.end71_crit_edge, label %cond.true65

if.end45.cond.end71_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end71

cond.true65:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %div67 = udiv i32 %48, %div17143
  %shr68 = lshr i32 %div67, 1
  br label %cond.end71

cond.end71:                                       ; preds = %cond.true65, %if.end45.cond.end71_crit_edge
  %cond72 = phi i32 [ %shr68, %cond.true65 ], [ %48, %if.end45.cond.end71_crit_edge ]
  %49 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slot, align 4
  %actual_clock74 = getelementptr inbounds %struct.mmc_host, ptr %50, i32 0, i32 58
  %51 = ptrtoint ptr %actual_clock74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond72, ptr %actual_clock74, align 8
  br label %if.end76

if.end76:                                         ; preds = %cond.end71, %if.else.if.end76_crit_edge, %if.then3
  %current_speed77 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 33
  %52 = ptrtoint ptr %current_speed77 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %3, ptr %current_speed77, align 8
  %ctype = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 2
  %53 = ptrtoint ptr %ctype to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctype, align 4
  %id78 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 8
  %55 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id78, align 4
  %shl79 = shl i32 %54, %56
  %57 = tail call i32 @llvm.bswap.i32(i32 %shl79)
  %regs80 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %regs80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs80, align 8
  %add.ptr81 = getelementptr i8, ptr %59, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %57) #11, !srcloc !356
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dw_mci_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_fault_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %t, i32 -636
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %data_status = getelementptr i8, ptr %t, i32 -420
  %0 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %data_status, align 4
  %pending_events = getelementptr i8, ptr %t, i32 -384
  tail call void @_set_bit(i32 noundef 3, ptr noundef %pending_events) #11
  %state.i = getelementptr i8, ptr %t, i32 -404
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr i8, ptr %t, i32 -408
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_idmac_init(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_64bit_address = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %dma_64bit_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_64bit_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %ring_size = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 20
  br i1 %cmp, label %for.body.lr.ph, label %for.body26.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %ring_size, align 4
  %sg_cpu = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 18
  %3 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sg_cpu, align 4
  %sg_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.0117 = phi ptr [ %4, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_dma, align 8
  %add = add nuw i32 %i.0116, 1
  %mul = shl i32 %add, 5
  %add3 = add i32 %6, %mul
  %des6 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %p.0117, i32 0, i32 6
  %7 = ptrtoint ptr %des6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add3, ptr %des6, align 4
  %des7 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %p.0117, i32 0, i32 7
  %8 = ptrtoint ptr %des7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %des7, align 4
  %incdec.ptr = getelementptr %struct.idmac_desc_64addr, ptr %p.0117, i32 1
  %9 = call ptr @memset(ptr %p.0117, i32 0, i32 16)
  %10 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_size, align 4
  %sub = add i32 %11, -1
  %cmp2 = icmp ult i32 %add, %sub
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sg_dma9 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  %12 = ptrtoint ptr %sg_dma9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_dma9, align 8
  %des611 = getelementptr %struct.idmac_desc_64addr, ptr %p.0117, i32 1, i32 6
  %14 = ptrtoint ptr %des611 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %des611, align 4
  %des716 = getelementptr %struct.idmac_desc_64addr, ptr %p.0117, i32 1, i32 7
  %15 = ptrtoint ptr %des716 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %des716, align 4
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %incdec.ptr, align 4
  br label %if.end

for.body26.lr.ph:                                 ; preds = %entry
  %17 = ptrtoint ptr %ring_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %ring_size, align 4
  %sg_cpu20 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 18
  %18 = ptrtoint ptr %sg_cpu20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_cpu20, align 4
  %sg_dma27 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %p18.0113 = phi ptr [ %19, %for.body26.lr.ph ], [ %incdec.ptr36, %for.body26.for.body26_crit_edge ]
  %i.1112 = phi i32 [ 0, %for.body26.lr.ph ], [ %add28, %for.body26.for.body26_crit_edge ]
  %20 = ptrtoint ptr %sg_dma27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg_dma27, align 8
  %add28 = add nuw i32 %i.1112, 1
  %mul29 = shl i32 %add28, 4
  %add30 = add i32 %21, %mul29
  %22 = tail call i32 @llvm.bswap.i32(i32 %add30)
  %des331 = getelementptr inbounds %struct.idmac_desc, ptr %p18.0113, i32 0, i32 3
  %23 = ptrtoint ptr %des331 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %des331, align 4
  %24 = ptrtoint ptr %p18.0113 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %p18.0113, align 4
  %des133 = getelementptr inbounds %struct.idmac_desc, ptr %p18.0113, i32 0, i32 1
  %25 = ptrtoint ptr %des133 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %des133, align 4
  %incdec.ptr36 = getelementptr %struct.idmac_desc, ptr %p18.0113, i32 1
  %26 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring_size, align 4
  %sub23 = add i32 %27, -1
  %cmp24 = icmp ult i32 %add28, %sub23
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.end37

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26

for.end37:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #13
  %sg_dma38 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  %28 = ptrtoint ptr %sg_dma38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_dma38, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %des339 = getelementptr %struct.idmac_desc, ptr %p18.0113, i32 1, i32 3
  %31 = ptrtoint ptr %des339 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %des339, align 4
  %32 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 536870912, ptr %incdec.ptr36, align 4
  br label %if.end

if.end:                                           ; preds = %for.end37, %for.end
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 128
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %36 = or i32 %35, 16777216
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %38, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %36) #11, !srcloc !356
  %39 = ptrtoint ptr %dma_64bit_address to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_64bit_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp42 = icmp eq i32 %40, 1
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  br i1 %cmp42, label %if.then44, label %if.else57

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %42, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 922943488) #11, !srcloc !356
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %add.ptr46 = getelementptr i8, ptr %44, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 50397184) #11, !srcloc !356
  %sg_dma47 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  %45 = ptrtoint ptr %sg_dma47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sg_dma47, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr50 = getelementptr i8, ptr %49, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %47) #11, !srcloc !356
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %add.ptr56 = getelementptr i8, ptr %51, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #11, !srcloc !356
  br label %if.end65

if.else57:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr59 = getelementptr i8, ptr %42, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 922943488) #11, !srcloc !356
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr61 = getelementptr i8, ptr %53, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 50397184) #11, !srcloc !356
  %sg_dma62 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 17
  %54 = ptrtoint ptr %sg_dma62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sg_dma62, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  %add.ptr64 = getelementptr i8, ptr %58, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %56) #11, !srcloc !356
  br label %if.end65

if.end65:                                         ; preds = %if.else57, %if.then44
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_idmac_start_dma(ptr nocapture noundef %host, i32 noundef %sg_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_64bit_address = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %dma_64bit_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_64bit_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %data = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @dw_mci_prepare_desc64(ptr noundef %host, ptr noundef %3, i32 noundef %sg_len)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @dw_mci_prepare_desc32(ptr noundef %host, ptr noundef %3, i32 noundef %sg_len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %do.body, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %call5 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %host, i32 noundef 4)
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #11, !srcloc !356
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !355
  %13 = or i32 %12, 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr14 = getelementptr i8, ptr %17, i32 128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #11, !srcloc !355
  %19 = or i32 %18, -2113929216
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %19) #11, !srcloc !356
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr21 = getelementptr i8, ptr %23, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 16777216) #11, !srcloc !356
  br label %out

out:                                              ; preds = %do.body, %if.end.out_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_dmac_complete_dma(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 14
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ne i32 %3, 2
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %slot = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 42
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 19
  %16 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_ops, align 8
  %cleanup = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cleanup, align 4
  tail call void %19(ptr noundef %arg) #11
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  %state.i = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 27, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.dw_mci, ptr %arg, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_idmac_stop_dma(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !355
  %3 = and i32 %2, -67108867
  %4 = or i32 %3, 67108864
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !356
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 128
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !355
  %10 = and i32 %9, 2097151999
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %11) #11, !srcloc !356
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_dma_cleanup(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %cond.i, i32 noundef 0) #11
  %12 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %host_cookie, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_prepare_desc64(ptr nocapture noundef %host, ptr nocapture noundef readonly %data, i32 noundef %sg_len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sg_cpu = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp122.not = icmp eq i32 %sg_len, 0
  br i1 %cmp122.not, label %entry.for.end54_crit_edge, label %for.body.lr.ph

entry.for.end54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body.lr.ph:                                   ; preds = %entry
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %for.body.lr.ph
  %desc_last.0125 = phi ptr [ %1, %for.body.lr.ph ], [ %desc_last.1.lcssa, %for.inc53.for.body_crit_edge ]
  %desc.0124 = phi ptr [ %1, %for.body.lr.ph ], [ %desc.1.lcssa, %for.inc53.for.body_crit_edge ]
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc53.for.body_crit_edge ]
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %3, i32 %i.0123, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not117 = icmp eq i32 %5, 0
  br i1 %tobool.not117, label %for.body.for.inc53_crit_edge, label %for.body4.preheader

for.body.for.inc53_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

for.body4.preheader:                              ; preds = %for.body
  %dma_address = getelementptr %struct.scatterlist, ptr %3, i32 %i.0123, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %7 to i64
  br label %for.body4

for.body4:                                        ; preds = %if.end42.for.body4_crit_edge, %for.body4.preheader
  %desc.1120 = phi ptr [ %incdec.ptr, %if.end42.for.body4_crit_edge ], [ %desc.0124, %for.body4.preheader ]
  %length.0119 = phi i32 [ %sub, %if.end42.for.body4_crit_edge ], [ %5, %for.body4.preheader ]
  %mem_addr.0118 = phi i64 [ %add, %if.end42.for.body4_crit_edge ], [ %conv, %for.body4.preheader ]
  %8 = tail call i32 @llvm.umin.i32(i32 %length.0119, i32 4096)
  %sub = sub i32 %length.0119, %8
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 100000000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1120) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  %.mask115 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask115)
  %tobool11.not116 = icmp eq i32 %.mask115, 0
  br i1 %tobool11.not116, label %for.body4.if.end42_crit_edge, label %for.body4.land.lhs.true_crit_edge

for.body4.land.lhs.true_crit_edge:                ; preds = %for.body4
  br label %land.lhs.true

for.body4.if.end42_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true:                                    ; preds = %cond.false31.land.lhs.true_crit_edge, %for.body4.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false31

cond.false31:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1120) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  %.mask = and i32 %11, 128
  %tobool11.not = icmp eq i32 %.mask, 0
  br i1 %tobool11.not, label %cond.false31.if.end42_crit_edge, label %cond.false31.land.lhs.true_crit_edge

cond.false31.land.lhs.true_crit_edge:             ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false31.if.end42_crit_edge:                  ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

for.end:                                          ; preds = %land.lhs.true
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1120) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  %.mask111 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask111)
  %tobool38.not = icmp eq i32 %.mask111, 0
  br i1 %tobool38.not, label %for.end.if.end42_crit_edge, label %do.body

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end42:                                         ; preds = %for.end.if.end42_crit_edge, %cond.false31.if.end42_crit_edge, %for.body4.if.end42_crit_edge
  %13 = ptrtoint ptr %desc.1120 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -2147483630, ptr %desc.1120, align 4
  %des2 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %desc.1120, i32 0, i32 2
  %14 = ptrtoint ptr %des2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %des2, align 4
  %and44 = and i32 %15, 14745347
  %16 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or = or i32 %and44, %16
  %17 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %des2, align 4
  %conv48 = trunc i64 %mem_addr.0118 to i32
  %des4 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %desc.1120, i32 0, i32 4
  %18 = ptrtoint ptr %des4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv48, ptr %des4, align 4
  %shr = lshr i64 %mem_addr.0118, 32
  %conv49 = trunc i64 %shr to i32
  %des5 = getelementptr inbounds %struct.idmac_desc_64addr, ptr %desc.1120, i32 0, i32 5
  %19 = ptrtoint ptr %des5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv49, ptr %des5, align 4
  %conv50 = zext i32 %8 to i64
  %add = add i64 %mem_addr.0118, %conv50
  %incdec.ptr = getelementptr %struct.idmac_desc_64addr, ptr %desc.1120, i32 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end42.for.inc53_crit_edge, label %if.end42.for.body4_crit_edge

if.end42.for.body4_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

if.end42.for.inc53_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53

for.inc53:                                        ; preds = %if.end42.for.inc53_crit_edge, %for.body.for.inc53_crit_edge
  %desc.1.lcssa = phi ptr [ %desc.0124, %for.body.for.inc53_crit_edge ], [ %incdec.ptr, %if.end42.for.inc53_crit_edge ]
  %desc_last.1.lcssa = phi ptr [ %desc_last.0125, %for.body.for.inc53_crit_edge ], [ %desc.1120, %if.end42.for.inc53_crit_edge ]
  %inc = add nuw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc53.for.end54_crit_edge, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc53.for.end54_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.end54:                                        ; preds = %for.inc53.for.end54_crit_edge, %entry.for.end54_crit_edge
  %desc_last.0.lcssa = phi ptr [ %1, %entry.for.end54_crit_edge ], [ %desc_last.1.lcssa, %for.inc53.for.end54_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %or56 = or i32 %21, 8
  store i32 %or56, ptr %1, align 4
  %22 = ptrtoint ptr %desc_last.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc_last.0.lcssa, align 4
  %and58 = and i32 %23, -23
  %or60 = or i32 %and58, 4
  store i32 %or60, ptr %desc_last.0.lcssa, align 4
  br label %cleanup71

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_prepare_desc64.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_prepare_desc64, %if.then67)) #11
          to label %do.end [label %if.then67], !srcloc !354

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_prepare_desc64.__UNIQUE_ID_ddebug304, ptr noundef %25, ptr noundef nonnull @.str.100) #11
  br label %do.end

do.end:                                           ; preds = %if.then67, %do.body
  %26 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg_cpu, align 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 4096)
  %call70 = tail call i32 @dw_mci_idmac_init(ptr noundef %host)
  br label %cleanup71

cleanup71:                                        ; preds = %do.end, %for.end54
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end54 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_prepare_desc32(ptr nocapture noundef %host, ptr nocapture noundef readonly %data, i32 noundef %sg_len) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %sg_cpu = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp112.not = icmp eq i32 %sg_len, 0
  br i1 %cmp112.not, label %entry.for.end47_crit_edge, label %for.body.lr.ph

entry.for.end47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.body.lr.ph:                                   ; preds = %entry
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %for.body.lr.ph
  %desc_last.0115 = phi ptr [ %1, %for.body.lr.ph ], [ %desc_last.1.lcssa, %for.inc46.for.body_crit_edge ]
  %desc.0114 = phi ptr [ %1, %for.body.lr.ph ], [ %desc.1.lcssa, %for.inc46.for.body_crit_edge ]
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc46.for.body_crit_edge ]
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %3, i32 %i.0113, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not106 = icmp eq i32 %5, 0
  br i1 %tobool.not106, label %for.body.for.inc46_crit_edge, label %for.body4.preheader

for.body.for.inc46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

for.body4.preheader:                              ; preds = %for.body
  %dma_address = getelementptr %struct.scatterlist, ptr %3, i32 %i.0113, i32 3
  %6 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address, align 4
  br label %for.body4

for.body4:                                        ; preds = %if.end39.for.body4_crit_edge, %for.body4.preheader
  %desc.1109 = phi ptr [ %incdec.ptr, %if.end39.for.body4_crit_edge ], [ %desc.0114, %for.body4.preheader ]
  %length.0108 = phi i32 [ %sub, %if.end39.for.body4_crit_edge ], [ %5, %for.body4.preheader ]
  %mem_addr.0107 = phi i32 [ %add, %if.end39.for.body4_crit_edge ], [ %7, %for.body4.preheader ]
  %8 = tail call i32 @llvm.umin.i32(i32 %length.0108, i32 4096)
  %sub = sub i32 %length.0108, %8
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 100000000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1109) #11, !srcloc !355
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  %and104 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool10.not105 = icmp eq i32 %and104, 0
  br i1 %tobool10.not105, label %for.body4.for.end_crit_edge, label %for.body4.land.lhs.true_crit_edge

for.body4.land.lhs.true_crit_edge:                ; preds = %for.body4
  br label %land.lhs.true

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false28.land.lhs.true_crit_edge, %for.body4.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %cond.false28

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1109) #11, !srcloc !355
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  br label %for.end

cond.false28:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desc.1109) #11, !srcloc !355
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  %and = and i32 %15, 128
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cond.false28.for.end_crit_edge, label %cond.false28.land.lhs.true_crit_edge

cond.false28.land.lhs.true_crit_edge:             ; preds = %cond.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false28.for.end_crit_edge:                   ; preds = %cond.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cond.false28.for.end_crit_edge, %if.then15, %for.body4.for.end_crit_edge
  %val.0 = phi i32 [ %12, %if.then15 ], [ %10, %for.body4.for.end_crit_edge ], [ %15, %cond.false28.for.end_crit_edge ]
  %and34 = and i32 %val.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end39, label %do.body

if.end39:                                         ; preds = %for.end
  %16 = ptrtoint ptr %desc.1109 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 301990016, ptr %desc.1109, align 4
  %des1 = getelementptr inbounds %struct.idmac_desc, ptr %desc.1109, i32 0, i32 1
  %17 = ptrtoint ptr %des1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %des1, align 4
  %and41 = and i32 %18, 14745347
  %19 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or = or i32 %and41, %19
  %20 = ptrtoint ptr %des1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %des1, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %mem_addr.0107)
  %des2 = getelementptr inbounds %struct.idmac_desc, ptr %desc.1109, i32 0, i32 2
  %22 = ptrtoint ptr %des2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %des2, align 4
  %add = add i32 %8, %mem_addr.0107
  %incdec.ptr = getelementptr %struct.idmac_desc, ptr %desc.1109, i32 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end39.for.inc46_crit_edge, label %if.end39.for.body4_crit_edge

if.end39.for.body4_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

if.end39.for.inc46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc46

for.inc46:                                        ; preds = %if.end39.for.inc46_crit_edge, %for.body.for.inc46_crit_edge
  %desc.1.lcssa = phi ptr [ %desc.0114, %for.body.for.inc46_crit_edge ], [ %incdec.ptr, %if.end39.for.inc46_crit_edge ]
  %desc_last.1.lcssa = phi ptr [ %desc_last.0115, %for.body.for.inc46_crit_edge ], [ %desc.1109, %if.end39.for.inc46_crit_edge ]
  %inc = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc46.for.end47_crit_edge, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc46.for.end47_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end47

for.end47:                                        ; preds = %for.inc46.for.end47_crit_edge, %entry.for.end47_crit_edge
  %desc_last.0.lcssa = phi ptr [ %1, %entry.for.end47_crit_edge ], [ %desc_last.1.lcssa, %for.inc46.for.end47_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %or49 = or i32 %24, 134217728
  store i32 %or49, ptr %1, align 4
  %25 = ptrtoint ptr %desc_last.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %desc_last.0.lcssa, align 4
  %and51 = and i32 %26, -369098753
  %or53 = or i32 %and51, 67108864
  store i32 %or53, ptr %desc_last.0.lcssa, align 4
  br label %cleanup64

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_prepare_desc32.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_prepare_desc32, %if.then60)) #11
          to label %do.end [label %if.then60], !srcloc !354

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_prepare_desc32.__UNIQUE_ID_ddebug305, ptr noundef %28, ptr noundef nonnull @.str.100) #11
  br label %do.end

do.end:                                           ; preds = %if.then60, %do.body
  %29 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg_cpu, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 4096)
  %call63 = tail call i32 @dw_mci_idmac_init(ptr noundef %host)
  br label %cleanup64

cleanup64:                                        ; preds = %do.end, %for.end47
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_edmac_init(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #15
  %dms = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 21
  %1 = ptrtoint ptr %dms to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %dms, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.102) #11
  %4 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dms, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %5, align 4
  %7 = load ptr, ptr %dms, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.103) #14
  %13 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dms, align 8
  tail call void @kfree(ptr noundef %14) #11
  %15 = ptrtoint ptr %dms to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %dms, align 8
  br label %return

return:                                           ; preds = %if.then7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %10, %if.then7 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_edmac_start_dma(ptr noundef %host, i32 noundef %sg_len) #0 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #11
  %data = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  %sg_len2 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %sg_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len2, align 4
  %fifo_reg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 3
  %6 = ptrtoint ptr %fifo_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo_reg, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = getelementptr inbounds i8, ptr %cfg, i32 28
  %11 = call ptr @memset(ptr %10, i32 0, i32 20)
  %phy_regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 22
  %12 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_regs, align 4
  %add = add i32 %13, %sub.ptr.sub
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %14 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %src_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %16 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %dst_addr_width, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %17 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %src_addr_width, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 76
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %19 = lshr i32 %18, 4
  %and = and i32 %19, 7
  %arrayidx = getelementptr [8 x i32], ptr @dw_mci_edmac_start_dma.mszs, i32 0, i32 %and
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %22 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dst_maxburst, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %23 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %src_maxburst, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and7 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %., ptr %cfg, align 4
  %dms = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 21
  %29 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dms, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %dmaengine_slave_config.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %entry
  %call.i = call i32 %36(ptr noundef %32, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %dmaengine_slave_config.exit.do.end_crit_edge

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.105) #14
  br label %cleanup

if.end12:                                         ; preds = %dmaengine_slave_config.exit
  %39 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dms, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cfg, align 4
  %tobool.not.i57 = icmp eq ptr %42, null
  br i1 %tobool.not.i57, label %if.end12.do.end21_crit_edge, label %lor.lhs.false.i

if.end12.do.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

lor.lhs.false.i:                                  ; preds = %if.end12
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %tobool1.not.i = icmp eq ptr %46, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end21_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 39
  %47 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %48, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end21_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end21_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i58 = call ptr %48(ptr noundef nonnull %42, ptr noundef %3, i32 noundef %sg_len, i32 noundef %44, i32 noundef 3, ptr noundef null) #11
  %tobool17.not = icmp eq ptr %call.i58, null
  br i1 %tobool17.not, label %dmaengine_prep_slave_sg.exit.do.end21_crit_edge, label %if.end23

dmaengine_prep_slave_sg.exit.do.end21_crit_edge:  ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end21:                                         ; preds = %dmaengine_prep_slave_sg.exit.do.end21_crit_edge, %lor.lhs.false2.i.do.end21_crit_edge, %lor.lhs.false.i.do.end21_crit_edge, %if.end12.do.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %49 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.108) #14
  br label %cleanup

if.end23:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i58, i32 0, i32 6
  %51 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dw_mci_dmac_complete_dma, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i58, i32 0, i32 8
  %52 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i58, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_submit.i, align 4
  %call.i60 = call i32 %54(ptr noundef nonnull %call.i58) #11
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 8
  %flags26 = getelementptr inbounds %struct.mmc_data, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags26, align 4
  %and27 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end23.if.end30_crit_edge, label %if.then29

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %slot = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %59 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %slot, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  call void @dma_sync_sg_for_device(ptr noundef %64, ptr noundef %3, i32 noundef %5, i32 noundef 1) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end23.if.end30_crit_edge
  %65 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dms, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 50
  %71 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_issue_pending.i, align 4
  call void %72(ptr noundef %68) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end21, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end30 ], [ -16, %do.end21 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_edmac_stop_dma(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dms = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 21
  %0 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dms, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_async.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 %7(ptr noundef %3) #11
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %entry.dmaengine_terminate_async.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_edmac_exit(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dms = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 21
  %0 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dms, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dma_release_channel(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dms, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %dms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dms, align 8
  tail call void @kfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %dms to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dms, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dw_mci_start_request(ptr noundef %host, ptr noundef %slot, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 3
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %mrq2 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %mrq2, align 8
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 28
  %3 = ptrtoint ptr %pending_events to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pending_events, align 8
  %completed_events = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 29
  %4 = ptrtoint ptr %completed_events to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completed_events, align 4
  %cmd_status = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 23
  %5 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cmd_status, align 8
  %data_status = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 24
  %6 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_status, align 4
  %dir_status = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 26
  %7 = ptrtoint ptr %dir_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dir_status, align 4
  %data3 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data3, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call fastcc void @dw_mci_set_data_timeout(ptr noundef %host, i32 noundef %11)
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks, align 4
  %mul = mul i32 %15, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #11, !srcloc !356
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %21) #11, !srcloc !356
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slot, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 70
  %host1.i = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host1.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -115, ptr %error.i, align 4
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %30, label %if.end.land.lhs.true14.i_crit_edge [
    i32 12, label %if.end.if.then.i_crit_edge
    i32 0, label %if.end.if.then.i_crit_edge78
    i32 15, label %if.end.if.then.i_crit_edge79
    i32 52, label %land.lhs.true.i
    i32 13, label %if.end.if.end52.i_crit_edge
  ]

if.end.if.end52.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.end.if.then.i_crit_edge79:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.if.then.i_crit_edge78:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.land.lhs.true14.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true14.i

land.lhs.true.i:                                  ; preds = %if.end
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %32 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arg.i, align 4
  %34 = and i32 %33, 67108352
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %34)
  %cmp11.i = icmp eq i32 %34, 3072
  br i1 %cmp11.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.land.lhs.true14.i_crit_edge

land.lhs.true.i.land.lhs.true14.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true14.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge78, %if.end.if.then.i_crit_edge79
  %or.i = or i32 %30, 16384
  br label %if.end17.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i.land.lhs.true14.i_crit_edge, %if.end.land.lhs.true14.i_crit_edge
  %35 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data3, align 4
  %tobool.not.i = icmp eq ptr %36, null
  %or16.i = or i32 %30, 8192
  %spec.select.i = select i1 %tobool.not.i, i32 %30, i32 %or16.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true14.i, %if.then.i
  %cmdr.0.i = phi i32 [ %or.i, %if.then.i ], [ %spec.select.i, %land.lhs.true14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %30)
  %cmp19.i = icmp eq i32 %30, 11
  br i1 %cmp19.i, label %if.then20.i, label %if.end17.i.if.end52.i_crit_edge

if.end17.i.if.end52.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then20.i:                                      ; preds = %if.end17.i
  %or21.i = or i32 %cmdr.0.i, 268435456
  %37 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host1.i, align 4
  %state.i = getelementptr inbounds %struct.dw_mci, ptr %38, i32 0, i32 30
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp23.not.i = icmp eq i32 %40, 1
  br i1 %cmp23.not.i, label %if.then20.i.if.end38.i_crit_edge, label %do.end.i, !prof !357

if.then20.i.if.end38.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

do.end.i:                                         ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 278, i32 noundef 9, ptr noundef null) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end.i, %if.then20.i.if.end38.i_crit_edge
  %41 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host1.i, align 4
  %state46.i = getelementptr inbounds %struct.dw_mci, ptr %42, i32 0, i32 30
  %43 = ptrtoint ptr %state46.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %state46.i, align 8
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %27, i32 0, i32 2
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  %id.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 1, i32 1, i32 0, i32 6
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 65536, %49
  %neg.i = xor i32 %shl.i, -1
  %and49.i = and i32 %47, %neg.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %and49.i) #11
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr51.i = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %50) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %private.i.i, i32 noundef 2105344) #11
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end38.i, %if.end17.i.if.end52.i_crit_edge, %if.end.if.end52.i_crit_edge
  %cmdr.1.i = phi i32 [ %or21.i, %if.end38.i ], [ %cmdr.0.i, %if.end17.i.if.end52.i_crit_edge ], [ %30, %if.end.if.end52.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %and53.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %and58.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %spec.select120.v.i = select i1 %tobool59.not.i, i32 64, i32 192
  %spec.select120.i = select i1 %tobool54.not.i, i32 0, i32 %spec.select120.v.i
  %and65.i = shl i32 %54, 6
  %55 = and i32 %and65.i, 256
  %cmdr.2.i = or i32 %55, %cmdr.1.i
  %56 = or i32 %cmdr.2.i, %spec.select120.i
  %57 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data3, align 4
  %tobool71.not.i = icmp eq ptr %58, null
  br i1 %tobool71.not.i, label %if.end52.i.dw_mci_prepare_command.exit_crit_edge, label %if.then72.i

if.end52.i.dw_mci_prepare_command.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_prepare_command.exit

if.then72.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags75.i = getelementptr inbounds %struct.mmc_data, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %flags75.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags75.i, align 4
  %and76.i = and i32 %60, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  %spec.select122.v.i = select i1 %tobool77.not.i, i32 512, i32 1536
  %spec.select122.i = or i32 %spec.select122.v.i, %56
  br label %dw_mci_prepare_command.exit

dw_mci_prepare_command.exit:                      ; preds = %if.then72.i, %if.end52.i.dw_mci_prepare_command.exit_crit_edge
  %cmdr.4.i = phi i32 [ %56, %if.end52.i.dw_mci_prepare_command.exit_crit_edge ], [ %spec.select122.i, %if.then72.i ]
  %flags82.i = getelementptr inbounds %struct.mmc_host, ptr %25, i32 1, i32 1, i32 0, i32 5
  %61 = ptrtoint ptr %flags82.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags82.i, align 4
  %63 = shl i32 %62, 26
  %64 = and i32 %63, 536870912
  %65 = xor i32 %64, 536870912
  %66 = or i32 %65, %cmdr.4.i
  %flags = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 7
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %or = or i32 %66, 32768
  %spec.select = select i1 %tobool8.not, i32 %66, i32 %or
  br i1 %tobool.not, label %dw_mci_prepare_command.exit.if.end13_crit_edge, label %if.then12

dw_mci_prepare_command.exit.if.end13_crit_edge:   ; preds = %dw_mci_prepare_command.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %dw_mci_prepare_command.exit
  %error.i64 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %67 = ptrtoint ptr %error.i64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -115, ptr %error.i64, align 4
  %data1.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %68 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data1.i, align 8
  %tobool.not.i65 = icmp eq ptr %69, null
  br i1 %tobool.not.i65, label %if.then12.if.end.i_crit_edge, label %do.end.i66, !prof !357

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i66:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1150, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i66, %if.then12.if.end.i_crit_edge
  %sg.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 6
  %70 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %sg.i, align 8
  %71 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %9, ptr %data1.i, align 8
  %flags22.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 6
  %72 = ptrtoint ptr %flags22.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags22.i, align 4
  %and.i = and i32 %73, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  %spec.select.i67 = select i1 %tobool23.not.i, i32 1, i32 2
  %74 = ptrtoint ptr %dir_status to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select.i67, ptr %dir_status, align 4
  %blksz1.i.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %75 = ptrtoint ptr %blksz1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blksz1.i.i, align 4
  %verid.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 35
  %77 = ptrtoint ptr %verid.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %verid.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9226, i16 %78)
  %cmp.i.i = icmp ult i16 %78, 9226
  br i1 %cmp.i.i, label %if.end.i.dw_mci_ctrl_thld.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.dw_mci_ctrl_thld.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_ctrl_thld.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10250, i16 %78)
  %cmp5.i.i = icmp ult i16 %78, 10250
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.if.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %79 = ptrtoint ptr %flags22.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags22.i, align 4
  %and.i.i = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dw_mci_ctrl_thld.exit.i_crit_edge

land.lhs.true.i.i.dw_mci_ctrl_thld.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_ctrl_thld.exit.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.if.end.i.i_crit_edge
  %81 = ptrtoint ptr %flags22.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags22.i, align 4
  %and8.i.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true10.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

land.lhs.true10.i.i:                              ; preds = %if.end.i.i
  %timing.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 13
  %83 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %timing.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %84)
  %cmp12.not.i.i = icmp eq i8 %84, 10
  br i1 %cmp12.not.i.i, label %land.lhs.true10.i.i.if.end15.i.i_crit_edge, label %land.lhs.true10.i.i.disable.i.i_crit_edge

land.lhs.true10.i.i.disable.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable.i.i

land.lhs.true10.i.i.if.end15.i.i_crit_edge:       ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true10.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %..i.i = phi i32 [ 4, %land.lhs.true10.i.i.if.end15.i.i_crit_edge ], [ 1, %if.end.i.i.if.end15.i.i_crit_edge ]
  %timing21.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 13
  %85 = ptrtoint ptr %timing21.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %timing21.i.i, align 8
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %86, label %if.end15.i.i.disable.i.i_crit_edge [
    i8 9, label %if.end15.i.i.if.end36.i.i_crit_edge
    i8 6, label %if.end15.i.i.if.end36.i.i_crit_edge80
    i8 10, label %if.end15.i.i.if.end36.i.i_crit_edge81
  ]

if.end15.i.i.if.end36.i.i_crit_edge81:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.end15.i.i.if.end36.i.i_crit_edge80:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.end15.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i.i

if.end15.i.i.disable.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable.i.i

if.end36.i.i:                                     ; preds = %if.end15.i.i.if.end36.i.i_crit_edge, %if.end15.i.i.if.end36.i.i_crit_edge80, %if.end15.i.i.if.end36.i.i_crit_edge81
  %data_shift.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %88 = ptrtoint ptr %data_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_shift.i.i, align 4
  %div66.i.i = lshr i32 %76, %89
  %fifo_depth37.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 43
  %90 = ptrtoint ptr %fifo_depth37.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %fifo_depth37.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div66.i.i, i32 %91)
  %cmp38.i.i = icmp ugt i32 %div66.i.i, %91
  br i1 %cmp38.i.i, label %if.end36.i.i.disable.i.i_crit_edge, label %if.end41.i.i

if.end36.i.i.disable.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable.i.i

if.end41.i.i:                                     ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and44.i.i = shl i32 %76, 16
  %shl45.i.i = and i32 %and44.i.i, 268369920
  %or.i.i = or i32 %..i.i, %shl45.i.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %regs.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %93 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %92) #11, !srcloc !356
  br label %dw_mci_ctrl_thld.exit.i

disable.i.i:                                      ; preds = %if.end36.i.i.disable.i.i_crit_edge, %if.end15.i.i.disable.i.i_crit_edge, %land.lhs.true10.i.i.disable.i.i_crit_edge
  %regs47.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %95 = ptrtoint ptr %regs47.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs47.i.i, align 8
  %add.ptr48.i.i = getelementptr i8, ptr %96, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i.i, i32 0) #11, !srcloc !356
  br label %dw_mci_ctrl_thld.exit.i

dw_mci_ctrl_thld.exit.i:                          ; preds = %disable.i.i, %if.end41.i.i, %land.lhs.true.i.i.dw_mci_ctrl_thld.exit.i_crit_edge, %if.end.i.dw_mci_ctrl_thld.exit.i_crit_edge
  %call.i = tail call fastcc i32 @dw_mci_submit_data_dma(ptr noundef %host, ptr noundef nonnull %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool27.not.i, label %if.else71.i, label %if.then28.i

if.then28.i:                                      ; preds = %dw_mci_ctrl_thld.exit.i
  %97 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data1.i, align 8
  %flags30.i = getelementptr inbounds %struct.mmc_data, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags30.i, align 4
  %and31.i = and i32 %100, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %..i = select i1 %tobool32.not.i, i32 5, i32 3
  %sg_miter.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7
  %sg37.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  %101 = ptrtoint ptr %sg37.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sg37.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 10
  %103 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sg_len.i, align 4
  tail call void @sg_miter_start(ptr noundef %sg_miter.i, ptr noundef %102, i32 noundef %104, i32 noundef %..i) #11
  %105 = ptrtoint ptr %sg37.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sg37.i, align 4
  %107 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %sg.i, align 8
  %part_buf_start.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 45
  %108 = ptrtoint ptr %part_buf_start.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %part_buf_start.i, align 8
  %part_buf_count.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %109 = ptrtoint ptr %part_buf_count.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %part_buf_count.i, align 1
  %regs.i68 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %110 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i68, align 8
  %add.ptr.i69 = getelementptr i8, ptr %111, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 805306368) #11, !srcloc !356
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %112 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i68, align 8
  %add.ptr50.i = getelementptr i8, ptr %113, i32 36
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #11, !srcloc !355
  %115 = or i32 %114, 805306368
  %116 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i68, align 8
  %add.ptr55.i = getelementptr i8, ptr %117, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %115) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call44.i) #11
  %118 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i68, align 8
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #11, !srcloc !355
  %121 = and i32 %120, -536870913
  %122 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i68, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #11, !srcloc !356
  %wm_aligned.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 5
  %124 = ptrtoint ptr %wm_aligned.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %wm_aligned.i, align 4, !range !366
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool65.not.i = icmp eq i8 %125, 0
  br i1 %tobool65.not.i, label %if.else67.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_adjust_fifoth(ptr noundef %host, ptr noundef nonnull %9) #11
  br label %dw_mci_submit_data.exit

if.else67.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %fifoth_val.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 34
  %126 = ptrtoint ptr %fifoth_val.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fifoth_val.i, align 4
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #11
  %129 = ptrtoint ptr %regs.i68 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i68, align 8
  %add.ptr69.i = getelementptr i8, ptr %130, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %128) #11, !srcloc !356
  br label %dw_mci_submit_data.exit

if.else71.i:                                      ; preds = %dw_mci_ctrl_thld.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %blksz1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %blksz1.i.i, align 4
  br label %dw_mci_submit_data.exit

dw_mci_submit_data.exit:                          ; preds = %if.else71.i, %if.else67.i, %if.then66.i
  %.sink.i = phi i32 [ %132, %if.else71.i ], [ 0, %if.else67.i ], [ 0, %if.then66.i ]
  %prev_blksz72.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 12
  %133 = ptrtoint ptr %prev_blksz72.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %.sink.i, ptr %prev_blksz72.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  br label %if.end13

if.end13:                                         ; preds = %dw_mci_submit_data.exit, %dw_mci_prepare_command.exit.if.end13_crit_edge
  tail call fastcc void @dw_mci_start_command(ptr noundef %host, ptr noundef %cmd, i32 noundef %spec.select)
  %134 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %135)
  %cmp = icmp eq i32 %135, 11
  br i1 %cmp, label %if.then14, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then14:                                        ; preds = %if.end13
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %136 = ptrtoint ptr %pending_events to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %pending_events, align 4
  %and1.i = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool26.not = icmp eq i32 %and1.i, 0
  br i1 %tobool26.not, label %if.then27, label %if.then14.if.end31_crit_edge

if.then14.if.end31_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %cmd11_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %add29 = add i32 %138, 51
  %call30 = tail call i32 @mod_timer(ptr noundef %cmd11_timer, i32 noundef %add29) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.then14.if.end31_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call19) #11
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end13.if.end33_crit_edge
  %139 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data3, align 4
  %tobool.not.i71 = icmp eq ptr %140, null
  br i1 %tobool.not.i71, label %if.end33.dw_mci_prep_stop_abort.exit_crit_edge, label %if.end.i72

if.end33.dw_mci_prep_stop_abort.exit_crit_edge:   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_prep_stop_abort.exit

if.end.i72:                                       ; preds = %if.end33
  %stop_abort.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 11
  %141 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cmd, align 4
  %143 = call ptr @memset(ptr %stop_abort.i, i32 0, i32 48)
  %144 = zext i32 %142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %142, label %if.end.i72.dw_mci_prep_stop_abort.exit_crit_edge [
    i32 17, label %if.end.i72.if.then12.i_crit_edge
    i32 18, label %if.end.i72.if.then12.i_crit_edge82
    i32 24, label %if.end.i72.if.then12.i_crit_edge83
    i32 25, label %if.end.i72.if.then12.i_crit_edge84
    i32 19, label %if.end.i72.if.then12.i_crit_edge85
    i32 21, label %if.end.i72.if.then12.i_crit_edge86
    i32 56, label %if.end.i72.if.then12.i_crit_edge87
    i32 53, label %if.then15.i
  ]

if.end.i72.if.then12.i_crit_edge87:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge86:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge85:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge84:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge83:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge82:               ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.if.then12.i_crit_edge:                 ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

if.end.i72.dw_mci_prep_stop_abort.exit_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_prep_stop_abort.exit

if.then12.i:                                      ; preds = %if.end.i72.if.then12.i_crit_edge, %if.end.i72.if.then12.i_crit_edge82, %if.end.i72.if.then12.i_crit_edge83, %if.end.i72.if.then12.i_crit_edge84, %if.end.i72.if.then12.i_crit_edge85, %if.end.i72.if.then12.i_crit_edge86, %if.end.i72.if.then12.i_crit_edge87
  %145 = ptrtoint ptr %stop_abort.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 12, ptr %stop_abort.i, align 4
  %arg.i73 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 11, i32 1
  %146 = ptrtoint ptr %arg.i73 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %arg.i73, align 4
  br label %if.end23.i

if.then15.i:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %stop_abort.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 52, ptr %stop_abort.i, align 4
  %arg17.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %148 = ptrtoint ptr %arg17.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arg17.i, align 4
  %shr.i = lshr i32 %149, 28
  %and.i74 = and i32 %shr.i, 7
  %arg18.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 11, i32 1
  %150 = ptrtoint ptr %arg18.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arg18.i, align 4
  %or.i75 = or i32 %151, %and.i74
  %or19.i = or i32 %or.i75, -2147480576
  store i32 %or19.i, ptr %arg18.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then15.i, %if.then12.i
  %.sink.i76 = phi i32 [ 405, %if.then15.i ], [ 29, %if.then12.i ]
  %flags20.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 11, i32 3
  %152 = ptrtoint ptr %flags20.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %.sink.i76, ptr %flags20.i, align 4
  %153 = ptrtoint ptr %stop_abort.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %stop_abort.i, align 4
  %slot.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %155 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %slot.i, align 4
  %flags28.i = getelementptr inbounds %struct.dw_mci_slot, ptr %156, i32 0, i32 7
  %157 = ptrtoint ptr %flags28.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %flags28.i, align 4
  %159 = and i32 %158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool29.not.i = icmp eq i32 %159, 0
  %spec.select.v.i = select i1 %tobool29.not.i, i32 536887616, i32 16704
  %spec.select.i77 = or i32 %spec.select.v.i, %154
  br label %dw_mci_prep_stop_abort.exit

dw_mci_prep_stop_abort.exit:                      ; preds = %if.end23.i, %if.end.i72.dw_mci_prep_stop_abort.exit_crit_edge, %if.end33.dw_mci_prep_stop_abort.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i77, %if.end23.i ], [ 0, %if.end33.dw_mci_prep_stop_abort.exit_crit_edge ], [ 0, %if.end.i72.dw_mci_prep_stop_abort.exit_crit_edge ]
  %stop_cmdr = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 25
  %160 = ptrtoint ptr %stop_cmdr to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %retval.0.i, ptr %stop_cmdr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_request_end(ptr noundef %host, ptr noundef %mrq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %slot1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %0 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmd = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !357

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1898, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  %8 = ptrtoint ptr %slot1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot1, align 4
  %mrq23 = getelementptr inbounds %struct.dw_mci_slot, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mrq23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mrq23, align 4
  %mrq24 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 8
  %11 = ptrtoint ptr %mrq24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mrq24, align 8
  %queue = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 31
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %13, %queue
  br i1 %cmp.i.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %13, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 30
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state, align 8
  %mrq1.i = getelementptr i8, ptr %13, i32 -4
  %23 = ptrtoint ptr %mrq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mrq1.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %cond.false.i, label %list_del.exit.dw_mci_start_request.exit_crit_edge

list_del.exit.dw_mci_start_request.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_start_request.exit

cond.false.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %cmd3.i = getelementptr inbounds %struct.mmc_request, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %cmd3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd3.i, align 4
  br label %dw_mci_start_request.exit

dw_mci_start_request.exit:                        ; preds = %cond.false.i, %list_del.exit.dw_mci_start_request.exit_crit_edge
  %cond.i = phi ptr [ %28, %cond.false.i ], [ %26, %list_del.exit.dw_mci_start_request.exit_crit_edge ]
  tail call fastcc void @__dw_mci_start_request(ptr noundef %host, ptr noundef %add.ptr, ptr noundef %cond.i) #11
  br label %if.end35

if.else:                                          ; preds = %if.end
  %state29 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 30
  %29 = ptrtoint ptr %state29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp = icmp eq i32 %30, 6
  br i1 %cmp, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %state29, align 8
  br label %if.end35

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state29, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then30, %dw_mci_start_request.exit
  tail call void @_raw_spin_unlock(ptr noundef %host) #11
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef %mrq) #11
  tail call void @_raw_spin_lock(ptr noundef %host) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_set_drto(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %get_drto_clks = getelementptr inbounds %struct.dw_mci_drv_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %get_drto_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_drto_clks, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %3(ptr noundef %host) #11
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shr = lshr i32 %7, 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %drto_clks.0 = phi i32 [ %call, %if.then ], [ %shr, %if.else ]
  %regs6 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #11, !srcloc !355
  %11 = lshr i32 %10, 23
  %mul = and i32 %11, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %mul
  %conv = zext i32 %drto_clks.0 to i64
  %mul12 = mul nuw nsw i64 %conv, 1000
  %conv13 = zext i32 %spec.store.select to i64
  %mul14 = mul nuw nsw i64 %mul12, %conv13
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %12 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bus_hz, align 4
  %conv15 = zext i32 %13 to i64
  %add = add nsw i64 %conv15, -1
  %sub = add nsw i64 %add, %mul14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp195 = icmp ult i64 %sub, 4294967296
  br i1 %cmp195, label %if.then199, label %if.else205, !prof !357

if.then199:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv200 = trunc i64 %sub to i32
  %div203 = udiv i32 %conv200, %13
  br label %if.end209

if.else205:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %sub) #16, !srcloc !374
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  %extract.t368 = trunc i64 %asmresult1.i to i32
  br label %if.end209

if.end209:                                        ; preds = %if.else205, %if.then199
  %_tmp.0.off0 = phi i32 [ %div203, %if.then199 ], [ %extract.t368, %if.else205 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_set_drto.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_set_drto, %if.then222)) #11
          to label %do.end [label %if.then222], !srcloc !354

if.then222:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_set_drto.__UNIQUE_ID_ddebug313, ptr noundef %16, ptr noundef nonnull @.str.119, i32 noundef %_tmp.0.off0) #11
  br label %do.end

do.end:                                           ; preds = %if.then222, %if.end209
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call231 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 28
  %17 = ptrtoint ptr %pending_events to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %pending_events, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool237.not = icmp eq i32 %19, 0
  br i1 %tobool237.not, label %if.then238, label %do.end.if.end242_crit_edge

do.end.if.end242_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.then238:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dto_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add224 = add i32 %_tmp.0.off0, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add224) #11
  %add240 = add i32 %call2.i, %20
  %call241 = tail call i32 @mod_timer(ptr noundef %dto_timer, i32 noundef %add240) #11
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %do.end.if.end242_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call231) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_reset(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sg_miter = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7
  tail call void @sg_miter_stop(ptr noundef %sg_miter) #11
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %3 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool2.not, i32 3, i32 7
  %call = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %host, i32 noundef %spec.select)
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  br i1 %call, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #11, !srcloc !356
  %7 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.then5.ciu_out_crit_edge, label %if.end9

if.then5.ciu_out_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ciu_out

if.end9:                                          ; preds = %if.then5
  %call10 = tail call i64 @ktime_get() #11
  %add.i = add i64 %call10, 500000000
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr134 = getelementptr i8, ptr %10, i32 72
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %.mask5 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask5)
  %tobool16.not6 = icmp eq i32 %.mask5, 0
  br i1 %tobool16.not6, label %if.end9.if.end43_crit_edge, label %if.end9.land.lhs.true_crit_edge

if.end9.land.lhs.true_crit_edge:                  ; preds = %if.end9
  br label %land.lhs.true

if.end9.if.end43_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end9.land.lhs.true_crit_edge
  %call20 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #11
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %14, i32 72
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %.mask = and i32 %15, 128
  %tobool16.not = icmp eq i32 %.mask, 0
  br i1 %tobool16.not, label %cond.false.if.end43_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false.if.end43_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.end:                                          ; preds = %land.lhs.true
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr26 = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  %.mask3 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask3)
  %tobool40.not = icmp eq i32 %.mask3, 0
  br i1 %tobool40.not, label %for.end.if.end43_crit_edge, label %do.end

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #14
  br label %ciu_out

if.end43:                                         ; preds = %for.end.if.end43_crit_edge, %cond.false.if.end43_crit_edge, %if.end9.if.end43_crit_edge
  %call44 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %host, i32 noundef 2)
  br i1 %call44, label %if.end43.if.end60_crit_edge, label %if.end43.ciu_out_crit_edge

if.end43.ciu_out_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %ciu_out

if.end43.if.end60_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.else:                                          ; preds = %if.end
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !355
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool53.not = icmp eq i32 %22, 0
  br i1 %tobool53.not, label %do.end57, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

do.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dev58 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %23 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123) #14
  br label %ciu_out

if.end60:                                         ; preds = %if.else.if.end60_crit_edge, %if.end43.if.end60_crit_edge
  %25 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp62 = icmp eq i32 %26, 1
  br i1 %cmp62, label %if.then63, label %if.end60.ciu_out_crit_edge

if.end60.ciu_out_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %ciu_out

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call64 = tail call i32 @dw_mci_idmac_init(ptr noundef %host)
  br label %ciu_out

ciu_out:                                          ; preds = %if.then63, %if.end60.ciu_out_crit_edge, %do.end57, %if.end43.ciu_out_crit_edge, %do.end, %if.then5.ciu_out_crit_edge
  %slot = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 42
  %27 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slot, align 4
  tail call fastcc void @mci_send_cmd(ptr noundef %28, i32 noundef 2097152)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_set_data_timeout(ptr noundef %host, i32 noundef %timeout_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end199_crit_edge, label %land.lhs.true

entry.if.end199_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

land.lhs.true:                                    ; preds = %entry
  %set_data_timeout = getelementptr inbounds %struct.dw_mci_drv_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %set_data_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_data_timeout, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end199_crit_edge, label %if.then

land.lhs.true.if.end199_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %host, i32 noundef %timeout_ns) #11
  br label %cleanup

if.end199:                                        ; preds = %land.lhs.true.if.end199_crit_edge, %entry.if.end199_crit_edge
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %7 = lshr i32 %6, 23
  %mul = and i32 %7, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %mul
  %conv = zext i32 %timeout_ns to i64
  %bus_hz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %8 = ptrtoint ptr %bus_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_hz, align 4
  %conv7 = zext i32 %9 to i64
  %mul8 = mul nuw i64 %conv7, %conv
  %sub = add nuw i64 %mul8, 999999999
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #16, !srcloc !377
  %asmresult.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #16, !srcloc !378
  %asmresult10.i = extractvalue { i64, i32 } %11, 0
  %_tmp.0 = lshr i64 %asmresult10.i, 29
  %conv203 = zext i32 %spec.store.select to i64
  %add204 = add nsw i64 %conv203, -1
  %sub205 = add nuw nsw i64 %add204, %_tmp.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub205)
  %cmp407 = icmp ult i64 %sub205, 4294967296
  br i1 %cmp407, label %if.then415, label %if.else421, !prof !357

if.then415:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  %conv416 = trunc i64 %sub205 to i32
  %div419 = udiv i32 %conv416, %spec.store.select
  %conv420 = zext i32 %div419 to i64
  br label %if.end425

if.else421:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.store.select, i64 %sub205) #16, !srcloc !374
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  br label %if.end425

if.end425:                                        ; preds = %if.else421, %if.then415
  %_tmp202.0 = phi i64 [ %conv420, %if.then415 ], [ %asmresult1.i, %if.else421 ]
  %13 = add i64 %_tmp202.0, -16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16777215, i64 %13)
  %14 = icmp ult i64 %13, -16777215
  %.tr = trunc i64 %_tmp202.0 to i32
  %15 = shl i32 %.tr, 8
  %conv438 = or i32 %15, 255
  %tmout.0 = select i1 %14, i32 -1, i32 %conv438
  %16 = tail call i32 @llvm.bswap.i32(i32 %tmout.0)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr441 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr441, i32 %16) #11, !srcloc !356
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_set_data_timeout.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_set_data_timeout, %if.then451)) #11
          to label %cleanup [label %if.then451], !srcloc !354

if.then451:                                       ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %shr452 = lshr i32 %tmout.0, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_set_data_timeout.__UNIQUE_ID_ddebug309, ptr noundef %20, ptr noundef nonnull @.str.111, i32 noundef %timeout_ns, i32 noundef %shr452) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then451, %if.end425, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_start_command(ptr noundef %host, ptr noundef %cmd, i32 noundef %cmd_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %cmd1, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arg, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void @arm_heavy_mb() #11
  tail call fastcc void @dw_mci_wait_while_busy(ptr noundef %host, i32 noundef %cmd_flags)
  %or = or i32 %cmd_flags, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #11, !srcloc !356
  %and = and i32 %cmd_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %12 = lshr i32 %11, 24
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr3.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !355
  %16 = lshr i32 %15, 23
  %mul.i = and i32 %16, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp eq i32 %mul.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 1, i32 %mul.i
  %narrow.i = mul nuw nsw i32 %12, 1000
  %narrow310.i = mul nuw nsw i32 %narrow.i, %spec.store.select.i
  %mul9.i = zext i32 %narrow310.i to i64
  %bus_hz.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 32
  %17 = ptrtoint ptr %bus_hz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bus_hz.i, align 4
  %conv10.i = zext i32 %18 to i64
  %add.i = add nsw i64 %conv10.i, -1
  %sub.i = add nsw i64 %add.i, %mul9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp186.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp186.i, label %if.then190.i, label %if.else196.i, !prof !357

if.then190.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv191.i = trunc i64 %sub.i to i32
  %div194.i = udiv i32 %conv191.i, %18
  br label %if.end200.i

if.else196.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %sub.i) #16, !srcloc !374
  %asmresult1.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t337.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.else196.i, %if.then190.i
  %_tmp.0.off0.i = phi i32 [ %div194.i, %if.then190.i ], [ %extract.t337.i, %if.else196.i ]
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call210.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %pending_events.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 28
  %20 = ptrtoint ptr %pending_events.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %pending_events.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool214.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool214.not.i, label %if.then215.i, label %if.end200.i.dw_mci_set_cto.exit_crit_edge

if.end200.i.dw_mci_set_cto.exit_crit_edge:        ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_set_cto.exit

if.then215.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  %cto_timer.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add204.i = add i32 %_tmp.0.off0.i, 10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add204.i) #11
  %add217.i = add i32 %22, 1
  %add218.i = add i32 %add217.i, %call2.i.i
  %call219.i = tail call i32 @mod_timer(ptr noundef %cto_timer.i, i32 noundef %add218.i) #11
  br label %dw_mci_set_cto.exit

dw_mci_set_cto.exit:                              ; preds = %if.then215.i, %if.end200.i.dw_mci_set_cto.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call210.i) #11
  br label %if.end

if.end:                                           ; preds = %dw_mci_set_cto.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mci_send_cmd(ptr nocapture noundef readonly %slot, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  tail call fastcc void @dw_mci_wait_while_busy(ptr noundef %1, i32 noundef %cmd)
  %or = or i32 %cmd, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #11, !srcloc !356
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 500000000
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr63 = getelementptr i8, ptr %8, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  %.mask4 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask4)
  %tobool.not5 = icmp eq i32 %.mask4, 0
  br i1 %tobool.not5, label %entry.if.end36_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call10 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call10, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call10, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #11
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  %.mask = and i32 %13, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %cond.false.if.end36_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

cond.false.if.end36_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !355
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool30.not = icmp sgt i32 %17, -1
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slot, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %class_dev, ptr noundef nonnull @.str.112, i32 noundef %cmd, i32 noundef 0, i32 noundef %17) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge, %cond.false.if.end36_crit_edge, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_wait_while_busy(ptr nocapture noundef readonly %host, i32 noundef %cmd_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cmd_flags, 268443648
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %0)
  %1 = icmp eq i32 %0, 8192
  br i1 %1, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then:                                          ; preds = %entry
  %call = tail call i64 @ktime_get() #11
  %add.i = add i64 %call, 500000000
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr47 = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not49 = icmp eq i32 %5, 0
  br i1 %tobool7.not49, label %if.then.if.end35_crit_edge, label %if.then.land.lhs.true10_crit_edge

if.then.land.lhs.true10_crit_edge:                ; preds = %if.then
  br label %land.lhs.true10

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true10:                                  ; preds = %cond.false.land.lhs.true10_crit_edge, %if.then.land.lhs.true10_crit_edge
  %call11 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call11, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call11, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #11
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  %10 = and i32 %9, 131072
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %cond.false.if.end35_crit_edge, label %cond.false.land.lhs.true10_crit_edge

cond.false.land.lhs.true10_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10

cond.false.if.end35_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

for.end:                                          ; preds = %land.lhs.true10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr17 = getelementptr i8, ptr %12, i32 72
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #11, !srcloc !355
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  %14 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool31.not = icmp eq i32 %14, 0
  br i1 %tobool31.not, label %for.end.if.end35_crit_edge, label %do.end

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.114) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end, %for.end.if.end35_crit_edge, %cond.false.if.end35_crit_edge, %if.then.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_submit_data_dma(ptr noundef %host, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %using_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 15
  %0 = ptrtoint ptr %using_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %using_dma, align 8
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %1 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @dw_mci_pre_dma_transfer(ptr noundef %host, ptr noundef %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dma_ops = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 19
  %3 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_ops, align 8
  %stop = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop, align 4
  tail call void %6(ptr noundef %host) #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %using_dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %using_dma, align 8
  %prev_blksz = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 12
  %8 = ptrtoint ptr %prev_blksz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prev_blksz, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blksz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8.not = icmp eq i32 %9, %11
  br i1 %cmp8.not, label %if.end2.if.end10_crit_edge, label %if.then9

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dw_mci_adjust_fifoth(ptr noundef %host, ptr noundef %data)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end2.if.end10_crit_edge
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !355
  %15 = or i32 %14, 536870912
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !356
  %irq_lock = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr23 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !355
  %21 = and i32 %20, -805306369
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr27 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %21) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call18) #11
  %dma_ops29 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 19
  %24 = ptrtoint ptr %dma_ops29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_ops29, align 8
  %start = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %start, align 4
  %call30 = tail call i32 %27(ptr noundef %host, i32 noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end10.cleanup_crit_edge, label %if.then32

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dma_ops29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_ops29, align 8
  %stop34 = getelementptr inbounds %struct.dw_mci_dma_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %stop34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stop34, align 4
  tail call void %31(ptr noundef %host) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_submit_data_dma.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_submit_data_dma, %if.then41)) #11
          to label %cleanup [label %if.then41], !srcloc !354

if.then41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_submit_data_dma.__UNIQUE_ID_ddebug308, ptr noundef %33, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.116) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then32, %if.end10.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then41 ], [ 0, %if.end10.cleanup_crit_edge ], [ -19, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_adjust_fifoth(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %blksz1 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %blksz1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blksz1, align 4
  %data_shift = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %2 = ptrtoint ptr %data_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_shift, align 4
  %div40 = lshr i32 %1, %3
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 14
  %4 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_depth = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 43
  %6 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_depth, align 8
  %div2 = sdiv i32 %7, 2
  %sub = sub i32 %7, %div2
  %notmask = shl nsw i32 -1, %3
  %8 = xor i32 %notmask, -1
  %rem = and i32 %1, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool4.not = icmp eq i32 %rem, 0
  br i1 %tobool4.not, label %do.body.preheader, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body.preheader:                                ; preds = %if.end
  %rem7 = and i32 %div40, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7)
  %tobool8.not = icmp eq i32 %rem7, 0
  %rem10 = and i32 %sub, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %tobool11.not = icmp eq i32 %rem10, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %do.body.preheader.done_crit_edge, label %do.cond

do.body.preheader.done_crit_edge:                 ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond:                                          ; preds = %do.body.preheader
  %rem7.1 = and i32 %div40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.1)
  %tobool8.not.1 = icmp eq i32 %rem7.1, 0
  %rem10.1 = and i32 %sub, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.1)
  %tobool11.not.1 = icmp eq i32 %rem10.1, 0
  %or.cond46 = select i1 %tobool8.not.1, i1 %tobool11.not.1, i1 false
  br i1 %or.cond46, label %do.cond.done_crit_edge, label %do.cond.1

do.cond.done_crit_edge:                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond.1:                                        ; preds = %do.cond
  %rem7.2 = and i32 %div40, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.2)
  %tobool8.not.2 = icmp eq i32 %rem7.2, 0
  %rem10.2 = and i32 %sub, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.2)
  %tobool11.not.2 = icmp eq i32 %rem10.2, 0
  %or.cond47 = select i1 %tobool8.not.2, i1 %tobool11.not.2, i1 false
  br i1 %or.cond47, label %do.cond.1.done_crit_edge, label %do.cond.2

do.cond.1.done_crit_edge:                         ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond.2:                                        ; preds = %do.cond.1
  %rem7.3 = and i32 %div40, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.3)
  %tobool8.not.3 = icmp eq i32 %rem7.3, 0
  %rem10.3 = and i32 %sub, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.3)
  %tobool11.not.3 = icmp eq i32 %rem10.3, 0
  %or.cond48 = select i1 %tobool8.not.3, i1 %tobool11.not.3, i1 false
  br i1 %or.cond48, label %do.cond.2.done_crit_edge, label %do.cond.3

do.cond.2.done_crit_edge:                         ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond.3:                                        ; preds = %do.cond.2
  %rem7.4 = and i32 %div40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.4)
  %tobool8.not.4 = icmp eq i32 %rem7.4, 0
  %rem10.4 = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.4)
  %tobool11.not.4 = icmp eq i32 %rem10.4, 0
  %or.cond49 = select i1 %tobool8.not.4, i1 %tobool11.not.4, i1 false
  br i1 %or.cond49, label %do.cond.3.done_crit_edge, label %do.cond.4

do.cond.3.done_crit_edge:                         ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond.4:                                        ; preds = %do.cond.3
  %rem7.5 = and i32 %div40, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.5)
  %tobool8.not.5 = icmp eq i32 %rem7.5, 0
  %rem10.5 = and i32 %sub, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.5)
  %tobool11.not.5 = icmp eq i32 %rem10.5, 0
  %or.cond50 = select i1 %tobool8.not.5, i1 %tobool11.not.5, i1 false
  br i1 %or.cond50, label %do.cond.4.done_crit_edge, label %do.cond.5

do.cond.4.done_crit_edge:                         ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.cond.5:                                        ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  %rem7.6 = and i32 %div40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem7.6)
  %tobool8.not.6 = icmp eq i32 %rem7.6, 0
  %rem10.6 = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.6)
  %tobool11.not.6 = icmp eq i32 %rem10.6, 0
  %or.cond51 = select i1 %tobool8.not.6, i1 %tobool11.not.6, i1 false
  %spec.select = select i1 %or.cond51, i32 268435456, i32 0
  %spec.select52 = select i1 %or.cond51, i32 196608, i32 65536
  br label %done

done:                                             ; preds = %do.cond.5, %do.cond.4.done_crit_edge, %do.cond.3.done_crit_edge, %do.cond.2.done_crit_edge, %do.cond.1.done_crit_edge, %do.cond.done_crit_edge, %do.body.preheader.done_crit_edge, %if.end.done_crit_edge
  %msize.0 = phi i32 [ 0, %if.end.done_crit_edge ], [ 1879048192, %do.body.preheader.done_crit_edge ], [ 1610612736, %do.cond.done_crit_edge ], [ 1342177280, %do.cond.1.done_crit_edge ], [ 1073741824, %do.cond.2.done_crit_edge ], [ 805306368, %do.cond.3.done_crit_edge ], [ 536870912, %do.cond.4.done_crit_edge ], [ %spec.select, %do.cond.5 ]
  %rx_wmark.0 = phi i32 [ 65536, %if.end.done_crit_edge ], [ 16711680, %do.body.preheader.done_crit_edge ], [ 8323072, %do.cond.done_crit_edge ], [ 4128768, %do.cond.1.done_crit_edge ], [ 2031616, %do.cond.2.done_crit_edge ], [ 983040, %do.cond.3.done_crit_edge ], [ 458752, %do.cond.4.done_crit_edge ], [ %spec.select52, %do.cond.5 ]
  %and19 = and i32 %div2, 4095
  %or = or i32 %rx_wmark.0, %and19
  %or20 = or i32 %or, %msize.0
  %9 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #11, !srcloc !356
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_mci_pre_dma_transfer(ptr nocapture noundef readonly %host, ptr nocapture noundef %data, i32 noundef %cookie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sg_len1 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %sg_len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_len1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz, align 4
  %mul = mul i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mul)
  %cmp2 = icmp ugt i32 %mul, 15
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp2, %tobool.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sg8 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %sg_len9 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1042.not = icmp eq i32 %9, 0
  br i1 %cmp1042.not, label %if.end7.for.end_crit_edge, label %for.body.preheader

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end7
  %10 = ptrtoint ptr %sg8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg8, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.044 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.043 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %and11 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.043, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %and13 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %for.inc, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %inc = add nuw i32 %i.044, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.043) #11
  %16 = ptrtoint ptr %sg_len9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg_len9, align 4
  %cmp10 = icmp ult i32 %inc, %17
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %17, %for.inc.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 36
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %sg8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg8, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call20 = tail call i32 @dma_map_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef %.lcssa, i32 noundef %cond.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cookie, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call20, %if.end23 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_cmd_interrupt(ptr noundef %host, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cto_timer = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 56
  %call = tail call i32 @del_timer(ptr noundef %cto_timer) #11
  %cmd_status = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %cmd_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %cmd_status, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !385
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending_events) #11
  %state.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 27, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.tasklet_schedule.exit_crit_edge

do.end.tasklet_schedule.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 27
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %do.end.tasklet_schedule.exit_crit_edge
  %data1.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %3 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1.i, align 8
  %tobool.not.i9 = icmp eq ptr %4, null
  br i1 %tobool.not.i9, label %tasklet_schedule.exit.dw_mci_start_fault_timer.exit_crit_edge, label %lor.lhs.false.i

tasklet_schedule.exit.dw_mci_start_fault_timer.exit_crit_edge: ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_start_fault_timer.exit

lor.lhs.false.i:                                  ; preds = %tasklet_schedule.exit
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ult i32 %6, 2
  br i1 %cmp.i, label %lor.lhs.false.i.dw_mci_start_fault_timer.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dw_mci_start_fault_timer.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_start_fault_timer.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %fail_data_crc.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 58
  %call.i10 = tail call zeroext i1 @should_fail(ptr noundef %fail_data_crc.i, i32 noundef 1) #11
  br i1 %call.i10, label %if.end3.i, label %if.end.i.dw_mci_start_fault_timer.exit_crit_edge

if.end.i.dw_mci_start_fault_timer.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_start_fault_timer.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %fault_timer.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 59
  %call4.i = tail call i32 @prandom_u32() #11
  %rem.i = urem i32 %call4.i, 25
  %narrow.i = mul nuw nsw i32 %rem.i, 1000000
  %mul.i.i = zext i32 %narrow.i to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %fault_timer.i, i64 noundef %mul.i.i, i64 noundef 0, i32 noundef 1) #11
  br label %dw_mci_start_fault_timer.exit

dw_mci_start_fault_timer.exit:                    ; preds = %if.end3.i, %if.end.i.dw_mci_start_fault_timer.exit_crit_edge, %lor.lhs.false.i.dw_mci_start_fault_timer.exit_crit_edge, %tasklet_schedule.exit.dw_mci_start_fault_timer.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_read_data_pio(ptr noundef %host, i1 noundef zeroext %dto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_miter1 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7
  %data2 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data2, align 8
  %data_shift = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 44
  %2 = ptrtoint ptr %data_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_shift, align 4
  %call87 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1) #11
  br i1 %call87, label %if.end.lr.ph, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.lr.ph:                                     ; preds = %entry
  %piter = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7, i32 4
  %sg3 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 6
  %addr = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7, i32 1
  %length = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7, i32 2
  %regs = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 2
  %part_buf_count = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 46
  %4 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 47
  %part_buf_start.i.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 45
  %pull_data.i = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 49
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %consumed = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 7, i32 3
  br label %if.end

if.end:                                           ; preds = %do.body.backedge.if.end_crit_edge, %if.end.lr.ph
  %5 = ptrtoint ptr %piter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %piter, align 4
  %7 = ptrtoint ptr %sg3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sg3, align 8
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  br label %do.body4

do.body4:                                         ; preds = %dw_mci_pull_data.exit.do.body4_crit_edge, %if.end
  %remain.0 = phi i32 [ %11, %if.end ], [ %sub, %dw_mci_pull_data.exit.do.body4_crit_edge ]
  %offset.0 = phi i32 [ 0, %if.end ], [ %add12, %dw_mci_pull_data.exit.do.body4_crit_edge ]
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shr = lshr i32 %15, 17
  %and = and i32 %shr, 8191
  %shl = shl i32 %and, %3
  %16 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %part_buf_count, align 1
  %conv = zext i8 %17 to i32
  %add = add i32 %shl, %conv
  %18 = tail call i32 @llvm.umin.i32(i32 %remain.0, i32 %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %do.body4.do.end_crit_edge, label %if.end9

do.body4.do.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end9:                                          ; preds = %do.body4
  %add.ptr10 = getelementptr i8, ptr %9, i32 %offset.0
  %19 = tail call i32 @llvm.smin.i32(i32 %conv, i32 %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end9.dw_mci_pull_part_bytes.exit.i_crit_edge, label %if.then.i.i

if.end9.dw_mci_pull_part_bytes.exit.i_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_pull_part_bytes.exit.i

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %part_buf_start.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %part_buf_start.i.i, align 8
  %conv2.i.i = zext i8 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv2.i.i
  %22 = call ptr @memcpy(ptr %add.ptr10, ptr %add.ptr.i.i, i32 %19)
  %23 = ptrtoint ptr %part_buf_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %part_buf_count, align 1
  %25 = trunc i32 %19 to i8
  %conv5.i.i = sub i8 %24, %25
  store i8 %conv5.i.i, ptr %part_buf_count, align 1
  %26 = load i8, ptr %part_buf_start.i.i, align 8
  %conv8.i.i = add i8 %26, %25
  store i8 %conv8.i.i, ptr %part_buf_start.i.i, align 8
  br label %dw_mci_pull_part_bytes.exit.i

dw_mci_pull_part_bytes.exit.i:                    ; preds = %if.then.i.i, %if.end9.dw_mci_pull_part_bytes.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp.not.i = icmp sgt i32 %18, %conv
  br i1 %cmp.not.i, label %if.end.i, label %dw_mci_pull_part_bytes.exit.i.dw_mci_pull_data.exit_crit_edge, !prof !357

dw_mci_pull_part_bytes.exit.i.dw_mci_pull_data.exit_crit_edge: ; preds = %dw_mci_pull_part_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_pull_data.exit

if.end.i:                                         ; preds = %dw_mci_pull_part_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %add.ptr10, i32 %19
  %sub.i = sub i32 %18, %19
  %27 = ptrtoint ptr %pull_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pull_data.i, align 4
  tail call void %28(ptr noundef %host, ptr noundef %add.ptr.i, i32 noundef %sub.i) #11
  br label %dw_mci_pull_data.exit

dw_mci_pull_data.exit:                            ; preds = %if.end.i, %dw_mci_pull_part_bytes.exit.i.dw_mci_pull_data.exit_crit_edge
  %29 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes_xfered, align 4
  %add11 = add i32 %30, %18
  store i32 %add11, ptr %bytes_xfered, align 4
  %add12 = add i32 %18, %offset.0
  %sub = sub i32 %remain.0, %18
  %tobool13.not = icmp eq i32 %sub, 0
  br i1 %tobool13.not, label %dw_mci_pull_data.exit.do.end_crit_edge, label %dw_mci_pull_data.exit.do.body4_crit_edge

dw_mci_pull_data.exit.do.body4_crit_edge:         ; preds = %dw_mci_pull_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

dw_mci_pull_data.exit.do.end_crit_edge:           ; preds = %dw_mci_pull_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dw_mci_pull_data.exit.do.end_crit_edge, %do.body4.do.end_crit_edge
  %remain.1 = phi i32 [ 0, %dw_mci_pull_data.exit.do.end_crit_edge ], [ %remain.0, %do.body4.do.end_crit_edge ]
  %offset.1 = phi i32 [ %add12, %dw_mci_pull_data.exit.do.end_crit_edge ], [ %offset.0, %do.body4.do.end_crit_edge ]
  %31 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %offset.1, ptr %consumed, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %33, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !355
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %36, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 536870912) #11, !srcloc !356
  %37 = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool23.not = icmp eq i32 %37, 0
  br i1 %tobool23.not, label %lor.rhs, label %do.end.do.body.backedge_crit_edge

do.end.do.body.backedge_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.end
  br i1 %dto, label %land.rhs, label %lor.rhs.do.end34_crit_edge

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.rhs:                                         ; preds = %lor.rhs
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %39, i32 72
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #11, !srcloc !355
  %41 = and i32 %40, 65087
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool33.not = icmp eq i32 %41, 0
  br i1 %tobool33.not, label %land.rhs.do.end34_crit_edge, label %land.rhs.do.body.backedge_crit_edge

land.rhs.do.body.backedge_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.backedge

land.rhs.do.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.body.backedge:                                 ; preds = %land.rhs.do.body.backedge_crit_edge, %do.end.do.body.backedge_crit_edge
  %call = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1) #11
  br i1 %call, label %do.body.backedge.if.end_crit_edge, label %do.body.backedge.done_crit_edge

do.body.backedge.done_crit_edge:                  ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body.backedge.if.end_crit_edge:                ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end34:                                         ; preds = %land.rhs.do.end34_crit_edge, %lor.rhs.do.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.1)
  %tobool35.not = icmp eq i32 %remain.1, 0
  br i1 %tobool35.not, label %if.then36, label %do.end34.if.end41_crit_edge

do.end34.if.end41_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then36:                                        ; preds = %do.end34
  %call37 = tail call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1) #11
  br i1 %call37, label %if.end39, label %if.then36.done_crit_edge

if.then36.done_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end39:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %consumed, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %do.end34.if.end41_crit_edge
  tail call void @sg_miter_stop(ptr noundef %sg_miter1) #11
  br label %cleanup

done:                                             ; preds = %if.then36.done_crit_edge, %do.body.backedge.done_crit_edge, %entry.done_crit_edge
  tail call void @sg_miter_stop(ptr noundef %sg_miter1) #11
  %sg42 = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 6
  %43 = ptrtoint ptr %sg42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sg42, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !386
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %host, i32 0, i32 28
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending_events) #11
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_signal_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_get_cd(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %call2 = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #11
  %caps = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 32
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.thread

lor.lhs.false:                                    ; preds = %entry
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not.not = icmp eq i32 %4, 0
  br i1 %tobool4.not.not, label %if.else18, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.thread:                                   ; preds = %entry
  %flags95 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %flags95 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags95, align 4
  %and1.i96 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i96)
  %tobool6.not97 = icmp eq i32 %and1.i96, 0
  br i1 %tobool6.not97, label %if.then.thread.if.end_crit_edge, label %if.then.thread.cleanup_crit_edge

if.then.thread.cleanup_crit_edge:                 ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.thread.if.end_crit_edge:                  ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.then.thread.if.end_crit_edge, %if.then.if.end_crit_edge
  %.str.143.sink = phi ptr [ @.str.140, %if.then.thread.if.end_crit_edge ], [ @.str.143, %if.then.if.end_crit_edge ]
  %flags98100 = phi ptr [ %flags95, %if.then.thread.if.end_crit_edge ], [ %flags, %if.then.if.end_crit_edge ]
  %class_dev15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %class_dev15, ptr noundef nonnull %.str.143.sink) #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags98100) #11
  br label %cleanup

if.else18:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.else18.if.end26_crit_edge, label %if.else20

if.else18.if.end26_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host1, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = xor i32 %13, -1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = lshr i32 %17, %15
  %19 = and i32 %18, 1
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.else18.if.end26_crit_edge
  %present.0 = phi i32 [ %19, %if.else20 ], [ %call2, %if.else18.if.end26_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %present.0)
  %tobool27.not = icmp eq i32 %present.0, 0
  %flags46 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  br i1 %tobool27.not, label %land.lhs.true45.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26
  %call29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body32, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.body32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_get_cd.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_get_cd, %if.then38)) #11
          to label %if.end68 [label %if.then38], !srcloc !354

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev39 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_get_cd.__UNIQUE_ID_ddebug306, ptr noundef %class_dev39, ptr noundef nonnull @.str.145) #11
  br label %if.end68

land.lhs.true45.critedge:                         ; preds = %if.end26
  %call47 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags46) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body50, label %land.lhs.true45.critedge.if.end68_crit_edge

land.lhs.true45.critedge.if.end68_crit_edge:      ; preds = %land.lhs.true45.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.body50:                                        ; preds = %land.lhs.true45.critedge
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_get_cd.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_get_cd, %if.then62)) #11
          to label %if.end68 [label %if.then62], !srcloc !354

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev63 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_get_cd.__UNIQUE_ID_ddebug307, ptr noundef %class_dev63, ptr noundef nonnull @.str.146) #11
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %do.body50, %land.lhs.true45.critedge.if.end68_crit_edge, %if.then38, %do.body32, %land.lhs.true.if.end68_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end, %if.then.thread.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %present.0, %if.end68 ], [ 1, %if.end ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_mci_init_debugfs(ptr noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %debugfs_root = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %host2 = getelementptr inbounds %struct.dw_mci_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.147, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull @dw_mci_regs_fops) #11
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.148, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %slot, ptr noundef nonnull @dw_mci_req_fops) #11
  %state = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 30
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.149, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %state) #11
  %pending_events = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 28
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.150, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %pending_events) #11
  %completed_events = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 29
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.151, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef %completed_events) #11
  %fail_data_crc = getelementptr inbounds %struct.dw_mci, ptr %5, i32 0, i32 58
  %call4 = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.152, ptr noundef nonnull %3, ptr noundef %fail_data_crc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %cond.i, i32 noundef 0) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %16 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_pre_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %host_cookie, align 4
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %9 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data1, align 4
  %call5 = tail call fastcc i32 @dw_mci_pre_dma_transfer(ptr noundef %8, ptr noundef %10, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_request(ptr noundef %mmc, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %mrq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !357

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1422, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call22 = tail call i32 @dw_mci_get_cd(ptr noundef %mmc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -123, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %1) #11
  %7 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mrq, ptr %mrq2, align 4
  %state.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %9, label %if.else.i [
    i32 7, label %if.end.thread.i
    i32 0, label %if.end25.if.then5.i_crit_edge
  ]

if.end25.if.then5.i_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i

if.end.thread.i:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %class_dev.i, ptr noundef nonnull @.str.127) #14
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end.thread.i, %if.end25.if.then5.i_crit_edge
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %state.i, align 8
  %14 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mrq2, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then5.i.dw_mci_start_request.exit.i_crit_edge

if.then5.i.dw_mci_start_request.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_start_request.exit.i

cond.false.i.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmd3.i.i = getelementptr inbounds %struct.mmc_request, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %cmd3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd3.i.i, align 4
  br label %dw_mci_start_request.exit.i

dw_mci_start_request.exit.i:                      ; preds = %cond.false.i.i, %if.then5.i.dw_mci_start_request.exit.i_crit_edge
  %cond.i.i = phi ptr [ %19, %cond.false.i.i ], [ %17, %if.then5.i.dw_mci_start_request.exit.i_crit_edge ]
  tail call fastcc void @__dw_mci_start_request(ptr noundef %1, ptr noundef %private.i, ptr noundef %cond.i.i) #11
  br label %dw_mci_queue_request.exit

if.else.i:                                        ; preds = %if.end25
  %queue_node.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %queue.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 31
  %prev.i.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 31, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_node.i, ptr noundef %21, ptr noundef %queue.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.dw_mci_queue_request.exit_crit_edge

if.else.i.dw_mci_queue_request.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_queue_request.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %queue_node.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %queue_node.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %queue.i, ptr %queue_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %queue_node.i, ptr %21, align 4
  br label %dw_mci_queue_request.exit

dw_mci_queue_request.exit:                        ; preds = %if.end.i.i.i, %if.else.i.dw_mci_queue_request.exit_crit_edge, %dw_mci_start_request.exit.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %dw_mci_queue_request.exit, %if.then24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_get_ro(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @mmc_gpio_get_ro(ptr noundef %mmc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = lshr i32 %5, %7
  %9 = and i32 %8, 1
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %read_only.0 = phi i32 [ %9, %if.else ], [ %call1, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_get_ro.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_get_ro, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !354

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_only.0)
  %tobool9.not = icmp eq i32 %read_only.0, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.132, ptr @.str.131
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_get_ro.__UNIQUE_ID_ddebug311, ptr noundef %class_dev, ptr noundef nonnull @.str.130, ptr noundef nonnull %cond10) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 %read_only.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enb)
  %tobool.not = icmp eq i32 %enb, 0
  %id.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 65536, %3
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  %flags.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #11
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #11
  %or.i = or i32 %7, %shl.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %clk_en_a.0.i = phi i32 [ %and.i, %if.then.i ], [ %or.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %clk_en_a.0.i, i32 %7)
  %cmp.not.i = icmp eq i32 %clk_en_a.0.i, %7
  br i1 %cmp.not.i, label %if.end.i.dw_mci_prepare_sdio_irq.exit_crit_edge, label %if.then3.i

if.end.i.dw_mci_prepare_sdio_irq.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dw_mci_prepare_sdio_irq.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %clk_en_a.0.i) #11
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %8) #11, !srcloc !356
  tail call fastcc void @mci_send_cmd(ptr noundef %private.i, i32 noundef 2105344) #11
  br label %dw_mci_prepare_sdio_irq.exit

dw_mci_prepare_sdio_irq.exit:                     ; preds = %if.then3.i, %if.end.i.dw_mci_prepare_sdio_irq.exit_crit_edge
  %11 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host1, align 4
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %12, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %regs.i10 = getelementptr inbounds %struct.dw_mci, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i10, align 8
  %add.ptr.i11 = getelementptr i8, ptr %14, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #11, !srcloc !355
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %sdio_id8.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %17 = ptrtoint ptr %sdio_id8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdio_id8.i, align 4
  %add9.i = add i32 %18, 16
  %shl10.i = shl nuw i32 1, %add9.i
  %or.i12 = or i32 %shl10.i, %16
  %neg.i13 = xor i32 %shl10.i, -1
  %and.i14 = and i32 %16, %neg.i13
  %int_mask.0.i = select i1 %tobool.not, i32 %and.i14, i32 %or.i12
  %19 = tail call i32 @llvm.bswap.i32(i32 %int_mask.0.i) #11
  %20 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i10, align 8
  %add.ptr12.i = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %19) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call3.i) #11
  %dev3 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %22 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev3, align 4
  %usage_count.i15 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 13
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i15, i32 noundef 4) #11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dw_mci_prepare_sdio_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @llvm.prefetch.p0(ptr %usage_count.i15, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i15, ptr %usage_count.i15, i32 1, ptr elementtype(i32) %usage_count.i15) #11, !srcloc !387
  br label %if.end

if.else:                                          ; preds = %dw_mci_prepare_sdio_irq.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !388
  tail call void @llvm.prefetch.p0(ptr %usage_count.i15, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i15, ptr %usage_count.i15, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i15) #11, !srcloc !389
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.else.if.end_crit_edge, label %do.end11.i.i.i.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !390
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_ack_sdio_irq(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1.i = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #11
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  %sdio_id8.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %6 = ptrtoint ptr %sdio_id8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sdio_id8.i, align 4
  %add9.i = add i32 %7, 16
  %shl10.i = shl nuw i32 1, %add9.i
  %or.i = or i32 %shl10.i, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %8) #11, !srcloc !356
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call3.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_switch_voltage(ptr noundef %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %drv_data2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %drv_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data2, align 4
  %id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %switch_voltage = getelementptr inbounds %struct.dw_mci_drv_data, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %switch_voltage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_voltage, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %7(ptr noundef %mmc, ptr noundef %ios) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 116
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %12 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  %or = or i32 %11, %shl
  %uhs.0 = select i1 %cmp, i32 %and, i32 %or
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %14 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end26_crit_edge, label %if.then11

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then11:                                        ; preds = %if.end
  %call12 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.body, label %if.then11.if.end26_crit_edge

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_mci_switch_voltage.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_mci_switch_voltage, %if.then21)) #11
          to label %cleanup [label %if.then21], !srcloc !354

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %and22 = and i32 %uhs.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool23.not, ptr @.str.136, ptr @.str.135
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_mci_switch_voltage.__UNIQUE_ID_ddebug310, ptr noundef %class_dev, ptr noundef nonnull @.str.134, i32 noundef %call12, ptr noundef nonnull %cond) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then11.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %uhs.0)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %18, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %16) #11, !srcloc !356
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then21, %do.body, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %if.end26 ], [ %call12, %if.then21 ], [ %call12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_card_busy(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %5 = lshr i32 %4, 17
  %.lobit = and i32 %5, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %drv_data2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %drv_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %execute_tuning = getelementptr inbounds %struct.dw_mci_drv_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %execute_tuning, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %5(ptr noundef %private.i, i32 noundef %opcode) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call5, %if.then ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_prepare_hs400_tuning(ptr nocapture noundef readonly %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %drv_data2 = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %drv_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %prepare_hs400_tuning = getelementptr inbounds %struct.dw_mci_drv_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %prepare_hs400_tuning to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_hs400_tuning, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 %5(ptr noundef %1, ptr noundef %ios) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mci_hw_reset(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.dw_mci_slot, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %use_dma = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %regs.i = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !355
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #11, !srcloc !356
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call fastcc zeroext i1 @dw_mci_ctrl_reset(ptr noundef %1, i32 noundef 6)
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %id = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %15
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %18, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %16) #11, !srcloc !356
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #11
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %shl9 = shl nuw i32 1, %20
  %or = or i32 %shl9, %and
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %21) #11, !srcloc !356
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fault_create_debugfs_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dw_mci_regs_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_regs_show(ptr noundef %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %regs = getelementptr inbounds %struct.dw_mci, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !355
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.153, i32 noundef %7) #11
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !355
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.154, i32 noundef %11) #11
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !355
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.155, i32 noundef %15) #11
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !355
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.156, i32 noundef %19) #11
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !355
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.157, i32 noundef %23) #11
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !355
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.158, i32 noundef %27) #11
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_req_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dw_mci_req_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mci_req_show(ptr noundef %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %host = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #11
  %mrq1 = getelementptr inbounds %struct.dw_mci_slot, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then:                                          ; preds = %entry
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data3, align 4
  %stop4 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %stop4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp, align 4
  %arrayidx8 = getelementptr %struct.mmc_command, ptr %7, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.mmc_command, ptr %7, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %23, i32 noundef %25) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 7
  %26 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytes_xfered, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %30 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz, align 4
  %flags15 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 6
  %32 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags15, align 4
  %error16 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %34 = ptrtoint ptr %error16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.160, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end33_crit_edge, label %if.then19

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %11, align 4
  %arg21 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 1
  %38 = ptrtoint ptr %arg21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg21, align 4
  %flags22 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 3
  %40 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags22, align 4
  %resp23 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 2
  %42 = ptrtoint ptr %resp23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %resp23, align 4
  %arrayidx26 = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.mmc_command, ptr %11, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx28, align 4
  %error31 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %48 = ptrtoint ptr %error31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %error31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.159, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %47, i32 noundef %49) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %if.end17.if.end33_crit_edge, %entry.if.end33_crit_edge
  %50 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %host, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %51) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !190, !191, !192, !194, !195, !197, !199, !201, !202, !203, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !256, !257, !258, !259, !261, !262, !263, !264, !265, !267, !268, !269, !270, !271, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !339, !341, !342, !343}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3288, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3291, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3293, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dw_mci_probe.__UNIQUE_ID_ddebug322, !5, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3297, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dw_mci_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @dw_mci_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3302, i32 42}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3304, i32 3}
!20 = !{ptr @dw_mci_probe.__UNIQUE_ID_ddebug323, !19, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3309, i32 4}
!23 = !{ptr @dw_mci_probe._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dw_mci_probe._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3316, i32 5}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dw_mci_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dw_mci_probe._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3324, i32 3}
!32 = !{ptr @dw_mci_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dw_mci_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3339, i32 4}
!36 = !{ptr @dw_mci_probe._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dw_mci_probe._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dw_mci_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3345, i32 2}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dw_mci_probe.__key.25, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3346, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dw_mci_probe.__key.27, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3347, i32 2}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dw_mci_probe.__key.29, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3349, i32 2}
!49 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dw_mci_probe.__key.31, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3350, i32 2}
!52 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3372, i32 3}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3427, i32 2}
!57 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dw_mci_probe._entry.34, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dw_mci_probe._entry_ptr.37, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3438, i32 28}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3452, i32 2}
!64 = !{ptr @dw_mci_probe._entry.39, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dw_mci_probe._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3459, i32 3}
!68 = !{ptr @dw_mci_probe.__UNIQUE_ID_ddebug324, !67, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!69 = !{ptr @__ksymtab_dw_mci_probe, !70, !"__ksymtab_dw_mci_probe", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3482, i32 1}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3486, i32 2}
!73 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dw_mci_remove.__UNIQUE_ID_ddebug325, !72, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!75 = !{ptr @__ksymtab_dw_mci_remove, !76, !"__ksymtab_dw_mci_remove", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3505, i32 1}
!77 = !{ptr @__ksymtab_dw_mci_runtime_suspend, !78, !"__ksymtab_dw_mci_runtime_suspend", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3526, i32 1}
!79 = !{ptr @__ksymtab_dw_mci_runtime_resume, !80, !"__ksymtab_dw_mci_runtime_resume", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3594, i32 1}
!81 = !{ptr @__initcall__kmod_dw_mmc__326_3607_dw_mci_init6, !82, !"__initcall__kmod_dw_mmc__326_3607_dw_mci_init6", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3607, i32 1}
!83 = !{ptr @__exitcall_dw_mci_exit, !84, !"__exitcall_dw_mci_exit", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3608, i32 1}
!85 = !{ptr @__UNIQUE_ID_description327, !86, !"__UNIQUE_ID_description327", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3610, i32 1}
!87 = !{ptr @__UNIQUE_ID_author328, !88, !"__UNIQUE_ID_author328", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3611, i32 1}
!89 = !{ptr @__UNIQUE_ID_author329, !90, !"__UNIQUE_ID_author329", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3612, i32 1}
!91 = !{ptr @__UNIQUE_ID_file330, !92, !"__UNIQUE_ID_file330", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3613, i32 1}
!93 = !{ptr @__UNIQUE_ID_license331, !92, !"__UNIQUE_ID_license331", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3222, i32 63}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3226, i32 36}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3227, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dw_mci_parse_dt._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dw_mci_parse_dt._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3230, i32 32}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3233, i32 32}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3235, i32 35}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3238, i32 37}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3093, i32 3}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dw_mci_cmd11_timer._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @dw_mci_cmd11_timer._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3121, i32 3}
!118 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dw_mci_cto_timer._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @dw_mci_cto_timer._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3126, i32 3}
!123 = !{ptr @dw_mci_cto_timer._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dw_mci_cto_timer._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3148, i32 3}
!127 = !{ptr @dw_mci_cto_timer._entry.60, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @dw_mci_cto_timer._entry_ptr.62, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3172, i32 3}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @dw_mci_dto_timer._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @dw_mci_dto_timer._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3177, i32 3}
!136 = !{ptr @dw_mci_dto_timer._entry.65, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @dw_mci_dto_timer._entry_ptr.67, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3199, i32 3}
!140 = !{ptr @dw_mci_dto_timer._entry.68, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @dw_mci_dto_timer._entry_ptr.70, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1872, i32 44}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/dw_mmc.c", i32 204, i32 3}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @dw_mci_ctrl_reset._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @dw_mci_ctrl_reset._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3033, i32 4}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dw_mci_init_dma._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @dw_mci_init_dma._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3041, i32 4}
!156 = !{ptr @dw_mci_init_dma._entry.76, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dw_mci_init_dma._entry_ptr.78, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3050, i32 4}
!160 = !{ptr @dw_mci_init_dma._entry.79, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @dw_mci_init_dma._entry_ptr.81, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3057, i32 3}
!164 = !{ptr @dw_mci_init_dma._entry.82, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @dw_mci_init_dma._entry_ptr.84, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3060, i32 47}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3062, i32 37}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3066, i32 3}
!172 = !{ptr @dw_mci_init_dma._entry.87, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @dw_mci_init_dma._entry_ptr.89, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3072, i32 4}
!176 = !{ptr @dw_mci_init_dma._entry.90, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @dw_mci_init_dma._entry_ptr.92, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3077, i32 3}
!180 = !{ptr @dw_mci_init_dma._entry.93, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @dw_mci_init_dma._entry_ptr.95, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3084, i32 2}
!184 = !{ptr @dw_mci_init_dma._entry.96, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @dw_mci_init_dma._entry_ptr.98, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @dw_mci_idmac_ops, !187, !"dw_mci_idmac_ops", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/dw_mmc.c", i32 765, i32 36}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/dw_mmc.c", i32 645, i32 2}
!190 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @dw_mci_prepare_desc64.__UNIQUE_ID_ddebug304, !189, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mmc/host/dw_mmc.c", i32 719, i32 2}
!194 = !{ptr @dw_mci_prepare_desc32.__UNIQUE_ID_ddebug305, !193, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!195 = !{ptr @dw_mci_edmac_ops, !196, !"dw_mci_edmac_ops", i1 false, i1 false}
!196 = !{!"../drivers/mmc/host/dw_mmc.c", i32 868, i32 36}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mmc/host/dw_mmc.c", i32 843, i32 46}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/host/dw_mmc.c", i32 847, i32 3}
!201 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @dw_mci_edmac_init._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @dw_mci_edmac_init._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @dw_mci_edmac_start_dma.mszs, !205, !"mszs", i1 false, i1 false}
!205 = !{!"../drivers/mmc/host/dw_mmc.c", i32 784, i32 19}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mmc/host/dw_mmc.c", i32 809, i32 3}
!208 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @dw_mci_edmac_start_dma._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @dw_mci_edmac_start_dma._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mmc/host/dw_mmc.c", i32 817, i32 3}
!213 = !{ptr @dw_mci_edmac_start_dma._entry.107, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @dw_mci_edmac_start_dma._entry_ptr.109, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1314, i32 2}
!217 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @dw_mci_set_data_timeout.__UNIQUE_ID_ddebug309, !216, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!219 = !{ptr @.str.112, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/dw_mmc.c", i32 248, i32 3}
!221 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mci_send_cmd._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @mci_send_cmd._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mmc/host/dw_mmc.c", i32 231, i32 4}
!226 = !{ptr @.str.115, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @dw_mci_wait_while_busy._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @dw_mci_wait_while_busy._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1133, i32 3}
!231 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @dw_mci_submit_data_dma.__UNIQUE_ID_ddebug308, !230, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!233 = distinct !{null, !234, !"mszs", i1 false, i1 false}
!234 = !{!"../drivers/mmc/host/dw_mmc.c", i32 994, i32 19}
!235 = !{ptr @.str.118, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mmc/host/dw_mmc.c", i32 2019, i32 2}
!237 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dw_mci_set_drto.__UNIQUE_ID_ddebug313, !236, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!239 = !{ptr @.str.120, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1985, i32 3}
!241 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @dw_mci_data_complete.__UNIQUE_ID_ddebug312, !240, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!243 = !{ptr @.str.122, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1776, i32 4}
!245 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @dw_mci_reset._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @dw_mci_reset._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1788, i32 4}
!250 = !{ptr @dw_mci_reset._entry.124, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @dw_mci_reset._entry_ptr.126, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @dw_mci_ops, !253, !"dw_mci_ops", i1 false, i1 false}
!253 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1808, i32 34}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1399, i32 3}
!256 = !{ptr @.str.128, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @dw_mci_queue_request._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @dw_mci_queue_request._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.129, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1612, i32 2}
!261 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @dw_mci_get_ro.__UNIQUE_ID_ddebug311, !260, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!263 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.132, !260, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.133, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1588, i32 4}
!267 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @dw_mci_switch_voltage.__UNIQUE_ID_ddebug310, !266, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!269 = !{ptr @.str.135, !266, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.136, !266, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.137, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mmc/host/dw_mmc.c", i32 2882, i32 49}
!273 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/mmc/host/dw_mmc.c", i32 2891, i32 4}
!275 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @dw_mci_init_slot_caps._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @dw_mci_init_slot_caps._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/mmc/host/dw_mmc.c", i32 964, i32 5}
!280 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @dw_mci_get_cd._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @dw_mci_get_cd._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/mmc/host/dw_mmc.c", i32 967, i32 5}
!285 = !{ptr @dw_mci_get_cd._entry.142, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @dw_mci_get_cd._entry_ptr.144, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mmc/host/dw_mmc.c", i32 982, i32 3}
!289 = !{ptr @dw_mci_get_cd.__UNIQUE_ID_ddebug306, !288, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/mmc/host/dw_mmc.c", i32 985, i32 3}
!292 = !{ptr @dw_mci_get_cd.__UNIQUE_ID_ddebug307, !291, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!293 = !{ptr @.str.147, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mmc/host/dw_mmc.c", i32 179, i32 22}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mmc/host/dw_mmc.c", i32 180, i32 22}
!297 = !{ptr @.str.149, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mmc/host/dw_mmc.c", i32 181, i32 21}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/mmc/host/dw_mmc.c", i32 182, i32 21}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mmc/host/dw_mmc.c", i32 184, i32 21}
!303 = !{ptr @.str.152, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/mmc/host/dw_mmc.c", i32 187, i32 28}
!305 = !{ptr @dw_mci_regs_fops, !306, !"dw_mci_regs_fops", i1 false, i1 false}
!306 = !{!"../drivers/mmc/host/dw_mmc.c", i32 167, i32 1}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/mmc/host/dw_mmc.c", i32 156, i32 16}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mmc/host/dw_mmc.c", i32 157, i32 16}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mmc/host/dw_mmc.c", i32 158, i32 16}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/mmc/host/dw_mmc.c", i32 159, i32 16}
!315 = !{ptr @.str.157, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/mmc/host/dw_mmc.c", i32 160, i32 16}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/mmc/host/dw_mmc.c", i32 161, i32 16}
!319 = !{ptr @dw_mci_req_fops, !320, !"dw_mci_req_fops", i1 false, i1 false}
!320 = !{!"../drivers/mmc/host/dw_mmc.c", i32 148, i32 1}
!321 = !{ptr @.str.159, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mmc/host/dw_mmc.c", i32 128, i32 8}
!323 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/mmc/host/dw_mmc.c", i32 133, i32 18}
!325 = !{ptr @.str.161, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1490, i32 5}
!327 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @dw_mci_set_ios._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @dw_mci_set_ios._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.164, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1506, i32 6}
!332 = !{ptr @dw_mci_set_ios._entry.163, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @dw_mci_set_ios._entry_ptr.165, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.166, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/mmc/host/dw_mmc.c", i32 1238, i32 5}
!336 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @dw_mci_setup_bus._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @dw_mci_setup_bus._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.168, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/mmc/host/dw_mmc.c", i32 3599, i32 2}
!341 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @dw_mci_init._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @dw_mci_init._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{!"auto-init"}
!354 = !{i64 2148364418, i64 2148364423, i64 2148364436, i64 2148364480, i64 2148364514, i64 2148364535}
!355 = !{i64 6041085}
!356 = !{i64 6040667}
!357 = !{!"branch_weights", i32 2000, i32 1}
!358 = !{i64 6040047}
!359 = !{i64 6040247}
!360 = !{i64 2155694682}
!361 = !{i64 2155695172}
!362 = !{i64 2155870114}
!363 = !{i64 2155872726}
!364 = !{i64 2155877843}
!365 = !{i64 2155866908}
!366 = !{i8 0, i8 2}
!367 = !{i64 2155752160}
!368 = !{i64 2155753156}
!369 = !{i64 2155739485}
!370 = !{i64 2155739947}
!371 = !{i64 2155746733}
!372 = !{i64 2155747195}
!373 = !{i64 2155800127}
!374 = !{i64 2148389605, i64 2148389885, i64 2148390219, i64 2148390553}
!375 = !{i64 2155823280}
!376 = !{i64 2155823770}
!377 = !{i64 904061, i64 904088, i64 904110, i64 904138}
!378 = !{i64 904469, i64 904496, i64 904529, i64 904550, i64 904577, i64 904603}
!379 = !{i64 2155720570}
!380 = !{i64 2155702919}
!381 = !{i64 2155705566}
!382 = !{i64 2155706056}
!383 = !{i64 2155699845}
!384 = !{i64 2155700335}
!385 = !{i64 2155867206}
!386 = !{i64 2155863770}
!387 = !{i64 2148551025, i64 2148551051, i64 2148551080, i64 2148551114, i64 2148551145, i64 2148551168}
!388 = !{i64 2148550444}
!389 = !{i64 1037044, i64 1037069, i64 1037091, i64 1037107, i64 1037119, i64 1037139, i64 1037163, i64 1037179, i64 1037191}
!390 = !{i64 2148550632}
