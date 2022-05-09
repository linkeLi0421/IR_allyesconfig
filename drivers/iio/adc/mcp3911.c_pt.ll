; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/mcp3911.c_pt.bc'
source_filename = "../drivers/iio/adc/mcp3911.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mcp3911 = type { ptr, %struct.mutex, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_mcp3911__297_359_mcp3911_driver_init6 = internal global ptr @mcp3911_driver_init, section ".initcall6.init", align 4
@mcp3911_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp3911_id, ptr @mcp3911_probe, ptr @mcp3911_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp3911_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcp3911_driver_exit = internal global ptr @mcp3911_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [61 x i8] c"mcp3911.author=Marcus Folkesson <marcus.folkesson@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [49 x i8] c"mcp3911.author=Kent Gustavsson <kent@minoris.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [49 x i8] c"mcp3911.description=Microchip Technology MCP3911\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [37 x i8] c"mcp3911.file=drivers/iio/adc/mcp3911\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [23 x i8] c"mcp3911.license=GPL v2\00", section ".modinfo", align 1
@mcp3911_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp3911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp3911\00", [24 x i8] zeroinitializer }, align 32
@mcp3911_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@mcp3911_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get regulator (%ld)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcp3911_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/adc/mcp3911.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp3911_probe._entry_ptr = internal global ptr @mcp3911_probe._entry, section ".printk_index", align 4
@mcp3911_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get adc clk (%ld)\0A\00", [35 x i8] zeroinitializer }, align 32
@mcp3911_probe._entry_ptr.9 = internal global ptr @mcp3911_probe._entry.7, section ".printk_index", align 4
@mcp3911_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable clki: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mcp3911_probe._entry_ptr.12 = internal global ptr @mcp3911_probe._entry.10, section ".printk_index", align 4
@mcp3911_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mcp3911_read_raw, ptr null, ptr null, ptr @mcp3911_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mcp3911_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@mcp3911_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device-addr\00", [20 x i8] zeroinitializer }, align 32
@mcp3911_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid device address (%i). Must be in range 0-3.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp3911_config\00", [17 x i8] zeroinitializer }, align 32
@mcp3911_config._entry_ptr = internal global ptr @mcp3911_config._entry, section ".printk_index", align 4
@mcp3911_config.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"use device address %i\0A\00", [41 x i8] zeroinitializer }, align 32
@mcp3911_config.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.18, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"use external voltage reference\0A\00", [32 x i8] zeroinitializer }, align 32
@mcp3911_config.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.19, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"use internal voltage reference (1.2V)\0A\00", [57 x i8] zeroinitializer }, align 32
@mcp3911_config.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.20, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"use external clock as clocksource\0A\00", [61 x i8] zeroinitializer }, align 32
@mcp3911_config.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.21, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"use crystal oscillator as clocksource\0A\00", [57 x i8] zeroinitializer }, align 32
@mcp3911_read.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp3911_read\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reading 0x%x from register 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@mcp3911_write.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcp3911_write\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"writing 0x%x to register 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@mcp3911_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get vref voltage: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcp3911_read_raw\00", [47 x i8] zeroinitializer }, align 32
@mcp3911_read_raw._entry_ptr = internal global ptr @mcp3911_read_raw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"mcp3911_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 350, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"mcp3911_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 344, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 352, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mcp3911_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 338, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 258, i32 58 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 263, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 280, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 289, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"mcp3911_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 200, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"mcp3911_channels\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 195, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 307, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 211, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 213, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 218, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 225, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 228, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 234, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 237, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 70, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 77, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [29 x i8] c"../drivers/iio/adc/mcp3911.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 132, i32 5 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_mcp3911_driver_exit, ptr @__initcall__kmod_mcp3911__297_359_mcp3911_driver_init6, ptr @mcp3911_config._entry, ptr @mcp3911_config._entry_ptr, ptr @mcp3911_driver_exit, ptr @mcp3911_probe._entry, ptr @mcp3911_probe._entry.10, ptr @mcp3911_probe._entry.7, ptr @mcp3911_probe._entry_ptr, ptr @mcp3911_probe._entry_ptr.12, ptr @mcp3911_probe._entry_ptr.9, ptr @mcp3911_read_raw._entry, ptr @mcp3911_read_raw._entry_ptr, ptr @mcp3911_driver, ptr @mcp3911_id, ptr @.str, ptr @mcp3911_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @mcp3911_info, ptr @mcp3911_channels, ptr @mcp3911_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3911_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3911_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp3911_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp3911_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp3911_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3911_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 108) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 4
  %call5 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %vref = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.else20

