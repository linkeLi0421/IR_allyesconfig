; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mmc_spi.c_pt.bc'
source_filename = "../drivers/mmc/host/mmc_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
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
%struct.mmc_spi_host = type { ptr, ptr, i8, i16, ptr, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_message, %struct.spi_transfer, %struct.spi_message, ptr, ptr, i32, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.mmc_spi_platform_data = type { ptr, ptr, i32, i32, i16, i16, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scratch = type { [29 x i8], i8, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_mmc_spi__297_1535_mmc_spi_driver_init6 = internal global ptr @mmc_spi_driver_init, section ".initcall6.init", align 4
@mmc_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mmc_spi_dev_ids, ptr @mmc_spi_probe, ptr @mmc_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmc_spi_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mmc_spi_driver_exit = internal global ptr @mmc_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [80 x i8] c"mmc_spi.author=Mike Lavender, David Brownell, Hans-Peter Nilsson, Jan Nikitenko\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [43 x i8] c"mmc_spi.description=SPI SD/MMC host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [38 x i8] c"mmc_spi.file=drivers/mmc/host/mmc_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"mmc_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [26 x i8] c"mmc_spi.alias=spi:mmc_spi\00", section ".modinfo", align 1
@mmc_spi_dev_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mmc-spi-slot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_spi\00", [24 x i8] zeroinitializer }, align 32
@mmc_spi_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmc-spi-slot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmc_spi_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mmc/host/mmc_spi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"needs SPI mode %02x, %d KHz; %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mmc_spi_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @mmc_spi_request, ptr null, ptr @mmc_spi_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mmc_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASSUMING 3.2-3.4 V slot power\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_spi_probe._entry_ptr = internal global ptr @mmc_spi_probe._entry, section ".printk_index", align 4
@mmc_spi_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1474, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SD/MMC host %s%s%s%s%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmc_spi_probe._entry_ptr.10 = internal global ptr @mmc_spi_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", no DMA\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", no WP\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", no poweroff\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", cd polling\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mmc_spi_command_send.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_spi_command_send\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  CMD%d, resp %s\0A\00", [46 x i8] zeroinitializer }, align 32
@mmc_spi_command_send.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  ... write returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R1\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"R1B\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"R2/R5\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"R3/R4/R7\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"  ... CMD%d response SPI_%s\00", [36 x i8] zeroinitializer }, align 32
@mmc_spi_response_get.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_spi_response_get\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad response type %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_spi_response_get.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: resp %04x %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@mmc_spi_data_do.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_spi_data_do\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"    %s block, %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_spi_data_do.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@mmc_spi_data_do.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"    STOP_TRAN\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@mmc_spi_writeblock.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_spi_writeblock\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write error (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@mmc_spi_writeblock.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write error %02x (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mmc_spi_readblock.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_spi_readblock\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read error %02x (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mmc_spi_readblock.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read error %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mmc_spi_readblock.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"read - crc error: crc_val=0x%04x, computed=0x%04x len=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mmc_spi_set_ios.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_spi_set_ios\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power %s (%d)%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", can switch\00", [19 x i8] zeroinitializer }, align 32
@mmc_spi_set_ios.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"switch to SPI mode 0 failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mmc_spi_set_ios.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.46, i8 1, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"put spi signals to low failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mmc_spi_set_ios.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.47, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"switch back to SPI mode 3 failed\0A\00", [62 x i8] zeroinitializer }, align 32
@mmc_spi_set_ios.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.48, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"  clock to %d Hz, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@mmc_spi_initsequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't change chip-select polarity\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_spi_initsequence\00", [43 x i8] zeroinitializer }, align 32
@mmc_spi_initsequence._entry_ptr = internal global ptr @mmc_spi_initsequence._entry, section ".printk_index", align 4
@mmc_spi_initsequence._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1142, ptr @.str.56, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't restore chip-select polarity\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mmc_spi_initsequence._entry_ptr.57 = internal global ptr @mmc_spi_initsequence._entry.54, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.mmc_spi_set_ios = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@switch.table.mmc_spi_command_send = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@switch.table.mmc_spi_response_get = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 11, i64 13]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"mmc_spi_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1525, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"mmc_spi_dev_ids\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1513, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1527, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"mmc_spi_of_match_table\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1519, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1340, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"mmc_spi_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1244, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1396, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1467, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 500, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 527, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 226, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 227, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 228, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 229, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 230, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 248, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 394, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 402, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 866, i32 62 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 866, i32 72 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 924, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 949, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 965, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 44, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 664, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 715, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 772, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 797, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 836, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1166, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1205, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1209, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1226, i32 6 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1239, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1150, i32 29 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1151, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1152, i32 29 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1132, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private constant [30 x i8] c"../drivers/mmc/host/mmc_spi.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1141, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 326, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant [29 x i8] c"switch.table.mmc_spi_set_ios\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [34 x i8] c"switch.table.mmc_spi_command_send\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"switch.table.mmc_spi_response_get\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_mmc_spi_driver_exit, ptr @__initcall__kmod_mmc_spi__297_1535_mmc_spi_driver_init6, ptr @mmc_spi_driver_exit, ptr @mmc_spi_initsequence._entry, ptr @mmc_spi_initsequence._entry.54, ptr @mmc_spi_initsequence._entry_ptr, ptr @mmc_spi_initsequence._entry_ptr.57, ptr @mmc_spi_probe._entry, ptr @mmc_spi_probe._entry.7, ptr @mmc_spi_probe._entry_ptr, ptr @mmc_spi_probe._entry_ptr.10, ptr @mmc_spi_driver, ptr @mmc_spi_dev_ids, ptr @.str, ptr @mmc_spi_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mmc_spi_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @switch.table.mmc_spi_set_ios, ptr @switch.table.mmc_spi_command_send, ptr @switch.table.mmc_spi_response_get], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_dev_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_initsequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_spi_initsequence._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_spi_set_ios to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_spi_command_send to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_spi_response_get to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mmc_spi_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mmc_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mode, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %8 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_probe, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !148

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %11 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_speed_hz, align 8
  %div = udiv i32 %12, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_probe.__UNIQUE_ID_ddebug296, ptr noundef %spi, ptr noundef nonnull @.str.3, i32 noundef %10, i32 noundef %div, i32 noundef %call) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 512) #11
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.nomem_crit_edge, label %if.end19

if.end15.nomem_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.end19:                                         ; preds = %if.end15
  %14 = call ptr @memset(ptr %call7.i, i32 255, i32 512)
  %call21 = tail call ptr @mmc_alloc_host(i32 noundef 628, ptr noundef %spi) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.nomem_crit_edge, label %if.end24

if.end19.nomem_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %nomem

if.end24:                                         ; preds = %if.end19
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 3
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mmc_spi_ops, ptr %ops, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 24
  %16 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %max_blk_size, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 21
  %17 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 128, ptr %max_segs, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 23
  %18 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65536, ptr %max_req_size, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 25
  %19 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %max_blk_count, align 128
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 16
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %caps, align 32
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 5
  %21 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 400000, ptr %f_min, align 4
  %max_speed_hz25 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %22 = ptrtoint ptr %max_speed_hz25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_speed_hz25, align 8
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 6
  %24 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %f_max, align 8
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 70
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21, ptr %private.i, align 4
  %spi28 = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %26 = ptrtoint ptr %spi28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spi, ptr %spi28, align 4
  %ones29 = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 11
  %27 = ptrtoint ptr %ones29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %ones29, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call21, ptr %driver_data.i, align 4
  %call31 = tail call ptr @mmc_spi_get_pdata(ptr noundef %spi) #8
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call31, ptr %pdata, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end24.if.end36_crit_edge, label %if.then34

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %ocr_mask = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %call31, i32 0, i32 6
  %30 = ptrtoint ptr %ocr_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ocr_mask, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 8
  %32 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ocr_avail, align 64
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end24.if.end36_crit_edge
  %ocr_avail37 = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 8
  %33 = ptrtoint ptr %ocr_avail37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ocr_avail37, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool38.not = icmp eq i32 %34, 0
  br i1 %tobool38.not, label %do.end42, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.4) #12
  %35 = ptrtoint ptr %ocr_avail37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3145728, ptr %ocr_avail37, align 64
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end36.if.end45_crit_edge
  %36 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata, align 4
  %tobool47.not = icmp eq ptr %37, null
  br i1 %tobool47.not, label %if.end45.if.end62_crit_edge, label %land.lhs.true

if.end45.if.end62_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end45
  %setpower = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %setpower to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setpower, align 4
  %tobool49.not = icmp eq ptr %39, null
  br i1 %tobool49.not, label %land.lhs.true.if.end62_crit_edge, label %if.then50

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %powerup_msecs = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %powerup_msecs to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %powerup_msecs, align 2
  %powerup_msecs52 = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 3
  %42 = add i16 %41, -251
  call void @__sanitizer_cov_trace_const_cmp2(i16 -250, i16 %42)
  %43 = icmp ult i16 %42, -250
  %spec.store.select = select i1 %43, i16 250, i16 %41
  %44 = ptrtoint ptr %powerup_msecs52 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %spec.store.select, ptr %powerup_msecs52, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then50, %land.lhs.true.if.end62_crit_edge, %if.end45.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i262 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 32) #11
  %data = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 6
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i262, ptr %data, align 4
  %tobool65.not = icmp eq ptr %call7.i262, null
  br i1 %tobool65.not, label %if.end62.fail_nobuf1_crit_edge, label %if.end67

if.end62.fail_nobuf1_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_nobuf1

if.end67:                                         ; preds = %if.end62
  %47 = ptrtoint ptr %spi28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi28, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i, align 8
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_mask.i, align 8
  %tobool.not.i = icmp eq ptr %54, null
  br i1 %tobool.not.i, label %if.end67.if.end71_crit_edge, label %if.end.i

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end.i:                                         ; preds = %if.end67
  %55 = ptrtoint ptr %ones29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ones29, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !149

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %52) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %52, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %60, %if.end.i.i.i ], [ %58, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %ones_dma57.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %61 = ptrtoint ptr %ones_dma57.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %ones_dma57.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef -1) #8
  br label %fail_dma

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %52, ptr noundef %56, i32 noundef 512) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %62 = load ptr, ptr @mem_map, align 4
  %63 = ptrtoint ptr %56 to i32
  %sub.i.i = add i32 %63, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %62, i32 %shr.i.i
  %and.i.i = and i32 %63, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %52, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 512, i32 noundef 1, i32 noundef 0) #8
  %ones_dma.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call41.i.i, ptr %ones_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.fail_dma_crit_edge, label %if.end10.i

dma_map_single_attrs.exit.i.fail_dma_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dma

if.end10.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %call.i36.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %66) #8
  br i1 %call.i36.i, label %land.rhs.i38.i, label %dma_map_single_attrs.exit53.i

land.rhs.i38.i:                                   ; preds = %if.end10.i
  %.b1.i37.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i37.i, label %land.rhs.i38.i.dma_map_single_attrs.exit53.thread.i_crit_edge, label %if.then.i42.i, !prof !149

land.rhs.i38.i.dma_map_single_attrs.exit53.thread.i_crit_edge: ; preds = %land.rhs.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit53.thread.i

if.then.i42.i:                                    ; preds = %land.rhs.i38.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i39.i = tail call ptr @dev_driver_string(ptr noundef %52) #8
  %init_name.i.i40.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i.i40.i, align 8
  %tobool.not.i.i41.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i41.i, label %if.end.i.i43.i, label %if.then.i42.i.dev_name.exit.i45.i_crit_edge

if.then.i42.i.dev_name.exit.i45.i_crit_edge:      ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i45.i

if.end.i.i43.i:                                   ; preds = %if.then.i42.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %52, align 4
  br label %dev_name.exit.i45.i

dev_name.exit.i45.i:                              ; preds = %if.end.i.i43.i, %if.then.i42.i.dev_name.exit.i45.i_crit_edge
  %retval.0.i.i44.i = phi ptr [ %70, %if.end.i.i43.i ], [ %68, %if.then.i42.i.dev_name.exit.i45.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.59, ptr noundef %call16.i39.i, ptr noundef %retval.0.i.i44.i) #8
  br label %dma_map_single_attrs.exit53.thread.i

dma_map_single_attrs.exit53.thread.i:             ; preds = %dev_name.exit.i45.i, %land.rhs.i38.i.dma_map_single_attrs.exit53.thread.i_crit_edge
  %data_dma65.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %71 = ptrtoint ptr %data_dma65.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %data_dma65.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef -1) #8
  br label %if.then15.i

dma_map_single_attrs.exit53.i:                    ; preds = %if.end10.i
  tail call void @debug_dma_map_single(ptr noundef %52, ptr noundef %66, i32 noundef 32) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %72 = load ptr, ptr @mem_map, align 4
  %73 = ptrtoint ptr %66 to i32
  %sub.i46.i = add i32 %73, 1073741824
  %shr.i47.i = lshr i32 %sub.i46.i, 12
  %add.ptr.i48.i = getelementptr %struct.page, ptr %72, i32 %shr.i47.i
  %and.i49.i = and i32 %73, 4095
  %call41.i50.i = tail call i32 @dma_map_page_attrs(ptr noundef %52, ptr noundef %add.ptr.i48.i, i32 noundef %and.i49.i, i32 noundef 32, i32 noundef 0, i32 noundef 0) #8
  %data_dma.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %74 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call41.i50.i, ptr %data_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %call41.i50.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i50.i)
  %cmp.i54.i = icmp eq i32 %call41.i50.i, -1
  br i1 %cmp.i54.i, label %dma_map_single_attrs.exit53.i.if.then15.i_crit_edge, label %if.end17.i

dma_map_single_attrs.exit53.i.if.then15.i_crit_edge: ; preds = %dma_map_single_attrs.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %dma_map_single_attrs.exit53.i.if.then15.i_crit_edge, %dma_map_single_attrs.exit53.thread.i
  %75 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ones_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %76, i32 noundef 512, i32 noundef 1, i32 noundef 0) #8
  br label %fail_dma

if.end17.i:                                       ; preds = %dma_map_single_attrs.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %52, i32 noundef %78, i32 noundef 32, i32 noundef 0) #8
  %dma_dev.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 3
  %79 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %52, ptr %dma_dev.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end17.i, %if.end67.if.end71_crit_edge
  %readback = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 8, i32 2
  %80 = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 8, i32 4
  %81 = call ptr @memset(ptr %80, i32 0, i32 40)
  %82 = ptrtoint ptr %readback to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %readback, ptr %readback, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 8, i32 3
  %83 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %readback, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 1, i32 1
  %84 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 2
  %85 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %dma_dev = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 3
  %86 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dma_dev, align 4
  %cmp72.not = icmp eq ptr %87, null
  %is_dma_mapped = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 11, i32 2
  %bf.shl = select i1 %cmp72.not, i8 0, i8 -128
  %88 = ptrtoint ptr %is_dma_mapped to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bf.shl, ptr %is_dma_mapped, align 4
  %status75 = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 5
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %status75, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %readback, ptr noundef %readback) #8
  br i1 %call.i.i.i, label %if.end.i.i.i264, label %if.end71.spi_message_add_tail.exit_crit_edge

if.end71.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i264:                                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %90 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %readback, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 8, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %readback, ptr %prev3.i.i.i, align 4
  %92 = ptrtoint ptr %readback to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %transfer_list.i, ptr %readback, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i264, %if.end71.spi_message_add_tail.exit_crit_edge
  %93 = ptrtoint ptr %ones29 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ones29, align 4
  %95 = ptrtoint ptr %status75 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %status75, align 4
  %ones_dma = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %ones_dma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ones_dma, align 4
  %tx_dma = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 2
  %98 = ptrtoint ptr %tx_dma to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %tx_dma, align 4
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %rx_buf = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 5, i32 1
  %101 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %rx_buf, align 4
  %data_dma = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %102 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %data_dma, align 4
  %rx_dma = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 3
  %104 = ptrtoint ptr %rx_dma to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %rx_dma, align 4
  %cs_change = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 7
  %105 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load85 = load i8, ptr %cs_change, align 4
  %bf.set87 = or i8 %bf.load85, 64
  store i8 %bf.set87, ptr %cs_change, align 4
  %106 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdata, align 4
  %tobool89.not = icmp eq ptr %107, null
  br i1 %tobool89.not, label %spi_message_add_tail.exit.if.end112_crit_edge, label %land.lhs.true90

spi_message_add_tail.exit.if.end112_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

land.lhs.true90:                                  ; preds = %spi_message_add_tail.exit
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %tobool92.not = icmp eq ptr %109, null
  br i1 %tobool92.not, label %land.lhs.true90.if.then105_crit_edge, label %if.then93

land.lhs.true90.if.then105_crit_edge:             ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105

