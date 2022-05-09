; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/cb710-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/cb710-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cb710_slot = type { %struct.platform_device, ptr, ptr }
%struct.cb710_mmc_reader = type { %struct.tasklet_struct, ptr, %struct.spinlock, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.76, i32 }
%union.anon.76 = type { ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@__initcall__kmod_cb710_mmc__293_782_cb710_mmc_driver_init6 = internal global ptr @cb710_mmc_driver_init, section ".initcall6.init", align 4
@cb710_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cb710_mmc_init, ptr @cb710_mmc_exit, ptr null, ptr @cb710_mmc_suspend, ptr @cb710_mmc_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cb710_mmc_driver_exit = internal global ptr @cb710_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [61 x i8] c"cb710_mmc.author=Micha\C5\82 Miros\C5\82aw <mirq-linux@rere.qmqm.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [72 x i8] c"cb710_mmc.description=ENE CB710 memory card reader driver - MMC/SD part\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [42 x i8] c"cb710_mmc.file=drivers/mmc/host/cb710-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"cb710_mmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [35 x i8] c"cb710_mmc.alias=platform:cb710-mmc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb710-mmc\00", [22 x i8] zeroinitializer }, align 32
@cb710_src_freq_mhz = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"!\0A\14\19\1E#(-27<AFKPU", [16 x i8] zeroinitializer }, align 32
@cb710_mmc_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb710_mmc\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cb710_mmc_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/cb710-mmc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"source frequency: %dMHz\0A\00", [39 x i8] zeroinitializer }, align 32
@cb710_mmc_host = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @cb710_mmc_request, ptr null, ptr @cb710_mmc_set_ios, ptr @cb710_mmc_get_ro, ptr @cb710_mmc_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cb710_clock_divider_log2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\04\05\07\09", [24 x i8] zeroinitializer }, align 32
@cb710_mmc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&reader->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@cb710_mmc_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_hostname is %s\0A\00", [44 x i8] zeroinitializer }, align 32
@cb710_mmc_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mmc_add_host() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cb710_mmc_command.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_mmc_command\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cmd request: 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cb710_wait_while_busy.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cb710_wait_while_busy\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"WAIT12: waited %d loops, mask %02X, entry val %08X, exit val %08X\0A\00", [61 x i8] zeroinitializer }, align 32
@cb710_wait_for_event.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cb710_wait_for_event\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"WAIT10: waited %d loops, what %d, entry val %08X, exit val %08X\0A\00", [63 x i8] zeroinitializer }, align 32
@cb710_check_event.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_check_event\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CHECK : ignoring bit 6 in status %04X\0A\00", [57 x i8] zeroinitializer }, align 32
@cb710_check_event.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CHECK : returning EIO on status %04X\0A\00", [58 x i8] zeroinitializer }, align 32
@cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cb710_mmc_fifo_hack\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FIFO-read-hack: expected STATUS0 bit was %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"set.\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NOT SET!\00", [23 x i8] zeroinitializer }, align 32
@cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.21, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FIFO-read-hack: dwords ignored: %08X %08X - %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BAD (NOT ZERO)!\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@cb710_mmc_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 574, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"powerup failed (%d)- retrying\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_mmc_set_ios\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cb710_mmc_set_ios._entry_ptr = internal global ptr @cb710_mmc_set_ios._entry, section ".printk_index", align 4
@cb710_mmc_set_ios._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.3, i32 581, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"powerup retry failed (%d) - expect errors\0A\00", [53 x i8] zeroinitializer }, align 32
@cb710_mmc_set_ios._entry_ptr.30 = internal global ptr @cb710_mmc_set_ios._entry.28, section ".printk_index", align 4
@cb710_mmc_select_clock_divider.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cb710_mmc_select_clock_divider\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"clock set to %d Hz, wanted %d Hz; src_freq_idx = %d, divider_idx = %d|%d\0A\00", [54 x i8] zeroinitializer }, align 32
@cb710_mmc_powerup.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_mmc_powerup\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus powerup\0A\00", [19 x i8] zeroinitializer }, align 32
@cb710_mmc_powerup.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"after delay 1\0A\00", [17 x i8] zeroinitializer }, align 32
@cb710_mmc_powerup.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"after delay 2\0A\00", [17 x i8] zeroinitializer }, align 32
@cb710_mmc_powerup.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.37, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"after delay 3\0A\00", [17 x i8] zeroinitializer }, align 32
@cb710_mmc_powerup.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.38, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bus powerup finished\0A\00", [42 x i8] zeroinitializer }, align 32
@cb710_mmc_irq_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cb710_mmc_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"interrupt; status: %08X, ie: %08X, c2: %08X, c1: %08X\0A\00", [41 x i8] zeroinitializer }, align 32
@cb710_mmc_irq_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown interrupt (test)\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.cb710_mmc_command = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 64, i16 96, i16 0, i16 32], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"cb710_mmc_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 772, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 773, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"cb710_src_freq_mhz\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 22, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 704, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"cb710_mmc_host\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 659, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"cb710_clock_divider_log2\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 15, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 733, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 741, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 450, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 203, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 170, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 120, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 128, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 236, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 239, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 573, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 579, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 56, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 507, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 516, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 524, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 532, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 549, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 628, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [32 x i8] c"../drivers/mmc/host/cb710-mmc.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 640, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [31 x i8] c"switch.table.cb710_mmc_command\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_cb710_mmc_driver_exit, ptr @__initcall__kmod_cb710_mmc__293_782_cb710_mmc_driver_init6, ptr @cb710_mmc_driver_exit, ptr @cb710_mmc_set_ios._entry, ptr @cb710_mmc_set_ios._entry.28, ptr @cb710_mmc_set_ios._entry_ptr, ptr @cb710_mmc_set_ios._entry_ptr.30, ptr @cb710_mmc_driver, ptr @.str, ptr @cb710_src_freq_mhz, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cb710_mmc_host, ptr @cb710_clock_divider_log2, ptr @cb710_mmc_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.cb710_mmc_command], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_src_freq_mhz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_mmc_host to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_clock_divider_log2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_mmc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_mmc_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_mmc_set_ios._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cb710_mmc_command to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cb710_mmc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb710_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cb710_mmc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_init(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !114
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @mmc_alloc_host(i32 noundef 76, ptr noundef %dev.i) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i100 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i100 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %driver_data.i.i100, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call5 = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 72, ptr noundef nonnull %val) #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shr = lshr i32 %9, 16
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [16 x i8], ptr @cb710_src_freq_mhz, i32 0, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_init, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !115

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_init.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %mul = mul i32 %15, 1000000
  store i32 %mul, ptr %val, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 3
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cb710_mmc_host, ptr %ops, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %f_max, align 8
  %shr14 = lshr i32 %mul, 9
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr14, ptr %f_min, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 8
  %19 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 16
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %caps, align 32
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 26
  %21 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2000, ptr %max_busy_timeout, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 70
  call void @tasklet_setup(ptr noundef %private.i, ptr noundef nonnull @cb710_mmc_finish_request_tasklet) #6
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 1, i32 1, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @cb710_mmc_init.__key, i16 noundef signext 3) #6
  call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %22 = ptrtoint ptr %driver_data.i.i100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i100, align 4
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 1, i32 1, i32 0, i32 4
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %iobase.i.i.i = getelementptr inbounds %struct.cb710_slot, ptr %pdev, i32 0, i32 1
  %24 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 12
  %26 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %27 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %28, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 0) #6, !srcloc !119
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  call void @cb710_set_irq_handler(ptr noundef %pdev, ptr noundef nonnull @cb710_mmc_irq_handler) #6
  %call20 = call i32 @mmc_add_host(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body30, label %do.body48, !prof !120

do.body30:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_init, %if.then42)) #6
          to label %do.end47 [label %if.then42], !srcloc !115

