; ModuleID = '/llk/IR_all_yes/drivers/bcma/host_pci.c_pt.bc'
source_filename = "../drivers/bcma/host_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_host_pci_up\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_host_pci_up\09\09\09\09"
module asm "\09.long\09__crc_bcma_host_pci_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_up:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_up\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_host_pci_down\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_host_pci_down\09\09\09\09"
module asm "\09.long\09__crc_bcma_host_pci_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_down:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_down\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_host_pci_irq_ctl\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_host_pci_irq_ctl\09\09\09\09"
module asm "\09.long\09__crc_bcma_host_pci_irq_ctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_host_pci_irq_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_host_pci_irq_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_host_pci_irq_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.73, %struct.anon.74, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.anon.74 = type { %struct.anon.75, %struct.anon.76 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@bcma_pci_bridge_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @bcma_pci_bridge_tbl, ptr @bcma_host_pci_probe, ptr @bcma_host_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcma_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bcma\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_bcma_host_pci_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_up = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_up to i32), ptr @__kstrtab_bcma_host_pci_up, ptr @__kstrtabns_bcma_host_pci_up }, section "___ksymtab_gpl+bcma_host_pci_up", align 4
@__kstrtab_bcma_host_pci_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_down = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_down to i32), ptr @__kstrtab_bcma_host_pci_down, ptr @__kstrtabns_bcma_host_pci_down }, section "___ksymtab_gpl+bcma_host_pci_down", align 4
@__kstrtab_bcma_host_pci_irq_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_host_pci_irq_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_host_pci_irq_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_host_pci_irq_ctl to i32), ptr @__kstrtab_bcma_host_pci_irq_ctl, ptr @__kstrtabns_bcma_host_pci_irq_ctl }, section "___ksymtab_gpl+bcma_host_pci_irq_ctl", align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcma-pci-bridge\00", [16 x i8] zeroinitializer }, align 32
@bcma_pci_bridge_tbl = internal constant { [21 x %struct.pci_device_id], [160 x i8] } { [21 x %struct.pci_device_id] [%struct.pci_device_id { i32 5348, i32 1398, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17171, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17201, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17239, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17240, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17241, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17248, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4136, i32 22, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4136, i32 24, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4187, i32 57490, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17253, i32 4156, i32 32842, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17312, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17321, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17322, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 17329, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 18215, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43227, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5348, i32 43228, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@bcma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr @bcma_host_pci_suspend, ptr @bcma_host_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcma_host_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bus%d: PCI card detected, they are not supported.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcma_host_pci_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/bcma/host_pci.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_host_pci_probe._entry_ptr = internal global ptr @bcma_host_pci_probe._entry, section ".printk_index", align 4
@bcma_host_pci_ops = internal constant { %struct.bcma_host_ops, [56 x i8] } { %struct.bcma_host_ops { ptr @bcma_host_pci_read8, ptr @bcma_host_pci_read16, ptr @bcma_host_pci_read32, ptr @bcma_host_pci_write8, ptr @bcma_host_pci_write16, ptr @bcma_host_pci_write32, ptr @bcma_host_pci_block_read, ptr @bcma_host_pci_block_write, ptr @bcma_host_pci_aread32, ptr @bcma_host_pci_awrite32 }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 0, i8 5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcma_host_pci_switch_core\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bus%d: Switched to core: 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2080]
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"bcma_pci_bridge_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 308, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 318, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 309, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"bcma_pci_bridge_tbl\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 283, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"bcma_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 273, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 190, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"bcma_host_pci_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 145, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [27 x i8] c"../drivers/bcma/host_pci.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 23, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_bcma_host_pci_down, ptr @__ksymtab_bcma_host_pci_irq_ctl, ptr @__ksymtab_bcma_host_pci_up, ptr @bcma_host_pci_exit, ptr @bcma_host_pci_probe._entry, ptr @bcma_host_pci_probe._entry_ptr, ptr @bcma_pci_bridge_driver, ptr @.str, ptr @.str.1, ptr @bcma_pci_bridge_tbl, ptr @bcma_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcma_host_pci_ops, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_pci_bridge_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_pci_bridge_tbl to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_host_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_host_pci_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_host_pci_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @bcma_pci_bridge_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @bcma_pci_bridge_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_up(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end:                                           ; preds = %entry
  %host_is_pcie2 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 4
  %2 = ptrtoint ptr %host_is_pcie2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_is_pcie2, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %drv_pcie2 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 15
  tail call void @bcma_core_pcie2_up(ptr noundef %drv_pcie2) #7
  br label %if.end2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %drv_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 14
  tail call void @bcma_core_pci_up(ptr noundef %drv_pci) #7
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pcie2_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_host_pci_down(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.end:                                           ; preds = %entry
  %host_is_pcie2 = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 4
  %2 = ptrtoint ptr %host_is_pcie2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_is_pcie2, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %drv_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 14
  tail call void @bcma_core_pci_down(ptr noundef %drv_pci) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_host_pci_irq_ctl(ptr nocapture noundef readonly %bus, ptr nocapture noundef readonly %core, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !40
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %1 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 5
  %3 = ptrtoint ptr %host_pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_pci, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 148, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  %core_index = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 6
  %5 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_index, align 1
  %conv = zext i8 %6 to i32
  %shl3 = shl i32 256, %conv
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %or = or i32 %8, %shl3
  br label %if.end6

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl3, -1
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %and = and i32 %10, %neg
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then5 ]
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %tmp, align 4
  %call7 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 148, i32 noundef %storemerge) #7
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call, %if.end.out_crit_edge ], [ %call7, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1268) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_kfree_bus_crit_edge

if.end.err_kfree_bus_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree_bus

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_pci_disable_crit_edge

if.end4.err_pci_disable_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_disable

if.end8:                                          ; preds = %if.end4
  tail call void @pci_set_master(ptr noundef %dev) #7
  %call9 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %3, -65281
  %call12 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 64, i32 noundef %and11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  %num = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 1
  %conv = zext i8 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %err_pci_release_regions

if.end17:                                         ; preds = %if.end13
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev18, ptr %call7.i.i, align 8
  %call20 = call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef -1) #7
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %mmio, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end17.err_pci_release_regions_crit_edge, label %if.end24

if.end17.err_pci_release_regions_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_release_regions

if.end24:                                         ; preds = %if.end17
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %host_pci to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %host_pci, align 4
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %hosttype to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hosttype, align 4
  %ops = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bcma_host_pci_ops, ptr %ops, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %15 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor, align 4
  %boardinfo = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %boardinfo to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %boardinfo, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %18 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device, align 2
  %type = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %type, align 2
  call void @bcma_init_bus(ptr noundef nonnull %call7.i.i) #7
  %call28 = call i32 @bcma_bus_scan(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.err_pci_unmap_mmio_crit_edge

if.end24.err_pci_unmap_mmio_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pci_unmap_mmio

if.end31:                                         ; preds = %if.end24
  %call.i = call ptr @bcma_find_core_unit(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2108, i8 noundef zeroext 0) #7
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2 = getelementptr inbounds %struct.bcma_bus, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %host_is_pcie2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %host_is_pcie2, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %call36 = call i32 @bcma_bus_register(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %err_unregister_cores

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_unregister_cores:                             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @bcma_unregister_cores(ptr noundef nonnull %call7.i.i) #7
  br label %err_pci_unmap_mmio

err_pci_unmap_mmio:                               ; preds = %err_unregister_cores, %if.end24.err_pci_unmap_mmio_crit_edge
  %err.1 = phi i32 [ %call28, %if.end24.err_pci_unmap_mmio_crit_edge ], [ %call36, %err_unregister_cores ]
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  call void @pci_iounmap(ptr noundef %dev, ptr noundef %24) #7
  br label %err_pci_release_regions

err_pci_release_regions:                          ; preds = %err_pci_unmap_mmio, %if.end17.err_pci_release_regions_crit_edge, %do.end
  %err.2 = phi i32 [ %err.1, %err_pci_unmap_mmio ], [ -12, %if.end17.err_pci_release_regions_crit_edge ], [ -6, %do.end ]
  call void @pci_release_regions(ptr noundef %dev) #7
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_pci_release_regions, %if.end4.err_pci_disable_crit_edge
  %err.3 = phi i32 [ %call5, %if.end4.err_pci_disable_crit_edge ], [ %err.2, %err_pci_release_regions ]
  call void @pci_disable_device(ptr noundef %dev) #7
  br label %err_kfree_bus

err_kfree_bus:                                    ; preds = %err_pci_disable, %if.end.err_kfree_bus_crit_edge
  %err.4 = phi i32 [ %call1, %if.end.err_kfree_bus_crit_edge ], [ %err.3, %err_pci_disable ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_kfree_bus, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_kfree_bus ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @bcma_bus_unregister(ptr noundef %1) #7
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %3) #7
  tail call void @pci_release_regions(ptr noundef %dev) #7
  tail call void @pci_disable_device(ptr noundef %dev) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_init_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_unregister_cores(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bcma_host_pci_read8(ptr noundef %core, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @bcma_host_pci_read16(ptr noundef %core, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !43
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_read32(ptr noundef %core, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !45
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_write8(ptr noundef %core, i16 noundef zeroext %offset, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #7, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_write16(ptr noundef %core, i16 noundef zeroext %offset, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %value) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #7, !srcloc !50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_write32(ptr noundef %core, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core)
  %add = add i16 %call, %offset
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv3 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %value) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_block_read(ptr noundef %core, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mapped_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_core, align 4
  %cmp.not = icmp eq ptr %5, %core
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %host_is_pcie2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_is_pcie2.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %cond.i = select i1 %tobool.not.i, i32 172, i32 112
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_pci.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 128, i32 noundef %11) #7
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %host_pci3.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %host_pci3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_pci3.i, align 4
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 10
  %16 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrap.i, align 8
  %call4.i = tail call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef %cond.i, i32 noundef %17) #7
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 8
  %mapped_core.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mapped_core.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %core, ptr %mapped_core.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_host_pci_block_read, %if.end)) #7
          to label %if.then.i [label %if.end], !srcloc !53

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %26 to i32
  %id13.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %id13.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id13.i, align 2
  %conv14.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv14.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %29 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %do.end72 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 4, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_readsb(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb4.if.end19_crit_edge, label %do.end, !prof !54

sw.bb4.if.end19_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %sw.bb4.if.end19_crit_edge
  %shr = lshr i32 %count, 1
  tail call void @__raw_readsw(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %and28 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %sw.bb26.if.end51_crit_edge, label %do.end45, !prof !54

sw.bb26.if.end51_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end45:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 97, i32 noundef 9, ptr noundef null) #7
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %sw.bb26.if.end51_crit_edge
  %shr59 = lshr i32 %count, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr59) #7
  br label %sw.epilog

do.end72:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end72, %if.end51, %if.end19, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_block_write(ptr noundef %core, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mapped_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_core, align 4
  %cmp.not = icmp eq ptr %5, %core
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %host_is_pcie2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_is_pcie2.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %cond.i = select i1 %tobool.not.i, i32 172, i32 112
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_pci.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 128, i32 noundef %11) #7
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %host_pci3.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %host_pci3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_pci3.i, align 4
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 10
  %16 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wrap.i, align 8
  %call4.i = tail call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef %cond.i, i32 noundef %17) #7
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 8
  %mapped_core.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %mapped_core.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %core, ptr %mapped_core.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_host_pci_block_write, %if.end)) #7
          to label %if.then.i [label %if.end], !srcloc !53

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %26 to i32
  %id13.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %id13.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id13.i, align 2
  %conv14.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv14.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %29 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %reg_width, label %do.end72 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
    i8 4, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_writesb(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb4.if.end19_crit_edge, label %do.end, !prof !54

sw.bb4.if.end19_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 117, i32 noundef 9, ptr noundef null) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %sw.bb4.if.end19_crit_edge
  %shr = lshr i32 %count, 1
  tail call void @__raw_writesw(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr) #7
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  %and28 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %sw.bb26.if.end51_crit_edge, label %do.end45, !prof !54

sw.bb26.if.end51_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end45:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 121, i32 noundef 9, ptr noundef null) #7
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %sw.bb26.if.end51_crit_edge
  %shr59 = lshr i32 %count, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %shr59) #7
  br label %sw.epilog