if.then93:                                        ; preds = %land.lhs.true90
  %call97 = tail call i32 %109(ptr noundef %spi, ptr noundef nonnull @mmc_spi_detect_irq, ptr noundef nonnull %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98.not = icmp eq i32 %call97, 0
  br i1 %cmp98.not, label %if.end102, label %if.then93.fail_glue_init_crit_edge

if.then93.fail_glue_init_crit_edge:               ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_glue_init

if.end102:                                        ; preds = %if.then93
  %110 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr = load ptr, ptr %pdata, align 4
  %tobool104.not = icmp eq ptr %.pr, null
  br i1 %tobool104.not, label %if.end102.if.end112_crit_edge, label %if.end102.if.then105_crit_edge

if.end102.if.then105_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105

if.end102.if.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then105:                                       ; preds = %if.end102.if.then105_crit_edge, %land.lhs.true90.if.then105_crit_edge
  %111 = phi ptr [ %.pr, %if.end102.if.then105_crit_edge ], [ %107, %land.lhs.true90.if.then105_crit_edge ]
  %caps107 = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %caps107 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %caps107, align 4
  %114 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %caps, align 32
  %or = or i32 %115, %113
  store i32 %or, ptr %caps, align 32
  %caps2 = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %111, i32 0, i32 3
  %116 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %caps2, align 4
  %caps2110 = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 17
  %118 = ptrtoint ptr %caps2110 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %caps2110, align 4
  %or111 = or i32 %119, %117
  store i32 %or111, ptr %caps2110, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.end102.if.end112_crit_edge, %spi_message_add_tail.exit.if.end112_crit_edge
  %call113 = tail call i32 @mmc_add_host(ptr noundef nonnull %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114.not = icmp eq i32 %call113, 0
  br i1 %cmp114.not, label %if.end117, label %if.end112.fail_add_host_crit_edge

if.end112.fail_add_host_crit_edge:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_add_host

if.end117:                                        ; preds = %if.end112
  %call118 = tail call i32 @mmc_gpiod_request_cd(ptr noundef nonnull %call21, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i32 noundef 1000) #8
  %120 = zext i32 %call118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call118, label %if.end117.if.end127_crit_edge [
    i32 -517, label %if.end117.fail_add_host_crit_edge
    i32 0, label %if.then124
  ]

if.end117.fail_add_host_crit_edge:                ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_add_host

if.end117.if.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then124:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %caps, align 32
  %and126 = and i32 %122, -33
  store i32 %and126, ptr %caps, align 32
  tail call void @mmc_gpiod_request_cd_irq(ptr noundef nonnull %call21) #8
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.end117.if.end127_crit_edge
  tail call void @mmc_detect_change(ptr noundef nonnull %call21, i32 noundef 0) #8
  %call128 = tail call i32 @mmc_gpiod_request_ro(ptr noundef nonnull %call21, ptr noundef null, i32 noundef 1, i32 noundef 0) #8
  %123 = zext i32 %call128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call128, label %if.end127.do.end138_crit_edge [
    i32 -517, label %if.end127.fail_add_host_crit_edge
    i32 0, label %if.then134
  ]

if.end127.fail_add_host_crit_edge:                ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_add_host

if.end127.do.end138_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

if.then134:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end138

do.end138:                                        ; preds = %if.then134, %if.end127.do.end138_crit_edge
  %has_ro.0.off0 = phi ptr [ @.str.11, %if.then134 ], [ @.str.13, %if.end127.do.end138_crit_edge ]
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i265 = icmp eq ptr %125, null
  br i1 %tobool.not.i265, label %if.end.i266, label %do.end138.dev_name.exit_crit_edge

do.end138.dev_name.exit_crit_edge:                ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i266:                                      ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call21, i32 0, i32 1
  %126 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i266, %do.end138.dev_name.exit_crit_edge
  %retval.0.i267 = phi ptr [ %127, %if.end.i266 ], [ %125, %do.end138.dev_name.exit_crit_edge ]
  %128 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dma_dev, align 4
  %tobool142.not = icmp eq ptr %129, null
  %cond = select i1 %tobool142.not, ptr @.str.12, ptr @.str.11
  %130 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdata, align 4
  %tobool147.not = icmp eq ptr %131, null
  br i1 %tobool147.not, label %dev_name.exit.land.end_crit_edge, label %land.rhs

dev_name.exit.land.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %setpower149 = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %131, i32 0, i32 7
  %132 = ptrtoint ptr %setpower149 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %setpower149, align 4
  %tobool150.not = icmp eq ptr %133, null
  %phi.sel = select i1 %tobool150.not, ptr @.str.14, ptr @.str.11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %dev_name.exit.land.end_crit_edge
  %134 = phi ptr [ @.str.14, %dev_name.exit.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %135 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %caps, align 32
  %and153 = and i32 %136, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %cond155 = select i1 %tobool154.not, ptr @.str.11, ptr @.str.15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i267, ptr noundef nonnull %cond, ptr noundef nonnull %has_ro.0.off0, ptr noundef nonnull %134, ptr noundef nonnull %cond155) #12
  br label %cleanup

fail_add_host:                                    ; preds = %if.end127.fail_add_host_crit_edge, %if.end117.fail_add_host_crit_edge, %if.end112.fail_add_host_crit_edge
  %status.0 = phi i32 [ %call113, %if.end112.fail_add_host_crit_edge ], [ %call118, %if.end117.fail_add_host_crit_edge ], [ %call128, %if.end127.fail_add_host_crit_edge ]
  tail call void @mmc_remove_host(ptr noundef nonnull %call21) #8
  br label %fail_glue_init

fail_glue_init:                                   ; preds = %fail_add_host, %if.then93.fail_glue_init_crit_edge
  %status.1 = phi i32 [ %call97, %if.then93.fail_glue_init_crit_edge ], [ %status.0, %fail_add_host ]
  %137 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_dev, align 4
  %tobool.not.i269 = icmp eq ptr %138, null
  br i1 %tobool.not.i269, label %fail_glue_init.fail_dma_crit_edge, label %if.end.i272

fail_glue_init.fail_dma_crit_edge:                ; preds = %fail_glue_init
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dma

if.end.i272:                                      ; preds = %fail_glue_init
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %ones_dma to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ones_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %138, i32 noundef %140, i32 noundef 512, i32 noundef 1, i32 noundef 0) #8
  %141 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dma_dev, align 4
  %143 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %data_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %142, i32 noundef %144, i32 noundef 32, i32 noundef 0, i32 noundef 0) #8
  br label %fail_dma

fail_dma:                                         ; preds = %if.end.i272, %fail_glue_init.fail_dma_crit_edge, %if.then15.i, %dma_map_single_attrs.exit.i.fail_dma_crit_edge, %dma_map_single_attrs.exit.thread.i
  %status.2 = phi i32 [ %status.1, %fail_glue_init.fail_dma_crit_edge ], [ %status.1, %if.end.i272 ], [ -12, %if.then15.i ], [ -12, %dma_map_single_attrs.exit.i.fail_dma_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i ]
  %145 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %146) #8
  br label %fail_nobuf1

fail_nobuf1:                                      ; preds = %fail_dma, %if.end62.fail_nobuf1_crit_edge
  %status.3 = phi i32 [ %status.2, %fail_dma ], [ -12, %if.end62.fail_nobuf1_crit_edge ]
  tail call void @mmc_spi_put_pdata(ptr noundef %spi) #8
  tail call void @mmc_free_host(ptr noundef nonnull %call21) #8
  br label %nomem

nomem:                                            ; preds = %fail_nobuf1, %if.end19.nomem_crit_edge, %if.end15.nomem_crit_edge
  %status.4 = phi i32 [ %status.3, %fail_nobuf1 ], [ -12, %if.end19.nomem_crit_edge ], [ -12, %if.end15.nomem_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %nomem, %land.end, %if.then12, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.4, %nomem ], [ 0, %land.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then12 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_spi_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exit = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %spi, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mmc_remove_host(ptr noundef %1) #8
  %dma_dev.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 12, i32 10, i32 3, i32 3
  %6 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.mmc_spi_dma_free.exit_crit_edge, label %if.end.i

if.end.mmc_spi_dma_free.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_dma_free.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ones_dma.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ones_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %7, i32 noundef %9, i32 noundef 512, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_dev.i, align 4
  %data_dma.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %12 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef 32, i32 noundef 0, i32 noundef 0) #8
  br label %mmc_spi_dma_free.exit

mmc_spi_dma_free.exit:                            ; preds = %if.end.i, %if.end.mmc_spi_dma_free.exit_crit_edge
  %data = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 12, i32 10, i32 3, i32 6
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %15) #8
  %ones = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 12, i32 11
  %16 = ptrtoint ptr %ones to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ones, align 4
  tail call void @kfree(ptr noundef %17) #8
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_max, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_speed_hz, align 8
  tail call void @mmc_spi_put_pdata(ptr noundef %spi) #8
  tail call void @mmc_free_host(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_spi_get_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_spi_detect_irq(i32 noundef %irq, ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %detect_delay = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %detect_delay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %detect_delay, align 4
  %4 = tail call i16 @llvm.umax.i16(i16 %3, i16 100)
  %cond = zext i16 %4 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond) #8
  tail call void @mmc_detect_change(ptr noundef %mmc, i32 noundef %call2.i) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_gpiod_request_cd_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_spi_put_pdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_spi_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  %stop = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stop) #8
  %0 = getelementptr inbounds i8, ptr %stop, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %spi = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call1 = tail call i32 @spi_bus_lock(ptr noundef %5) #8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %cmp52 = icmp ne ptr %9, null
  %conv53 = zext i1 %cmp52 to i32
  %call254 = tail call fastcc i32 @mmc_spi_command_send(ptr noundef %private.i, ptr noundef %mrq, ptr noundef %7, i32 noundef %conv53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp355 = icmp eq i32 %call254, 0
  br i1 %cmp355, label %land.lhs.true.lr.ph, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true.lr.ph:                              ; preds = %entry
  %arg = getelementptr inbounds %struct.mmc_command, ptr %stop, i32 0, i32 1
  %flags = getelementptr inbounds %struct.mmc_command, ptr %stop, i32 0, i32 3
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then14.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %crc_retry.056 = phi i32 [ 5, %land.lhs.true.lr.ph ], [ %dec, %if.then14.land.lhs.true_crit_edge ]
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %land.lhs.true.if.end25_crit_edge, label %if.then

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksz, align 4
  tail call fastcc void @mmc_spi_data_do(ptr noundef %private.i, ptr noundef nonnull %11, i32 noundef %13)
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %error = getelementptr inbounds %struct.mmc_data, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %17)
  %cmp10 = icmp ne i32 %17, -84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crc_retry.056)
  %tobool13.not = icmp eq i32 %crc_retry.056, 0
  %or.cond = select i1 %cmp10, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end, label %if.then14

if.then14:                                        ; preds = %if.then
  %18 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %stop, align 4
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arg, align 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1181, ptr %flags, align 4
  %call15 = call fastcc i32 @mmc_spi_command_send(ptr noundef %private.i, ptr noundef %mrq, ptr noundef nonnull %stop, i32 noundef 0)
  %dec = add nsw i32 %crc_retry.056, -1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %error17 = getelementptr inbounds %struct.mmc_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %error17, align 4
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd, align 4
  %26 = load ptr, ptr %data, align 4
  %cmp = icmp ne ptr %26, null
  %conv = zext i1 %cmp to i32
  %call2 = tail call fastcc i32 @mmc_spi_command_send(ptr noundef %private.i, ptr noundef %mrq, ptr noundef %25, i32 noundef %conv)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then14.land.lhs.true_crit_edge, label %if.then14.if.end25_crit_edge

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then14.land.lhs.true_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end:                                           ; preds = %if.then
  %stop18 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %27 = ptrtoint ptr %stop18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stop18, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call fastcc i32 @mmc_spi_command_send(ptr noundef %private.i, ptr noundef %mrq, ptr noundef nonnull %28, i32 noundef 0)
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi, align 4
  %call.i = tail call i32 @spi_setup(ptr noundef %30) #8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20, %if.then14.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  %master27 = getelementptr inbounds %struct.spi_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %master27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master27, align 4
  %call28 = tail call i32 @spi_bus_unlock(ptr noundef %34) #8
  %35 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private.i, align 4
  tail call void @mmc_request_done(ptr noundef %36, ptr noundef %mrq) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stop) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_spi_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %nullbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 4
  %power_mode1 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %2 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode1, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %entry.if.end127_crit_edge, label %if.then

entry.if.end127_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then:                                          ; preds = %entry
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.land.end_crit_edge, label %land.rhs

if.then.land.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %setpower = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %setpower to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %setpower, align 4
  %tobool5 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.land.end_crit_edge
  %8 = phi i1 [ false, %if.then.land.end_crit_edge ], [ %tobool5, %land.rhs ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_set_ios, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !148

if.then10:                                        ; preds = %land.end
  %spi = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %9 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi, align 4
  %11 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %power_mode1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %13 = icmp ult i8 %12, 3
  br i1 %13, label %switch.lookup, label %if.then10.mmc_powerstring.exit_crit_edge

if.then10.mmc_powerstring.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_powerstring.exit

switch.lookup:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %14 = sext i8 %12 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_spi_set_ios, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %mmc_powerstring.exit

mmc_powerstring.exit:                             ; preds = %switch.lookup, %if.then10.mmc_powerstring.exit_crit_edge
  %retval.0.i211 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %if.then10.mmc_powerstring.exit_crit_edge ]
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %16 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdd, align 4
  %conv13 = zext i16 %17 to i32
  %cond = select i1 %8, ptr @.str.44, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_set_ios.__UNIQUE_ID_ddebug289, ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef nonnull %retval.0.i211, i32 noundef %conv13, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %mmc_powerstring.exit, %land.end
  br i1 %8, label %if.then16, label %do.end.if.end32thread-pre-split_crit_edge

do.end.if.end32thread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32thread-pre-split

if.then16:                                        ; preds = %do.end
  %18 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %power_mode1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch = icmp ult i8 %19, 2
  br i1 %switch, label %sw.bb, label %if.then16.if.end32_crit_edge

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

sw.bb:                                            ; preds = %if.then16
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %setpower20 = getelementptr inbounds %struct.mmc_spi_platform_data, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %setpower20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setpower20, align 4
  %spi21 = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %24 = ptrtoint ptr %spi21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi21, align 4
  %vdd23 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %26 = ptrtoint ptr %vdd23 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdd23, align 4
  %conv24 = zext i16 %27 to i32
  tail call void %23(ptr noundef %25, i32 noundef %conv24) #8
  %28 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %power_mode1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp27 = icmp eq i8 %29, 1
  br i1 %cmp27, label %if.then29, label %sw.bb.if.end32_crit_edge

sw.bb.if.end32_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %powerup_msecs = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 3
  %30 = ptrtoint ptr %powerup_msecs to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %powerup_msecs, align 2
  %conv30 = zext i16 %31 to i32
  tail call void @msleep(i32 noundef %conv30) #8
  br label %if.end32thread-pre-split

if.end32thread-pre-split:                         ; preds = %if.then29, %do.end.if.end32thread-pre-split_crit_edge
  %32 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %power_mode1, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %sw.bb.if.end32_crit_edge, %if.then16.if.end32_crit_edge
  %33 = phi i8 [ %.pr, %if.end32thread-pre-split ], [ %19, %if.then16.if.end32_crit_edge ], [ %29, %sw.bb.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp35 = icmp eq i8 %33, 2
  br i1 %cmp35, label %if.then37, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end32
  %call.i.i = tail call fastcc i32 @mmc_spi_skip(ptr noundef %private.i, i32 noundef 300, i32 noundef 29, i8 noundef zeroext 0) #8
  %len18.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %len18.i.i, align 4
  %dma_dev.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 3
  %35 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_dev.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %36, null
  br i1 %tobool19.not.i.i, label %if.then37.if.end22.i.i_crit_edge, label %if.then20.i.i

if.then37.if.end22.i.i_crit_edge:                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %37 = ptrtoint ptr %data_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_dma.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %36, i32 noundef %38, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then20.i.i, %if.then37.if.end22.i.i_crit_edge
  %spi.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %39 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi.i.i, align 4
  %readback.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 8, i32 2
  %call.i31.i = tail call i32 @spi_sync_locked(ptr noundef %40, ptr noundef %readback.i.i) #8
  %41 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_dev.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %42, null
  br i1 %tobool24.not.i.i, label %if.end22.i.i.mmc_spi_readbytes.exit.i_crit_edge, label %if.then25.i.i

if.end22.i.i.mmc_spi_readbytes.exit.i_crit_edge:  ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma27.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %43 = ptrtoint ptr %data_dma27.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_dma27.i.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %42, i32 noundef %44, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit.i

mmc_spi_readbytes.exit.i:                         ; preds = %if.then25.i.i, %if.end22.i.i.mmc_spi_readbytes.exit.i_crit_edge
  %45 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi.i.i, align 4
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i, align 8
  %xor.i = xor i32 %48, 4
  store i32 %xor.i, ptr %mode.i, align 8
  %49 = load ptr, ptr %spi.i.i, align 4
  %call4.i = tail call i32 @spi_setup(ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %mmc_spi_readbytes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.52) #12
  %52 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi.i.i, align 4
  %mode7.i = getelementptr inbounds %struct.spi_device, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %mode7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode7.i, align 8
  %xor8.i = xor i32 %55, 4
  store i32 %xor8.i, ptr %mode7.i, align 8
  br label %if.end38

if.else.i:                                        ; preds = %mmc_spi_readbytes.exit.i
  %56 = ptrtoint ptr %len18.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 18, ptr %len18.i.i, align 4
  %57 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_dev.i.i, align 4
  %tobool19.not.i34.i = icmp eq ptr %58, null
  br i1 %tobool19.not.i34.i, label %if.else.i.if.end22.i41.i_crit_edge, label %if.then20.i36.i

if.else.i.if.end22.i41.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i41.i

if.then20.i36.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma.i35.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %59 = ptrtoint ptr %data_dma.i35.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_dma.i35.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %58, i32 noundef %60, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i41.i

if.end22.i41.i:                                   ; preds = %if.then20.i36.i, %if.else.i.if.end22.i41.i_crit_edge
  %61 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi.i.i, align 4
  %call.i39.i = tail call i32 @spi_sync_locked(ptr noundef %62, ptr noundef %readback.i.i) #8
  %63 = ptrtoint ptr %dma_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_dev.i.i, align 4
  %tobool24.not.i40.i = icmp eq ptr %64, null
  br i1 %tobool24.not.i40.i, label %if.end22.i41.i.mmc_spi_readbytes.exit44.i_crit_edge, label %if.then25.i43.i

if.end22.i41.i.mmc_spi_readbytes.exit44.i_crit_edge: ; preds = %if.end22.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit44.i

if.then25.i43.i:                                  ; preds = %if.end22.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma27.i42.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 3, i32 7
  %65 = ptrtoint ptr %data_dma27.i42.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_dma27.i42.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %64, i32 noundef %66, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit44.i

mmc_spi_readbytes.exit44.i:                       ; preds = %if.then25.i43.i, %if.end22.i41.i.mmc_spi_readbytes.exit44.i_crit_edge
  %67 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi.i.i, align 4
  %mode11.i = getelementptr inbounds %struct.spi_device, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %mode11.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode11.i, align 8
  %xor12.i = xor i32 %70, 4
  store i32 %xor12.i, ptr %mode11.i, align 8
  %71 = load ptr, ptr %spi.i.i, align 4
  %call14.i = tail call i32 @spi_setup(ptr noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.not.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.not.i, label %mmc_spi_readbytes.exit44.i.if.end38_crit_edge, label %do.end18.i

mmc_spi_readbytes.exit44.i.if.end38_crit_edge:    ; preds = %mmc_spi_readbytes.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end18.i:                                       ; preds = %mmc_spi_readbytes.exit44.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spi.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.55) #12
  br label %if.end38

if.end38:                                         ; preds = %do.end18.i, %mmc_spi_readbytes.exit44.i.if.end38_crit_edge, %do.end.i, %if.end32.if.end38_crit_edge
  br i1 %8, label %land.lhs.true, label %if.end38.if.end124_crit_edge

if.end38.if.end124_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

land.lhs.true:                                    ; preds = %if.end38
  %74 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %power_mode1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp42 = icmp eq i8 %75, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true.if.end124_crit_edge

land.lhs.true.if.end124_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then44:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nullbyte) #8
  %76 = ptrtoint ptr %nullbyte to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %nullbyte, align 1
  %spi45 = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %77 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spi45, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mode, align 8
  %and = and i32 %80, -4
  store i32 %and, ptr %mode, align 8
  %81 = load ptr, ptr %spi45, align 4
  %call47 = tail call i32 @spi_setup(ptr noundef %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.body51, label %if.then44.if.end69_crit_edge

if.then44.if.end69_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.body51:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_set_ios, %if.then63)) #8
          to label %if.end69 [label %if.then63], !srcloc !148

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %spi45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_set_ios.__UNIQUE_ID_ddebug290, ptr noundef %83, ptr noundef nonnull @.str.45) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %do.body51, %if.then44.if.end69_crit_edge
  %84 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi45, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %86 = getelementptr inbounds i8, ptr %t.i, i32 4
  %87 = call ptr @memset(ptr %86, i32 0, i32 92)
  %88 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %nullbyte, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %89 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %90 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 40)
  %92 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %94 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end69.spi_write.exit_crit_edge

