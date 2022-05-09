; ModuleID = '/llk/IR_all_yes/drivers/ssb/sdio.c_pt.bc'
source_filename = "../drivers/ssb/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.99, %struct.spinlock, i32, %union.anon.100, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.99 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.100 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.106, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom, i8 }
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }

@ssb_sdio_scan_read32.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssb\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssb_sdio_scan_read32\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/ssb/sdio.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X > %08x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_scan_switch_coreidx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 195, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to switch to core %u, error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ssb_sdio_scan_switch_coreidx\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssb_sdio_scan_switch_coreidx._entry_ptr = internal global ptr @ssb_sdio_scan_switch_coreidx._entry, section ".printk_index", align 4
@ssb_sdio_ops = dso_local constant { %struct.ssb_bus_ops, [32 x i8] } { %struct.ssb_bus_ops { ptr @ssb_sdio_read8, ptr @ssb_sdio_read16, ptr @ssb_sdio_read32, ptr @ssb_sdio_write8, ptr @ssb_sdio_write16, ptr @ssb_sdio_write32, ptr @ssb_sdio_block_read, ptr @ssb_sdio_block_write }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac tpl size\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sromrev tpl size\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"id tpl size\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"boardrev tpl size\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pa tpl size\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ccode tpl size\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ant tpl size\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"antg tpl size\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bfl tpl size\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"leds tpl size\00", [18 x i8] zeroinitializer }, align 32
@ssb_sdio_get_invariants._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to fetch device invariants: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ssb_sdio_get_invariants\00", [40 x i8] zeroinitializer }, align 32
@ssb_sdio_get_invariants._entry_ptr = internal global ptr @ssb_sdio_get_invariants._entry, section ".printk_index", align 4
@ssb_sdio_set_sbaddr_window.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssb_sdio_set_sbaddr_window\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to set address window to 0x%08x, error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ssb_sdio_writeb.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_sdio_writeb\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%08X <- %02x, error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ssb_sdio_read8.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssb_sdio_read8\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X > %02x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_switch_core.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.4, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssb_sdio_switch_core\00", [43 x i8] zeroinitializer }, align 32
@ssb_sdio_read16.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_sdio_read16\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X > %04x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_read32.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_sdio_read32\00", [16 x i8] zeroinitializer }, align 32
@ssb_sdio_write8.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssb_sdio_write8\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X < %02x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_write16.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssb_sdio_write16\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X < %04x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_write32.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssb_sdio_write32\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%04X:%04X < %08x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@ssb_sdio_block_read.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssb_sdio_block_read\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%04X:%04X (width=%u, len=%zu), error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ssb_sdio_block_write.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.38, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssb_sdio_block_write\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 34, i64 128]
@__sancov_gen_cov_switch_values.42 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 176, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 194, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"ssb_sdio_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 451, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 490, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 505, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 510, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 517, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 522, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 540, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 545, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 551, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 559, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 566, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 585, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 159, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 116, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 242, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 218, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 264, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 287, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 355, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 374, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 394, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 336, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [22 x i8] c"../drivers/ssb/sdio.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 442, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @ssb_sdio_get_invariants._entry, ptr @ssb_sdio_get_invariants._entry_ptr, ptr @ssb_sdio_scan_switch_coreidx._entry, ptr @ssb_sdio_scan_switch_coreidx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ssb_sdio_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_sdio_scan_switch_coreidx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_sdio_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_sdio_get_invariants._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_sdio_scan_read32(ptr nocapture noundef readonly %bus, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %error, align 4, !annotation !92
  %1 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %conv = zext i16 %offset to i32
  %call = call i32 @sdio_readl(ptr noundef %5, i32 noundef %conv, ptr noundef nonnull %error) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %7) #6
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body, !prof !93

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_scan_read32.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_scan_read32, %if.then11)) #6
          to label %if.end14 [label %if.then11], !srcloc !94

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %11, i32 0, i32 1
  %12 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %shr = lshr i32 %14, 16
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_scan_read32.__UNIQUE_ID_ddebug343, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv, i32 noundef %call, i32 noundef %16) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_sdio_scan_switch_coreidx(ptr nocapture noundef %bus, i8 noundef zeroext %coreidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %coreidx to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add = or i32 %mul, 402653184
  %0 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @sdio_claim_host(ptr noundef %2) #6
  %call = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %bus, i32 noundef %add)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  tail call void @sdio_release_host(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %call) #9
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssb_sdio_set_sbaddr_window(ptr nocapture noundef %bus, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  %error.i45 = alloca i32, align 4
  %error.i38 = alloca i32, align 4
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %address, 8
  %0 = trunc i32 %shr to i8
  %conv = and i8 %0, -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #6
  %1 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %error.i, align 4
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %4, i8 noundef zeroext %conv, i32 noundef 65546, ptr noundef nonnull %error.i) #6
  %5 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.ssb_sdio_writeb.exit_crit_edge, label %do.body.i, !prof !93