do.end72:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 125, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end72, %if.end51, %if.end19, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_aread32(ptr noundef %core, i16 noundef zeroext %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mapped_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapped_core, align 4
  %cmp.not = icmp eq ptr %3, %core
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %host_is_pcie2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host_is_pcie2.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, i32 172, i32 112
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_pci.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef 128, i32 noundef %9) #7
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 8
  %host_pci3.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %host_pci3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_pci3.i, align 4
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 10
  %14 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrap.i, align 8
  %call4.i = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef %cond.i, i32 noundef %15) #7
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %mapped_core.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mapped_core.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %core, ptr %mapped_core.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_host_pci_aread32, %if.end)) #7
          to label %if.then.i [label %if.end], !srcloc !53

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %24 to i32
  %id13.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %id13.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id13.i, align 2
  %conv14.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv14.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 4096
  %conv = zext i16 %offset to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !45
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_pci_awrite32(ptr noundef %core, i16 noundef zeroext %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mapped_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapped_core, align 4
  %cmp.not = icmp eq ptr %3, %core
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %host_is_pcie2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host_is_pcie2.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, i32 172, i32 112
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_pci.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef 128, i32 noundef %9) #7
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 8
  %host_pci3.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %host_pci3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_pci3.i, align 4
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 10
  %14 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wrap.i, align 8
  %call4.i = tail call i32 @pci_write_config_dword(ptr noundef %13, i32 noundef %cond.i, i32 noundef %15) #7
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %mapped_core.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %mapped_core.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %core, ptr %mapped_core.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_host_pci_awrite32, %if.end)) #7
          to label %if.then.i [label %if.end], !srcloc !53

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %24 to i32
  %id13.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %id13.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %id13.i, align 2
  %conv14.i = zext i16 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv14.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 4096
  %conv = zext i16 %offset to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %value) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %31) #7, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bcma_host_pci_provide_access_to_core(ptr noundef %core) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id1, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %1, label %sw.epilog [
    i16 2048, label %entry.return_crit_edge
    i16 2080, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 8
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %mapped_core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapped_core, align 4
  %cmp.not = icmp eq ptr %6, %core
  br i1 %cmp.not, label %sw.epilog.return_crit_edge, label %if.then

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %host_is_pcie2.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %host_is_pcie2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %host_is_pcie2.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %cond.i = select i1 %tobool.not.i, i32 172, i32 112
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_pci.i, align 4
  %addr.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 8
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 128, i32 noundef %12) #7
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 8
  %host_pci3.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %host_pci3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_pci3.i, align 4
  %wrap.i = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 10
  %17 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wrap.i, align 8
  %call4.i = tail call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef %cond.i, i32 noundef %18) #7
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %mapped_core.i = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %mapped_core.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %core, ptr %mapped_core.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_host_pci_provide_access_to_core, %return)) #7
          to label %if.then.i [label %return], !srcloc !53

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %id1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %id1, align 2
  %conv14.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef %conv.i, i32 noundef %conv14.i) #7
  br label %return