if.end69.spi_write.exit_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end69.spi_write.exit_crit_edge
  %call.i.i212 = call i32 @spi_sync(ptr noundef %85, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp72 = icmp slt i32 %call.i.i212, 0
  br i1 %cmp72, label %do.body75, label %spi_write.exit.if.end93_crit_edge

spi_write.exit.if.end93_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.body75:                                        ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_set_ios, %if.then87)) #8
          to label %if.end93 [label %if.then87], !srcloc !148

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spi45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_set_ios.__UNIQUE_ID_ddebug291, ptr noundef %101, ptr noundef nonnull @.str.46) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %do.body75, %spi_write.exit.if.end93_crit_edge
  call void @msleep(i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp94 = icmp eq i32 %call47, 0
  br i1 %cmp94, label %if.then96, label %if.end93.if.end123_crit_edge

if.end93.if.end123_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then96:                                        ; preds = %if.end93
  %102 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %spi45, align 4
  %mode98 = getelementptr inbounds %struct.spi_device, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %mode98 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mode98, align 8
  %or = or i32 %105, 3
  store i32 %or, ptr %mode98, align 8
  %106 = load ptr, ptr %spi45, align 4
  %call100 = call i32 @spi_setup(ptr noundef %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.body104, label %if.then96.if.end123_crit_edge

if.then96.if.end123_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

do.body104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_set_ios, %if.then116)) #8
          to label %if.end123 [label %if.then116], !srcloc !148

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %spi45 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi45, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_set_ios.__UNIQUE_ID_ddebug292, ptr noundef %108, ptr noundef nonnull @.str.47) #8
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %do.body104, %if.then96.if.end123_crit_edge, %if.end93.if.end123_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nullbyte) #8
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %land.lhs.true.if.end124_crit_edge, %if.end38.if.end124_crit_edge
  %109 = ptrtoint ptr %power_mode1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %power_mode1, align 2
  %111 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %power_mode, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %entry.if.end127_crit_edge
  %spi128 = getelementptr inbounds %struct.mmc_spi_host, ptr %private.i, i32 0, i32 1
  %112 = ptrtoint ptr %spi128 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spi128, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_speed_hz, align 8
  %116 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp129.not = icmp eq i32 %115, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp133.not = icmp eq i32 %117, 0
  %or.cond = or i1 %cmp129.not, %cmp133.not
  br i1 %or.cond, label %if.end127.if.end161_crit_edge, label %if.then135

if.end127.if.end161_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then135:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %max_speed_hz, align 8
  %119 = ptrtoint ptr %spi128 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %spi128, align 4
  %call140 = call i32 @spi_setup(ptr noundef %120) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_set_ios, %if.then153)) #8
          to label %if.end161 [label %if.then153], !srcloc !148

if.then153:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %spi128 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spi128, align 4
  %max_speed_hz157 = getelementptr inbounds %struct.spi_device, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %max_speed_hz157 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %max_speed_hz157, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_set_ios.__UNIQUE_ID_ddebug293, ptr noundef %122, ptr noundef nonnull @.str.48, i32 noundef %124, i32 noundef %call140) #8
  br label %if.end161

if.end161:                                        ; preds = %if.then153, %if.then135, %if.end127.if.end161_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_command_send(ptr noundef %host, ptr nocapture noundef readonly %mrq, ptr nocapture noundef %cmd, i32 noundef %cs_on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 29)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 4
  %5 = trunc i32 %4 to i8
  %conv = or i8 %5, 64
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr, align 1
  %call = tail call zeroext i8 @crc7_be(i8 noundef zeroext 0, ptr noundef %arrayidx, i32 noundef 5) #8
  %10 = or i8 %call, 1
  %arrayidx7 = getelementptr i8, ptr %1, i32 6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_on)
  %tobool.not = icmp eq i32 %cs_on, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %data9 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %12 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data9, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %flags13 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %16 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags13, align 4
  %and14 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else17, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else17:                                        ; preds = %if.else
  %and19 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else23, label %if.else17.do.body_crit_edge

if.else17.do.body_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else23:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %and25 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select.v = select i1 %tobool26.not, i32 17, i32 29
  br label %do.body

do.body:                                          ; preds = %if.else23, %if.else17.do.body_crit_edge, %if.else.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %spec.select.v.sink = phi i32 [ %spec.select.v, %if.else23 ], [ 9, %land.lhs.true.do.body_crit_edge ], [ 18, %if.else.do.body_crit_edge ], [ 21, %if.else17.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_command_send.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_command_send, %if.then38)) #8
          to label %do.end [label %if.then38], !srcloc !148

if.then38:                                        ; preds = %do.body
  %spi = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 1920
  %24 = add nsw i32 %and.i, -128
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %switch.lookup, label %if.then38.maptype.exit_crit_edge

if.then38.maptype.exit_crit_edge:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %maptype.exit

switch.lookup:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mmc_spi_command_send, i32 0, i32 %25
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %maptype.exit

maptype.exit:                                     ; preds = %switch.lookup, %if.then38.maptype.exit_crit_edge
  %retval.0.i142 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %if.then38.maptype.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_command_send.__UNIQUE_ID_ddebug277, ptr noundef %19, ptr noundef nonnull @.str.17, i32 noundef %21, ptr noundef nonnull %retval.0.i142) #8
  br label %do.end

do.end:                                           ; preds = %maptype.exit, %do.body
  %m = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9
  %28 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 1
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 10
  %32 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %t42 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6
  %34 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 5
  %35 = call ptr @memset(ptr %34, i32 0, i32 76)
  %rx_buf = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %rx_buf, align 4
  %37 = ptrtoint ptr %t42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %1, ptr %t42, align 4
  %data_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %38 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_dma, align 4
  %rx_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 4
  %40 = ptrtoint ptr %rx_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rx_dma, align 4
  %tx_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 3
  %41 = ptrtoint ptr %tx_dma to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %tx_dma, align 4
  %len = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select.v.sink, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 7
  %43 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %cs_change, align 4
  %transfer_list.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %m, ptr noundef %m) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %dma_dev = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %48 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_dev, align 4
  %tobool48.not = icmp eq ptr %49, null
  br i1 %tobool48.not, label %spi_message_add_tail.exit.if.end56_crit_edge, label %if.then49

spi_message_add_tail.exit.if.end56_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then49:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %is_dma_mapped = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 2
  %50 = ptrtoint ptr %is_dma_mapped to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load51 = load i8, ptr %is_dma_mapped, align 4
  %bf.set53 = or i8 %bf.load51, -128
  store i8 %bf.set53, ptr %is_dma_mapped, align 4
  %51 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %49, i32 noundef %52, i32 noundef 32, i32 noundef 0) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %spi_message_add_tail.exit.if.end56_crit_edge
  %spi57 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %53 = ptrtoint ptr %spi57 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi57, align 4
  %call59 = tail call i32 @spi_sync_locked(ptr noundef %54, ptr noundef %m) #8
  %55 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_dev, align 4
  %tobool61.not = icmp eq ptr %56, null
  br i1 %tobool61.not, label %if.end56.if.end65_crit_edge, label %if.then62

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_dma, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %56, i32 noundef %58, i32 noundef 32, i32 noundef 0) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end56.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp = icmp slt i32 %call59, 0
  br i1 %cmp, label %do.body68, label %if.end86

do.body68:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_command_send.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_command_send, %if.then80)) #8
          to label %do.end85 [label %if.then80], !srcloc !148

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %spi57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spi57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_command_send.__UNIQUE_ID_ddebug278, ptr noundef %60, ptr noundef nonnull @.str.18, i32 noundef %call59) #8
  br label %do.end85

do.end85:                                         ; preds = %if.then80, %do.body68
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %61 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call59, ptr %error, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call fastcc i32 @mmc_spi_response_get(ptr noundef %host, ptr noundef %cmd, i32 noundef %cs_on)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end85
  %retval.0 = phi i32 [ %call59, %do.end85 ], [ %call87, %if.end86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_spi_data_do(ptr noundef %host, ptr nocapture noundef %data, i32 noundef %blk_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %dma_dev2 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %2 = ptrtoint ptr %dma_dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_dev2, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond = select i1 %tobool.not.i, ptr @.str.29, ptr @.str.28
  %data.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %data_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %10 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_dma.i, align 4
  %m.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9
  %12 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 1
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 10
  %16 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i10 = icmp eq i32 %11, 0
  br i1 %tobool.not.i10, label %entry.if.end.i13_crit_edge, label %if.then.i11

entry.if.end.i13_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i13

if.then.i11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %is_dma_mapped.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %is_dma_mapped.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %is_dma_mapped.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %is_dma_mapped.i, align 4
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then.i11, %entry.if.end.i13_crit_edge
  br i1 %tobool.not.i, label %if.end.i13.if.end12.i_crit_edge, label %if.then2.i

if.end.i13.if.end12.i_crit_edge:                  ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then2.i:                                       ; preds = %if.end.i13
  %token.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5
  %19 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5, i32 1
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %len.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %len.i, align 4
  %spec.select.i = select i1 %cmp, i8 -4, i8 -2
  %22 = getelementptr inbounds %struct.scratch, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i, ptr %22, align 1
  %24 = ptrtoint ptr %token.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %token.i, align 4
  br i1 %tobool.not.i10, label %if.then2.i.if.end10.i_crit_edge, label %if.then9.i

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %11, 29
  %tx_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %tx_dma.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.then2.i.if.end10.i_crit_edge
  %transfer_list.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5, i32 18
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %27, ptr noundef %m.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end10.i.if.end12.i_crit_edge

if.end10.i.if.end12.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i.i.i.i:                                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 5, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i, ptr %27, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i.i.i.i, %if.end10.i.if.end12.i_crit_edge, %if.end.i13.if.end12.i_crit_edge
  %t13.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6
  %32 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 1
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %ones.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 15
  %34 = ptrtoint ptr %ones.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ones.i, align 4
  %36 = ptrtoint ptr %t13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %t13.i, align 4
  %ones_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 16
  %37 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ones_dma.i, align 4
  %tx_dma15.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 3
  %39 = ptrtoint ptr %tx_dma15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_dma15.i, align 4
  %transfer_list.i117.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 18
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i119.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i117.i, ptr noundef %41, ptr noundef %m.i) #8
  br i1 %call.i.i.i119.i, label %if.end.i.i.i121.i, label %if.end12.i.spi_message_add_tail.exit122.i_crit_edge

if.end12.i.spi_message_add_tail.exit122.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit122.i

if.end.i.i.i121.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i117.i, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i117.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %m.i, ptr %transfer_list.i117.i, align 4
  %prev3.i.i.i120.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i120.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i117.i, ptr %41, align 4
  br label %spi_message_add_tail.exit122.i

spi_message_add_tail.exit122.i:                   ; preds = %if.end.i.i.i121.i, %if.end12.i.spi_message_add_tail.exit122.i_crit_edge
  %crc.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7
  %46 = call ptr @memset(ptr %crc.i, i32 0, i32 96)
  %len17.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %len17.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %len17.i, align 4
  br i1 %tobool.not.i, label %if.else26.i, label %if.then19.i

if.then19.i:                                      ; preds = %spi_message_add_tail.exit122.i
  %crc_val.i = getelementptr inbounds %struct.scratch, ptr %9, i32 0, i32 2
  %48 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %crc_val.i, ptr %crc.i, align 4
  br i1 %tobool.not.i10, label %if.then19.i.if.end36.i_crit_edge, label %if.then22.i

if.then19.i.if.end36.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %add23.i = add i32 %11, 30
  %tx_dma24.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 3
  %49 = ptrtoint ptr %tx_dma24.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add23.i, ptr %tx_dma24.i, align 4
  br label %if.end36.i

if.else26.i:                                      ; preds = %spi_message_add_tail.exit122.i
  %50 = ptrtoint ptr %ones.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ones.i, align 4
  %52 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %crc.i, align 4
  %53 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ones_dma.i, align 4
  %tx_dma30.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %tx_dma30.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %tx_dma30.i, align 4
  %crc_val31.i = getelementptr inbounds %struct.scratch, ptr %9, i32 0, i32 2
  %rx_buf.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %crc_val31.i, ptr %rx_buf.i, align 4
  br i1 %tobool.not.i10, label %if.else26.i.if.end36.i_crit_edge, label %if.then33.i

if.else26.i.if.end36.i_crit_edge:                 ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #10
  %add34.i = add i32 %11, 30
  %rx_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 4
  %57 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add34.i, ptr %rx_dma.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.else26.i.if.end36.i_crit_edge, %if.then22.i, %if.then19.i.if.end36.i_crit_edge
  %transfer_list.i123.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 18
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i125.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i123.i, ptr noundef %59, ptr noundef %m.i) #8
  br i1 %call.i.i.i125.i, label %if.end.i.i.i127.i, label %if.end36.i.spi_message_add_tail.exit128.i_crit_edge

if.end36.i.spi_message_add_tail.exit128.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit128.i

if.end.i.i.i127.i:                                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i123.i, ptr %prev.i.i.i.i, align 4
  %61 = ptrtoint ptr %transfer_list.i123.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %m.i, ptr %transfer_list.i123.i, align 4
  %prev3.i.i.i126.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 7, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i126.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i123.i, ptr %59, align 4
  br label %spi_message_add_tail.exit128.i

spi_message_add_tail.exit128.i:                   ; preds = %if.end.i.i.i127.i, %if.end36.i.spi_message_add_tail.exit128.i_crit_edge
  %brmerge.i = or i1 %cmp, %not.tobool.not.i
  br i1 %brmerge.i, label %if.then40.i, label %spi_message_add_tail.exit128.i.mmc_spi_setup_data_message.exit_crit_edge

spi_message_add_tail.exit128.i.mmc_spi_setup_data_message.exit_crit_edge: ; preds = %spi_message_add_tail.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_setup_data_message.exit

if.then40.i:                                      ; preds = %spi_message_add_tail.exit128.i
  %early_status.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8
  %64 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 80)
  %cond.i14 = select i1 %tobool.not.i, i32 1, i32 29
  %len42.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 2
  %66 = ptrtoint ptr %len42.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond.i14, ptr %len42.i, align 4
  %67 = ptrtoint ptr %ones.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ones.i, align 4
  %69 = ptrtoint ptr %early_status.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %early_status.i, align 4
  %70 = ptrtoint ptr %ones_dma.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ones_dma.i, align 4
  %tx_dma46.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 3
  %72 = ptrtoint ptr %tx_dma46.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tx_dma46.i, align 4
  %rx_buf47.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %rx_buf47.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %9, ptr %rx_buf47.i, align 4
  br i1 %tobool.not.i10, label %if.then40.i.if.end52.i_crit_edge, label %if.then49.i

if.then40.i.if.end52.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %11, ptr %64, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.then40.i.if.end52.i_crit_edge
  %cs_change.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 7
  %75 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load53.i = load i8, ptr %cs_change.i, align 4
  %bf.set55.i = or i8 %bf.load53.i, 64
  store i8 %bf.set55.i, ptr %cs_change.i, align 4
  %transfer_list.i129.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 18
  %76 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i131.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i129.i, ptr noundef %77, ptr noundef %m.i) #8
  br i1 %call.i.i.i131.i, label %if.end.i.i.i133.i, label %if.end52.i.mmc_spi_setup_data_message.exit_crit_edge