entry.ssb_sdio_writeb.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssb_sdio_writeb.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_set_sbaddr_window, %if.then10.i)) #6
          to label %ssb_sdio_writeb.exit [label %if.then10.i], !srcloc !94

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %8, i32 0, i32 1
  %conv.i = zext i8 %conv to i32
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, ptr noundef %dev.i.i, ptr noundef nonnull @.str.24, i32 noundef 65546, i32 noundef %conv.i, i32 noundef %10) #6
  br label %ssb_sdio_writeb.exit

ssb_sdio_writeb.exit:                             ; preds = %if.then10.i, %do.body.i, %entry.ssb_sdio_writeb.exit_crit_edge
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %ssb_sdio_writeb.exit.do.body_crit_edge

ssb_sdio_writeb.exit.do.body_crit_edge:           ; preds = %ssb_sdio_writeb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end:                                           ; preds = %ssb_sdio_writeb.exit
  %shr1 = lshr i32 %address, 16
  %conv3 = trunc i32 %shr1 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i38) #6
  %13 = ptrtoint ptr %error.i38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %error.i38, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %15, i8 noundef zeroext %conv3, i32 noundef 65547, ptr noundef nonnull %error.i38) #6
  %16 = ptrtoint ptr %error.i38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i39 = icmp eq i32 %17, 0
  br i1 %tobool.not.i39, label %if.end.ssb_sdio_writeb.exit44_crit_edge, label %do.body.i40, !prof !93

if.end.ssb_sdio_writeb.exit44_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssb_sdio_writeb.exit44

do.body.i40:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_set_sbaddr_window, %if.then10.i43)) #6
          to label %ssb_sdio_writeb.exit44 [label %if.then10.i43], !srcloc !94

if.then10.i43:                                    ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %dev.i.i41 = getelementptr inbounds %struct.sdio_func, ptr %19, i32 0, i32 1
  %conv.i42 = and i32 %shr1, 255
  %20 = ptrtoint ptr %error.i38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error.i38, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, ptr noundef %dev.i.i41, ptr noundef nonnull @.str.24, i32 noundef 65547, i32 noundef %conv.i42, i32 noundef %21) #6
  br label %ssb_sdio_writeb.exit44

ssb_sdio_writeb.exit44:                           ; preds = %if.then10.i43, %do.body.i40, %if.end.ssb_sdio_writeb.exit44_crit_edge
  %22 = ptrtoint ptr %error.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  br i1 %tobool5.not, label %if.end7, label %ssb_sdio_writeb.exit44.do.body_crit_edge

ssb_sdio_writeb.exit44.do.body_crit_edge:         ; preds = %ssb_sdio_writeb.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end7:                                          ; preds = %ssb_sdio_writeb.exit44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i45) #6
  %24 = ptrtoint ptr %error.i45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %error.i45, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  call void @sdio_writeb(ptr noundef %26, i8 noundef zeroext 24, i32 noundef 65548, ptr noundef nonnull %error.i45) #6
  %27 = ptrtoint ptr %error.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %error.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i46 = icmp eq i32 %28, 0
  br i1 %tobool.not.i46, label %if.end7.ssb_sdio_writeb.exit50_crit_edge, label %do.body.i47, !prof !93

if.end7.ssb_sdio_writeb.exit50_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssb_sdio_writeb.exit50

do.body.i47:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_set_sbaddr_window, %if.then10.i49)) #6
          to label %ssb_sdio_writeb.exit50 [label %if.then10.i49], !srcloc !94

if.then10.i49:                                    ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %dev.i.i48 = getelementptr inbounds %struct.sdio_func, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %error.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error.i45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, ptr noundef %dev.i.i48, ptr noundef nonnull @.str.24, i32 noundef 65548, i32 noundef 24, i32 noundef %32) #6
  br label %ssb_sdio_writeb.exit50

ssb_sdio_writeb.exit50:                           ; preds = %if.then10.i49, %do.body.i47, %if.end7.ssb_sdio_writeb.exit50_crit_edge
  %33 = ptrtoint ptr %error.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool12.not = icmp eq i32 %34, 0
  br i1 %tobool12.not, label %out, label %ssb_sdio_writeb.exit50.do.body_crit_edge

ssb_sdio_writeb.exit50.do.body_crit_edge:         ; preds = %ssb_sdio_writeb.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

out:                                              ; preds = %ssb_sdio_writeb.exit50
  call void @__sanitizer_cov_trace_pc() #8
  %35 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %address, ptr %35, align 4
  br label %if.end24