if.then8:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call5, inttoptr (i32 -19 to ptr)
  br i1 %cmp, label %if.then11, label %do.end

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vref, align 4
  br label %if.end26

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %5) #8
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.else20:                                        ; preds = %if.end
  %call22 = tail call i32 @regulator_enable(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else20.if.end26_crit_edge, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else20.if.end26_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26:                                         ; preds = %if.else20.if.end26_crit_edge, %if.then11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call29 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef null) #5
  %clki = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %clki to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %clki, align 4
  %cmp.i125 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then32, label %if.else49

if.then32:                                        ; preds = %if.end26
  %cmp35 = icmp eq ptr %call29, inttoptr (i32 -2 to ptr)
  br i1 %cmp35, label %if.then36, label %do.end41

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %clki to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %clki, align 4
  br label %if.end60

do.end41:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call29 to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %15) #8
  %18 = ptrtoint ptr %clki to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clki, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %reg_disable

if.else49:                                        ; preds = %if.end26
  %call.i = tail call i32 @clk_prepare(ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else49.clk_prepare_enable.exit_crit_edge

if.else49.clk_prepare_enable.exit_crit_edge:      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.else49
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end60_crit_edge, label %if.then3.i

if.end.i.if.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call29) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.else49.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.else49.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp52 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp52, label %do.end56, label %clk_prepare_enable.exit.if.end60_crit_edge

clk_prepare_enable.exit.if.end60_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end56:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i) #8
  br label %reg_disable

if.end60:                                         ; preds = %clk_prepare_enable.exit.if.end60_crit_edge, %if.end.i.if.end60_crit_edge, %if.then36
  %call61 = tail call fastcc i32 @mcp3911_config(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.clk_disable_crit_edge

if.end60.clk_disable_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_disable

if.end64:                                         ; preds = %if.end60
  %call65 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name66 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %23 = ptrtoint ptr %name66 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call65, ptr %name66, align 8
  %24 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mcp3911_info, ptr %info, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mcp3911_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %28 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %num_channels, align 4
  %lock = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mcp3911_probe.__key) #5
  %call70 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end64.cleanup_crit_edge, label %if.end64.clk_disable_crit_edge

if.end64.clk_disable_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_disable

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

clk_disable:                                      ; preds = %if.end64.clk_disable_crit_edge, %if.end60.clk_disable_crit_edge
  %ret.0 = phi i32 [ %call61, %if.end60.clk_disable_crit_edge ], [ %call70, %if.end64.clk_disable_crit_edge ]
  %29 = ptrtoint ptr %clki to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clki, align 4
  tail call void @clk_disable(ptr noundef %30) #5
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %reg_disable

reg_disable:                                      ; preds = %clk_disable, %do.end56, %do.end41
  %ret.1 = phi i32 [ %ret.0, %clk_disable ], [ %20, %do.end41 ], [ %retval.0.i, %do.end56 ]
  %31 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vref, align 4
  %tobool76.not = icmp eq ptr %32, null
  br i1 %tobool76.not, label %reg_disable.cleanup_crit_edge, label %if.then77