if.then42:                                        ; preds = %do.body30
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then42.dev_name.exit_crit_edge

if.then42.dev_name.exit_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call3, i32 0, i32 1
  %31 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then42.dev_name.exit_crit_edge
  %retval.0.i103 = phi ptr [ %32, %if.end.i ], [ %30, %if.then42.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_init.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i103) #6
  br label %do.end47

do.end47:                                         ; preds = %dev_name.exit, %do.body30
  %33 = ptrtoint ptr %driver_data.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver_data.i.i100, align 4
  %irq_lock.i105 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 1, i32 1, i32 0, i32 4
  %call4.i106 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i105) #6
  %35 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i108 = getelementptr i8, ptr %36, i32 12
  %37 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i108) #6, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %38 = or i16 %37, 144
  %39 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i109 = getelementptr i8, ptr %40, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i109, i16 %38) #6, !srcloc !119
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i105, i32 noundef %call4.i106) #6
  br label %cleanup

do.body48:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_init, %if.then60)) #6
          to label %do.end64 [label %if.then60], !srcloc !115

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_init.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.7, i32 noundef %call20) #6
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  call void @cb710_set_irq_handler(ptr noundef %pdev, ptr noundef null) #6
  call void @mmc_free_host(ptr noundef nonnull %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end64 ], [ 0, %do.end47 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_exit(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %iobase.i.i.i = getelementptr inbounds %struct.cb710_slot, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %5 = and i16 %4, -145
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i = icmp eq i16 %5, 0
  %6 = or i16 %5, 128
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %spec.select.i.i = select i1 %tobool.not.i.i, i16 0, i16 %7
  %8 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %10 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 %10) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  tail call void @mmc_remove_host(ptr noundef %1) #6
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %irq_lock.i11 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 1, i32 1, i32 0, i32 4
  %call4.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i11) #6
  %13 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i14 = getelementptr i8, ptr %14, i32 12
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i14) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %16 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i15 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i15, i16 0) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i11, i32 noundef %call4.i12) #6
  tail call void @cb710_set_irq_handler(ptr noundef %pdev, ptr noundef null) #6
  %18 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !122
  %20 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17, i16 0) #6, !srcloc !119
  tail call void @tasklet_kill(ptr noundef %private.i) #6
  tail call void @mmc_free_host(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %iobase.i.i.i = getelementptr inbounds %struct.cb710_slot, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %5 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 0) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %iobase.i.i.i = getelementptr inbounds %struct.cb710_slot, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %5 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 0) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb710_mmc_finish_request_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.cb710_mmc_reader, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  store ptr null, ptr %mrq1, align 4
  %add.ptr.i = getelementptr i8, ptr %t, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cb710_dump_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cb710_set_irq_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_irq_handler(ptr noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !123
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !123
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i52 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i54 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #6, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_irq_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %5, i32 noundef %9, i32 noundef %17, i32 noundef %16) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body15, label %if.then11

if.then11:                                        ; preds = %do.end
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %19, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i56, i8 16) #6, !srcloc !126
  %and12 = and i32 %9, 36864
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864, i32 %and12)
  %cmp = icmp eq i32 %and12, 36864
  br i1 %cmp, label %if.then13, label %if.then11.if.end33_crit_edge

if.then11.if.end33_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mmc_detect_change(ptr noundef %1, i32 noundef 20) #6
  br label %if.end33

do.body15:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_irq_handler, %if.then27)) #6
          to label %do.end31 [label %if.then27], !srcloc !115

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i57 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug289, ptr noundef %dev.i57, ptr noundef nonnull @.str.41) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %irq_lock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #6
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %23 = and i16 %22, 16511
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  %24 = or i16 %23, 128
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %spec.select.i = select i1 %tobool.not.i, i16 0, i16 %25
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %28 = tail call i16 @llvm.bswap.i16(i16 %spec.select.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i, i16 %28) #6, !srcloc !119
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #6
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.then13, %if.then11.if.end33_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb710_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %mrq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq2, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !120

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 488, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mrq, ptr %mrq2, align 4
  %driver_data.i.i.i.i = getelementptr i8, ptr %1, i32 164
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 1, i32 1, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %iobase.i.i.i = getelementptr i8, ptr %1, i32 976
  %7 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %10 = or i16 %9, -16512
  %11 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 %10) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %call22 = tail call fastcc i32 @cb710_mmc_command(ptr noundef %mmc, ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %15 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stop, align 4
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %land.lhs.true.if.end28_crit_edge, label %if.then25

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call fastcc i32 @cb710_mmc_command(ptr noundef %mmc, ptr noundef nonnull %16)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %private.i, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.tasklet_schedule.exit_crit_edge

if.end28.tasklet_schedule.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__tasklet_schedule(ptr noundef %private.i) #6
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end28.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb710_mmc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  tail call fastcc void @cb710_mmc_select_clock_divider(ptr noundef %mmc, i32 noundef %3)
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 2
  %last_power_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %last_power_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_power_mode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  br i1 %cmp.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %entry
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.then.if.end21_crit_edge [
    i8 2, label %sw.bb
    i8 0, label %sw.bb18
  ]

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

sw.bb:                                            ; preds = %if.then
  %call6 = tail call fastcc i32 @cb710_mmc_powerup(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %sw.bb.if.end21.sink.split_crit_edge, label %do.end

sw.bb.if.end21.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

do.end:                                           ; preds = %sw.bb
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %call6) #9
  tail call fastcc void @cb710_mmc_powerdown(ptr noundef %add.ptr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %call9 = tail call fastcc i32 @cb710_mmc_powerup(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end.if.end21.sink.split_crit_edge, label %do.end14

do.end.if.end21.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.sink.split

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %call9) #9
  br label %if.end21.sink.split

sw.bb18:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %iobase.i.i = getelementptr i8, ptr %1, i32 976
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 5
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i.i = and i8 %12, 126
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %14, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %and.i.i) #6, !srcloc !126
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %16, i32 7
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i4.i = and i8 %17, 127
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i.i, align 8
  %add.ptr5.i5.i = getelementptr i8, ptr %19, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i5.i, i8 %and.i4.i) #6, !srcloc !126
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %sw.bb18, %do.end14, %do.end.if.end21.sink.split_crit_edge, %sw.bb.if.end21.sink.split_crit_edge
  %20 = ptrtoint ptr %last_power_mode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %5, ptr %last_power_mode, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %21 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp23.not = icmp eq i8 %22, 0
  %iobase.i2.i = getelementptr i8, ptr %1, i32 976
  %23 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i2.i, align 8
  %add.ptr.i3.i43 = getelementptr i8, ptr %24, i32 5
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3.i43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp23.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i = or i8 %25, 64
  %26 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i2.i, align 8
  %add.ptr5.i.i44 = getelementptr i8, ptr %27, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i44, i8 %or.i.i) #6, !srcloc !126
  br label %cb710_mmc_enable_4bit_data.exit

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %and.i.i45 = and i8 %25, -65
  %28 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i2.i, align 8
  %add.ptr5.i4.i = getelementptr i8, ptr %29, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i4.i, i8 %and.i.i45) #6, !srcloc !126
  br label %cb710_mmc_enable_4bit_data.exit