do.body:                                          ; preds = %ssb_sdio_writeb.exit50.do.body_crit_edge, %ssb_sdio_writeb.exit44.do.body_crit_edge, %ssb_sdio_writeb.exit.do.body_crit_edge
  %error.0.ph = phi i32 [ %34, %ssb_sdio_writeb.exit50.do.body_crit_edge ], [ %23, %ssb_sdio_writeb.exit44.do.body_crit_edge ], [ %12, %ssb_sdio_writeb.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_set_sbaddr_window.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_set_sbaddr_window, %if.then21)) #6
          to label %if.end24 [label %if.then21], !srcloc !94

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %38, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_set_sbaddr_window.__UNIQUE_ID_ddebug342, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %address, i32 noundef %error.0.ph) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %do.body, %out
  %error.054 = phi i32 [ %error.0.ph, %if.then21 ], [ 0, %out ], [ %error.0.ph, %do.body ]
  ret i32 %error.054
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ssb_sdio_read8(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read8, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = and i16 %conv4, 32767
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv8 = zext i16 %17 to i32
  %call9 = call zeroext i8 @sdio_readb(ptr noundef %19, i32 noundef %conv8, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_read8.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read8, %if.then20)) #6
          to label %out [label %if.then20], !srcloc !94

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %conv23 = zext i8 %call9 to i32
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_read8.__UNIQUE_ID_ddebug345, ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %shr, i32 noundef %conv8, i32 noundef %conv23, i32 noundef %27) #6
  br label %out

out:                                              ; preds = %if.then20, %do.body, %if.end.out_crit_edge, %if.then13.i, %do.body.i
  %val.0 = phi i8 [ %call9, %if.then20 ], [ %call9, %if.end.out_crit_edge ], [ -1, %do.body.i ], [ -1, %if.then13.i ], [ %call9, %do.body ]
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret i8 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @ssb_sdio_read16(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read16, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = and i16 %conv4, 32767
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv8 = zext i16 %17 to i32
  %call9 = call zeroext i16 @sdio_readw(ptr noundef %19, i32 noundef %conv8, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_read16.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read16, %if.then20)) #6
          to label %out [label %if.then20], !srcloc !94

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %conv23 = zext i16 %call9 to i32
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_read16.__UNIQUE_ID_ddebug346, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %shr, i32 noundef %conv8, i32 noundef %conv23, i32 noundef %27) #6
  br label %out

out:                                              ; preds = %if.then20, %do.body, %if.end.out_crit_edge, %if.then13.i, %do.body.i
  %val.0 = phi i16 [ %call9, %if.then20 ], [ %call9, %if.end.out_crit_edge ], [ -1, %do.body.i ], [ -1, %if.then13.i ], [ %call9, %do.body ]
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret i16 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssb_sdio_read32(ptr noundef %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read32, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = or i16 %conv4, -32768
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv11 = zext i16 %17 to i32
  %call12 = call i32 @sdio_readl(ptr noundef %19, i32 noundef %conv11, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not = icmp eq i32 %21, 0
  br i1 %tobool13.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_read32.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_read32, %if.then23)) #6
          to label %out [label %if.then23], !srcloc !94

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_read32.__UNIQUE_ID_ddebug347, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv11, i32 noundef %call12, i32 noundef %27) #6
  br label %out

out:                                              ; preds = %if.then23, %do.body, %if.end.out_crit_edge, %if.then13.i, %do.body.i
  %val.0 = phi i32 [ %call12, %if.then23 ], [ %call12, %if.end.out_crit_edge ], [ -1, %do.body.i ], [ -1, %if.then13.i ], [ %call12, %do.body ]
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_sdio_write8(ptr noundef %dev, i16 noundef zeroext %offset, i8 noundef zeroext %val) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write8, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = and i16 %conv4, 32767
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv8 = zext i16 %17 to i32
  call void @sdio_writeb(ptr noundef %19, i8 noundef zeroext %val, i32 noundef %conv8, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_write8.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write8, %if.then19)) #6
          to label %out [label %if.then19], !srcloc !94

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %conv22 = zext i8 %val to i32
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_write8.__UNIQUE_ID_ddebug349, ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef %shr, i32 noundef %conv8, i32 noundef %conv22, i32 noundef %27) #6
  br label %out

out:                                              ; preds = %if.then19, %do.body, %if.end.out_crit_edge, %if.then13.i, %do.body.i
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_sdio_write16(ptr noundef %dev, i16 noundef zeroext %offset, i16 noundef zeroext %val) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write16, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = and i16 %conv4, 32767
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv8 = zext i16 %17 to i32
  call void @sdio_writew(ptr noundef %19, i16 noundef zeroext %val, i32 noundef %conv8, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %do.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_write16.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write16, %if.then19)) #6
          to label %out [label %if.then19], !srcloc !94

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %conv22 = zext i16 %val to i32
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_write16.__UNIQUE_ID_ddebug350, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %conv8, i32 noundef %conv22, i32 noundef %27) #6
  br label %out