if.end52.i.mmc_spi_setup_data_message.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_setup_data_message.exit

if.end.i.i.i133.i:                                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transfer_list.i129.i, ptr %prev.i.i.i.i, align 4
  %79 = ptrtoint ptr %transfer_list.i129.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %m.i, ptr %transfer_list.i129.i, align 4
  %prev3.i.i.i132.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 18, i32 1
  %80 = ptrtoint ptr %prev3.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i.i132.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %transfer_list.i129.i, ptr %77, align 4
  br label %mmc_spi_setup_data_message.exit

mmc_spi_setup_data_message.exit:                  ; preds = %if.end.i.i.i133.i, %if.end52.i.mmc_spi_setup_data_message.exit_crit_edge, %spi_message_add_tail.exit128.i.mmc_spi_setup_data_message.exit_crit_edge
  %speed_hz = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 12
  %82 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool5.not = icmp eq i32 %83, 0
  br i1 %tobool5.not, label %if.else, label %mmc_spi_setup_data_message.exit.if.else.i_crit_edge

mmc_spi_setup_data_message.exit.if.else.i_crit_edge: ; preds = %mmc_spi_setup_data_message.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else:                                          ; preds = %mmc_spi_setup_data_message.exit
  call void @__sanitizer_cov_trace_pc() #10
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_speed_hz, align 8
  br label %if.else.i

if.else.i:                                        ; preds = %if.else, %mmc_spi_setup_data_message.exit.if.else.i_crit_edge
  %clock_rate.0 = phi i32 [ %85, %if.else ], [ %83, %mmc_spi_setup_data_message.exit.if.else.i_crit_edge ]
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 1
  %86 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %timeout_clks, align 4
  %mul = mul i32 %87, 1000000
  %div7 = udiv i32 %mul, %clock_rate.0
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data, align 4
  %div = udiv i32 %89, 1000
  %add = add i32 %div7, %div
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %add) #8
  %add9 = add i32 %call3.i, 1
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %90 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp1155.not = icmp eq i32 %91, 0
  br i1 %cmp1155.not, label %if.else.i.for.end_crit_edge, label %for.body.lr.ph

if.else.i.for.end_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else.i
  %sg10 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %92 = ptrtoint ptr %sg10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sg10, align 4
  %tobool13.not = icmp eq ptr %3, null
  %spec.store.select = zext i1 %not.tobool.not.i to i32
  %rx_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 4
  %len = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 2
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %cmp.not59 = xor i1 %cmp, true
  %rx_dma.tx_dma15.i = select i1 %tobool.not.i, ptr %rx_dma, ptr %tx_dma15.i
  %.t13.i = select i1 %tobool.not.i, ptr %32, ptr %t13.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg.057 = phi ptr [ %93, %for.body.lr.ph ], [ %call104, %for.inc.for.body_crit_edge ]
  %n_sg.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %length12 = getelementptr inbounds %struct.scatterlist, ptr %sg.057, i32 0, i32 2
  %94 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length12, align 4
  br i1 %tobool13.not, label %for.body.if.end34_crit_edge, label %if.then14

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then14:                                        ; preds = %for.body
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.057, i32 0, i32 1
  %96 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp15.not = icmp eq i32 %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %95)
  %cmp16.not = icmp eq i32 %95, 4096
  %or.cond = select i1 %cmp15.not, i1 %cmp16.not, i1 false
  %dir.0 = select i1 %or.cond, i32 %cond.i, i32 %spec.store.select
  %98 = ptrtoint ptr %sg.057 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sg.057, align 4
  %and.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !149

do.body2.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

sg_page.exit:                                     ; preds = %if.then14
  %and.i15 = and i32 %99, -4
  %100 = inttoptr i32 %and.i15 to ptr
  %call21 = tail call i32 @dma_map_page_attrs(ptr noundef nonnull %3, ptr noundef %100, i32 noundef 0, i32 noundef 4096, i32 noundef %dir.0, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef nonnull %3, i32 noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call21)
  %cmp.i16.not = icmp eq i32 %call21, -1
  br i1 %cmp.i16.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %101 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -14, ptr %error, align 4
  br label %for.end

if.end25:                                         ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %offset, align 4
  %add32 = add i32 %103, %call21
  %104 = ptrtoint ptr %rx_dma.tx_dma15.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add32, ptr %rx_dma.tx_dma15.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end25, %for.body.if.end34_crit_edge
  %dma_addr.0 = phi i32 [ 0, %for.body.if.end34_crit_edge ], [ %call21, %if.end25 ]
  %dir.1 = phi i32 [ %cond.i, %for.body.if.end34_crit_edge ], [ %dir.0, %if.end25 ]
  %105 = ptrtoint ptr %sg.057 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sg.057, align 4
  %and.i.i17 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.i.not.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.i.not.i18, label %sg_page.exit21, label %do.body2.i19, !prof !149

do.body2.i19:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

sg_page.exit21:                                   ; preds = %if.end34
  %and.i20 = and i32 %106, -4
  %107 = inttoptr i32 %and.i20 to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 44) #8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %shr.i.i = lshr i32 %109, 30
  %110 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %shr.i.i, label %sg_page.exit21.if.then.i22_crit_edge [
    i32 2, label %sg_page.exit21.if.else.i23_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit21.if.else.i23_crit_edge:             ; preds = %sg_page.exit21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i23

sg_page.exit21.if.then.i22_crit_edge:             ; preds = %sg_page.exit21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i22

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %111 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp2.i.not.i = icmp eq i32 %111, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i23_crit_edge, label %is_highmem_idx.exit.i.if.then.i22_crit_edge

is_highmem_idx.exit.i.if.then.i22_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i22

is_highmem_idx.exit.i.if.else.i23_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i23

if.then.i22:                                      ; preds = %is_highmem_idx.exit.i.if.then.i22_crit_edge, %sg_page.exit21.if.then.i22_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %107) #8
  br label %kmap.exit

if.else.i23:                                      ; preds = %is_highmem_idx.exit.i.if.else.i23_crit_edge, %sg_page.exit21.if.else.i23_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %107) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i23, %if.then.i22
  %addr.0.i = phi ptr [ %call6.i, %if.else.i23 ], [ %call5.i, %if.then.i22 ]
  %offset41 = getelementptr inbounds %struct.scatterlist, ptr %sg.057, i32 0, i32 1
  %112 = ptrtoint ptr %offset41 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset41, align 4
  %add.ptr42 = getelementptr i8, ptr %addr.0.i, i32 %113
  %114 = ptrtoint ptr %.t13.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr42, ptr %.t13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool44.not51 = icmp eq i32 %95, 0
  br i1 %tobool44.not51, label %kmap.exit.while.end_crit_edge, label %kmap.exit.while.body_crit_edge

kmap.exit.while.body_crit_edge:                   ; preds = %kmap.exit
  br label %while.body

kmap.exit.while.end_crit_edge:                    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end64.while.body_crit_edge, %kmap.exit.while.body_crit_edge
  %length.052 = phi i32 [ %sub, %if.end64.while.body_crit_edge ], [ %95, %kmap.exit.while.body_crit_edge ]
  %115 = tail call i32 @llvm.umin.i32(i32 %length.052, i32 %blk_size)
  %116 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_data_do, %if.then53)) #8
          to label %do.end [label %if.then53], !srcloc !148

if.then53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_data_do.__UNIQUE_ID_ddebug286, ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, i32 noundef %118) #8
  br label %do.end

do.end:                                           ; preds = %if.then53, %while.body
  br i1 %tobool.not.i, label %if.else59, label %if.then57

if.then57:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call fastcc i32 @mmc_spi_writeblock(ptr noundef %host, ptr noundef %t13.i, i32 noundef %add9)
  br label %if.end61

if.else59:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call fastcc i32 @mmc_spi_readblock(ptr noundef %host, ptr noundef %t13.i, i32 noundef %add9)
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %status.1 = phi i32 [ %call58, %if.then57 ], [ %call60, %if.else59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp62 = icmp slt i32 %status.1, 0
  br i1 %cmp62, label %if.end61.while.end_crit_edge, label %if.end64

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end64:                                         ; preds = %if.end61
  %119 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len, align 4
  %121 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bytes_xfered, align 4
  %add66 = add i32 %122, %120
  store i32 %add66, ptr %bytes_xfered, align 4
  %123 = load i32, ptr %len, align 4
  %sub = sub i32 %length.052, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool44.not = icmp eq i32 %sub, 0
  %or.cond60 = select i1 %cmp.not59, i1 true, i1 %tobool44.not
  br i1 %or.cond60, label %if.end64.while.end_crit_edge, label %if.end64.while.body_crit_edge

if.end64.while.body_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end64.while.end_crit_edge, %if.end61.while.end_crit_edge, %kmap.exit.while.end_crit_edge
  %status.2 = phi i32 [ 0, %kmap.exit.while.end_crit_edge ], [ %status.1, %if.end64.while.end_crit_edge ], [ %status.1, %if.end61.while.end_crit_edge ]
  br i1 %tobool.not.i, label %if.then72, label %while.end.if.end74_crit_edge

while.end.if.end74_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then72:                                        ; preds = %while.end
  %124 = ptrtoint ptr %sg.057 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sg.057, align 4
  %and.i.i25 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.i.not.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.i.not.i26, label %sg_page.exit29, label %do.body2.i27, !prof !149

do.body2.i27:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

sg_page.exit29:                                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %and.i28 = and i32 %125, -4
  %126 = inttoptr i32 %and.i28 to ptr
  tail call void @flush_dcache_page(ptr noundef %126) #8
  br label %if.end74

if.end74:                                         ; preds = %sg_page.exit29, %while.end.if.end74_crit_edge
  %127 = ptrtoint ptr %sg.057 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sg.057, align 4
  %and.i.i30 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.i.not.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.i.not.i31, label %sg_page.exit34, label %do.body2.i32, !prof !149

do.body2.i32:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

sg_page.exit34:                                   ; preds = %if.end74
  %and.i33 = and i32 %128, -4
  %129 = inttoptr i32 %and.i33 to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 55) #8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %shr.i.i35 = lshr i32 %131, 30
  %132 = zext i32 %shr.i.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %shr.i.i35, label %sg_page.exit34.kunmap.exit_crit_edge [
    i32 2, label %sg_page.exit34.if.end.i38_crit_edge
    i32 3, label %is_highmem_idx.exit.i37
  ]

sg_page.exit34.if.end.i38_crit_edge:              ; preds = %sg_page.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i38

sg_page.exit34.kunmap.exit_crit_edge:             ; preds = %sg_page.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i37:                          ; preds = %sg_page.exit34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %133 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp2.i.not.i36 = icmp eq i32 %133, 2
  br i1 %cmp2.i.not.i36, label %is_highmem_idx.exit.i37.if.end.i38_crit_edge, label %is_highmem_idx.exit.i37.kunmap.exit_crit_edge

is_highmem_idx.exit.i37.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i37.if.end.i38_crit_edge:     ; preds = %is_highmem_idx.exit.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i38

if.end.i38:                                       ; preds = %is_highmem_idx.exit.i37.if.end.i38_crit_edge, %sg_page.exit34.if.end.i38_crit_edge
  tail call void @kunmap_high(ptr noundef %129) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i38, %is_highmem_idx.exit.i37.kunmap.exit_crit_edge, %sg_page.exit34.kunmap.exit_crit_edge
  br i1 %tobool13.not, label %kunmap.exit.if.end78_crit_edge, label %if.then77

kunmap.exit.if.end78_crit_edge:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then77:                                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_unmap_page_attrs(ptr noundef nonnull %3, i32 noundef %dma_addr.0, i32 noundef 4096, i32 noundef %dir.1, i32 noundef 0) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %kunmap.exit.if.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp79 = icmp slt i32 %status.2, 0
  br i1 %cmp79, label %if.then80, label %for.inc

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %error81 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %134 = ptrtoint ptr %error81 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %status.2, ptr %error81, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_data_do, %if.then94)) #8
          to label %for.end [label %if.then94], !srcloc !148

if.then94:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_data_do.__UNIQUE_ID_ddebug287, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, i32 noundef %status.2) #8
  br label %for.end

for.inc:                                          ; preds = %if.end78
  %inc = add nuw i32 %n_sg.056, 1
  %call104 = tail call ptr @sg_next(ptr noundef %sg.057) #8
  %135 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sg_len, align 4
  %cmp11 = icmp ult i32 %inc, %136
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then94, %if.then80, %if.then24, %if.else.i.for.end_crit_edge
  %cmp.not = xor i1 %cmp, true
  %brmerge = or i1 %tobool.not.i, %cmp.not
  br i1 %brmerge, label %for.end.cleanup190_crit_edge, label %if.then108

for.end.cleanup190_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

if.then108:                                       ; preds = %for.end
  %137 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_data_do, %if.then123)) #8
          to label %do.end127 [label %if.then123], !srcloc !148

if.then123:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_data_do.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.33) #8
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %if.then108
  %139 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %m.i, ptr %m.i, align 4
  %140 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %early_status = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8
  %transfer_list = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 18
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list, ptr noundef %m.i, ptr noundef %m.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end127.list_add.exit_crit_edge

do.end127.list_add.exit_crit_edge:                ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %transfer_list, ptr %prev.i.i.i.i, align 4
  %142 = ptrtoint ptr %transfer_list to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %m.i, ptr %transfer_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 18, i32 1
  %143 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %m.i, ptr %prev3.i.i, align 4
  %144 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %transfer_list, ptr %m.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end127.list_add.exit_crit_edge
  %145 = call ptr @memset(ptr %138, i32 255, i32 29)
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -3, ptr %138, align 2
  %rx_buf133 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 1
  %147 = ptrtoint ptr %rx_buf133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rx_buf133, align 4
  %149 = ptrtoint ptr %early_status to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %early_status, align 4
  %rx_dma137 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 4
  %150 = ptrtoint ptr %rx_dma137 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_dma137, align 4
  %tx_dma139 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 3
  %152 = ptrtoint ptr %tx_dma139 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %tx_dma139, align 4
  %len141 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 8, i32 2
  %153 = ptrtoint ptr %len141 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 29, ptr %len141, align 4
  %154 = ptrtoint ptr %dma_dev2 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dma_dev2, align 4
  %tobool143.not = icmp eq ptr %155, null
  br i1 %tobool143.not, label %list_add.exit.if.end146_crit_edge, label %if.then144

list_add.exit.if.end146_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then144:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %155, i32 noundef %157, i32 noundef 32, i32 noundef 0) #8
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %list_add.exit.if.end146_crit_edge
  %call148 = tail call i32 @spi_sync_locked(ptr noundef %1, ptr noundef %m.i) #8
  %158 = ptrtoint ptr %dma_dev2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dma_dev2, align 4
  %tobool150.not = icmp eq ptr %159, null
  br i1 %tobool150.not, label %if.end146.if.end154_crit_edge, label %if.then151

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %160 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %159, i32 noundef %161, i32 noundef 32, i32 noundef 0) #8
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end146.if.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp155 = icmp slt i32 %call148, 0
  br i1 %cmp155, label %if.then156, label %for.body165.preheader

for.body165.preheader:                            ; preds = %if.end154
  %arrayidx167 = getelementptr [29 x i8], ptr %138, i32 0, i32 2
  %162 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp168.not = icmp eq i8 %163, 0
  br i1 %cmp168.not, label %for.cond163, label %for.body165.preheader.cleanup190_crit_edge

for.body165.preheader.cleanup190_crit_edge:       ; preds = %for.body165.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

if.then156:                                       ; preds = %if.end154
  %error157 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %164 = ptrtoint ptr %error157 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %error157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool158.not = icmp eq i32 %165, 0
  br i1 %tobool158.not, label %if.then159, label %if.then156.cleanup190_crit_edge

if.then156.cleanup190_crit_edge:                  ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

if.then159:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %error157 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call148, ptr %error157, align 4
  br label %cleanup190

for.cond163:                                      ; preds = %for.body165.preheader
  %arrayidx167.1 = getelementptr [29 x i8], ptr %138, i32 0, i32 3
  %167 = ptrtoint ptr %arrayidx167.1 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx167.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp168.not.1 = icmp eq i8 %168, 0
  br i1 %cmp168.not.1, label %for.cond163.1, label %for.cond163.cleanup190_crit_edge

for.cond163.cleanup190_crit_edge:                 ; preds = %for.cond163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.1:                                    ; preds = %for.cond163
  %arrayidx167.2 = getelementptr [29 x i8], ptr %138, i32 0, i32 4
  %169 = ptrtoint ptr %arrayidx167.2 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx167.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp168.not.2 = icmp eq i8 %170, 0
  br i1 %cmp168.not.2, label %for.cond163.2, label %for.cond163.1.cleanup190_crit_edge

for.cond163.1.cleanup190_crit_edge:               ; preds = %for.cond163.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.2:                                    ; preds = %for.cond163.1
  %arrayidx167.3 = getelementptr [29 x i8], ptr %138, i32 0, i32 5
  %171 = ptrtoint ptr %arrayidx167.3 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx167.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp168.not.3 = icmp eq i8 %172, 0
  br i1 %cmp168.not.3, label %for.cond163.3, label %for.cond163.2.cleanup190_crit_edge

for.cond163.2.cleanup190_crit_edge:               ; preds = %for.cond163.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.3:                                    ; preds = %for.cond163.2
  %arrayidx167.4 = getelementptr [29 x i8], ptr %138, i32 0, i32 6
  %173 = ptrtoint ptr %arrayidx167.4 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx167.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %cmp168.not.4 = icmp eq i8 %174, 0
  br i1 %cmp168.not.4, label %for.cond163.4, label %for.cond163.3.cleanup190_crit_edge