cb710_mmc_enable_4bit_data.exit:                  ; preds = %if.else.i, %if.then.i
  %driver_data.i.i.i.i = getelementptr i8, ptr %1, i32 164
  %30 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %irq_lock.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 1, i32 1, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #6
  %32 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i2.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 12
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %35 = or i16 %34, -16512
  %36 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i2.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16.i.i, i16 %35) #6, !srcloc !119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call4.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %iobase.i = getelementptr i8, ptr %1, i32 976
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 19
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %5 = and i8 %4, 4
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_mmc_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %iobase.i = getelementptr i8, ptr %1, i32 976
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %3, i32 19
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %5 = and i8 %4, 2
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_mmc_command(ptr nocapture noundef readonly %mmc, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %miter.i18.i = alloca %struct.sg_mapping_iter, align 4
  %miter.i.i = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %data2 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %flags1.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %and.i = lshr i32 %5, 5
  %6 = and i32 %and.i, 3
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.cb710_mmc_command, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load = load i16, ptr %switch.gep, align 2
  %8 = trunc i32 %5 to i16
  %9 = shl i16 %8, 12
  %10 = and i16 %9, -32768
  %11 = or i16 %switch.load, %10
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd, align 4
  %.tr.i = trunc i32 %13 to i16
  %14 = shl i16 %.tr.i, 8
  %conv9.i = or i16 %11, %14
  %tobool10.not.i = icmp eq ptr %3, null
  br i1 %tobool10.not.i, label %entry.if.end19.i_crit_edge, label %land.lhs.true.i

entry.if.end19.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags12.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %flags12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags12.i, align 4
  %17 = trunc i32 %16 to i16
  %18 = lshr i16 %17, 2
  %19 = and i16 %18, 128
  %20 = or i16 %19, %conv9.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true.i, %entry.if.end19.i_crit_edge
  %cb_flags.2.i = phi i16 [ %conv9.i, %entry.if.end19.i_crit_edge ], [ %20, %land.lhs.true.i ]
  %and20.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.cb710_encode_cmd_flags.exit_crit_edge, label %if.then22.i

if.end19.i.cb710_encode_cmd_flags.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_encode_cmd_flags.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %and26.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %spec.select2.v.i = select i1 %tobool27.not.i, i16 8, i16 13
  %spec.select2.i = or i16 %cb_flags.2.i, %spec.select2.v.i
  %and33.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %21 = or i16 %spec.select2.i, 2
  %spec.select3.i = select i1 %tobool34.not.i, i16 %21, i16 %spec.select2.i
  br label %cb710_encode_cmd_flags.exit

cb710_encode_cmd_flags.exit:                      ; preds = %if.then22.i, %if.end19.i.cb710_encode_cmd_flags.exit_crit_edge
  %cb_flags.4.i = phi i16 [ %cb_flags.2.i, %if.end19.i.cb710_encode_cmd_flags.exit_crit_edge ], [ %spec.select3.i, %if.then22.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_command.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_command, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %cb710_encode_cmd_flags.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %cb_flags.4.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_command.__UNIQUE_ID_ddebug282, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %cb710_encode_cmd_flags.exit
  br i1 %tobool10.not.i, label %do.end.if.end13_crit_edge, label %if.then9

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %do.end
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blksz.i, align 4
  %and.i65 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool.not.i, label %if.then9.if.end12_crit_edge, label %cb710_is_transfer_size_supported.exit

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

cb710_is_transfer_size_supported.exit:            ; preds = %if.then9
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp2.i = icmp eq i32 %23, 8
  %spec.select.i = select i1 %cmp.not.i, i1 %cmp2.i, i1 false
  br i1 %spec.select.i, label %cb710_is_transfer_size_supported.exit.if.end12_crit_edge, label %cb710_is_transfer_size_supported.exit.cleanup.sink.split_crit_edge

cb710_is_transfer_size_supported.exit.cleanup.sink.split_crit_edge: ; preds = %cb710_is_transfer_size_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cb710_is_transfer_size_supported.exit.if.end12_crit_edge: ; preds = %cb710_is_transfer_size_supported.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %cb710_is_transfer_size_supported.exit.if.end12_crit_edge, %if.then9.if.end12_crit_edge
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blocks, align 4
  %call.i = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %add.ptr.i, i8 noundef zeroext 32) #6
  %sub.i = shl i32 %27, 16
  %shl.i = add i32 %sub.i, -65536
  %sub1.i = add i32 %23, -1
  %or.i = or i32 %shl.i, %sub1.i
  %iobase.i.i = getelementptr i8, ptr %1, i32 976
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #6, !srcloc !122
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %do.end.if.end13_crit_edge
  %call14 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %add.ptr.i, i8 noundef zeroext 48)
  %iobase.i = getelementptr i8, ptr %1, i32 976
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %33 = tail call i16 @llvm.bswap.i16(i16 %cb_flags.4.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i66, i16 %33) #6, !srcloc !119
  %call15 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %add.ptr.i, i8 noundef zeroext 32)
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arg, align 4
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %38) #6, !srcloc !122
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i70 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i70, i8 -1) #6, !srcloc !126
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %42, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4.i, i8 -1) #6, !srcloc !126
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %44, i32 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i, i8 -1) #6, !srcloc !126
  %call16 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %add.ptr.i, i8 noundef zeroext 32)
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i72 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i73 = or i8 %47, 1
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %or.i73) #6, !srcloc !126
  %call17 = tail call fastcc i32 @cb710_wait_for_event(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  %error18 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call17, ptr %error18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool20.not = icmp eq i32 %call17, 0
  br i1 %tobool20.not, label %if.end22, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %51 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags1.i, align 4
  %and = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end22
  %and.i74 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 8
  br i1 %tobool.not.i75, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i76 = getelementptr i8, ptr %54, i32 44
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #6, !srcloc !123
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %57 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #6, !srcloc !123
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %62, i32 36
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #6, !srcloc !123
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %65 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i63.i = getelementptr i8, ptr %66, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #6, !srcloc !123
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %shr.i = lshr i32 %56, 24
  %or.i77 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %60, i32 8) #6
  %or17.i = tail call i32 @llvm.fshl.i32(i32 %60, i32 %64, i32 8) #6
  %arrayidx19.i = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or17.i, ptr %arrayidx19.i, align 4
  %or24.i = tail call i32 @llvm.fshl.i32(i32 %64, i32 %68, i32 8) #6
  %arrayidx26.i = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or24.i, ptr %arrayidx26.i, align 4
  %shl28.i = shl i32 %68, 8
  %arrayidx30.i = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shl28.i, ptr %arrayidx30.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i65.i = getelementptr i8, ptr %54, i32 36
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #6, !srcloc !123
  %73 = lshr i32 %72, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %and32.i = and i32 %73, 63
  %74 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i67.i = getelementptr i8, ptr %75, i32 32
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #6, !srcloc !123
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %or.sink.i = phi i32 [ %77, %if.else.i ], [ %or.i77, %if.then.i ]
  %rsp_opcode.0.i = phi i32 [ %and32.i, %if.else.i ], [ %shr.i, %if.then.i ]
  %78 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.sink.i, ptr %78, align 4
  %80 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags1.i, align 4
  %and37.i = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %83, %cond.true.i ], [ 63, %if.end.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rsp_opcode.0.i, i32 %cond.i)
  %cmp.not.i78 = icmp eq i32 %rsp_opcode.0.i, %cond.i
  br i1 %cmp.not.i78, label %cond.end.i.cb710_receive_response.exit_crit_edge, label %if.then39.i