out:                                              ; preds = %if.then19, %do.body, %if.end.out_crit_edge, %if.then13.i, %do.body.i
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_sdio_write32(ptr noundef %dev, i16 noundef zeroext %offset, i32 noundef %val) #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #6
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %8 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.not.i = icmp eq i32 %10, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write32, %if.then13.i)) #6
          to label %out [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %out

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %8, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = or i16 %conv4, -32768
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %conv11 = zext i16 %17 to i32
  call void @sdio_writel(ptr noundef %19, i32 noundef %val, i32 noundef %conv11, ptr noundef nonnull %error) #6
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.end.if.end26_crit_edge, label %do.body

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_write32.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_write32, %if.then22)) #6
          to label %if.end26 [label %if.then22], !srcloc !94

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %shr = lshr i32 %25, 16
  %26 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_write32.__UNIQUE_ID_ddebug351, ptr noundef %dev.i, ptr noundef nonnull @.str.36, i32 noundef %shr, i32 noundef %conv11, i32 noundef %val, i32 noundef %27) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.body, %if.end.if.end26_crit_edge
  %quirks = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quirks, align 4
  %and27 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.out_crit_edge, label %if.then29

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call30 = call i32 @sdio_readl(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %error) #6
  br label %out

out:                                              ; preds = %if.then29, %if.end26.out_crit_edge, %if.then13.i, %do.body.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  call void @sdio_release_host(ptr noundef %33) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_sdio_block_read(ptr noundef %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %7 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.not.i = icmp eq i32 %9, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_block_read, %if.then13.i)) #6
          to label %if.then [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %if.then

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then13.i, %do.body.i
  %13 = call ptr @memset(ptr %buffer, i32 255, i32 %count)
  br label %do.body108

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %16 = trunc i32 %15 to i16
  %conv4 = or i16 %16, %offset
  %17 = and i16 %conv4, 32767
  %18 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %sw.epilog.thread [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb11
    i8 4, label %sw.bb41
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %and12 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.bb11.sw.epilog_crit_edge, label %do.end, !prof !93

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 319, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  %and43 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %sw.bb41.if.end66_crit_edge, label %do.end60, !prof !93

sw.bb41.if.end66_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end60:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 324, i32 noundef 9, ptr noundef null) #6
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %sw.bb41.if.end66_crit_edge
  %19 = or i16 %conv4, -32768
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 330, i32 noundef 9, ptr noundef null) #6
  br label %out

sw.epilog:                                        ; preds = %if.end66, %do.end, %sw.bb11.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink160 = phi i16 [ %19, %if.end66 ], [ %17, %if.end.sw.epilog_crit_edge ], [ %17, %do.end ], [ %17, %sw.bb11.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %conv77 = zext i16 %.sink160 to i32
  %call78 = tail call i32 @sdio_readsb(ptr noundef %21, ptr noundef %buffer, i32 noundef %conv77, i32 noundef %count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool105.not = icmp eq i32 %call78, 0
  br i1 %tobool105.not, label %sw.epilog.out_crit_edge, label %sw.epilog.do.body108_crit_edge

sw.epilog.do.body108_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body108

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body108:                                       ; preds = %sw.epilog.do.body108_crit_edge, %if.then
  %error.1 = phi i32 [ -5, %if.then ], [ %call78, %sw.epilog.do.body108_crit_edge ]
  %offset.addr.1 = phi i16 [ %offset, %if.then ], [ %.sink160, %sw.epilog.do.body108_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_block_read.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_block_read, %if.then118)) #6
          to label %out [label %if.then118], !srcloc !94

if.then118:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %shr = lshr i32 %25, 16
  %conv120 = zext i16 %offset.addr.1 to i32
  %conv121 = zext i8 %reg_width to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_block_read.__UNIQUE_ID_ddebug348, ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %shr, i32 noundef %conv120, i32 noundef %conv121, i32 noundef %count, i32 noundef %error.1) #6
  br label %out

out:                                              ; preds = %if.then118, %do.body108, %sw.epilog.out_crit_edge, %sw.epilog.thread
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  tail call void @sdio_release_host(ptr noundef %27) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssb_sdio_block_write(ptr noundef %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 4
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #6
  %core_index.i = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %5 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_index.i, align 2
  %conv.i = zext i8 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %mul.i, 402653184
  %7 = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.not.i = icmp eq i32 %9, %add.i
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call fastcc i32 @ssb_sdio_set_sbaddr_window(ptr noundef %1, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_block_write, %if.then13.i)) #6
          to label %do.body108 [label %if.then13.i], !srcloc !94

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %dev.i.i = getelementptr inbounds %struct.sdio_func, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, ptr noundef %dev.i.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #6
  br label %do.body108