reg_disable.cleanup_crit_edge:                    ; preds = %reg_disable
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then77:                                        ; preds = %reg_disable
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = tail call i32 @regulator_disable(ptr noundef nonnull %32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %reg_disable.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call22, %if.else20.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ %ret.1, %if.then77 ], [ %ret.1, %reg_disable.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3911_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %clki = getelementptr inbounds %struct.mcp3911, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clki to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clki, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %vref = getelementptr inbounds %struct.mcp3911, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp3911_config(ptr noundef %adc) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %configreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configreg) #5
  %2 = ptrtoint ptr %configreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %configreg, align 4, !annotation !89
  %dev_addr = getelementptr inbounds %struct.mcp3911, ptr %adc, i32 0, i32 4
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %dev_addr, i32 noundef 1) #5
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef %4) #8
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_config.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then10)) #5
          to label %do.end16 [label %if.then10], !srcloc !90

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adc, align 4
  %9 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_config.__UNIQUE_ID_ddebug292, ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef %10) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %do.body6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %11 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_addr, align 4
  %.tr = trunc i32 %12 to i8
  %13 = shl i8 %.tr, 5
  %conv3.i = or i8 %13, 25
  %14 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3.i, ptr %reg.addr.i, align 1
  %15 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adc, align 4
  %call.i133 = call i32 @spi_write_then_read(ptr noundef %16, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %configreg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i = icmp slt i32 %call.i133, 0
  br i1 %cmp.i, label %mcp3911_read.exit.thread, label %do.body.i

mcp3911_read.exit.thread:                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

do.body.i:                                        ; preds = %do.end16
  %17 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %configreg, align 4
  %shr.i = lshr i32 %18, 16
  store i32 %shr.i, ptr %configreg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then11.i)) #5
          to label %mcp3911_read.exit [label %if.then11.i], !srcloc !90

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adc, align 4
  %21 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %configreg, align 4
  %23 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg.addr.i, align 1
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_read.__UNIQUE_ID_ddebug290, ptr noundef %20, ptr noundef nonnull @.str.23, i32 noundef %22, i32 noundef %26) #5
  br label %mcp3911_read.exit

mcp3911_read.exit:                                ; preds = %if.then11.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool18.not = icmp eq i32 %call.i133, 0
  br i1 %tobool18.not, label %if.end20, label %mcp3911_read.exit.cleanup_crit_edge

mcp3911_read.exit.cleanup_crit_edge:              ; preds = %mcp3911_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %mcp3911_read.exit
  %vref = getelementptr inbounds %struct.mcp3911, ptr %adc, i32 0, i32 2
  %27 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vref, align 4
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %do.body41, label %do.body23

do.body23:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_config.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then35)) #5
          to label %do.end40 [label %if.then35], !srcloc !90

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_config.__UNIQUE_ID_ddebug293, ptr noundef %30, ptr noundef nonnull @.str.18) #5
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %do.body23
  %31 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %configreg, align 4
  %or = or i32 %32, 4
  br label %if.end59

do.body41:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then53)) #5
          to label %do.end58 [label %if.then53], !srcloc !90

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_config.__UNIQUE_ID_ddebug294, ptr noundef %34, ptr noundef nonnull @.str.19) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %do.body41
  %35 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %configreg, align 4
  %and = and i32 %36, -5
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %do.end40
  %storemerge = phi i32 [ %and, %do.end58 ], [ %or, %do.end40 ]
  %37 = ptrtoint ptr %configreg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %configreg, align 4
  %clki = getelementptr inbounds %struct.mcp3911, ptr %adc, i32 0, i32 3
  %38 = ptrtoint ptr %clki to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clki, align 4
  %tobool60.not = icmp eq ptr %39, null
  br i1 %tobool60.not, label %do.body82, label %do.body62

do.body62:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then74)) #5
          to label %do.end79 [label %if.then74], !srcloc !90

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_config.__UNIQUE_ID_ddebug295, ptr noundef %41, ptr noundef nonnull @.str.20) #5
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body62
  %42 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %configreg, align 4
  %or80 = or i32 %43, 2
  br label %if.end101