cond.end.i.cb710_receive_response.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_receive_response.exit

if.then39.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -84, ptr %error18, align 4
  br label %cb710_receive_response.exit

cb710_receive_response.exit:                      ; preds = %if.then39.i, %cond.end.i.cb710_receive_response.exit_crit_edge
  %85 = ptrtoint ptr %error18 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %error18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool26.not = icmp ne i32 %86, 0
  %brmerge = select i1 %tobool26.not, i1 true, i1 %tobool10.not.i
  %.mux = sext i1 %tobool26.not to i32
  br i1 %brmerge, label %cb710_receive_response.exit.cleanup_crit_edge, label %cb710_receive_response.exit.if.then31_crit_edge

cb710_receive_response.exit.if.then31_crit_edge:  ; preds = %cb710_receive_response.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

cb710_receive_response.exit.cleanup_crit_edge:    ; preds = %cb710_receive_response.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  br i1 %tobool10.not.i, label %if.end29.cleanup_crit_edge, label %if.end29.if.then31_crit_edge

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %cb710_receive_response.exit.if.then31_crit_edge
  %flags.i79 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %87 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i79, align 4
  %and.i80 = and i32 %88, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.else.i83, label %if.then.i82

if.then.i82:                                      ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter.i.i) #6
  %89 = call ptr @memset(ptr %miter.i.i, i32 255, i32 44)
  %blocks1.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %90 = ptrtoint ptr %blocks1.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blocks1.i.i, align 4
  %blksz.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %92 = ptrtoint ptr %blksz.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blksz.i.i, align 4
  %and.i.i = and i32 %93, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i82.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then.i82.if.end.i.i_crit_edge:                 ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.not.i.i = icmp ne i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %93)
  %cmp4.i.i = icmp ne i32 %93, 8
  %spec.select.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %land.rhs.i.i.cb710_mmc_receive.exit.i_crit_edge, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !129

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.rhs.i.i.cb710_mmc_receive.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_mmc_receive.exit.i

if.end.i.i:                                       ; preds = %land.rhs.i.i.if.end.i.i_crit_edge, %if.then.i82.if.end.i.i_crit_edge
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %94 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %96 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sg_len.i.i, align 4
  call void @sg_miter_start(ptr noundef nonnull %miter.i.i, ptr noundef %95, i32 noundef %97, i32 noundef 2) #6
  %98 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %99, i32 6
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i.i.i = or i8 %100, 15
  %101 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i.i.i = getelementptr i8, ptr %102, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i.i, i8 %or.i.i.i) #6, !srcloc !126
  call fastcc void @cb710_mmc_fifo_hack(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp7.not73.i.i = icmp eq i32 %91, 0
  br i1 %cmp7.not73.i.i, label %if.end.i.i.out.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.out.i.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %dec74.in.i.i = phi i32 [ %dec74.i.i, %while.cond.backedge.i.i.while.body.i.i_crit_edge ], [ %91, %if.end.i.i.while.body.i.i_crit_edge ]
  %dec74.i.i = add i32 %dec74.in.i.i, -1
  %103 = ptrtoint ptr %blksz.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %blksz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %104)
  %cmp1070.i.i = icmp ugt i32 %104, 15
  br i1 %cmp1070.i.i, label %while.body.i.i.while.body11.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body.i.i.while.body11.i.i_crit_edge:        ; preds = %while.body.i.i
  br label %while.body11.i.i

while.body11.i.i:                                 ; preds = %if.end4.i.i.i.while.body11.i.i_crit_edge, %while.body.i.i.while.body11.i.i_crit_edge
  %len.071.i.i = phi i32 [ %sub.i.i, %if.end4.i.i.i.while.body11.i.i_crit_edge ], [ %104, %while.body.i.i.while.body11.i.i_crit_edge ]
  %105 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %106, i32 18
  %107 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %108 = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i.i.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %while.body11.i.i.if.end4.i.i.i_crit_edge

while.body11.i.i.if.end4.i.i.i_crit_edge:         ; preds = %while.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %while.body11.i.i
  %call1.i.i.i = call fastcc i32 @cb710_wait_for_event(ptr noundef %add.ptr.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.if.end4.i.i.i_crit_edge, label %if.then.i.i.i.out.i.i_crit_edge

if.then.i.i.i.out.i.i_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.then.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then.i.i.i.if.end4.i.i.i_crit_edge, %while.body11.i.i.if.end4.i.i.i_crit_edge
  %109 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iobase.i, align 8
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !123
  %112 = call i32 @llvm.bswap.i32(i32 %111) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @cb710_sg_dwiter_write_next_block(ptr noundef nonnull %miter.i.i, i32 noundef %112) #6
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !123
  %114 = call i32 @llvm.bswap.i32(i32 %113) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @cb710_sg_dwiter_write_next_block(ptr noundef nonnull %miter.i.i, i32 noundef %114) #6
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !123
  %116 = call i32 @llvm.bswap.i32(i32 %115) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @cb710_sg_dwiter_write_next_block(ptr noundef nonnull %miter.i.i, i32 noundef %116) #6
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !123
  %118 = call i32 @llvm.bswap.i32(i32 %117) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @cb710_sg_dwiter_write_next_block(ptr noundef nonnull %miter.i.i, i32 noundef %118) #6
  %sub.i.i = add i32 %len.071.i.i, -16
  %cmp10.i.i = icmp ugt i32 %sub.i.i, 15
  br i1 %cmp10.i.i, label %if.end4.i.i.i.while.body11.i.i_crit_edge, label %if.end4.i.i.i.while.end.i.i_crit_edge

if.end4.i.i.i.while.end.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end4.i.i.i.while.body11.i.i_crit_edge:         ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body11.i.i

while.end.i.i:                                    ; preds = %if.end4.i.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ %104, %while.body.i.i.while.end.i.i_crit_edge ], [ %sub.i.i, %if.end4.i.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa.i.i)
  %tobool15.not.i.i = icmp eq i32 %len.0.lcssa.i.i, 0
  br i1 %tobool15.not.i.i, label %while.end.i.i.while.cond.backedge.i.i_crit_edge, label %if.end17.i.i

while.end.i.i.while.cond.backedge.i.i_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %while.body.i.i61.i.i.while.cond.backedge.i.i_crit_edge, %while.end.i.i.while.cond.backedge.i.i_crit_edge
  %cmp7.not.i.i = icmp eq i32 %dec74.i.i, 0
  br i1 %cmp7.not.i.i, label %while.cond.backedge.i.i.out.i.i_crit_edge, label %while.cond.backedge.i.i.while.body.i.i_crit_edge