if.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_device.i = getelementptr inbounds %struct.ssb_bus, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mapped_device.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %mapped_device.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end16.i, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %7, align 4
  %15 = trunc i32 %14 to i16
  %conv4 = or i16 %15, %offset
  %16 = and i16 %conv4, 32767
  %17 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %reg_width, label %sw.epilog.thread [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb11
    i8 4, label %sw.bb41
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %and12 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.bb11.sw.epilog_crit_edge, label %do.end, !prof !93

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end
  %and43 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %sw.bb41.if.end66_crit_edge, label %do.end60, !prof !93

sw.bb41.if.end66_crit_edge:                       ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end60:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 430, i32 noundef 9, ptr noundef null) #6
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %sw.bb41.if.end66_crit_edge
  %18 = or i16 %conv4, -32768
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 436, i32 noundef 9, ptr noundef null) #6
  br label %out

sw.epilog:                                        ; preds = %if.end66, %do.end, %sw.bb11.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %.sink158 = phi i16 [ %18, %if.end66 ], [ %16, %if.end.sw.epilog_crit_edge ], [ %16, %do.end ], [ %16, %sw.bb11.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %conv77 = zext i16 %.sink158 to i32
  %call78 = tail call i32 @sdio_writesb(ptr noundef %20, i32 noundef %conv77, ptr noundef %buffer, i32 noundef %count) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool105.not = icmp eq i32 %call78, 0
  br i1 %tobool105.not, label %sw.epilog.out_crit_edge, label %sw.epilog.do.body108_crit_edge

sw.epilog.do.body108_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body108

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body108:                                       ; preds = %sw.epilog.do.body108_crit_edge, %if.then13.i, %do.body.i
  %error.1 = phi i32 [ %call78, %sw.epilog.do.body108_crit_edge ], [ -5, %do.body.i ], [ -5, %if.then13.i ]
  %offset.addr.1 = phi i16 [ %.sink158, %sw.epilog.do.body108_crit_edge ], [ %offset, %do.body.i ], [ %offset, %if.then13.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_sdio_block_write.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_sdio_block_write, %if.then118)) #6
          to label %out [label %if.then118], !srcloc !94

if.then118:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %shr = lshr i32 %24, 16
  %conv120 = zext i16 %offset.addr.1 to i32
  %conv121 = zext i8 %reg_width to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_sdio_block_write.__UNIQUE_ID_ddebug352, ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %shr, i32 noundef %conv120, i32 noundef %conv121, i32 noundef %count, i32 noundef %error.1) #6
  br label %out