for.cond163.3.cleanup190_crit_edge:               ; preds = %for.cond163.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.4:                                    ; preds = %for.cond163.3
  %arrayidx167.5 = getelementptr [29 x i8], ptr %138, i32 0, i32 7
  %175 = ptrtoint ptr %arrayidx167.5 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx167.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp168.not.5 = icmp eq i8 %176, 0
  br i1 %cmp168.not.5, label %for.cond163.5, label %for.cond163.4.cleanup190_crit_edge

for.cond163.4.cleanup190_crit_edge:               ; preds = %for.cond163.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.5:                                    ; preds = %for.cond163.4
  %arrayidx167.6 = getelementptr [29 x i8], ptr %138, i32 0, i32 8
  %177 = ptrtoint ptr %arrayidx167.6 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx167.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp168.not.6 = icmp eq i8 %178, 0
  br i1 %cmp168.not.6, label %for.cond163.6, label %for.cond163.5.cleanup190_crit_edge

for.cond163.5.cleanup190_crit_edge:               ; preds = %for.cond163.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.6:                                    ; preds = %for.cond163.5
  %arrayidx167.7 = getelementptr [29 x i8], ptr %138, i32 0, i32 9
  %179 = ptrtoint ptr %arrayidx167.7 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx167.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp168.not.7 = icmp eq i8 %180, 0
  br i1 %cmp168.not.7, label %for.cond163.7, label %for.cond163.6.cleanup190_crit_edge

for.cond163.6.cleanup190_crit_edge:               ; preds = %for.cond163.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.7:                                    ; preds = %for.cond163.6
  %arrayidx167.8 = getelementptr [29 x i8], ptr %138, i32 0, i32 10
  %181 = ptrtoint ptr %arrayidx167.8 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx167.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %cmp168.not.8 = icmp eq i8 %182, 0
  br i1 %cmp168.not.8, label %for.cond163.8, label %for.cond163.7.cleanup190_crit_edge

for.cond163.7.cleanup190_crit_edge:               ; preds = %for.cond163.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.8:                                    ; preds = %for.cond163.7
  %arrayidx167.9 = getelementptr [29 x i8], ptr %138, i32 0, i32 11
  %183 = ptrtoint ptr %arrayidx167.9 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx167.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp168.not.9 = icmp eq i8 %184, 0
  br i1 %cmp168.not.9, label %for.cond163.9, label %for.cond163.8.cleanup190_crit_edge

for.cond163.8.cleanup190_crit_edge:               ; preds = %for.cond163.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.9:                                    ; preds = %for.cond163.8
  %arrayidx167.10 = getelementptr [29 x i8], ptr %138, i32 0, i32 12
  %185 = ptrtoint ptr %arrayidx167.10 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx167.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %cmp168.not.10 = icmp eq i8 %186, 0
  br i1 %cmp168.not.10, label %for.cond163.10, label %for.cond163.9.cleanup190_crit_edge

for.cond163.9.cleanup190_crit_edge:               ; preds = %for.cond163.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.10:                                   ; preds = %for.cond163.9
  %arrayidx167.11 = getelementptr [29 x i8], ptr %138, i32 0, i32 13
  %187 = ptrtoint ptr %arrayidx167.11 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx167.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp168.not.11 = icmp eq i8 %188, 0
  br i1 %cmp168.not.11, label %for.cond163.11, label %for.cond163.10.cleanup190_crit_edge

for.cond163.10.cleanup190_crit_edge:              ; preds = %for.cond163.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.11:                                   ; preds = %for.cond163.10
  %arrayidx167.12 = getelementptr [29 x i8], ptr %138, i32 0, i32 14
  %189 = ptrtoint ptr %arrayidx167.12 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx167.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp168.not.12 = icmp eq i8 %190, 0
  br i1 %cmp168.not.12, label %for.cond163.12, label %for.cond163.11.cleanup190_crit_edge

for.cond163.11.cleanup190_crit_edge:              ; preds = %for.cond163.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.12:                                   ; preds = %for.cond163.11
  %arrayidx167.13 = getelementptr [29 x i8], ptr %138, i32 0, i32 15
  %191 = ptrtoint ptr %arrayidx167.13 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx167.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %cmp168.not.13 = icmp eq i8 %192, 0
  br i1 %cmp168.not.13, label %for.cond163.13, label %for.cond163.12.cleanup190_crit_edge

for.cond163.12.cleanup190_crit_edge:              ; preds = %for.cond163.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.13:                                   ; preds = %for.cond163.12
  %arrayidx167.14 = getelementptr [29 x i8], ptr %138, i32 0, i32 16
  %193 = ptrtoint ptr %arrayidx167.14 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx167.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp168.not.14 = icmp eq i8 %194, 0
  br i1 %cmp168.not.14, label %for.cond163.14, label %for.cond163.13.cleanup190_crit_edge

for.cond163.13.cleanup190_crit_edge:              ; preds = %for.cond163.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.14:                                   ; preds = %for.cond163.13
  %arrayidx167.15 = getelementptr [29 x i8], ptr %138, i32 0, i32 17
  %195 = ptrtoint ptr %arrayidx167.15 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx167.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp168.not.15 = icmp eq i8 %196, 0
  br i1 %cmp168.not.15, label %for.cond163.15, label %for.cond163.14.cleanup190_crit_edge

for.cond163.14.cleanup190_crit_edge:              ; preds = %for.cond163.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.15:                                   ; preds = %for.cond163.14
  %arrayidx167.16 = getelementptr [29 x i8], ptr %138, i32 0, i32 18
  %197 = ptrtoint ptr %arrayidx167.16 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx167.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp168.not.16 = icmp eq i8 %198, 0
  br i1 %cmp168.not.16, label %for.cond163.16, label %for.cond163.15.cleanup190_crit_edge

for.cond163.15.cleanup190_crit_edge:              ; preds = %for.cond163.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.16:                                   ; preds = %for.cond163.15
  %arrayidx167.17 = getelementptr [29 x i8], ptr %138, i32 0, i32 19
  %199 = ptrtoint ptr %arrayidx167.17 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx167.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %cmp168.not.17 = icmp eq i8 %200, 0
  br i1 %cmp168.not.17, label %for.cond163.17, label %for.cond163.16.cleanup190_crit_edge

for.cond163.16.cleanup190_crit_edge:              ; preds = %for.cond163.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.17:                                   ; preds = %for.cond163.16
  %arrayidx167.18 = getelementptr [29 x i8], ptr %138, i32 0, i32 20
  %201 = ptrtoint ptr %arrayidx167.18 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx167.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %cmp168.not.18 = icmp eq i8 %202, 0
  br i1 %cmp168.not.18, label %for.cond163.18, label %for.cond163.17.cleanup190_crit_edge

for.cond163.17.cleanup190_crit_edge:              ; preds = %for.cond163.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.18:                                   ; preds = %for.cond163.17
  %arrayidx167.19 = getelementptr [29 x i8], ptr %138, i32 0, i32 21
  %203 = ptrtoint ptr %arrayidx167.19 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx167.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp168.not.19 = icmp eq i8 %204, 0
  br i1 %cmp168.not.19, label %for.cond163.19, label %for.cond163.18.cleanup190_crit_edge

for.cond163.18.cleanup190_crit_edge:              ; preds = %for.cond163.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.19:                                   ; preds = %for.cond163.18
  %arrayidx167.20 = getelementptr [29 x i8], ptr %138, i32 0, i32 22
  %205 = ptrtoint ptr %arrayidx167.20 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx167.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %cmp168.not.20 = icmp eq i8 %206, 0
  br i1 %cmp168.not.20, label %for.cond163.20, label %for.cond163.19.cleanup190_crit_edge

for.cond163.19.cleanup190_crit_edge:              ; preds = %for.cond163.19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.20:                                   ; preds = %for.cond163.19
  %arrayidx167.21 = getelementptr [29 x i8], ptr %138, i32 0, i32 23
  %207 = ptrtoint ptr %arrayidx167.21 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx167.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp168.not.21 = icmp eq i8 %208, 0
  br i1 %cmp168.not.21, label %for.cond163.21, label %for.cond163.20.cleanup190_crit_edge

for.cond163.20.cleanup190_crit_edge:              ; preds = %for.cond163.20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.21:                                   ; preds = %for.cond163.20
  %arrayidx167.22 = getelementptr [29 x i8], ptr %138, i32 0, i32 24
  %209 = ptrtoint ptr %arrayidx167.22 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx167.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp168.not.22 = icmp eq i8 %210, 0
  br i1 %cmp168.not.22, label %for.cond163.22, label %for.cond163.21.cleanup190_crit_edge

for.cond163.21.cleanup190_crit_edge:              ; preds = %for.cond163.21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.22:                                   ; preds = %for.cond163.21
  %arrayidx167.23 = getelementptr [29 x i8], ptr %138, i32 0, i32 25
  %211 = ptrtoint ptr %arrayidx167.23 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx167.23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %cmp168.not.23 = icmp eq i8 %212, 0
  br i1 %cmp168.not.23, label %for.cond163.23, label %for.cond163.22.cleanup190_crit_edge

for.cond163.22.cleanup190_crit_edge:              ; preds = %for.cond163.22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.23:                                   ; preds = %for.cond163.22
  %arrayidx167.24 = getelementptr [29 x i8], ptr %138, i32 0, i32 26
  %213 = ptrtoint ptr %arrayidx167.24 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx167.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %cmp168.not.24 = icmp eq i8 %214, 0
  br i1 %cmp168.not.24, label %for.cond163.24, label %for.cond163.23.cleanup190_crit_edge

for.cond163.23.cleanup190_crit_edge:              ; preds = %for.cond163.23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.24:                                   ; preds = %for.cond163.23
  %arrayidx167.25 = getelementptr [29 x i8], ptr %138, i32 0, i32 27
  %215 = ptrtoint ptr %arrayidx167.25 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx167.25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cmp168.not.25 = icmp eq i8 %216, 0
  br i1 %cmp168.not.25, label %for.cond163.25, label %for.cond163.24.cleanup190_crit_edge

for.cond163.24.cleanup190_crit_edge:              ; preds = %for.cond163.24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.25:                                   ; preds = %for.cond163.24
  %arrayidx167.26 = getelementptr [29 x i8], ptr %138, i32 0, i32 28
  %217 = ptrtoint ptr %arrayidx167.26 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx167.26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp168.not.26 = icmp eq i8 %218, 0
  br i1 %cmp168.not.26, label %for.cond163.26, label %for.cond163.25.cleanup190_crit_edge

for.cond163.25.cleanup190_crit_edge:              ; preds = %for.cond163.25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

for.cond163.26:                                   ; preds = %for.cond163.25
  %call.i39 = tail call fastcc i32 @mmc_spi_skip(ptr noundef %host, i32 noundef %add9, i32 noundef 29, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp176 = icmp slt i32 %call.i39, 0
  br i1 %cmp176, label %land.lhs.true178, label %for.cond163.26.cleanup190_crit_edge

for.cond163.26.cleanup190_crit_edge:              ; preds = %for.cond163.26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

land.lhs.true178:                                 ; preds = %for.cond163.26
  %error179 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %219 = ptrtoint ptr %error179 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %error179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool180.not = icmp eq i32 %220, 0
  br i1 %tobool180.not, label %if.then181, label %land.lhs.true178.cleanup190_crit_edge

land.lhs.true178.cleanup190_crit_edge:            ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup190

if.then181:                                       ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %error179 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %call.i39, ptr %error179, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %if.then181, %land.lhs.true178.cleanup190_crit_edge, %for.cond163.26.cleanup190_crit_edge, %for.cond163.25.cleanup190_crit_edge, %for.cond163.24.cleanup190_crit_edge, %for.cond163.23.cleanup190_crit_edge, %for.cond163.22.cleanup190_crit_edge, %for.cond163.21.cleanup190_crit_edge, %for.cond163.20.cleanup190_crit_edge, %for.cond163.19.cleanup190_crit_edge, %for.cond163.18.cleanup190_crit_edge, %for.cond163.17.cleanup190_crit_edge, %for.cond163.16.cleanup190_crit_edge, %for.cond163.15.cleanup190_crit_edge, %for.cond163.14.cleanup190_crit_edge, %for.cond163.13.cleanup190_crit_edge, %for.cond163.12.cleanup190_crit_edge, %for.cond163.11.cleanup190_crit_edge, %for.cond163.10.cleanup190_crit_edge, %for.cond163.9.cleanup190_crit_edge, %for.cond163.8.cleanup190_crit_edge, %for.cond163.7.cleanup190_crit_edge, %for.cond163.6.cleanup190_crit_edge, %for.cond163.5.cleanup190_crit_edge, %for.cond163.4.cleanup190_crit_edge, %for.cond163.3.cleanup190_crit_edge, %for.cond163.2.cleanup190_crit_edge, %for.cond163.1.cleanup190_crit_edge, %for.cond163.cleanup190_crit_edge, %if.then159, %if.then156.cleanup190_crit_edge, %for.body165.preheader.cleanup190_crit_edge, %for.end.cleanup190_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc7_be(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_response_get(ptr noundef %host, ptr nocapture noundef %cmd, i32 noundef %cs_on) unnamed_addr #2 align 64 {
entry:
  %tag = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tag) #8
  %4 = call ptr @memset(ptr %tag, i32 255, i32 32)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1920
  %9 = add nsw i32 %and.i, -128
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %switch.lookup, label %entry.maptype.exit_crit_edge

entry.maptype.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %maptype.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.mmc_spi_response_get, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %maptype.exit

maptype.exit:                                     ; preds = %switch.lookup, %entry.maptype.exit_crit_edge
  %retval.0.i362 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %entry.maptype.exit_crit_edge ]
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tag, i32 noundef 32, ptr noundef nonnull @.str.24, i32 noundef %6, ptr noundef nonnull %retval.0.i362)
  %add.ptr3 = getelementptr i8, ptr %1, i32 8
  %cmp417 = icmp ult ptr %add.ptr3, %add.ptr
  br i1 %cmp417, label %maptype.exit.land.rhs_crit_edge, label %maptype.exit.while.end_crit_edge

maptype.exit.while.end_crit_edge:                 ; preds = %maptype.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

maptype.exit.land.rhs_crit_edge:                  ; preds = %maptype.exit
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %maptype.exit.land.rhs_crit_edge
  %cp.0418 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %add.ptr3, %maptype.exit.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %cp.0418 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cp.0418, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp4 = icmp eq i8 %14, -1
  br i1 %cmp4, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %cp.0418, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %while.body.if.then_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %maptype.exit.while.end_crit_edge
  %cp.0.lcssa = phi ptr [ %add.ptr3, %maptype.exit.while.end_crit_edge ], [ %cp.0418, %land.rhs.while.end_crit_edge ]
  %cmp6 = icmp eq ptr %cp.0.lcssa, %add.ptr
  br i1 %cmp6, label %while.end.if.then_crit_edge, label %while.end.checkstatus_crit_edge