while.cond.backedge.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.cond.backedge.i.i.out.i.i_crit_edge:        ; preds = %while.cond.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.end17.i.i:                                     ; preds = %while.end.i.i
  %119 = trunc i32 %len.0.lcssa.i.i to i8
  %conv.i.i = add nsw i8 %119, -1
  %120 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i47.i.i = getelementptr i8, ptr %121, i32 6
  %122 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47.i.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i48.i.i = and i8 %122, -16
  %or.i49.i.i = or i8 %and.i48.i.i, %conv.i.i
  %123 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i50.i.i = getelementptr i8, ptr %124, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i50.i.i, i8 %or.i49.i.i) #6, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.0.lcssa.i.i)
  %cmp19.i.i = icmp ugt i32 %len.0.lcssa.i.i, 7
  %cond.i.i = select i1 %cmp19.i.i, i32 4, i32 2
  %125 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i52.i.i = getelementptr i8, ptr %126, i32 18
  %127 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i52.i.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %128 = and i8 %127, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i53.i.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i53.i.i, label %if.then.i56.i.i, label %if.end17.i.i.if.end4.i57.i.i_crit_edge

if.end17.i.i.if.end4.i57.i.i_crit_edge:           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i57.i.i

if.then.i56.i.i:                                  ; preds = %if.end17.i.i
  %call1.i54.i.i = call fastcc i32 @cb710_wait_for_event(ptr noundef %add.ptr.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54.i.i)
  %tobool2.not.i55.i.i = icmp eq i32 %call1.i54.i.i, 0
  br i1 %tobool2.not.i55.i.i, label %if.then.i56.i.i.if.end4.i57.i.i_crit_edge, label %if.then.i56.i.i.out.i.i_crit_edge

if.then.i56.i.i.out.i.i_crit_edge:                ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i.i

if.then.i56.i.i.if.end4.i57.i.i_crit_edge:        ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i57.i.i

if.end4.i57.i.i:                                  ; preds = %if.then.i56.i.i.if.end4.i57.i.i_crit_edge, %if.end17.i.i.if.end4.i57.i.i_crit_edge
  %129 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iobase.i, align 8
  br label %while.body.i.i61.i.i

while.body.i.i61.i.i:                             ; preds = %while.body.i.i61.i.i.while.body.i.i61.i.i_crit_edge, %if.end4.i57.i.i
  %count.addr.02.i.i58.i.i = phi i32 [ %dec.i.i59.i.i, %while.body.i.i61.i.i.while.body.i.i61.i.i_crit_edge ], [ %cond.i.i, %if.end4.i57.i.i ]
  %dec.i.i59.i.i = add i32 %count.addr.02.i.i58.i.i, -1
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #6, !srcloc !123
  %132 = call i32 @llvm.bswap.i32(i32 %131) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @cb710_sg_dwiter_write_next_block(ptr noundef nonnull %miter.i.i, i32 noundef %132) #6
  %cmp.not.i.i60.i.i = icmp eq i32 %dec.i.i59.i.i, 0
  br i1 %cmp.not.i.i60.i.i, label %while.body.i.i61.i.i.while.cond.backedge.i.i_crit_edge, label %while.body.i.i61.i.i.while.body.i.i61.i.i_crit_edge

while.body.i.i61.i.i.while.body.i.i61.i.i_crit_edge: ; preds = %while.body.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i61.i.i

while.body.i.i61.i.i.while.cond.backedge.i.i_crit_edge: ; preds = %while.body.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i.i

out.i.i:                                          ; preds = %if.then.i56.i.i.out.i.i_crit_edge, %while.cond.backedge.i.i.out.i.i_crit_edge, %if.then.i.i.i.out.i.i_crit_edge, %if.end.i.i.out.i.i_crit_edge
  %err.2.i.i = phi i32 [ 0, %if.end.i.i.out.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i.i.i.out.i.i_crit_edge ], [ 0, %while.cond.backedge.i.i.out.i.i_crit_edge ], [ %call1.i54.i.i, %if.then.i56.i.i.out.i.i_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %miter.i.i) #6
  br label %cb710_mmc_receive.exit.i

cb710_mmc_receive.exit.i:                         ; preds = %out.i.i, %land.rhs.i.i.cb710_mmc_receive.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.2.i.i, %out.i.i ], [ -22, %land.rhs.i.i.cb710_mmc_receive.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i.i) #6
  br label %if.end.i85

if.else.i83:                                      ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %miter.i18.i) #6
  %133 = call ptr @memset(ptr %miter.i18.i, i32 255, i32 44)
  %blocks1.i19.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %134 = ptrtoint ptr %blocks1.i19.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %blocks1.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i.i = icmp ugt i32 %135, 1
  br i1 %cmp.i.i, label %land.rhs.i23.i, label %if.else.i83.if.end.i29.i_crit_edge

if.else.i83.if.end.i29.i_crit_edge:               ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.i

land.rhs.i23.i:                                   ; preds = %if.else.i83
  %blksz.i20.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %136 = ptrtoint ptr %blksz.i20.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blksz.i20.i, align 4
  %and.i21.i = and i32 %137, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.not.i22.i, label %land.rhs.i23.i.if.end.i29.i_crit_edge, label %land.rhs.i23.i.cb710_mmc_send.exit.i_crit_edge, !prof !120

land.rhs.i23.i.cb710_mmc_send.exit.i_crit_edge:   ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_mmc_send.exit.i

land.rhs.i23.i.if.end.i29.i_crit_edge:            ; preds = %land.rhs.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.i

if.end.i29.i:                                     ; preds = %land.rhs.i23.i.if.end.i29.i_crit_edge, %if.else.i83.if.end.i29.i_crit_edge
  %sg.i24.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %138 = ptrtoint ptr %sg.i24.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sg.i24.i, align 4
  %sg_len.i25.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %140 = ptrtoint ptr %sg_len.i25.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sg_len.i25.i, align 4
  call void @sg_miter_start(ptr noundef nonnull %miter.i18.i, ptr noundef %139, i32 noundef %141, i32 noundef 4) #6
  %142 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i27.i = getelementptr i8, ptr %143, i32 6
  %144 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i27.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i.i.i = and i8 %144, -16
  %145 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i.i28.i = getelementptr i8, ptr %146, i32 6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i28.i, i8 %and.i.i.i) #6, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp5.not33.i.i = icmp eq i32 %135, 0
  br i1 %cmp5.not33.i.i, label %if.end.i29.i.out.i31.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i29.i.out.i31.i_crit_edge:                 ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i31.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i29.i
  %blksz6.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  br label %while.body.i30.i

while.cond.loopexit.i.i:                          ; preds = %if.end14.i.i
  %cmp5.not.i.i = icmp eq i32 %dec34.i.i, 0
  br i1 %cmp5.not.i.i, label %while.cond.loopexit.i.i.out.i31.i_crit_edge, label %while.cond.loopexit.i.i.while.body.i30.i_crit_edge

while.cond.loopexit.i.i.while.body.i30.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i30.i

while.cond.loopexit.i.i.out.i31.i_crit_edge:      ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i31.i

while.body.i30.i:                                 ; preds = %while.cond.loopexit.i.i.while.body.i30.i_crit_edge, %while.body.lr.ph.i.i
  %dec34.in.i.i = phi i32 [ %135, %while.body.lr.ph.i.i ], [ %dec34.i.i, %while.cond.loopexit.i.i.while.body.i30.i_crit_edge ]
  %dec34.i.i = add i32 %dec34.in.i.i, -1
  %147 = ptrtoint ptr %blksz6.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %blksz6.i.i, align 4
  %add.i.i = add i32 %148, 15
  %shr.i.i = lshr i32 %add.i.i, 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end14.i.i.do.body.i.i_crit_edge, %while.body.i30.i
  %len.0.i.i = phi i32 [ %shr.i.i, %while.body.i30.i ], [ %dec15.i.i, %if.end14.i.i.do.body.i.i_crit_edge ]
  %149 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i30.i.i = getelementptr i8, ptr %150, i32 18
  %151 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i30.i.i) #6, !srcloc !127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %152 = and i8 %151, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool8.not.i.i = icmp eq i8 %152, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %do.body.i.i.if.end14.i.i_crit_edge