out:                                              ; preds = %if.then118, %do.body108, %sw.epilog.out_crit_edge, %sw.epilog.thread
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  tail call void @sdio_release_host(ptr noundef %26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_sdio_get_invariants(ptr nocapture noundef readonly %bus, ptr noundef writeonly %iv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1
  %0 = call ptr @memset(ptr %sprom1, i32 255, i32 540)
  %boardflags_lo = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 70
  %1 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %boardflags_lo, align 4
  %boardflags_hi = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 71
  %2 = ptrtoint ptr %boardflags_hi to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %boardflags_hi, align 2
  %3 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %6)
  %tuple.0355 = load ptr, ptr %tuples, align 4
  %tobool.not356 = icmp eq ptr %tuple.0355, null
  br i1 %tobool.not356, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %antenna_gain = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 75
  %a1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 75, i32 1
  %a2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 75, i32 2
  %a3 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 75, i32 3
  %ant_available_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 20
  %ant_available_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 21
  %country_code = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 16
  %gpio0 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 34
  %gpio1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 35
  %gpio2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 36
  %gpio3 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 37
  %pa0b0 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 22
  %pa0b1 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 23
  %pa0b2 = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 24
  %itssi_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 42
  %itssi_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 43
  %maxpwr_a = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 40
  %maxpwr_bg = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 38
  %board_rev = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 13
  %il0mac = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 2
  %et1mac = getelementptr inbounds %struct.ssb_init_invariants, ptr %iv, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog271.while.body_crit_edge, %while.body.lr.ph
  %tuple.0357 = phi ptr [ %tuple.0355, %while.body.lr.ph ], [ %tuple.0, %sw.epilog271.while.body_crit_edge ]
  %code = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 1
  %7 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %code, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %8, label %while.body.sw.epilog271_crit_edge [
    i8 34, label %sw.bb
    i8 -128, label %sw.bb16
  ]

while.body.sw.epilog271_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog271

sw.bb:                                            ; preds = %while.body
  %data = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cond = icmp eq i8 %11, 4
  br i1 %cond, label %do.body, label %sw.bb.sw.epilog271_crit_edge

sw.bb.sw.epilog271_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog271

do.body:                                          ; preds = %sw.bb
  %size = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp.not = icmp eq i8 %13, 7
  br i1 %cmp.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %arrayidx7 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp9.not = icmp eq i8 %15, 6
  br i1 %cmp9.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.end274_crit_edge, !prof !93

land.rhs.do.end274_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %add.ptr = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1
  %16 = call ptr @memcpy(ptr %il0mac, ptr %add.ptr, i32 6)
  %17 = call ptr @memcpy(ptr %et1mac, ptr %add.ptr, i32 6)
  br label %sw.epilog271

sw.bb16:                                          ; preds = %while.body
  %data17 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3
  %18 = ptrtoint ptr %data17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data17, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %19, label %sw.bb16.sw.epilog271_crit_edge [
    i8 0, label %do.body21
    i8 1, label %do.body39
    i8 2, label %do.body68
    i8 3, label %do.body87
    i8 9, label %do.body245
    i8 5, label %do.body147
    i8 6, label %do.body165
    i8 7, label %do.body185
    i8 8, label %do.body212
  ]

sw.bb16.sw.epilog271_crit_edge:                   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog271

do.body21:                                        ; preds = %sw.bb16
  %size22 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %21 = ptrtoint ptr %size22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %size22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp24.not = icmp eq i8 %22, 2
  br i1 %cmp24.not, label %do.end35, label %do.body21.do.end274_crit_edge, !prof !93

do.body21.do.end274_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end35:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx37 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx37, align 1
  %25 = ptrtoint ptr %sprom1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sprom1, align 4
  br label %sw.epilog271

do.body39:                                        ; preds = %sw.bb16
  %size40 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %26 = ptrtoint ptr %size40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %size40, align 1
  %28 = and i8 %27, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %.not = icmp eq i8 %28, 5
  br i1 %.not, label %do.end59, label %do.body39.do.end274_crit_edge, !prof !93

do.body39.do.end274_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end59:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx61 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %30 to i16
  %arrayidx64 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx64, align 2
  %conv65 = zext i8 %32 to i16
  %shl = shl nuw i16 %conv65, 8
  %or = or i16 %shl, %conv62
  %33 = ptrtoint ptr %iv to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or, ptr %iv, align 2
  br label %sw.epilog271

do.body68:                                        ; preds = %sw.bb16
  %size69 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %34 = ptrtoint ptr %size69 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %size69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp71.not = icmp eq i8 %35, 2
  br i1 %cmp71.not, label %do.end82, label %do.body68.do.end274_crit_edge, !prof !93

do.body68.do.end274_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end82:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx84 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %37 to i16
  %38 = ptrtoint ptr %board_rev to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv85, ptr %board_rev, align 2
  br label %sw.epilog271

do.body87:                                        ; preds = %sw.bb16
  %size88 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %39 = ptrtoint ptr %size88 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %size88, align 1
  %41 = add i8 %40, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %41)
  %42 = icmp ult i8 %41, -2
  br i1 %42, label %do.body87.do.end274_crit_edge, label %do.end107, !prof !95

do.body87.do.end274_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end107:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx109 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %44 to i16
  %arrayidx112 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1
  %45 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx112, align 2
  %conv114 = zext i8 %46 to i16
  %shl115 = shl nuw i16 %conv114, 8
  %or116 = or i16 %shl115, %conv110
  %47 = ptrtoint ptr %pa0b0 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %or116, ptr %pa0b0, align 4
  %arrayidx119 = getelementptr [0 x i8], ptr %data17, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %49 to i16
  %arrayidx122 = getelementptr [0 x i8], ptr %data17, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx122, align 2
  %conv124 = zext i8 %51 to i16
  %shl125 = shl nuw i16 %conv124, 8
  %or126 = or i16 %shl125, %conv120
  %52 = ptrtoint ptr %pa0b1 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or126, ptr %pa0b1, align 2
  %arrayidx129 = getelementptr [0 x i8], ptr %data17, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %54 to i16
  %arrayidx132 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx132, align 2
  %conv134 = zext i8 %56 to i16
  %shl135 = shl nuw i16 %conv134, 8
  %or136 = or i16 %shl135, %conv130
  %57 = ptrtoint ptr %pa0b2 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %or136, ptr %pa0b2, align 4
  %arrayidx139 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1, i32 2
  %58 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx139, align 1
  %60 = ptrtoint ptr %itssi_a to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %itssi_a, align 4
  %61 = load i8, ptr %arrayidx139, align 1
  %62 = ptrtoint ptr %itssi_bg to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %itssi_bg, align 1
  %arrayidx143 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1, i32 3
  %63 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx143, align 2
  %65 = ptrtoint ptr %maxpwr_a to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %maxpwr_a, align 2
  %66 = load i8, ptr %arrayidx143, align 2
  %67 = ptrtoint ptr %maxpwr_bg to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %maxpwr_bg, align 4
  br label %sw.epilog271