while.end.checkstatus_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %checkstatus

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %while.end.if.then_crit_edge, %while.body.if.then_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 1
  %len18.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %dma_dev.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %data_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %spi.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %readback.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.0420, 1
  %exitcond441.not = icmp eq i32 %inc, 16
  br i1 %exitcond441.not, label %for.cond.if.then250_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.if.then250_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then
  %i.0420 = phi i32 [ 2, %if.then ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = ptrtoint ptr %len18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %len18.i, align 4
  %18 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_dev.i, align 4
  %tobool19.not.i = icmp eq ptr %19, null
  br i1 %tobool19.not.i, label %for.body.if.end22.i_crit_edge, label %if.then20.i

for.body.if.end22.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %19, i32 noundef %21, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %for.body.if.end22.i_crit_edge
  %22 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i, align 4
  %call.i = tail call i32 @spi_sync_locked(ptr noundef %23, ptr noundef %readback.i) #8
  %24 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_dev.i, align 4
  %tobool24.not.i = icmp eq ptr %25, null
  br i1 %tobool24.not.i, label %if.end22.i.mmc_spi_readbytes.exit_crit_edge, label %if.then25.i

if.end22.i.mmc_spi_readbytes.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %25, i32 noundef %27, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit

mmc_spi_readbytes.exit:                           ; preds = %if.then25.i, %if.end22.i.mmc_spi_readbytes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %mmc_spi_readbytes.exit.if.then250_crit_edge, label %if.end

mmc_spi_readbytes.exit.if.then250_crit_edge:      ; preds = %mmc_spi_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.end:                                           ; preds = %mmc_spi_readbytes.exit
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp19.not = icmp eq i8 %29, -1
  br i1 %cmp19.not, label %for.cond, label %if.end.checkstatus_crit_edge

if.end.checkstatus_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %checkstatus

checkstatus:                                      ; preds = %if.end.checkstatus_crit_edge, %while.end.checkstatus_crit_edge
  %value.0 = phi i32 [ 0, %while.end.checkstatus_crit_edge ], [ %call.i, %if.end.checkstatus_crit_edge ]
  %end.0 = phi ptr [ %add.ptr, %while.end.checkstatus_crit_edge ], [ %add.ptr11, %if.end.checkstatus_crit_edge ]
  %cp.1 = phi ptr [ %cp.0.lcssa, %while.end.checkstatus_crit_edge ], [ %16, %if.end.checkstatus_crit_edge ]
  %30 = ptrtoint ptr %cp.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cp.1, align 1
  %conv24 = zext i8 %31 to i32
  %and = and i32 %conv24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %checkstatus
  %incdec.ptr26 = getelementptr i8, ptr %cp.1, i32 1
  %conv24.tr = zext i8 %31 to i16
  %conv28 = shl nuw i16 %conv24.tr, 8
  %cmp29 = icmp eq ptr %incdec.ptr26, %end.0
  br i1 %cmp29, label %if.then31, label %if.then25.if.end41_crit_edge

if.then25.if.end41_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then31:                                        ; preds = %if.then25
  %len18.i363 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %32 = ptrtoint ptr %len18.i363 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %len18.i363, align 4
  %dma_dev.i364 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %33 = ptrtoint ptr %dma_dev.i364 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_dev.i364, align 4
  %tobool19.not.i365 = icmp eq ptr %34, null
  br i1 %tobool19.not.i365, label %if.then31.if.end22.i372_crit_edge, label %if.then20.i367

if.then31.if.end22.i372_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i372

if.then20.i367:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma.i366 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %35 = ptrtoint ptr %data_dma.i366 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_dma.i366, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %34, i32 noundef %36, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i372

if.end22.i372:                                    ; preds = %if.then20.i367, %if.then31.if.end22.i372_crit_edge
  %spi.i368 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %37 = ptrtoint ptr %spi.i368 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi.i368, align 4
  %readback.i369 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  %call.i370 = tail call i32 @spi_sync_locked(ptr noundef %38, ptr noundef %readback.i369) #8
  %39 = ptrtoint ptr %dma_dev.i364 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_dev.i364, align 4
  %tobool24.not.i371 = icmp eq ptr %40, null
  br i1 %tobool24.not.i371, label %if.end22.i372.mmc_spi_readbytes.exit375_crit_edge, label %if.then25.i374

if.end22.i372.mmc_spi_readbytes.exit375_crit_edge: ; preds = %if.end22.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit375

if.then25.i374:                                   ; preds = %if.end22.i372
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma27.i373 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %41 = ptrtoint ptr %data_dma27.i373 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_dma27.i373, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %40, i32 noundef %42, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit375

mmc_spi_readbytes.exit375:                        ; preds = %if.then25.i374, %if.end22.i372.mmc_spi_readbytes.exit375_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %cmp33 = icmp slt i32 %call.i370, 0
  br i1 %cmp33, label %mmc_spi_readbytes.exit375.if.then250_crit_edge, label %if.end36

mmc_spi_readbytes.exit375.if.then250_crit_edge:   ; preds = %mmc_spi_readbytes.exit375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.end36:                                         ; preds = %mmc_spi_readbytes.exit375
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %add.ptr40 = getelementptr i8, ptr %44, i32 1
  br label %if.end41

if.end41:                                         ; preds = %if.end36, %if.then25.if.end41_crit_edge
  %value.1 = phi i32 [ %call.i370, %if.end36 ], [ %value.0, %if.then25.if.end41_crit_edge ]
  %end.1 = phi ptr [ %add.ptr40, %if.end36 ], [ %end.0, %if.then25.if.end41_crit_edge ]
  %cp.2 = phi ptr [ %44, %if.end36 ], [ %incdec.ptr26, %if.then25.if.end41_crit_edge ]
  %45 = ptrtoint ptr %cp.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cp.2, align 1
  %conv43 = zext i8 %46 to i16
  %or = or i16 %conv28, %conv43
  %conv47421 = zext i16 %or to i32
  %and48422 = and i32 %conv47421, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48422)
  %tobool49.not423 = icmp eq i32 %and48422, 0
  br i1 %tobool49.not423, label %if.end41.while.end55_crit_edge, label %if.end41.while.body50_crit_edge

if.end41.while.body50_crit_edge:                  ; preds = %if.end41
  br label %while.body50

if.end41.while.end55_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end55

while.body50:                                     ; preds = %while.body50.while.body50_crit_edge, %if.end41.while.body50_crit_edge
  %rotator.0425 = phi i16 [ %shl53, %while.body50.while.body50_crit_edge ], [ %or, %if.end41.while.body50_crit_edge ]
  %bitshift.0424 = phi i32 [ %inc51, %while.body50.while.body50_crit_edge ], [ 0, %if.end41.while.body50_crit_edge ]
  %inc51 = add i32 %bitshift.0424, 1
  %shl53 = shl i16 %rotator.0425, 1
  %conv47 = zext i16 %shl53 to i32
  %and48 = and i32 %conv47, 32768
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %while.body50.while.end55_crit_edge, label %while.body50.while.body50_crit_edge

while.body50.while.body50_crit_edge:              ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body50

while.body50.while.end55_crit_edge:               ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end55

while.end55:                                      ; preds = %while.body50.while.end55_crit_edge, %if.end41.while.end55_crit_edge
  %bitshift.0.lcssa = phi i32 [ 0, %if.end41.while.end55_crit_edge ], [ %inc51, %while.body50.while.end55_crit_edge ]
  %rotator.0.lcssa = phi i16 [ %or, %if.end41.while.end55_crit_edge ], [ %shl53, %while.body50.while.end55_crit_edge ]
  %conv47.lcssa = phi i32 [ %conv47421, %if.end41.while.end55_crit_edge ], [ %conv47, %while.body50.while.end55_crit_edge ]
  %47 = lshr i32 %conv47.lcssa, 8
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %48 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %resp, align 4
  %49 = shl i16 %rotator.0.lcssa, 8
  br label %if.end62

if.else:                                          ; preds = %checkstatus
  call void @__sanitizer_cov_trace_pc() #10
  %resp60 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %50 = ptrtoint ptr %resp60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv24, ptr %resp60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else, %while.end55
  %value.2 = phi i32 [ %value.1, %while.end55 ], [ %value.0, %if.else ]
  %bitshift.1 = phi i32 [ %bitshift.0.lcssa, %while.end55 ], [ 0, %if.else ]
  %leftover.0 = phi i16 [ %49, %while.end55 ], [ 0, %if.else ]
  %end.2 = phi ptr [ %end.1, %while.end55 ], [ %end.0, %if.else ]
  %cp.2.pn = phi ptr [ %cp.2, %while.end55 ], [ %cp.1, %if.else ]
  %end.2443 = ptrtoint ptr %end.2 to i32
  %cp.2.pn444 = ptrtoint ptr %cp.2.pn to i32
  %cp.3 = getelementptr i8, ptr %cp.2.pn, i32 1
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %51 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %error, align 4
  %resp63 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %52 = ptrtoint ptr %resp63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resp63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp65.not = icmp eq i32 %53, 0
  br i1 %cmp65.not, label %if.end62.if.end95_crit_edge, label %if.then67

if.end62.if.end95_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then67:                                        ; preds = %if.end62
  %and70 = and i32 %53, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else73, label %if.then67.if.end95_crit_edge

if.then67.if.end95_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.else73:                                        ; preds = %if.then67
  %and76 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else79, label %if.else73.if.end95_crit_edge

if.else73.if.end95_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.else79:                                        ; preds = %if.else73
  %and82 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else85, label %if.else79.if.end95_crit_edge

if.else79.if.end95_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.else85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #10
  %and88 = and i32 %53, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %spec.select = select i1 %tobool89.not, i32 %value.2, i32 -5
  br label %if.end95

if.end95:                                         ; preds = %if.else85, %if.else79.if.end95_crit_edge, %if.else73.if.end95_crit_edge, %if.then67.if.end95_crit_edge, %if.end62.if.end95_crit_edge
  %value.3 = phi i32 [ %value.2, %if.end62.if.end95_crit_edge ], [ -14, %if.then67.if.end95_crit_edge ], [ -38, %if.else73.if.end95_crit_edge ], [ -84, %if.else79.if.end95_crit_edge ], [ %spec.select, %if.else85 ]
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %and96 = and i32 %55, 1920
  %56 = add nsw i32 %and96, -128
  %57 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 24)
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %57, label %do.body [
    i32 4, label %while.cond97.preheader
    i32 1, label %sw.bb116
    i32 2, label %sw.bb152
    i32 0, label %if.end95.sw.epilog_crit_edge
  ]

if.end95.sw.epilog_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.cond97.preheader:                           ; preds = %if.end95
  %cmp98434 = icmp ult ptr %cp.3, %end.2
  br i1 %cmp98434, label %land.rhs100.preheader, label %while.cond97.preheader.while.end107_crit_edge

while.cond97.preheader.while.end107_crit_edge:    ; preds = %while.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end107

land.rhs100.preheader:                            ; preds = %while.cond97.preheader
  %59 = sub i32 %end.2443, %cp.2.pn444
  %uglygep = getelementptr i8, ptr %cp.2.pn, i32 %59
  br label %land.rhs100

land.rhs100:                                      ; preds = %while.body105.land.rhs100_crit_edge, %land.rhs100.preheader
  %cp.4435 = phi ptr [ %incdec.ptr106, %while.body105.land.rhs100_crit_edge ], [ %cp.3, %land.rhs100.preheader ]
  %60 = ptrtoint ptr %cp.4435 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cp.4435, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp102 = icmp eq i8 %61, 0
  br i1 %cmp102, label %while.body105, label %land.rhs100.while.end107_crit_edge

land.rhs100.while.end107_crit_edge:               ; preds = %land.rhs100
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end107

while.body105:                                    ; preds = %land.rhs100
  %incdec.ptr106 = getelementptr i8, ptr %cp.4435, i32 1
  %exitcond445.not = icmp eq ptr %incdec.ptr106, %uglygep
  br i1 %exitcond445.not, label %while.body105.while.end107_crit_edge, label %while.body105.land.rhs100_crit_edge

while.body105.land.rhs100_crit_edge:              ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs100

while.body105.while.end107_crit_edge:             ; preds = %while.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end107

while.end107:                                     ; preds = %while.body105.while.end107_crit_edge, %land.rhs100.while.end107_crit_edge, %while.cond97.preheader.while.end107_crit_edge
  %cp.4.lcssa = phi ptr [ %cp.3, %while.cond97.preheader.while.end107_crit_edge ], [ %uglygep, %while.body105.while.end107_crit_edge ], [ %cp.4435, %land.rhs100.while.end107_crit_edge ]
  %cmp108 = icmp eq ptr %cp.4.lcssa, %end.2
  br i1 %cmp108, label %if.else.i, label %while.end107.sw.epilog_crit_edge

while.end107.sw.epilog_crit_edge:                 ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else.i:                                        ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #10
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %62 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool111.not = icmp eq i32 %63, 0
  %spec.select356 = select i1 %tobool111.not, i32 3000, i32 %63
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.select356) #8
  %call.i376 = tail call fastcc i32 @mmc_spi_skip(ptr noundef %host, i32 noundef %call2.i, i32 noundef 29, i8 noundef zeroext 0) #8
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end95
  %cmp117 = icmp eq ptr %cp.3, %end.2
  br i1 %cmp117, label %if.then119, label %sw.bb116.if.end129_crit_edge

sw.bb116.if.end129_crit_edge:                     ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then119:                                       ; preds = %sw.bb116
  %len18.i377 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %64 = ptrtoint ptr %len18.i377 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %len18.i377, align 4
  %dma_dev.i378 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %65 = ptrtoint ptr %dma_dev.i378 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_dev.i378, align 4
  %tobool19.not.i379 = icmp eq ptr %66, null
  br i1 %tobool19.not.i379, label %if.then119.if.end22.i386_crit_edge, label %if.then20.i381

if.then119.if.end22.i386_crit_edge:               ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i386

if.then20.i381:                                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma.i380 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %67 = ptrtoint ptr %data_dma.i380 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data_dma.i380, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %66, i32 noundef %68, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i386

if.end22.i386:                                    ; preds = %if.then20.i381, %if.then119.if.end22.i386_crit_edge
  %spi.i382 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %69 = ptrtoint ptr %spi.i382 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi.i382, align 4
  %readback.i383 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  %call.i384 = tail call i32 @spi_sync_locked(ptr noundef %70, ptr noundef %readback.i383) #8
  %71 = ptrtoint ptr %dma_dev.i378 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dma_dev.i378, align 4
  %tobool24.not.i385 = icmp eq ptr %72, null
  br i1 %tobool24.not.i385, label %if.end22.i386.mmc_spi_readbytes.exit389_crit_edge, label %if.then25.i388

if.end22.i386.mmc_spi_readbytes.exit389_crit_edge: ; preds = %if.end22.i386
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit389

if.then25.i388:                                   ; preds = %if.end22.i386
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma27.i387 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %73 = ptrtoint ptr %data_dma27.i387 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_dma27.i387, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %72, i32 noundef %74, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit389

mmc_spi_readbytes.exit389:                        ; preds = %if.then25.i388, %if.end22.i386.mmc_spi_readbytes.exit389_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %cmp121 = icmp slt i32 %call.i384, 0
  br i1 %cmp121, label %mmc_spi_readbytes.exit389.if.then250_crit_edge, label %if.end124

mmc_spi_readbytes.exit389.if.then250_crit_edge:   ; preds = %mmc_spi_readbytes.exit389
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.end124:                                        ; preds = %mmc_spi_readbytes.exit389
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end124, %sw.bb116.if.end129_crit_edge
  %value.4 = phi i32 [ %call.i384, %if.end124 ], [ %value.3, %sw.bb116.if.end129_crit_edge ]
  %cp.5 = phi ptr [ %76, %if.end124 ], [ %cp.3, %sw.bb116.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitshift.1)
  %tobool130.not = icmp eq i32 %bitshift.1, 0
  %77 = ptrtoint ptr %cp.5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cp.5, align 1
  %conv146 = zext i8 %78 to i32
  br i1 %tobool130.not, label %if.else145, label %if.then131

if.then131:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %shl136 = shl i32 %conv146, %bitshift.1
  %79 = trunc i32 %shl136 to i16
  %.masked = and i16 %79, -256
  %80 = or i16 %.masked, %leftover.0
  %and141 = zext i16 %80 to i32
  %81 = ptrtoint ptr %resp63 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %resp63, align 4
  %or144 = or i32 %82, %and141
  store i32 %or144, ptr %resp63, align 4
  br label %sw.epilog

if.else145:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %shl147 = shl nuw nsw i32 %conv146, 8
  %83 = ptrtoint ptr %resp63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %resp63, align 4
  %or150 = or i32 %shl147, %84
  store i32 %or150, ptr %resp63, align 4
  br label %sw.epilog

sw.bb152:                                         ; preds = %if.end95
  %arrayidx157 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx157, align 4
  %len18.i390 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %dma_dev.i391 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %data_dma.i393 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %spi.i395 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %readback.i396 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitshift.1)
  %tobool178.not = icmp eq i32 %bitshift.1, 0
  br label %for.body161

for.body161:                                      ; preds = %for.inc201.for.body161_crit_edge, %sw.bb152
  %cp.6433 = phi ptr [ %cp.3, %sw.bb152 ], [ %cp.8, %for.inc201.for.body161_crit_edge ]
  %end.3432 = phi ptr [ %end.2, %sw.bb152 ], [ %end.4, %for.inc201.for.body161_crit_edge ]
  %i.1431 = phi i32 [ 0, %sw.bb152 ], [ %inc202, %for.inc201.for.body161_crit_edge ]
  %rotator.1430 = phi i16 [ %leftover.0, %sw.bb152 ], [ %rotator.2, %for.inc201.for.body161_crit_edge ]
  %value.5429 = phi i32 [ %value.3, %sw.bb152 ], [ %value.6, %for.inc201.for.body161_crit_edge ]
  %86 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx157, align 4
  %shl164 = shl i32 %87, 8
  store i32 %shl164, ptr %arrayidx157, align 4
  %cmp165 = icmp eq ptr %cp.6433, %end.3432
  br i1 %cmp165, label %if.then167, label %for.body161.if.end177_crit_edge

for.body161.if.end177_crit_edge:                  ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then167:                                       ; preds = %for.body161
  %88 = ptrtoint ptr %len18.i390 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %len18.i390, align 4
  %89 = ptrtoint ptr %dma_dev.i391 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dma_dev.i391, align 4
  %tobool19.not.i392 = icmp eq ptr %90, null
  br i1 %tobool19.not.i392, label %if.then167.if.end22.i399_crit_edge, label %if.then20.i394

if.then167.if.end22.i399_crit_edge:               ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i399

if.then20.i394:                                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %data_dma.i393 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_dma.i393, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %90, i32 noundef %92, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i399

if.end22.i399:                                    ; preds = %if.then20.i394, %if.then167.if.end22.i399_crit_edge
  %93 = ptrtoint ptr %spi.i395 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %spi.i395, align 4
  %call.i397 = tail call i32 @spi_sync_locked(ptr noundef %94, ptr noundef %readback.i396) #8
  %95 = ptrtoint ptr %dma_dev.i391 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_dev.i391, align 4
  %tobool24.not.i398 = icmp eq ptr %96, null
  br i1 %tobool24.not.i398, label %if.end22.i399.mmc_spi_readbytes.exit402_crit_edge, label %if.then25.i401

if.end22.i399.mmc_spi_readbytes.exit402_crit_edge: ; preds = %if.end22.i399
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit402

if.then25.i401:                                   ; preds = %if.end22.i399
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %data_dma.i393 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_dma.i393, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %96, i32 noundef %98, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit402

mmc_spi_readbytes.exit402:                        ; preds = %if.then25.i401, %if.end22.i399.mmc_spi_readbytes.exit402_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %cmp169 = icmp slt i32 %call.i397, 0
  br i1 %cmp169, label %mmc_spi_readbytes.exit402.if.then250_crit_edge, label %if.end172

mmc_spi_readbytes.exit402.if.then250_crit_edge:   ; preds = %mmc_spi_readbytes.exit402
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.end172:                                        ; preds = %mmc_spi_readbytes.exit402
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %add.ptr176 = getelementptr i8, ptr %100, i32 1
  br label %if.end177