do.body.i.i.if.end14.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.then9.i.i:                                     ; preds = %do.body.i.i
  %call10.i.i = call fastcc i32 @cb710_wait_for_event(ptr noundef %add.ptr.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then9.i.i.if.end14.i.i_crit_edge, label %if.then9.i.i.out.i31.i_crit_edge

if.then9.i.i.out.i31.i_crit_edge:                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i31.i

if.then9.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then9.i.i.if.end14.i.i_crit_edge, %do.body.i.i.if.end14.i.i_crit_edge
  %153 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %iobase.i, align 8
  %call.i.i.i = call i32 @cb710_sg_dwiter_read_next_block(ptr noundef nonnull %miter.i18.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %155 = call i32 @llvm.bswap.i32(i32 %call.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %155) #6, !srcloc !122
  %call.1.i.i.i = call i32 @cb710_sg_dwiter_read_next_block(ptr noundef nonnull %miter.i18.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %156 = call i32 @llvm.bswap.i32(i32 %call.1.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %156) #6, !srcloc !122
  %call.2.i.i.i = call i32 @cb710_sg_dwiter_read_next_block(ptr noundef nonnull %miter.i18.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %157 = call i32 @llvm.bswap.i32(i32 %call.2.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %157) #6, !srcloc !122
  %call.3.i.i.i = call i32 @cb710_sg_dwiter_read_next_block(ptr noundef nonnull %miter.i18.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  call void @arm_heavy_mb() #6
  %158 = call i32 @llvm.bswap.i32(i32 %call.3.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %158) #6, !srcloc !122
  %dec15.i.i = add i32 %len.0.i.i, -1
  %tobool16.not.i.i = icmp eq i32 %dec15.i.i, 0
  br i1 %tobool16.not.i.i, label %while.cond.loopexit.i.i, label %if.end14.i.i.do.body.i.i_crit_edge

if.end14.i.i.do.body.i.i_crit_edge:               ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

out.i31.i:                                        ; preds = %if.then9.i.i.out.i31.i_crit_edge, %while.cond.loopexit.i.i.out.i31.i_crit_edge, %if.end.i29.i.out.i31.i_crit_edge
  %err.3.i.i = phi i32 [ 0, %if.end.i29.i.out.i31.i_crit_edge ], [ %call10.i.i, %if.then9.i.i.out.i31.i_crit_edge ], [ 0, %while.cond.loopexit.i.i.out.i31.i_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %miter.i18.i) #6
  br label %cb710_mmc_send.exit.i

cb710_mmc_send.exit.i:                            ; preds = %out.i31.i, %land.rhs.i23.i.cb710_mmc_send.exit.i_crit_edge
  %retval.0.i32.i = phi i32 [ %err.3.i.i, %out.i31.i ], [ -22, %land.rhs.i23.i.cb710_mmc_send.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %miter.i18.i) #6
  br label %if.end.i85

if.end.i85:                                       ; preds = %cb710_mmc_send.exit.i, %cb710_mmc_receive.exit.i
  %error.0.i = phi i32 [ %retval.0.i.i, %cb710_mmc_receive.exit.i ], [ %retval.0.i32.i, %cb710_mmc_send.exit.i ]
  %call2.i = call fastcc i32 @cb710_wait_for_event(ptr noundef %add.ptr.i, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool3.not.i = icmp eq i32 %error.0.i, 0
  %spec.select.i84 = select i1 %tobool3.not.i, i32 %call2.i, i32 %error.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i84)
  %tobool6.not.i = icmp eq i32 %spec.select.i84, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i85.cleanup.sink.split_crit_edge

if.end.i85.cleanup.sink.split_crit_edge:          ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then7.i:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  %blksz.i86 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %159 = ptrtoint ptr %blksz.i86 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %blksz.i86, align 4
  %blocks.i87 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %161 = ptrtoint ptr %blocks.i87 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %blocks.i87, align 4
  %mul.i = mul i32 %162, %160
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %163 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %mul.i, ptr %bytes_xfered.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7.i, %if.end.i85.cleanup.sink.split_crit_edge, %cb710_is_transfer_size_supported.exit.cleanup.sink.split_crit_edge
  %spec.select.i84.sink = phi i32 [ -22, %cb710_is_transfer_size_supported.exit.cleanup.sink.split_crit_edge ], [ %spec.select.i84, %if.end.i85.cleanup.sink.split_crit_edge ], [ %spec.select.i84, %if.then7.i ]
  %retval.0.ph = phi i32 [ -1, %cb710_is_transfer_size_supported.exit.cleanup.sink.split_crit_edge ], [ 0, %if.end.i85.cleanup.sink.split_crit_edge ], [ 0, %if.then7.i ]
  %error33 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %164 = ptrtoint ptr %error33 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %spec.select.i84.sink, ptr %error33, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end29.cleanup_crit_edge, %cb710_receive_response.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end13.cleanup_crit_edge ], [ %.mux, %cb710_receive_response.exit.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_wait_while_busy(ptr noundef %slot, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !123
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i2735 = getelementptr i8, ptr %5, i32 18
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2735) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and2536 = and i8 %6, %mask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2536)
  %tobool.not37 = icmp eq i8 %and2536, 0
  br i1 %tobool.not37, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %limit.038 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 500000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %limit.038, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @cb710_dump_regs(ptr noundef %10, i32 noundef 15) #6
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 18
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and25 = and i8 %14, %mask
  %tobool.not = icmp eq i8 %and25, 0
  br i1 %tobool.not, label %while.end.loopexit, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = sub i32 500001, %limit.038
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then, %entry.while.end_crit_edge
  %err.0 = phi i32 [ -110, %if.then ], [ 0, %entry.while.end_crit_edge ], [ 0, %while.end.loopexit ]
  %limit.1 = phi i32 [ 500000, %if.then ], [ 0, %entry.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %conv232 = zext i8 %mask to i32
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #6, !srcloc !123
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %limit.1)
  %cmp = icmp ugt i32 %limit.1, 100
  br i1 %cmp, label %do.body, label %while.end.if.end16_crit_edge

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_wait_while_busy.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_wait_while_busy, %if.then12)) #6
          to label %if.end16 [label %if.then12], !srcloc !115

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_wait_while_busy.__UNIQUE_ID_ddebug279, ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %limit.1, i32 noundef %conv232, i32 noundef %3, i32 noundef %18) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.body, %while.end.if.end16_crit_edge
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_wait_for_event(ptr noundef %slot, i8 noundef zeroext %what) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !123
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %call131 = tail call fastcc i32 @cb710_check_event(ptr noundef %slot, i8 noundef zeroext %what)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool.not32 = icmp eq i32 %call131, 0
  br i1 %tobool.not32, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %limit.033 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 2000000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %limit.033, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @cb710_dump_regs(ptr noundef %7, i32 noundef 15) #6
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  %call1 = tail call fastcc i32 @cb710_check_event(ptr noundef %slot, i8 noundef zeroext %what)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %while.end.loopexit

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end.loopexit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = sub i32 2000001, %limit.033
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.then, %entry.while.end_crit_edge
  %limit.1 = phi i32 [ 2000000, %if.then ], [ 0, %entry.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %err.0 = phi i32 [ -110, %if.then ], [ %call131, %entry.while.end_crit_edge ], [ %call1, %while.end.loopexit ]
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #6, !srcloc !123
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %limit.1)
  %cmp = icmp ugt i32 %limit.1, 100
  br i1 %cmp, label %do.body, label %while.end.if.end14_crit_edge

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_wait_for_event.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_wait_for_event, %if.then11)) #6
          to label %if.end14 [label %if.then11], !srcloc !115

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  %conv = zext i8 %what to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_wait_for_event.__UNIQUE_ID_ddebug278, ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %limit.1, i32 noundef %conv, i32 noundef %3, i32 noundef %12) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body, %while.end.if.end14_crit_edge
  %13 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_check_event(ptr noundef %slot, i8 noundef zeroext %what) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !116
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %extract.t71 = trunc i16 %3 to i8
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_check_event.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_check_event, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !115

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_check_event.__UNIQUE_ID_ddebug276, ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 64) #6, !srcloc !126
  %and9 = and i16 %3, -65
  %.pre = zext i16 %and9 to i32
  %extract.t = trunc i16 %and9 to i8
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %conv12.pre-phi = phi i32 [ %.pre, %do.end ], [ %conv, %entry.if.end11_crit_edge ]
  %status.0.off0 = phi i8 [ %extract.t, %do.end ], [ %extract.t71, %entry.if.end11_crit_edge ]
  %and13 = and i32 %conv12.pre-phi, 24831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end37, label %do.body16