return:                                           ; preds = %if.then.i, %if.then, %sw.epilog.return_crit_edge, %sw.bb2, %entry.return_crit_edge
  %retval.0 = phi i16 [ 8192, %sw.bb2 ], [ 12288, %entry.return_crit_edge ], [ 0, %sw.epilog.return_crit_edge ], [ 0, %if.then ], [ 0, %if.then.i ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mapped_core = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mapped_core to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mapped_core, align 4
  %call1 = tail call i32 @bcma_bus_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @bcma_bus_resume(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/host_pci.c", i32 318, i32 9}
!2 = !{ptr @__ksymtab_bcma_host_pci_up, !3, !"__ksymtab_bcma_host_pci_up", i1 false, i1 false}
!3 = !{!"../drivers/bcma/host_pci.c", i32 341, i32 1}
!4 = !{ptr @__ksymtab_bcma_host_pci_down, !5, !"__ksymtab_bcma_host_pci_down", i1 false, i1 false}
!5 = !{!"../drivers/bcma/host_pci.c", i32 352, i32 1}
!6 = !{ptr @__ksymtab_bcma_host_pci_irq_ctl, !7, !"__ksymtab_bcma_host_pci_irq_ctl", i1 false, i1 false}
!7 = !{!"../drivers/bcma/host_pci.c", i32 386, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bcma/host_pci.c", i32 309, i32 10}
!10 = !{ptr @bcma_pci_bridge_driver, !11, !"bcma_pci_bridge_driver", i1 false, i1 false}
!11 = !{!"../drivers/bcma/host_pci.c", i32 308, i32 26}
!12 = !{ptr @bcma_pci_bridge_tbl, !13, !"bcma_pci_bridge_tbl", i1 false, i1 false}
!13 = !{!"../drivers/bcma/host_pci.c", i32 283, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bcma/host_pci.c", i32 190, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcma_host_pci_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcma_host_pci_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @bcma_host_pci_ops, !23, !"bcma_host_pci_ops", i1 false, i1 false}
!23 = !{!"../drivers/bcma/host_pci.c", i32 145, i32 35}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bcma/host_pci.c", i32 23, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bcma_host_pci_switch_core.__UNIQUE_ID_ddebug236, !25, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!28 = !{ptr @bcma_pm_ops, !29, !"bcma_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/bcma/host_pci.c", i32 273, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
!40 = !{!"auto-init"}
!41 = !{i64 5009785}
!42 = !{i64 2152549130}
!43 = !{i64 5009167}
!44 = !{i64 2152549742}
!45 = !{i64 5010005}
!46 = !{i64 2152550354}
!47 = !{i64 2152550735}
!48 = !{i64 5009390}
!49 = !{i64 2152551159}
!50 = !{i64 5008967}
!51 = !{i64 2152551709}
!52 = !{i64 5009587}
!53 = !{i64 2148514891, i64 2148514896, i64 2148514909, i64 2148514953, i64 2148514987, i64 2148515008}
!54 = !{!"branch_weights", i32 2000, i32 1}