do.body82:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_config.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_config, %if.then94)) #5
          to label %do.end99 [label %if.then94], !srcloc !90

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_config.__UNIQUE_ID_ddebug296, ptr noundef %45, ptr noundef nonnull @.str.21) #5
  br label %do.end99

do.end99:                                         ; preds = %if.then94, %do.body82
  %46 = ptrtoint ptr %configreg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %configreg, align 4
  %and100 = and i32 %47, -3
  br label %if.end101

if.end101:                                        ; preds = %do.end99, %do.end79
  %storemerge120 = phi i32 [ %and100, %do.end99 ], [ %or80, %do.end79 ]
  %48 = ptrtoint ptr %configreg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge120, ptr %configreg, align 4
  %call102 = call fastcc i32 @mcp3911_write(ptr noundef %adc, i8 noundef zeroext 12, i32 noundef %storemerge120, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %mcp3911_read.exit.cleanup_crit_edge, %mcp3911_read.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call102, %if.end101 ], [ %call.i133, %mcp3911_read.exit.cleanup_crit_edge ], [ %call.i133, %mcp3911_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configreg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp3911_write(ptr nocapture noundef readonly %adc, i8 noundef zeroext %reg, i32 noundef %val, i8 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %val.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %val.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_write.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_write, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adc, align 4
  %3 = ptrtoint ptr %val.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.addr, align 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_write.__UNIQUE_ID_ddebug291, ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %4, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %len to i32
  %.neg = mul nsw i32 %conv3, -8
  %mul = add nsw i32 %.neg, 24
  %5 = ptrtoint ptr %val.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.addr, align 4
  %shl = shl i32 %6, %mul
  %conv6 = zext i8 %reg to i32
  %shl7 = shl nuw nsw i32 %conv6, 1
  %dev_addr = getelementptr inbounds %struct.mcp3911, ptr %adc, i32 0, i32 4
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_addr, align 4
  %shl8 = shl i32 %8, 5
  %or = or i32 %shl8, %shl7
  %and = and i32 %or, 254
  %or10 = or i32 %and, %shl
  store i32 %or10, ptr %val.addr, align 4
  %9 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc, align 4
  %add = add nuw nsw i32 %conv3, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %11 = getelementptr inbounds i8, ptr %t.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val.addr, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.spi_write.exit_crit_edge

do.end.spi_write.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3911_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.addr.i38 = alloca i8, align 1
  %reg.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb12
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %entry
  %channel1 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %3 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv.i = mul i32 %4, 6
  %dev_addr.i = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_addr.i, align 4
  %shl1.i = shl i32 %6, 5
  %or.i = or i32 %shl1.i, %conv.i
  %7 = trunc i32 %or.i to i8
  %conv3.i = or i8 %7, 1
  %8 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %reg.addr.i, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef %val, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.mcp3911_read.exit_crit_edge, label %do.body.i

sw.bb.mcp3911_read.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcp3911_read.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %shr.i = lshr i32 %12, 8
  store i32 %shr.i, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_read_raw, %if.then11.i)) #5
          to label %mcp3911_read.exit [label %if.then11.i], !srcloc !90

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg.addr.i, align 1
  %19 = lshr i8 %18, 1
  %20 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_read.__UNIQUE_ID_ddebug290, ptr noundef %14, ptr noundef nonnull @.str.23, i32 noundef %16, i32 noundef %20) #5
  br label %mcp3911_read.exit

mcp3911_read.exit:                                ; preds = %if.then11.i, %do.body.i, %sw.bb.mcp3911_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %call.i
  br label %out