do.body16:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_check_event.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_check_event, %if.then28)) #6
          to label %do.end33 [label %if.then28], !srcloc !115

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i62 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_check_event.__UNIQUE_ID_ddebug277, ptr noundef %dev.i62, ptr noundef nonnull @.str.16, i32 noundef %conv12.pre-phi) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i64, i8 %status.0.off0) #6, !srcloc !126
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i66 = getelementptr i8, ptr %9, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66, i8 32) #6, !srcloc !126
  br label %cleanup

if.end37:                                         ; preds = %if.end11
  %10 = lshr i32 %conv12.pre-phi, 8
  %conv39 = zext i8 %what to i32
  %and40 = and i32 %10, %conv39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %12, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i68, i8 %what) #6, !srcloc !126
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end37.cleanup_crit_edge, %do.end33
  %retval.0 = phi i32 [ -5, %do.end33 ], [ 1, %if.then42 ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_mmc_fifo_hack(ptr noundef %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !123
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !123
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %11 = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i43, i8 64) #6, !srcloc !126
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_fifo_hack, %if.then7)) #6
          to label %do.body11 [label %if.then7], !srcloc !115

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  %cond = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug280, ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #6
  br label %do.body11

do.body11:                                        ; preds = %if.then7, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_fifo_hack, %if.then23)) #6
          to label %do.end29 [label %if.then23], !srcloc !115

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i44 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  %or = or i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool25.not = icmp eq i32 %or, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug281, ptr noundef %dev.i44, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %7, ptr noundef nonnull %cond26) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cb710_sg_dwiter_write_next_block(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cb710_sg_dwiter_read_next_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_mmc_select_clock_divider(ptr nocapture noundef readonly %mmc, i32 noundef %hz) unnamed_addr #2 align 64 {
entry:
  %src_freq_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_freq_idx) #6
  %8 = ptrtoint ptr %src_freq_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %src_freq_idx, align 4, !annotation !114
  %call3 = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 72, ptr noundef nonnull %src_freq_idx) #6
  %9 = ptrtoint ptr %src_freq_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_freq_idx, align 4
  %shr = lshr i32 %10, 16
  %and = and i32 %shr, 15
  store i32 %and, ptr %src_freq_idx, align 4
  %arrayidx = getelementptr [16 x i8], ptr @cb710_src_freq_mhz, i32 0, i32 %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %mul = mul nuw nsw i32 %conv, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %hz)
  %cmp8.not = icmp sgt i32 %mul, %hz
  br i1 %cmp8.not, label %for.inc, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %entry
  %shr7.1 = lshr exact i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.1, i32 %hz)
  %cmp8.not.1 = icmp sgt i32 %shr7.1, %hz
  br i1 %cmp8.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %shr7.2 = lshr exact i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.2, i32 %hz)
  %cmp8.not.2 = icmp sgt i32 %shr7.2, %hz
  br i1 %cmp8.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %shr7.3 = lshr exact i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.3, i32 %hz)
  %cmp8.not.3 = icmp sgt i32 %shr7.3, %hz
  br i1 %cmp8.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %shr7.4 = lshr exact i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.4, i32 %hz)
  %cmp8.not.4 = icmp sgt i32 %shr7.4, %hz
  br i1 %cmp8.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %shr7.5 = lshr exact i32 %mul, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.5, i32 %hz)
  %cmp8.not.5 = icmp sgt i32 %shr7.5, %hz
  br i1 %cmp8.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %shr7.6 = lshr i32 %mul, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr7.6, i32 %hz)
  %cmp8.not.6 = icmp sgt i32 %shr7.6, %hz
  %spec.select = select i1 %cmp8.not.6, i32 7, i32 6
  %spec.select43 = select i1 %cmp8.not.6, i32 15, i32 14
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %spec.store.select = phi i32 [ 5, %for.inc.4.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 1, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.5 ]
  %divider_idx.0.lcssa = phi i32 [ 13, %for.inc.4.for.end_crit_edge ], [ 12, %for.inc.3.for.end_crit_edge ], [ 11, %for.inc.2.for.end_crit_edge ], [ 10, %for.inc.1.for.end_crit_edge ], [ 9, %for.inc.for.end_crit_edge ], [ 8, %entry.for.end_crit_edge ], [ %spec.select43, %for.inc.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %divider_idx.1 = select i1 %tobool.not, i32 %spec.store.select, i32 %divider_idx.0.lcssa
  %shl = shl nuw i32 %divider_idx.1, 28
  call void @cb710_pci_update_config_reg(ptr noundef %7, i32 noundef 64, i32 noundef 268435455, i32 noundef %shl) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_select_clock_divider.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_select_clock_divider, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !115

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %and22 = and i32 %divider_idx.1, 7
  %arrayidx23 = getelementptr [8 x i8], ptr @cb710_clock_divider_log2, i32 0, i32 %and22
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %shr25 = lshr i32 %mul, %conv24
  %15 = ptrtoint ptr %src_freq_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_freq_idx, align 4
  %and27 = and i32 %divider_idx.1, 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_select_clock_divider.__UNIQUE_ID_ddebug275, ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %shr25, i32 noundef %hz, i32 noundef %16, i32 noundef %and22, i32 noundef %and27) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_freq_idx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_mmc_powerup(ptr noundef %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_powerup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_powerup.__UNIQUE_ID_ddebug283, ptr noundef %dev.i, ptr noundef nonnull @.str.34) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %call5 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %slot, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %do.end.cleanup_crit_edge, !prof !120

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 5
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i = or i8 %6, -128
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %or.i) #6, !srcloc !126
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i163 = getelementptr i8, ptr %10, i32 7
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i163) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i164 = or i8 %11, -128
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i165 = getelementptr i8, ptr %13, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i165, i8 %or.i164) #6, !srcloc !126
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_powerup, %if.then27)) #6
          to label %do.end31 [label %if.then27], !srcloc !115

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i166 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_powerup.__UNIQUE_ID_ddebug284, ptr noundef %dev.i166, ptr noundef nonnull @.str.35) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.end14
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %call32 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %slot, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end41, label %do.end31.cleanup_crit_edge, !prof !120

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %do.end31
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i168 = getelementptr i8, ptr %16, i32 5
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i168) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i169 = or i8 %17, 9
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i170 = getelementptr i8, ptr %19, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i170, i8 %or.i169) #6, !srcloc !126
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_powerup, %if.then54)) #6
          to label %do.end58 [label %if.then54], !srcloc !115

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i171 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_powerup.__UNIQUE_ID_ddebug285, ptr noundef %dev.i171, ptr noundef nonnull @.str.36) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %if.end41
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %call59 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %slot, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end68, label %do.end58.cleanup_crit_edge, !prof !120