if.end177:                                        ; preds = %if.end172, %for.body161.if.end177_crit_edge
  %value.6 = phi i32 [ %call.i397, %if.end172 ], [ %value.5429, %for.body161.if.end177_crit_edge ]
  %end.4 = phi ptr [ %add.ptr176, %if.end172 ], [ %end.3432, %for.body161.if.end177_crit_edge ]
  %cp.7 = phi ptr [ %100, %if.end172 ], [ %cp.6433, %for.body161.if.end177_crit_edge ]
  %101 = ptrtoint ptr %cp.7 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %cp.7, align 1
  %conv196 = zext i8 %102 to i32
  br i1 %tobool178.not, label %if.else194, label %if.then179

if.then179:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  %shl182 = shl i32 %conv196, %bitshift.1
  %103 = trunc i32 %shl182 to i16
  %conv185 = or i16 %rotator.1430, %103
  %104 = lshr i16 %conv185, 8
  %105 = zext i16 %104 to i32
  %106 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx157, align 4
  %or190 = or i32 %107, %105
  store i32 %or190, ptr %arrayidx157, align 4
  %shl192 = shl i16 %conv185, 8
  br label %for.inc201

if.else194:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx157, align 4
  %or199 = or i32 %109, %conv196
  store i32 %or199, ptr %arrayidx157, align 4
  br label %for.inc201

for.inc201:                                       ; preds = %if.else194, %if.then179
  %rotator.2 = phi i16 [ %shl192, %if.then179 ], [ %rotator.1430, %if.else194 ]
  %cp.8 = getelementptr i8, ptr %cp.7, i32 1
  %inc202 = add nuw nsw i32 %i.1431, 1
  %exitcond442.not = icmp eq i32 %inc202, 4
  br i1 %exitcond442.not, label %for.inc201.sw.epilog_crit_edge, label %for.inc201.for.body161_crit_edge

for.inc201.for.body161_crit_edge:                 ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body161

for.inc201.sw.epilog_crit_edge:                   ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_response_get.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_response_get, %if.then208)) #8
          to label %do.end [label %if.then208], !srcloc !148

if.then208:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %spi = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %110 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %spi, align 4
  %112 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i, align 4
  %and210 = and i32 %113, 1920
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_response_get.__UNIQUE_ID_ddebug275, ptr noundef %111, ptr noundef nonnull @.str.26, i32 noundef %and210) #8
  br label %do.end

do.end:                                           ; preds = %if.then208, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %value.3)
  %cmp212 = icmp sgt i32 %value.3, -1
  %spec.select414 = select i1 %cmp212, i32 -22, i32 %value.3
  br label %if.then250

sw.epilog:                                        ; preds = %for.inc201.sw.epilog_crit_edge, %if.else145, %if.then131, %if.else.i, %while.end107.sw.epilog_crit_edge, %if.end95.sw.epilog_crit_edge
  %value.7 = phi i32 [ %value.3, %if.end95.sw.epilog_crit_edge ], [ %value.4, %if.then131 ], [ %value.4, %if.else145 ], [ %value.3, %if.else.i ], [ %value.3, %while.end107.sw.epilog_crit_edge ], [ %value.6, %for.inc201.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value.7)
  %cmp216 = icmp slt i32 %value.7, 0
  br i1 %cmp216, label %do.body219, label %if.end242.thread448

do.body219:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_response_get.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_response_get, %if.end242.thread)) #8
          to label %if.end242 [label %if.end242.thread], !srcloc !148

if.end242.thread:                                 ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %spi232 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %114 = ptrtoint ptr %spi232 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %spi232, align 4
  %116 = ptrtoint ptr %resp63 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %resp63, align 4
  %arrayidx238 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx238, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_response_get.__UNIQUE_ID_ddebug276, ptr noundef %115, ptr noundef nonnull @.str.27, ptr noundef nonnull %tag, i32 noundef %117, i32 noundef %119) #8
  br label %if.then250

if.end242:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_on)
  %tobool245.not = icmp eq i32 %cs_on, 0
  %or.cond = or i1 %tobool245.not, %cmp216
  br i1 %or.cond, label %if.end242.if.then250_crit_edge, label %if.end242.cleanup_crit_edge

if.end242.cleanup_crit_edge:                      ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end242.if.then250_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then250

if.end242.thread448:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_on)
  %tobool245.not449 = icmp eq i32 %cs_on, 0
  %or.cond450 = or i1 %tobool245.not449, %cmp216
  br i1 %or.cond450, label %if.end242.thread448.if.end252_crit_edge, label %if.end242.thread448.cleanup_crit_edge

if.end242.thread448.cleanup_crit_edge:            ; preds = %if.end242.thread448
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end242.thread448.if.end252_crit_edge:          ; preds = %if.end242.thread448
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

if.then250:                                       ; preds = %if.end242.if.then250_crit_edge, %if.end242.thread, %do.end, %mmc_spi_readbytes.exit402.if.then250_crit_edge, %mmc_spi_readbytes.exit389.if.then250_crit_edge, %mmc_spi_readbytes.exit375.if.then250_crit_edge, %mmc_spi_readbytes.exit.if.then250_crit_edge, %for.cond.if.then250_crit_edge
  %value.8413 = phi i32 [ %value.7, %if.end242.thread ], [ %call.i384, %mmc_spi_readbytes.exit389.if.then250_crit_edge ], [ %call.i370, %mmc_spi_readbytes.exit375.if.then250_crit_edge ], [ %spec.select414, %do.end ], [ %value.7, %if.end242.if.then250_crit_edge ], [ %call.i397, %mmc_spi_readbytes.exit402.if.then250_crit_edge ], [ %call.i, %mmc_spi_readbytes.exit.if.then250_crit_edge ], [ -110, %for.cond.if.then250_crit_edge ]
  %error251 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %120 = ptrtoint ptr %error251 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %value.8413, ptr %error251, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end242.thread448.if.end252_crit_edge
  %value.8412 = phi i32 [ %value.8413, %if.then250 ], [ %value.7, %if.end242.thread448.if.end252_crit_edge ]
  %spi.i403 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %121 = ptrtoint ptr %spi.i403 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spi.i403, align 4
  %call.i404 = call i32 @spi_setup(ptr noundef %122) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.end242.thread448.cleanup_crit_edge, %if.end242.cleanup_crit_edge
  %retval.0 = phi i32 [ %value.8412, %if.end252 ], [ %value.7, %if.end242.cleanup_crit_edge ], [ %value.7, %if.end242.thread448.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tag) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_skip(ptr noundef %host, i32 noundef %timeout, i32 noundef %n, i8 noundef zeroext %byte) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %len18.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %dma_dev.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %data_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %spi.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %readback.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp226.not = icmp eq i32 %n, 0
  %3 = add i32 %2, %timeout
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %len18.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %n, ptr %len18.i, align 4
  %5 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_dev.i, align 4
  %tobool19.not.i = icmp eq ptr %6, null
  br i1 %tobool19.not.i, label %do.body.if.end22.i_crit_edge, label %if.then20.i

do.body.if.end22.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %6, i32 noundef %8, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %do.body.if.end22.i_crit_edge
  %9 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi.i, align 4
  %call.i = tail call i32 @spi_sync_locked(ptr noundef %10, ptr noundef %readback.i) #8
  %11 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_dev.i, align 4
  %tobool24.not.i = icmp eq ptr %12, null
  br i1 %tobool24.not.i, label %if.end22.i.mmc_spi_readbytes.exit_crit_edge, label %if.then25.i

if.end22.i.mmc_spi_readbytes.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %12, i32 noundef %14, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit

mmc_spi_readbytes.exit:                           ; preds = %if.then25.i, %if.end22.i.mmc_spi_readbytes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mmc_spi_readbytes.exit.cleanup14_crit_edge, label %for.cond.preheader

mmc_spi_readbytes.exit.cleanup14_crit_edge:       ; preds = %mmc_spi_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

for.cond.preheader:                               ; preds = %mmc_spi_readbytes.exit
  br i1 %cmp226.not, label %for.cond.preheader.do.cond_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.cond_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.cond.do.cond_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.do.cond_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.027
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %byte)
  %cmp4.not = icmp eq i8 %16, %byte
  br i1 %cmp4.not, label %for.cond, label %if.then6

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %16 to i32
  br label %cleanup14

do.cond:                                          ; preds = %for.cond.do.cond_crit_edge, %for.cond.preheader.do.cond_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 197, i32 noundef 0) #8
  %call.i23 = tail call i32 @__cond_resched() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %17, %3
  %cmp12 = icmp slt i32 %sub, 0
  br i1 %cmp12, label %do.cond.do.body_crit_edge, label %do.cond.cleanup14_crit_edge

do.cond.cleanup14_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup14:                                        ; preds = %do.cond.cleanup14_crit_edge, %if.then6, %mmc_spi_readbytes.exit.cleanup14_crit_edge
  %retval.2 = phi i32 [ %conv, %if.then6 ], [ %call.i, %mmc_spi_readbytes.exit.cleanup14_crit_edge ], [ -110, %do.cond.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_writeblock(ptr noundef %host, ptr nocapture noundef %t, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %data = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %use_spi_crc = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %use_spi_crc to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %use_spi_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %8, i32 noundef %10) #8
  %crc_val = getelementptr inbounds %struct.scratch, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %crc_val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call, ptr %crc_val, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_dev = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %12 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_dev, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %14 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %13, i32 noundef %15, i32 noundef 32, i32 noundef 0) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %m = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9
  %call6 = tail call i32 @spi_sync_locked(ptr noundef %1, ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_writeblock.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_writeblock, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !148

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_writeblock.__UNIQUE_ID_ddebug279, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %call6) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma19 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %18 = ptrtoint ptr %data_dma19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_dma19, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %17, i32 noundef %19, i32 noundef 32, i32 noundef 0) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %3, align 1
  %or = or i32 %21, -536870912
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end20
  %pattern.0 = phi i32 [ %or, %if.end20 ], [ %shl, %while.cond.while.cond_crit_edge ]
  %tobool23.not = icmp sgt i32 %pattern.0, -1
  %shl = shl i32 %pattern.0, 1
  br i1 %tobool23.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %shr = lshr i32 %pattern.0, 27
  %22 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %shr, label %sw.default [
    i32 5, label %if.end46
    i32 11, label %while.end.do.body28_crit_edge
    i32 13, label %sw.bb25
  ]

while.end.do.body28_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

sw.bb25:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

sw.default:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

do.body28:                                        ; preds = %sw.default, %sw.bb25, %while.end.do.body28_crit_edge
  %status.0.ph = phi i32 [ -5, %sw.bb25 ], [ -71, %sw.default ], [ -84, %while.end.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_writeblock.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_writeblock, %if.then40)) #8
          to label %cleanup [label %if.then40], !srcloc !148

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 2
  %conv = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_writeblock.__UNIQUE_ID_ddebug280, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %status.0.ph) #8
  br label %cleanup

if.end46:                                         ; preds = %while.end
  %len47 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %25 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len47, align 4
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %26
  store ptr %add.ptr, ptr %t, align 4
  %29 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_dev, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %if.end46.if.end53_crit_edge, label %if.then51

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %tx_dma = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 3
  %31 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_dma, align 4
  %add = add i32 %32, %26
  store i32 %add, ptr %tx_dma, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end46.if.end53_crit_edge
  %arrayidx57 = getelementptr [29 x i8], ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx57, align 1
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool60.not = icmp eq i8 %35, 0
  br i1 %tobool60.not, label %for.cond, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end53
  %arrayidx57.1 = getelementptr [29 x i8], ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx57.1, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool60.not.1 = icmp eq i8 %38, 0
  br i1 %tobool60.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx57.2 = getelementptr [29 x i8], ptr %3, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx57.2, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool60.not.2 = icmp eq i8 %41, 0
  br i1 %tobool60.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx57.3 = getelementptr [29 x i8], ptr %3, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx57.3, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool60.not.3 = icmp eq i8 %44, 0
  br i1 %tobool60.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx57.4 = getelementptr [29 x i8], ptr %3, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx57.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx57.4, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool60.not.4 = icmp eq i8 %47, 0
  br i1 %tobool60.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx57.5 = getelementptr [29 x i8], ptr %3, i32 0, i32 9
  %48 = ptrtoint ptr %arrayidx57.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx57.5, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool60.not.5 = icmp eq i8 %50, 0
  br i1 %tobool60.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx57.6 = getelementptr [29 x i8], ptr %3, i32 0, i32 10
  %51 = ptrtoint ptr %arrayidx57.6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx57.6, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool60.not.6 = icmp eq i8 %53, 0
  br i1 %tobool60.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx57.7 = getelementptr [29 x i8], ptr %3, i32 0, i32 11
  %54 = ptrtoint ptr %arrayidx57.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx57.7, align 1
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool60.not.7 = icmp eq i8 %56, 0
  br i1 %tobool60.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx57.8 = getelementptr [29 x i8], ptr %3, i32 0, i32 12
  %57 = ptrtoint ptr %arrayidx57.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx57.8, align 1
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool60.not.8 = icmp eq i8 %59, 0
  br i1 %tobool60.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx57.9 = getelementptr [29 x i8], ptr %3, i32 0, i32 13
  %60 = ptrtoint ptr %arrayidx57.9 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx57.9, align 1
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool60.not.9 = icmp eq i8 %62, 0
  br i1 %tobool60.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx57.10 = getelementptr [29 x i8], ptr %3, i32 0, i32 14
  %63 = ptrtoint ptr %arrayidx57.10 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx57.10, align 1
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool60.not.10 = icmp eq i8 %65, 0
  br i1 %tobool60.not.10, label %for.cond.10, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx57.11 = getelementptr [29 x i8], ptr %3, i32 0, i32 15
  %66 = ptrtoint ptr %arrayidx57.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx57.11, align 1
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool60.not.11 = icmp eq i8 %68, 0
  br i1 %tobool60.not.11, label %for.cond.11, label %for.cond.10.cleanup_crit_edge

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx57.12 = getelementptr [29 x i8], ptr %3, i32 0, i32 16
  %69 = ptrtoint ptr %arrayidx57.12 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx57.12, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool60.not.12 = icmp eq i8 %71, 0
  br i1 %tobool60.not.12, label %for.cond.12, label %for.cond.11.cleanup_crit_edge

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx57.13 = getelementptr [29 x i8], ptr %3, i32 0, i32 17
  %72 = ptrtoint ptr %arrayidx57.13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx57.13, align 1
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool60.not.13 = icmp eq i8 %74, 0
  br i1 %tobool60.not.13, label %for.cond.13, label %for.cond.12.cleanup_crit_edge

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx57.14 = getelementptr [29 x i8], ptr %3, i32 0, i32 18
  %75 = ptrtoint ptr %arrayidx57.14 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx57.14, align 1
  %77 = and i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool60.not.14 = icmp eq i8 %77, 0
  br i1 %tobool60.not.14, label %for.cond.14, label %for.cond.13.cleanup_crit_edge

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx57.15 = getelementptr [29 x i8], ptr %3, i32 0, i32 19
  %78 = ptrtoint ptr %arrayidx57.15 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx57.15, align 1
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool60.not.15 = icmp eq i8 %80, 0
  br i1 %tobool60.not.15, label %for.cond.15, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %arrayidx57.16 = getelementptr [29 x i8], ptr %3, i32 0, i32 20
  %81 = ptrtoint ptr %arrayidx57.16 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx57.16, align 1
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool60.not.16 = icmp eq i8 %83, 0
  br i1 %tobool60.not.16, label %for.cond.16, label %for.cond.15.cleanup_crit_edge

for.cond.15.cleanup_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.16:                                      ; preds = %for.cond.15
  %arrayidx57.17 = getelementptr [29 x i8], ptr %3, i32 0, i32 21
  %84 = ptrtoint ptr %arrayidx57.17 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx57.17, align 1
  %86 = and i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool60.not.17 = icmp eq i8 %86, 0
  br i1 %tobool60.not.17, label %for.cond.17, label %for.cond.16.cleanup_crit_edge

for.cond.16.cleanup_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.17:                                      ; preds = %for.cond.16
  %arrayidx57.18 = getelementptr [29 x i8], ptr %3, i32 0, i32 22
  %87 = ptrtoint ptr %arrayidx57.18 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx57.18, align 1
  %89 = and i8 %88, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool60.not.18 = icmp eq i8 %89, 0
  br i1 %tobool60.not.18, label %for.cond.18, label %for.cond.17.cleanup_crit_edge

for.cond.17.cleanup_crit_edge:                    ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.18:                                      ; preds = %for.cond.17
  %arrayidx57.19 = getelementptr [29 x i8], ptr %3, i32 0, i32 23
  %90 = ptrtoint ptr %arrayidx57.19 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx57.19, align 1
  %92 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool60.not.19 = icmp eq i8 %92, 0
  br i1 %tobool60.not.19, label %for.cond.19, label %for.cond.18.cleanup_crit_edge

for.cond.18.cleanup_crit_edge:                    ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.19:                                      ; preds = %for.cond.18
  %arrayidx57.20 = getelementptr [29 x i8], ptr %3, i32 0, i32 24
  %93 = ptrtoint ptr %arrayidx57.20 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx57.20, align 1
  %95 = and i8 %94, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool60.not.20 = icmp eq i8 %95, 0
  br i1 %tobool60.not.20, label %for.cond.20, label %for.cond.19.cleanup_crit_edge

for.cond.19.cleanup_crit_edge:                    ; preds = %for.cond.19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.20:                                      ; preds = %for.cond.19
  %arrayidx57.21 = getelementptr [29 x i8], ptr %3, i32 0, i32 25
  %96 = ptrtoint ptr %arrayidx57.21 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx57.21, align 1
  %98 = and i8 %97, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool60.not.21 = icmp eq i8 %98, 0
  br i1 %tobool60.not.21, label %for.cond.21, label %for.cond.20.cleanup_crit_edge