do.body147:                                       ; preds = %sw.bb16
  %size148 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %68 = ptrtoint ptr %size148 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %size148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp150.not = icmp eq i8 %69, 2
  br i1 %cmp150.not, label %do.end161, label %do.body147.do.end274_crit_edge, !prof !93

do.body147.do.end274_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end161:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx163 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx163, align 1
  %72 = ptrtoint ptr %country_code to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %country_code, align 4
  br label %sw.epilog271

do.body165:                                       ; preds = %sw.bb16
  %size166 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %73 = ptrtoint ptr %size166 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %size166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp168.not = icmp eq i8 %74, 2
  br i1 %cmp168.not, label %do.end179, label %do.body165.do.end274_crit_edge, !prof !93

do.body165.do.end274_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end179:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx181 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx181, align 1
  %77 = ptrtoint ptr %ant_available_a to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %ant_available_a, align 1
  %78 = load i8, ptr %arrayidx181, align 1
  %79 = ptrtoint ptr %ant_available_bg to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %ant_available_bg, align 2
  br label %sw.epilog271

do.body185:                                       ; preds = %sw.bb16
  %size186 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %80 = ptrtoint ptr %size186 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %size186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %81)
  %cmp188.not = icmp eq i8 %81, 2
  br i1 %cmp188.not, label %do.end199, label %do.body185.do.end274_crit_edge, !prof !93

do.body185.do.end274_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end199:                                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx201 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx201, align 1
  %84 = ptrtoint ptr %antenna_gain to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %antenna_gain, align 4
  %85 = load i8, ptr %arrayidx201, align 1
  %86 = ptrtoint ptr %a1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %a1, align 1
  %87 = load i8, ptr %arrayidx201, align 1
  %88 = ptrtoint ptr %a2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %a2, align 2
  %89 = load i8, ptr %arrayidx201, align 1
  %90 = ptrtoint ptr %a3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %a3, align 1
  br label %sw.epilog271

do.body212:                                       ; preds = %sw.bb16
  %size213 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %91 = ptrtoint ptr %size213 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %size213, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %92, label %do.body212.do.end274_crit_edge [
    i8 5, label %do.body212.do.end232_crit_edge
    i8 3, label %do.body212.do.end232_crit_edge358
  ]

do.body212.do.end232_crit_edge358:                ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end232

do.body212.do.end232_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end232

do.body212.do.end274_crit_edge:                   ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end232:                                        ; preds = %do.body212.do.end232_crit_edge, %do.body212.do.end232_crit_edge358
  %arrayidx234 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %94 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %95 to i16
  %arrayidx237 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1
  %96 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx237, align 2
  %conv239 = zext i8 %97 to i16
  %shl240 = shl nuw i16 %conv239, 8
  %or241 = or i16 %shl240, %conv235
  %98 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %or241, ptr %boardflags_lo, align 4
  br label %sw.epilog271

do.body245:                                       ; preds = %sw.bb16
  %size246 = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 2
  %99 = ptrtoint ptr %size246 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %size246, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %100)
  %cmp248.not = icmp eq i8 %100, 5
  br i1 %cmp248.not, label %do.end259, label %do.body245.do.end274_crit_edge, !prof !93

do.body245.do.end274_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end274

do.end259:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx261 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 0, i32 3, i32 1
  %101 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx261, align 1
  %103 = ptrtoint ptr %gpio0 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %gpio0, align 4
  %arrayidx263 = getelementptr %struct.sdio_func_tuple, ptr %tuple.0357, i32 1
  %104 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx263, align 2
  %106 = ptrtoint ptr %gpio1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %gpio1, align 1
  %arrayidx265 = getelementptr [0 x i8], ptr %data17, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx265, align 1
  %109 = ptrtoint ptr %gpio2 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %gpio2, align 2
  %arrayidx267 = getelementptr [0 x i8], ptr %data17, i32 0, i32 4
  %110 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx267, align 2
  %112 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %gpio3, align 1
  br label %sw.epilog271