do.end58.cleanup_crit_edge:                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %do.end58
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i173 = getelementptr i8, ptr %22, i32 5
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i173) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i = and i8 %23, -9
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i174 = getelementptr i8, ptr %25, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i174, i8 %and.i) #6, !srcloc !126
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496000) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_powerup, %if.then81)) #6
          to label %do.end85 [label %if.then81], !srcloc !115

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i175 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_powerup.__UNIQUE_ID_ddebug286, ptr noundef %dev.i175, ptr noundef nonnull @.str.37) #6
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %if.end68
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i177) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i178 = or i8 %29, 6
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i179 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i179, i8 %or.i178) #6, !srcloc !126
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i181 = getelementptr i8, ptr %33, i32 5
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i181) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i182 = or i8 %34, 112
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i183 = getelementptr i8, ptr %36, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i183, i8 %or.i182) #6, !srcloc !126
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i185 = getelementptr i8, ptr %38, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i185) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i186 = or i8 %39, -128
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i187 = getelementptr i8, ptr %41, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i187, i8 %or.i186) #6, !srcloc !126
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i189 = getelementptr i8, ptr %43, i32 7
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i189) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i190 = or i8 %44, 3
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i191 = getelementptr i8, ptr %46, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i191, i8 %or.i190) #6, !srcloc !126
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  %call86 = tail call fastcc i32 @cb710_wait_while_busy(ptr noundef %slot, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end95, label %do.end85.cleanup_crit_edge, !prof !120

do.end85.cleanup_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %do.end85
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i193 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i193, i16 -1) #6, !srcloc !119
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i195 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i195) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %or.i196 = or i8 %51, 6
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i197 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i197, i8 %or.i196) #6, !srcloc !126
  tail call void @cb710_dump_regs(ptr noundef %3, i32 noundef 15) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb710_mmc_powerup, %if.then108)) #6
          to label %do.end112 [label %if.then108], !srcloc !115

if.then108:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i198 = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_mmc_powerup.__UNIQUE_ID_ddebug287, ptr noundef %dev.i198, ptr noundef nonnull @.str.38) #6
  br label %do.end112

do.end112:                                        ; preds = %if.then108, %if.end95
  %call113 = tail call fastcc i32 @cb710_check_event(ptr noundef %slot, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %do.end85.cleanup_crit_edge, %do.end58.cleanup_crit_edge, %do.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call113, %do.end112 ], [ %call5, %do.end.cleanup_crit_edge ], [ %call32, %do.end31.cleanup_crit_edge ], [ %call59, %do.end58.cleanup_crit_edge ], [ %call86, %do.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_mmc_powerdown(ptr nocapture noundef readonly %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i = and i8 %2, 126
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %4, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %and.i) #6, !srcloc !126
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %6, i32 7
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i3) #6, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %and.i4 = and i8 %7, 127
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 8
  %add.ptr5.i5 = getelementptr i8, ptr %9, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i5, i8 %and.i4) #6, !srcloc !126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cb710_pci_update_config_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !101, !102, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_cb710_mmc__293_782_cb710_mmc_driver_init6, !1, !"__initcall__kmod_cb710_mmc__293_782_cb710_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 782, i32 1}
!2 = !{ptr @__exitcall_cb710_mmc_driver_exit, !1, !"__exitcall_cb710_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 784, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 785, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 786, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias298, !11, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 787, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 773, i32 17}
!14 = !{ptr @cb710_mmc_driver, !15, !"cb710_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 772, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 704, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cb710_mmc_init.__UNIQUE_ID_ddebug290, !17, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!22 = !{ptr @cb710_mmc_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 723, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 733, i32 2}
!27 = !{ptr @cb710_mmc_init.__UNIQUE_ID_ddebug291, !26, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 741, i32 2}
!30 = !{ptr @cb710_mmc_init.__UNIQUE_ID_ddebug292, !29, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!31 = !{ptr @cb710_src_freq_mhz, !32, !"cb710_src_freq_mhz", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 22, i32 17}
!33 = !{ptr @cb710_mmc_host, !34, !"cb710_mmc_host", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 659, i32 34}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 450, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cb710_mmc_command.__UNIQUE_ID_ddebug282, !36, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 203, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cb710_wait_while_busy.__UNIQUE_ID_ddebug279, !40, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 170, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cb710_wait_for_event.__UNIQUE_ID_ddebug278, !44, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 120, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cb710_check_event.__UNIQUE_ID_ddebug276, !48, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 128, i32 3}
!53 = !{ptr @cb710_check_event.__UNIQUE_ID_ddebug277, !52, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 236, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug280, !55, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!58 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 239, i32 2}
!62 = !{ptr @cb710_mmc_fifo_hack.__UNIQUE_ID_ddebug281, !61, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!63 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 573, i32 5}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @cb710_mmc_set_ios._entry, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @cb710_mmc_set_ios._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 579, i32 6}
!74 = !{ptr @cb710_mmc_set_ios._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cb710_mmc_set_ios._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 56, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cb710_mmc_select_clock_divider.__UNIQUE_ID_ddebug275, !77, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 507, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug283, !81, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 516, i32 2}
!86 = !{ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug284, !85, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 524, i32 2}
!89 = !{ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug285, !88, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 532, i32 2}
!92 = !{ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug286, !91, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 549, i32 2}
!95 = !{ptr @cb710_mmc_powerup.__UNIQUE_ID_ddebug287, !94, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!96 = !{ptr @cb710_clock_divider_log2, !97, !"cb710_clock_divider_log2", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 15, i32 17}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 628, i32 2}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug288, !99, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/cb710-mmc.c", i32 640, i32 3}
!104 = !{ptr @cb710_mmc_irq_handler.__UNIQUE_ID_ddebug289, !103, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"auto-init"}
!115 = !{i64 2148711571, i64 2148711576, i64 2148711589, i64 2148711633, i64 2148711667, i64 2148711688}
!116 = !{i64 4999453}
!117 = !{i64 2152540028}
!118 = !{i64 2152541445}
!119 = !{i64 4999253}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2152541995}
!122 = !{i64 4999873}
!123 = !{i64 5000291}
!124 = !{i64 2152540640}
!125 = !{i64 2152541021}
!126 = !{i64 4999676}
!127 = !{i64 5000071}
!128 = !{i64 2152539416}
!129 = !{!"branch_weights", i32 1, i32 2000}