sw.bb3:                                           ; preds = %entry
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %21 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i38)
  %conv7 = mul i32 %22, 12
  %conv.i39 = add i32 %conv7, 28
  %dev_addr.i41 = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %dev_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_addr.i41, align 4
  %shl1.i42 = shl i32 %24, 5
  %or.i43 = or i32 %shl1.i42, %conv.i39
  %25 = trunc i32 %or.i43 to i8
  %conv3.i44 = or i8 %25, 1
  %26 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i44, ptr %reg.addr.i38, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @spi_write_then_read(ptr noundef %28, ptr noundef nonnull %reg.addr.i38, i32 noundef 1, ptr noundef %val, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %sw.bb3.mcp3911_read.exit50_crit_edge, label %do.body.i48

sw.bb3.mcp3911_read.exit50_crit_edge:             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcp3911_read.exit50

do.body.i48:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shr.i47 = lshr i32 %30, 8
  store i32 %shr.i47, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_read_raw, %if.then11.i49)) #5
          to label %mcp3911_read.exit50 [label %if.then11.i49], !srcloc !90

if.then11.i49:                                    ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %35 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg.addr.i38, align 1
  %37 = lshr i8 %36, 1
  %38 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_read.__UNIQUE_ID_ddebug290, ptr noundef %32, ptr noundef nonnull @.str.23, i32 noundef %34, i32 noundef %38) #5
  br label %mcp3911_read.exit50

mcp3911_read.exit50:                              ; preds = %if.then11.i49, %do.body.i48, %sw.bb3.mcp3911_read.exit50_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool9.not = icmp eq i32 %call.i45, 0
  %spec.store.select22 = select i1 %tobool9.not, i32 1, i32 %call.i45
  br label %out

sw.bb12:                                          ; preds = %entry
  %vref = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vref, align 4
  %tobool13.not = icmp eq ptr %40, null
  br i1 %tobool13.not, label %sw.bb12.if.end20_crit_edge, label %if.then14

sw.bb12.if.end20_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then14:                                        ; preds = %sw.bb12
  %call16 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.26, i32 noundef %call16) #8
  br label %out

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %div51 = udiv i32 %call16, 1000
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %sw.bb12.if.end20_crit_edge
  %storemerge = phi i32 [ %div51, %if.end19 ], [ 1200000, %sw.bb12.if.end20_crit_edge ]
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %val, align 4
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 24, ptr %val2, align 4
  br label %out

out:                                              ; preds = %if.end20, %do.end, %mcp3911_read.exit50, %mcp3911_read.exit, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call16, %do.end ], [ 11, %if.end20 ], [ %spec.store.select22, %mcp3911_read.exit50 ], [ %spec.store.select, %mcp3911_read.exit ]
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3911_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.mcp3911, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mask)
  %cond = icmp eq i32 %mask, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.not = icmp eq i32 %val2, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %channel1 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel1, align 4
  %4 = trunc i32 %3 to i8
  %5 = mul i8 %4, 6
  %conv = add i8 %5, 14
  %call2 = tail call fastcc i32 @mcp3911_write(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef %val, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call fastcc i32 @mcp3911_update(ptr noundef %1)
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call5, %if.end4 ], [ -22, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp3911_update(ptr nocapture noundef readonly %adc) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %dev_addr.i = getelementptr inbounds %struct.mcp3911, ptr %adc, i32 0, i32 4
  %1 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_addr.i, align 4
  %.tr = trunc i32 %2 to i8
  %3 = shl i8 %.tr, 5
  %conv3.i = or i8 %3, 21
  %4 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.i, ptr %reg.addr.i, align 1
  %5 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adc, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %tmp, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mcp3911_read.exit.thread, label %do.body.i

mcp3911_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %shr.i = lshr i32 %8, 16
  store i32 %shr.i, ptr %tmp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp3911_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcp3911_update, %if.then11.i)) #5
          to label %mcp3911_read.exit [label %if.then11.i], !srcloc !90

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc, align 4
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp, align 4
  %13 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg.addr.i, align 1
  %15 = lshr i8 %14, 1
  %16 = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp3911_read.__UNIQUE_ID_ddebug290, ptr noundef %10, ptr noundef nonnull @.str.23, i32 noundef %12, i32 noundef %16) #5
  br label %mcp3911_read.exit