for.cond.20.cleanup_crit_edge:                    ; preds = %for.cond.20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.21:                                      ; preds = %for.cond.20
  %arrayidx57.22 = getelementptr [29 x i8], ptr %3, i32 0, i32 26
  %99 = ptrtoint ptr %arrayidx57.22 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx57.22, align 1
  %101 = and i8 %100, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool60.not.22 = icmp eq i8 %101, 0
  br i1 %tobool60.not.22, label %for.cond.22, label %for.cond.21.cleanup_crit_edge

for.cond.21.cleanup_crit_edge:                    ; preds = %for.cond.21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.22:                                      ; preds = %for.cond.21
  %arrayidx57.23 = getelementptr [29 x i8], ptr %3, i32 0, i32 27
  %102 = ptrtoint ptr %arrayidx57.23 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx57.23, align 1
  %104 = and i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool60.not.23 = icmp eq i8 %104, 0
  br i1 %tobool60.not.23, label %for.cond.23, label %for.cond.22.cleanup_crit_edge

for.cond.22.cleanup_crit_edge:                    ; preds = %for.cond.22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.23:                                      ; preds = %for.cond.22
  %arrayidx57.24 = getelementptr [29 x i8], ptr %3, i32 0, i32 28
  %105 = ptrtoint ptr %arrayidx57.24 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx57.24, align 1
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool60.not.24 = icmp eq i8 %107, 0
  br i1 %tobool60.not.24, label %for.cond.24, label %for.cond.23.cleanup_crit_edge

for.cond.23.cleanup_crit_edge:                    ; preds = %for.cond.23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.24:                                      ; preds = %for.cond.23
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @mmc_spi_skip(ptr noundef %host, i32 noundef %timeout, i32 noundef 29, i8 noundef zeroext 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.24, %for.cond.23.cleanup_crit_edge, %for.cond.22.cleanup_crit_edge, %for.cond.21.cleanup_crit_edge, %for.cond.20.cleanup_crit_edge, %for.cond.19.cleanup_crit_edge, %for.cond.18.cleanup_crit_edge, %for.cond.17.cleanup_crit_edge, %for.cond.16.cleanup_crit_edge, %for.cond.15.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then40, %do.body28, %if.then12, %do.body
  %retval.0 = phi i32 [ %call.i, %for.cond.24 ], [ %call6, %if.then12 ], [ %status.0.ph, %if.then40 ], [ %call6, %do.body ], [ %status.0.ph, %do.body28 ], [ 0, %for.cond.23.cleanup_crit_edge ], [ 0, %for.cond.22.cleanup_crit_edge ], [ 0, %for.cond.21.cleanup_crit_edge ], [ 0, %for.cond.20.cleanup_crit_edge ], [ 0, %for.cond.19.cleanup_crit_edge ], [ 0, %for.cond.18.cleanup_crit_edge ], [ 0, %for.cond.17.cleanup_crit_edge ], [ 0, %for.cond.16.cleanup_crit_edge ], [ 0, %for.cond.15.cleanup_crit_edge ], [ 0, %for.cond.14.cleanup_crit_edge ], [ 0, %for.cond.13.cleanup_crit_edge ], [ 0, %for.cond.12.cleanup_crit_edge ], [ 0, %for.cond.11.cleanup_crit_edge ], [ 0, %for.cond.10.cleanup_crit_edge ], [ 0, %for.cond.9.cleanup_crit_edge ], [ 0, %for.cond.8.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_spi_readblock(ptr noundef %host, ptr nocapture noundef %t, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %data = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len18.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 10, i32 2
  %4 = ptrtoint ptr %len18.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %len18.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 12
  %5 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_dev.i, align 4
  %tobool19.not.i = icmp eq ptr %6, null
  br i1 %tobool19.not.i, label %entry.if.end22.i_crit_edge, label %if.then20.i

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then20.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %7 = ptrtoint ptr %data_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_dma.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %6, i32 noundef %8, i32 noundef 32, i32 noundef 2) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %entry.if.end22.i_crit_edge
  %9 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi1, align 4
  %readback.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 11
  %call.i = tail call i32 @spi_sync_locked(ptr noundef %10, ptr noundef %readback.i) #8
  %11 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_dev.i, align 4
  %tobool24.not.i = icmp eq ptr %12, null
  br i1 %tobool24.not.i, label %if.end22.i.mmc_spi_readbytes.exit_crit_edge, label %if.then25.i

if.end22.i.mmc_spi_readbytes.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_spi_readbytes.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma27.i = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %13 = ptrtoint ptr %data_dma27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_dma27.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %12, i32 noundef %14, i32 noundef 32, i32 noundef 2) #8
  br label %mmc_spi_readbytes.exit

mmc_spi_readbytes.exit:                           ; preds = %if.then25.i, %if.end22.i.mmc_spi_readbytes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mmc_spi_readbytes.exit.cleanup131_crit_edge, label %if.end

mmc_spi_readbytes.exit.cleanup131_crit_edge:      ; preds = %mmc_spi_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.end:                                           ; preds = %mmc_spi_readbytes.exit
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 2
  %conv = zext i8 %16 to i32
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %16, label %if.end.while.cond.preheader_crit_edge [
    i8 -1, label %if.end.if.end9_crit_edge
    i8 0, label %if.end.if.end9_crit_edge226
  ]

if.end.if.end9_crit_edge226:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge226
  %call.i209 = tail call fastcc i32 @mmc_spi_skip(ptr noundef %host, i32 noundef %timeout, i32 noundef 1, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp10 = icmp slt i32 %call.i209, 0
  br i1 %cmp10, label %do.body, label %if.end9.while.cond.preheader_crit_edge

if.end9.while.cond.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end9.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %status.0225 = phi i32 [ %call.i209, %if.end9.while.cond.preheader_crit_edge ], [ %conv, %if.end.while.cond.preheader_crit_edge ]
  %and213 = and i32 %status.0225, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool19.not214 = icmp eq i32 %and213, 0
  br i1 %tobool19.not214, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_readblock, %if.then16)) #8
          to label %cleanup131 [label %if.then16], !srcloc !148

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_readblock.__UNIQUE_ID_ddebug281, ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %call.i209, i32 noundef %call.i209) #8
  br label %cleanup131

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %status.1216 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ %status.0225, %while.cond.preheader.while.body_crit_edge ]
  %bitshift.0215 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 7, %while.cond.preheader.while.body_crit_edge ]
  %shl = shl i32 %status.1216, 1
  %dec = add i32 %bitshift.0215, -1
  %18 = and i32 %status.1216, 64
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %bitshift.0.lcssa = phi i32 [ 7, %while.cond.preheader.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %status.1.lcssa = phi i32 [ %status.0225, %while.cond.preheader.while.end_crit_edge ], [ %shl, %while.body.while.end_crit_edge ]
  %status.1.tr = trunc i32 %status.1.lcssa to i8
  %conv21 = shl i8 %status.1.tr, 1
  %19 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_dev.i, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %while.end.if.end26_crit_edge, label %if.then23

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %21 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_dma, align 4
  tail call void @dma_sync_single_for_device(ptr noundef nonnull %20, i32 noundef %22, i32 noundef 32, i32 noundef 0) #8
  %23 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_dev.i, align 4
  %rx_dma = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 4
  %25 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_dma, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef 2) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %while.end.if.end26_crit_edge
  %m = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 9
  %call27 = tail call i32 @spi_sync_locked(ptr noundef %1, ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.body31, label %if.end48

do.body31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_readblock, %if.then43)) #8
          to label %cleanup131 [label %if.then43], !srcloc !148

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_readblock.__UNIQUE_ID_ddebug282, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %call27) #8
  br label %cleanup131

if.end48:                                         ; preds = %if.end26
  %29 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_dev.i, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %if.end48.if.end57_crit_edge, label %if.then51

if.end48.if.end57_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %data_dma53 = getelementptr inbounds %struct.mmc_spi_host, ptr %host, i32 0, i32 14
  %31 = ptrtoint ptr %data_dma53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_dma53, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef nonnull %30, i32 noundef %32, i32 noundef 32, i32 noundef 0) #8
  %33 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_dev.i, align 4
  %rx_dma55 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 4
  %35 = ptrtoint ptr %rx_dma55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_dma55, align 4
  %len56 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %37 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len56, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 2) #8
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end48.if.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitshift.0.lcssa)
  %tobool58.not = icmp eq i32 %bitshift.0.lcssa, 0
  br i1 %tobool58.not, label %if.end57.if.end84_crit_edge, label %if.then59

if.end57.if.end84_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then59:                                        ; preds = %if.end57
  %sub = sub i32 8, %bitshift.0.lcssa
  %len61 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %39 = ptrtoint ptr %len61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool62.not218 = icmp eq i32 %40, 0
  br i1 %tobool62.not218, label %if.then59.for.end_crit_edge, label %for.body.preheader

if.then59.for.end_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.then59
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %41 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_buf, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %len60.0221 = phi i32 [ %dec69, %for.body.for.body_crit_edge ], [ %40, %for.body.preheader ]
  %cp.0220 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %42, %for.body.preheader ]
  %leftover.0219 = phi i8 [ %conv68, %for.body.for.body_crit_edge ], [ %conv21, %for.body.preheader ]
  %43 = ptrtoint ptr %cp.0220 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cp.0220, align 1
  %conv64 = zext i8 %44 to i32
  %shr = lshr i32 %conv64, %bitshift.0.lcssa
  %45 = trunc i32 %shr to i8
  %conv65 = or i8 %leftover.0219, %45
  %incdec.ptr = getelementptr i8, ptr %cp.0220, i32 1
  store i8 %conv65, ptr %cp.0220, align 1
  %shl67 = shl i32 %conv64, %sub
  %conv68 = trunc i32 %shl67 to i8
  %dec69 = add i32 %len60.0221, -1
  %tobool62.not = icmp eq i32 %dec69, 0
  br i1 %tobool62.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv68.le = trunc i32 %shl67 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then59.for.end_crit_edge
  %leftover.0.lcssa = phi i8 [ %conv21, %if.then59.for.end_crit_edge ], [ %conv68.le, %for.end.loopexit ]
  %crc_val = getelementptr inbounds %struct.scratch, ptr %3, i32 0, i32 2
  %46 = ptrtoint ptr %crc_val to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %crc_val, align 1
  %conv71 = zext i8 %47 to i32
  %shr72 = lshr i32 %conv71, %bitshift.0.lcssa
  %48 = trunc i32 %shr72 to i8
  %conv74 = or i8 %leftover.0.lcssa, %48
  %incdec.ptr75 = getelementptr i8, ptr %crc_val, i32 1
  store i8 %conv74, ptr %crc_val, align 1
  %shl77 = shl i32 %conv71, %sub
  %49 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr75, align 1
  %conv80 = zext i8 %50 to i32
  %shr81 = lshr i32 %conv80, %bitshift.0.lcssa
  %or82 = or i32 %shr81, %shl77
  %conv83 = trunc i32 %or82 to i8
  store i8 %conv83, ptr %incdec.ptr75, align 1
  br label %if.end84

if.end84:                                         ; preds = %for.end, %if.end57.if.end84_crit_edge
  %51 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host, align 4
  %use_spi_crc = getelementptr inbounds %struct.mmc_host, ptr %52, i32 0, i32 29
  %53 = ptrtoint ptr %use_spi_crc to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load = load i16, ptr %use_spi_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool85.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool85.not, label %if.end84.if.end122_crit_edge, label %if.then86

if.end84.if.end122_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then86:                                        ; preds = %if.end84
  %rx_buf87 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %54 = ptrtoint ptr %rx_buf87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_buf87, align 4
  %len88 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %56 = ptrtoint ptr %len88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len88, align 4
  %call89 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %55, i32 noundef %57) #8
  %crc_val94 = getelementptr inbounds %struct.scratch, ptr %3, i32 0, i32 2
  %58 = ptrtoint ptr %crc_val94 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %crc_val94, align 2
  %conv96 = zext i16 %call89 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %call89)
  %cmp97.not = icmp eq i16 %59, %call89
  br i1 %cmp97.not, label %if.then86.if.end122_crit_edge, label %do.body100

if.then86.if.end122_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.body100:                                       ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_spi_readblock, %if.then112)) #8
          to label %cleanup131 [label %if.then112], !srcloc !148

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %crc_val94 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %crc_val94, align 2
  %conv115 = zext i16 %61 to i32
  %62 = ptrtoint ptr %len88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len88, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_spi_readblock.__UNIQUE_ID_ddebug283, ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %conv115, i32 noundef %conv96, i32 noundef %63) #8
  br label %cleanup131

if.end122:                                        ; preds = %if.then86.if.end122_crit_edge, %if.end84.if.end122_crit_edge
  %len123 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %64 = ptrtoint ptr %len123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len123, align 4
  %rx_buf124 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %66 = ptrtoint ptr %rx_buf124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rx_buf124, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 %65
  store ptr %add.ptr, ptr %rx_buf124, align 4
  %68 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_dev.i, align 4
  %tobool126.not = icmp eq ptr %69, null
  br i1 %tobool126.not, label %if.end122.cleanup131_crit_edge, label %if.then127

if.end122.cleanup131_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup131

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dma129 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 4
  %70 = ptrtoint ptr %rx_dma129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_dma129, align 4
  %add = add i32 %71, %65
  store i32 %add, ptr %rx_dma129, align 4
  br label %cleanup131

cleanup131:                                       ; preds = %if.then127, %if.end122.cleanup131_crit_edge, %if.then112, %do.body100, %if.then43, %do.body31, %if.then16, %do.body, %mmc_spi_readbytes.exit.cleanup131_crit_edge
  %retval.1 = phi i32 [ %call.i, %mmc_spi_readbytes.exit.cleanup131_crit_edge ], [ %call.i209, %if.then16 ], [ %call27, %if.then43 ], [ -84, %if.then112 ], [ 0, %if.then127 ], [ 0, %if.end122.cleanup131_crit_edge ], [ %call.i209, %do.body ], [ %call27, %do.body31 ], [ -84, %do.body100 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_mmc_spi__297_1535_mmc_spi_driver_init6, !1, !"__initcall__kmod_mmc_spi__297_1535_mmc_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1535, i32 1}
!2 = !{ptr @__exitcall_mmc_spi_driver_exit, !1, !"__exitcall_mmc_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1537, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1538, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1539, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias302, !11, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1540, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1527, i32 12}
!14 = !{ptr @mmc_spi_driver, !15, !"mmc_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1525, i32 26}
!16 = !{ptr @mmc_spi_dev_ids, !17, !"mmc_spi_dev_ids", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1513, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1340, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mmc_spi_probe.__UNIQUE_ID_ddebug296, !19, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1396, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mmc_spi_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @mmc_spi_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1467, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mmc_spi_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mmc_spi_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mmc_spi_ops, !40, !"mmc_spi_ops", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1244, i32 34}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/mmc_spi.c", i32 500, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mmc_spi_command_send.__UNIQUE_ID_ddebug277, !42, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/mmc_spi.c", i32 527, i32 3}
!47 = !{ptr @mmc_spi_command_send.__UNIQUE_ID_ddebug278, !46, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/mmc_spi.c", i32 226, i32 30}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/mmc_spi.c", i32 227, i32 31}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/mmc_spi.c", i32 228, i32 30}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/mmc_spi.c", i32 229, i32 30}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/mmc_spi.c", i32 230, i32 19}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/mmc_spi.c", i32 248, i32 29}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/mmc_spi.c", i32 394, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mmc_spi_response_get.__UNIQUE_ID_ddebug275, !61, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/mmc_spi.c", i32 402, i32 3}
!66 = !{ptr @mmc_spi_response_get.__UNIQUE_ID_ddebug276, !65, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/mmc_spi.c", i32 866, i32 62}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/mmc_spi.c", i32 866, i32 72}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/mmc_spi.c", i32 924, i32 4}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug286, !72, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/mmc_spi.c", i32 949, i32 4}
!77 = !{ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug287, !76, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/mmc_spi.c", i32 965, i32 3}
!80 = !{ptr @mmc_spi_data_do.__UNIQUE_ID_ddebug288, !79, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/mmc_spi.c", i32 664, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mmc_spi_writeblock.__UNIQUE_ID_ddebug279, !84, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/mmc_spi.c", i32 715, i32 3}
!89 = !{ptr @mmc_spi_writeblock.__UNIQUE_ID_ddebug280, !88, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/mmc_spi.c", i32 772, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug281, !91, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/mmc_spi.c", i32 797, i32 3}
!96 = !{ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug282, !95, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/mmc_spi.c", i32 836, i32 4}
!99 = !{ptr @mmc_spi_readblock.__UNIQUE_ID_ddebug283, !98, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1166, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug289, !101, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!104 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1205, i32 5}
!107 = !{ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug290, !106, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1209, i32 5}
!110 = !{ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1226, i32 6}
!113 = !{ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug292, !112, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1239, i32 3}
!116 = !{ptr @mmc_spi_set_ios.__UNIQUE_ID_ddebug293, !115, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1150, i32 29}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1151, i32 29}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1152, i32 29}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1132, i32 3}
!125 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mmc_spi_initsequence._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @mmc_spi_initsequence._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1141, i32 4}
!130 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @mmc_spi_initsequence._entry.54, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @mmc_spi_initsequence._entry_ptr.57, !129, !"_entry_ptr", i1 false, i1 false}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!135 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mmc_spi_of_match_table, !138, !"mmc_spi_of_match_table", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/mmc_spi.c", i32 1519, i32 34}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148273292, i64 2148273297, i64 2148273310, i64 2148273354, i64 2148273388, i64 2148273409}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2154214663, i64 2154215155, i64 2154214700, i64 2154214756, i64 2154214790, i64 2154214814, i64 2154214855, i64 2154214876, i64 2154214904, i64 2154214938}