sw.epilog271:                                     ; preds = %do.end259, %do.end232, %do.end199, %do.end179, %do.end161, %do.end107, %do.end82, %do.end59, %do.end35, %sw.bb16.sw.epilog271_crit_edge, %do.end, %sw.bb.sw.epilog271_crit_edge, %while.body.sw.epilog271_crit_edge
  %113 = ptrtoint ptr %tuple.0357 to i32
  call void @__asan_load4_noabort(i32 %113)
  %tuple.0 = load ptr, ptr %tuple.0357, align 4
  %tobool.not = icmp eq ptr %tuple.0, null
  br i1 %tobool.not, label %sw.epilog271.cleanup_crit_edge, label %sw.epilog271.while.body_crit_edge

sw.epilog271.while.body_crit_edge:                ; preds = %sw.epilog271
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog271.cleanup_crit_edge:                   ; preds = %sw.epilog271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end274:                                        ; preds = %do.body245.do.end274_crit_edge, %do.body212.do.end274_crit_edge, %do.body185.do.end274_crit_edge, %do.body165.do.end274_crit_edge, %do.body147.do.end274_crit_edge, %do.body87.do.end274_crit_edge, %do.body68.do.end274_crit_edge, %do.body39.do.end274_crit_edge, %do.body21.do.end274_crit_edge, %land.rhs.do.end274_crit_edge
  %error_description.0 = phi ptr [ @.str.9, %land.rhs.do.end274_crit_edge ], [ @.str.10, %do.body21.do.end274_crit_edge ], [ @.str.11, %do.body39.do.end274_crit_edge ], [ @.str.12, %do.body68.do.end274_crit_edge ], [ @.str.13, %do.body87.do.end274_crit_edge ], [ @.str.14, %do.body147.do.end274_crit_edge ], [ @.str.15, %do.body165.do.end274_crit_edge ], [ @.str.16, %do.body185.do.end274_crit_edge ], [ @.str.17, %do.body212.do.end274_crit_edge ], [ @.str.18, %do.body245.do.end274_crit_edge ]
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.sdio_func, ptr %115, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %error_description.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end274, %sw.epilog271.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end274 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog271.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ssb_sdio_exit(ptr nocapture noundef %bus) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ssb_sdio_init(ptr nocapture noundef %bus) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @sdio_readw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writew(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writel(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/sdio.c", i32 176, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ssb_sdio_scan_read32.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ssb/sdio.c", i32 194, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ssb_sdio_scan_switch_coreidx._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @ssb_sdio_scan_switch_coreidx._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ssb_sdio_ops, !14, !"ssb_sdio_ops", i1 false, i1 false}
!14 = !{!"../drivers/ssb/sdio.c", i32 451, i32 26}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/ssb/sdio.c", i32 476, i32 34}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ssb/sdio.c", i32 490, i32 5}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/ssb/sdio.c", i32 505, i32 5}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/ssb/sdio.c", i32 510, i32 5}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/ssb/sdio.c", i32 517, i32 5}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ssb/sdio.c", i32 522, i32 5}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ssb/sdio.c", i32 540, i32 5}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/ssb/sdio.c", i32 545, i32 5}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ssb/sdio.c", i32 551, i32 5}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ssb/sdio.c", i32 559, i32 5}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ssb/sdio.c", i32 566, i32 5}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ssb/sdio.c", i32 585, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ssb_sdio_get_invariants._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ssb_sdio_get_invariants._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ssb/sdio.c", i32 159, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ssb_sdio_set_sbaddr_window.__UNIQUE_ID_ddebug342, !43, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ssb/sdio.c", i32 116, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ssb_sdio_writeb.__UNIQUE_ID_ddebug341, !47, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ssb/sdio.c", i32 242, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ssb_sdio_read8.__UNIQUE_ID_ddebug345, !51, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ssb/sdio.c", i32 218, i32 4}
!56 = !{ptr @ssb_sdio_switch_core.__UNIQUE_ID_ddebug344, !55, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ssb/sdio.c", i32 264, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ssb_sdio_read16.__UNIQUE_ID_ddebug346, !58, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ssb/sdio.c", i32 287, i32 3}
!63 = !{ptr @ssb_sdio_read32.__UNIQUE_ID_ddebug347, !62, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ssb/sdio.c", i32 355, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ssb_sdio_write8.__UNIQUE_ID_ddebug349, !65, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ssb/sdio.c", i32 374, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ssb_sdio_write16.__UNIQUE_ID_ddebug350, !69, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ssb/sdio.c", i32 394, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ssb_sdio_write32.__UNIQUE_ID_ddebug351, !73, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ssb/sdio.c", i32 336, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ssb_sdio_block_read.__UNIQUE_ID_ddebug348, !77, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ssb/sdio.c", i32 442, i32 2}
!82 = !{ptr @ssb_sdio_block_write.__UNIQUE_ID_ddebug352, !81, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148319247, i64 2148319252, i64 2148319265, i64 2148319309, i64 2148319343, i64 2148319364}
!95 = !{!"branch_weights", i32 1, i32 2000}