mcp3911_read.exit:                                ; preds = %if.then11.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mcp3911_read.exit.cleanup_crit_edge

mcp3911_read.exit.cleanup_crit_edge:              ; preds = %mcp3911_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %mcp3911_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp, align 4
  %or = or i32 %18, 4
  %call2 = call fastcc i32 @mcp3911_write(ptr noundef %adc, i8 noundef zeroext 10, i32 noundef %or, i8 noundef zeroext 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mcp3911_read.exit.cleanup_crit_edge, %mcp3911_read.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %mcp3911_read.exit.cleanup_crit_edge ], [ %call.i, %mcp3911_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_mcp3911__297_359_mcp3911_driver_init6, !1, !"__initcall__kmod_mcp3911__297_359_mcp3911_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/mcp3911.c", i32 359, i32 1}
!2 = !{ptr @__exitcall_mcp3911_driver_exit, !1, !"__exitcall_mcp3911_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/mcp3911.c", i32 361, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/mcp3911.c", i32 362, i32 1}
!7 = !{ptr @__UNIQUE_ID_description300, !8, !"__UNIQUE_ID_description300", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/mcp3911.c", i32 363, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/mcp3911.c", i32 364, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/mcp3911.c", i32 352, i32 11}
!14 = !{ptr @mcp3911_driver, !15, !"mcp3911_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/mcp3911.c", i32 350, i32 26}
!16 = !{ptr @mcp3911_id, !17, !"mcp3911_id", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/mcp3911.c", i32 344, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/mcp3911.c", i32 258, i32 58}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/mcp3911.c", i32 263, i32 4}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mcp3911_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mcp3911_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/mcp3911.c", i32 280, i32 4}
!30 = !{ptr @mcp3911_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mcp3911_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/mcp3911.c", i32 289, i32 4}
!34 = !{ptr @mcp3911_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mcp3911_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mcp3911_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/mcp3911.c", i32 307, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/mcp3911.c", i32 211, i32 32}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/mcp3911.c", i32 213, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mcp3911_config._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mcp3911_config._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/mcp3911.c", i32 218, i32 2}
!48 = !{ptr @mcp3911_config.__UNIQUE_ID_ddebug292, !47, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/mcp3911.c", i32 225, i32 3}
!51 = !{ptr @mcp3911_config.__UNIQUE_ID_ddebug293, !50, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/mcp3911.c", i32 228, i32 3}
!54 = !{ptr @mcp3911_config.__UNIQUE_ID_ddebug294, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/mcp3911.c", i32 234, i32 3}
!57 = !{ptr @mcp3911_config.__UNIQUE_ID_ddebug295, !56, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/mcp3911.c", i32 237, i32 3}
!60 = !{ptr @mcp3911_config.__UNIQUE_ID_ddebug296, !59, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/mcp3911.c", i32 70, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mcp3911_read.__UNIQUE_ID_ddebug290, !62, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/mcp3911.c", i32 77, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mcp3911_write.__UNIQUE_ID_ddebug291, !66, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!69 = !{ptr @mcp3911_info, !70, !"mcp3911_info", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/mcp3911.c", i32 200, i32 30}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/mcp3911.c", i32 132, i32 5}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mcp3911_read_raw._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mcp3911_read_raw._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mcp3911_channels, !77, !"mcp3911_channels", i1 false, i1 false}
!77 = !{!"../drivers/iio/adc/mcp3911.c", i32 195, i32 35}
!78 = !{ptr @mcp3911_dt_ids, !79, !"mcp3911_dt_ids", i1 false, i1 false}
!79 = !{!"../drivers/iio/adc/mcp3911.c", i32 338, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{i64 2148728164, i64 2148728169, i64 2148728182, i64 2148728226, i64 2148728260, i64 2148728281}
