; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-raspberrypi.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-raspberrypi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.raspberrypi_firmware_prop = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.raspberrypi_clk = type { ptr, ptr, ptr }
%struct.rpi_firmware_get_clocks_response = type { i32, i32 }
%struct.raspberrypi_clk_data = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_raspberrypi__187_374_raspberrypi_clk_driver_init6 = internal global ptr @raspberrypi_clk_driver_init, section ".initcall6.init", align 4
@raspberrypi_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @raspberrypi_clk_probe, ptr @raspberrypi_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @raspberrypi_clk_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_raspberrypi_clk_driver_exit = internal global ptr @raspberrypi_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [71 x i8] c"clk_raspberrypi.author=Nicolas Saenz Julienne <nsaenzjulienne@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [63 x i8] c"clk_raspberrypi.description=Raspberry Pi firmware clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [53 x i8] c"clk_raspberrypi.file=drivers/clk/bcm/clk-raspberrypi\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"clk_raspberrypi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [47 x i8] c"clk_raspberrypi.alias=platform:raspberrypi-clk\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"raspberrypi-clk\00", [16 x i8] zeroinitializer }, align 32
@raspberrypi_clk_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,firmware-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"raspberrypi,bcm2835-firmware\00", [35 x i8] zeroinitializer }, align 32
@raspberrypi_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing firmware node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"raspberrypi_clk_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/bcm/clk-raspberrypi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@raspberrypi_clk_probe._entry_ptr = internal global ptr @raspberrypi_clk_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"raspberrypi-cpufreq\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw-clk-%s\00", [22 x i8] zeroinitializer }, align 32
@rpi_firmware_clk_names = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [36 x i8] zeroinitializer }, align 32
@raspberrypi_firmware_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr @raspberrypi_fw_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raspberrypi_fw_get_rate, ptr null, ptr @raspberrypi_fw_dumb_determine_rate, ptr null, ptr null, ptr @raspberrypi_fw_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@raspberrypi_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get clock %d min freq: %d\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"raspberrypi_clk_register\00", [39 x i8] zeroinitializer }, align 32
@raspberrypi_clk_register._entry_ptr = internal global ptr @raspberrypi_clk_register._entry, section ".printk_index", align 4
@raspberrypi_clk_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get clock %d max freq: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@raspberrypi_clk_register._entry_ptr.13 = internal global ptr @raspberrypi_clk_register._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu0\00", [27 x i8] zeroinitializer }, align 32
@raspberrypi_clk_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize clkdev\0A\00", [35 x i8] zeroinitializer }, align 32
@raspberrypi_clk_register._entry_ptr.17 = internal global ptr @raspberrypi_clk_register._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"v3d\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"h264\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pixel\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hevc\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"emmc2\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m2mc\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pixel-bvb\00", [22 x i8] zeroinitializer }, align 32
@raspberrypi_fw_set_rate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.raspberrypi_fw_set_rate = private unnamed_addr constant [24 x i8] c"raspberrypi_fw_set_rate\00", align 1
@raspberrypi_fw_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.raspberrypi_fw_set_rate, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to change %s frequency: %d\00", [62 x i8] zeroinitializer }, align 32
@raspberrypi_fw_set_rate._entry_ptr = internal global ptr @raspberrypi_fw_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 13, i64 14]
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"raspberrypi_clk_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 366, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 368, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"raspberrypi_clk_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 360, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 311, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 313, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 345, i32 52 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 200, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"rpi_firmware_clk_names\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 39, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [29 x i8] c"raspberrypi_firmware_clk_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 177, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 211, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 220, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 233, i32 15 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 235, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 40, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 41, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 42, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 43, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 44, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 45, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 46, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 47, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 48, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 49, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 50, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 51, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 52, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 53, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [37 x i8] c"../drivers/clk/bcm/clk-raspberrypi.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 159, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_raspberrypi_clk_driver_exit, ptr @__initcall__kmod_clk_raspberrypi__187_374_raspberrypi_clk_driver_init6, ptr @raspberrypi_clk_driver_exit, ptr @raspberrypi_clk_probe._entry, ptr @raspberrypi_clk_probe._entry_ptr, ptr @raspberrypi_clk_register._entry, ptr @raspberrypi_clk_register._entry.11, ptr @raspberrypi_clk_register._entry.15, ptr @raspberrypi_clk_register._entry_ptr, ptr @raspberrypi_clk_register._entry_ptr.13, ptr @raspberrypi_clk_register._entry_ptr.17, ptr @raspberrypi_fw_set_rate._entry, ptr @raspberrypi_fw_set_rate._entry_ptr, ptr @raspberrypi_clk_driver, ptr @.str, ptr @raspberrypi_clk_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rpi_firmware_clk_names, ptr @raspberrypi_firmware_clk_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @raspberrypi_fw_set_rate._rs, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_firmware_clk_names to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_firmware_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_clk_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_fw_set_rate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raspberrypi_fw_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @raspberrypi_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raspberrypi_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @raspberrypi_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %msg.i2.i.i = alloca %struct.raspberrypi_firmware_prop, align 4
  %msg.i.i.i = alloca %struct.raspberrypi_firmware_prop, align 4
  %init.i.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @of_get_parent(ptr noundef nonnull %1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %firmware_node.0 = phi ptr [ %call, %if.then ], [ %call3, %if.else ]
  %tobool4.not = icmp eq ptr %firmware_node.0, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_rpi_firmware_get(ptr noundef %dev1, ptr noundef nonnull %firmware_node.0) #7
  tail call void @of_node_put(ptr noundef nonnull %firmware_node.0) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %firmware17 = getelementptr inbounds %struct.raspberrypi_clk, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %firmware17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %firmware17, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i59 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #7
  %tobool20.not = icmp eq ptr %call.i59, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %if.end22.cleanup_crit_edge, label %if.end.i

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %7 = ptrtoint ptr %firmware17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %firmware17, align 4
  %call1.i = tail call i32 @rpi_firmware_property(ptr noundef %8, i32 noundef 65543, ptr noundef nonnull %call5.i.i.i, i32 noundef 120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %while.cond.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader.i:                           ; preds = %if.end.i
  %9 = getelementptr inbounds i8, ptr %init.i.i, i32 8
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %10 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i.i.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i2.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i2.i.i, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %cleanup.i, %while.cond.preheader.i
  %clks.0.i = phi ptr [ %incdec.ptr.i, %cleanup.i ], [ %call5.i.i.i, %while.cond.preheader.i ]
  %id.i = getelementptr inbounds %struct.rpi_firmware_get_clocks_response, ptr %clks.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %while.cond.i.cleanup.i_crit_edge [
    i32 0, label %if.end26
    i32 3, label %while.cond.i.sw.bb.i_crit_edge
    i32 4, label %while.cond.i.sw.bb.i_crit_edge65
    i32 13, label %while.cond.i.sw.bb.i_crit_edge66
    i32 5, label %while.cond.i.sw.bb.i_crit_edge67
    i32 14, label %while.cond.i.sw.bb.i_crit_edge68
  ]

while.cond.i.sw.bb.i_crit_edge68:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

while.cond.i.sw.bb.i_crit_edge67:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

while.cond.i.sw.bb.i_crit_edge66:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

while.cond.i.sw.bb.i_crit_edge65:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

while.cond.i.sw.bb.i_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

while.cond.i.cleanup.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

sw.bb.i:                                          ; preds = %while.cond.i.sw.bb.i_crit_edge, %while.cond.i.sw.bb.i_crit_edge65, %while.cond.i.sw.bb.i_crit_edge66, %while.cond.i.sw.bb.i_crit_edge67, %while.cond.i.sw.bb.i_crit_edge68
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #7
  %17 = call ptr @memset(ptr %9, i32 0, i32 16)
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %raspberrypi_clk_register.exit.thread.i, label %if.end.i.i

raspberrypi_clk_register.exit.thread.i:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  br label %raspberrypi_discover_clocks.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %rpi2.i.i = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %call.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %rpi2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %rpi2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %call.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %id3.i.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %arrayidx.i.i = getelementptr [15 x ptr], ptr @rpi_firmware_clk_names, i32 0, i32 %15
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %23, i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %25) #7
  %26 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %init.i.i, align 4
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @raspberrypi_firmware_clk_ops, ptr %ops.i.i, align 4
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64, ptr %flags.i.i, align 4
  %init6.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init6.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init.i.i, ptr %init6.i.i, align 4
  %30 = ptrtoint ptr %firmware17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %firmware17, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %32 = call i32 @llvm.bswap.i32(i32 %15) #7
  %33 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %msg.i.i.i, align 4
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %10, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16777216, ptr %11, align 4
  %call.i1.i.i = call i32 @rpi_firmware_property(ptr noundef %31, i32 noundef 196615, ptr noundef nonnull %msg.i.i.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end12.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.9, i32 noundef %15, i32 noundef %call.i1.i.i) #10
  %38 = inttoptr i32 %call.i1.i.i to ptr
  br label %raspberrypi_clk_register.exit.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %10, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %42 = ptrtoint ptr %firmware17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %firmware17, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i.i) #7
  %44 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id3.i.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %msg.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %msg.i2.i.i, align 4
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %12, align 4
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16777216, ptr %13, align 4
  %call.i4.i.i = call i32 @rpi_firmware_property(ptr noundef %43, i32 noundef 196612, ptr noundef nonnull %msg.i2.i.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %if.end22.i.i, label %do.end19.i.i

do.end19.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i.i) #7
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.12, i32 noundef %15, i32 noundef %call.i4.i.i) #10
  %52 = inttoptr i32 %call.i4.i.i to ptr
  br label %raspberrypi_clk_register.exit.i

if.end22.i.i:                                     ; preds = %if.end12.i.i
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i.i) #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call25.i.i = call i32 @devm_clk_hw_register(ptr noundef %56, ptr noundef nonnull %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end29.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = inttoptr i32 %call25.i.i to ptr
  br label %raspberrypi_clk_register.exit.i

if.end29.i.i:                                     ; preds = %if.end22.i.i
  %58 = call i32 @llvm.bswap.i32(i32 %54) #7
  call void @clk_hw_set_rate_range(ptr noundef nonnull %call.i.i.i, i32 noundef %41, i32 noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 3
  br i1 %cmp.i.i, label %if.then31.i.i, label %if.end29.i.i.raspberrypi_clk_register.exit.i_crit_edge

if.end29.i.i.raspberrypi_clk_register.exit.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %raspberrypi_clk_register.exit.i

if.then31.i.i:                                    ; preds = %if.end29.i.i
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %call34.i.i = call i32 @devm_clk_hw_register_clkdev(ptr noundef %60, ptr noundef nonnull %call.i.i.i, ptr noundef null, ptr noundef nonnull @.str.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then31.i.i.raspberrypi_clk_register.exit.i_crit_edge, label %do.end39.i.i

if.then31.i.i.raspberrypi_clk_register.exit.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %raspberrypi_clk_register.exit.i

do.end39.i.i:                                     ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.16) #10
  %63 = inttoptr i32 %call34.i.i to ptr
  br label %raspberrypi_clk_register.exit.i

raspberrypi_clk_register.exit.i:                  ; preds = %do.end39.i.i, %if.then31.i.i.raspberrypi_clk_register.exit.i_crit_edge, %if.end29.i.i.raspberrypi_clk_register.exit.i_crit_edge, %if.then27.i.i, %do.end19.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ %38, %do.end.i.i ], [ %52, %do.end19.i.i ], [ %57, %if.then27.i.i ], [ %63, %do.end39.i.i ], [ %call.i.i.i, %if.then31.i.i.raspberrypi_clk_register.exit.i_crit_edge ], [ %call.i.i.i, %if.end29.i.i.raspberrypi_clk_register.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  %cmp.i31.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i, label %raspberrypi_clk_register.exit.i.raspberrypi_discover_clocks.exit_crit_edge, label %if.end12.i

raspberrypi_clk_register.exit.i.raspberrypi_discover_clocks.exit_crit_edge: ; preds = %raspberrypi_clk_register.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %raspberrypi_discover_clocks.exit

if.end12.i:                                       ; preds = %raspberrypi_clk_register.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.clk_hw_onecell_data, ptr %call.i59, i32 0, i32 1, i32 %65
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  %add.i = add i32 %65, 1
  %67 = ptrtoint ptr %call.i59 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i, ptr %call.i59, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i, %while.cond.i.cleanup.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.rpi_firmware_get_clocks_response, ptr %clks.0.i, i32 1
  br label %while.cond.i

raspberrypi_discover_clocks.exit:                 ; preds = %raspberrypi_clk_register.exit.i.raspberrypi_discover_clocks.exit_crit_edge, %raspberrypi_clk_register.exit.thread.i
  %retval.0.i34.i = phi ptr [ inttoptr (i32 -12 to ptr), %raspberrypi_clk_register.exit.thread.i ], [ %retval.0.i.i, %raspberrypi_clk_register.exit.i.raspberrypi_discover_clocks.exit_crit_edge ]
  %68 = ptrtoint ptr %retval.0.i34.i to i32
  br label %cleanup

if.end26:                                         ; preds = %while.cond.i
  %call27 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %69 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 255, i32 48)
  %71 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev1, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %fwnode.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %69, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.7, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %76 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %properties.i.i, align 8
  %77 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %cpufreq = getelementptr inbounds %struct.raspberrypi_clk, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %cpufreq to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i, ptr %cpufreq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %raspberrypi_discover_clocks.exit, %if.end.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -2, %do.end ], [ -517, %if.end6.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ %68, %raspberrypi_discover_clocks.exit ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_clk_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cpufreq = getelementptr inbounds %struct.raspberrypi_clk, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpufreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpufreq, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %msg.i = alloca %struct.raspberrypi_firmware_prop, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpi1 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rpi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpi1, align 4
  %firmware = getelementptr inbounds %struct.raspberrypi_clk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 2
  %id1.i = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %msg.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %5, align 4
  %call.i = call i32 @rpi_firmware_property(ptr noundef %3, i32 noundef 196609, ptr noundef nonnull %msg.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %raspberrypi_clock_property.exit

raspberrypi_clock_property.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = lshr i32 %13, 24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %and = and i32 %14, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %raspberrypi_clock_property.exit
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %raspberrypi_clock_property.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_get_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %msg.i = alloca %struct.raspberrypi_firmware_prop, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpi1 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rpi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpi1, align 4
  %firmware = getelementptr inbounds %struct.raspberrypi_clk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 2
  %id1.i = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %msg.i, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %5, align 4
  %call.i = call i32 @rpi_firmware_property(ptr noundef %3, i32 noundef 196610, ptr noundef nonnull %msg.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %raspberrypi_clock_property.exit

raspberrypi_clock_property.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %raspberrypi_clock_property.exit
  %retval.0 = phi i32 [ %14, %if.end ], [ %call.i, %raspberrypi_clock_property.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @raspberrypi_fw_dumb_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %1, i32 %3)
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_rate, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %req, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raspberrypi_fw_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %msg.i = alloca %struct.raspberrypi_firmware_prop, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rpi1 = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %rpi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpi1, align 4
  %firmware = getelementptr inbounds %struct.raspberrypi_clk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.raspberrypi_firmware_prop, ptr %msg.i, i32 0, i32 2
  %id1.i = getelementptr inbounds %struct.raspberrypi_clk_data, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %msg.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %rate) #7
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %5, align 4
  %call.i = call i32 @rpi_firmware_property(ptr noundef %3, i32 noundef 229378, ptr noundef nonnull %msg.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br i1 %tobool.not.i, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @raspberrypi_fw_set_rate._rs, ptr noundef nonnull @__func__.raspberrypi_fw_set_rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.if.end9_crit_edge, label %do.end

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call6 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33, ptr noundef %call6, i32 noundef %call.i) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_clk_raspberrypi__187_374_raspberrypi_clk_driver_init6, !1, !"__initcall__kmod_clk_raspberrypi__187_374_raspberrypi_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_raspberrypi_clk_driver_exit, !1, !"__exitcall_raspberrypi_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 379, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 368, i32 11}
!14 = !{ptr @raspberrypi_clk_driver, !15, !"raspberrypi_clk_driver", i1 false, i1 false}
!15 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 366, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 311, i32 8}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 313, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @raspberrypi_clk_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @raspberrypi_clk_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 345, i32 52}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 200, i32 8}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 211, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @raspberrypi_clk_register._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @raspberrypi_clk_register._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 220, i32 3}
!37 = !{ptr @raspberrypi_clk_register._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @raspberrypi_clk_register._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 233, i32 15}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 235, i32 4}
!43 = !{ptr @raspberrypi_clk_register._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @raspberrypi_clk_register._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 40, i32 31}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 41, i32 31}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 42, i32 30}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 43, i32 31}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 44, i32 30}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 45, i32 31}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 46, i32 30}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 47, i32 32}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 48, i32 32}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 49, i32 30}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 50, i32 31}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 51, i32 32}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 52, i32 31}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 53, i32 36}
!73 = !{ptr @rpi_firmware_clk_names, !74, !"rpi_firmware_clk_names", i1 false, i1 false}
!74 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 39, i32 14}
!75 = !{ptr @raspberrypi_firmware_clk_ops, !76, !"raspberrypi_firmware_clk_ops", i1 false, i1 false}
!76 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 177, i32 29}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 159, i32 3}
!79 = !{ptr @raspberrypi_fw_set_rate._rs, !78, !"_rs", i1 false, i1 false}
!80 = !{ptr @__func__.raspberrypi_fw_set_rate, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @raspberrypi_fw_set_rate._entry, !78, !"_entry", i1 false, i1 false}
!83 = !{ptr @raspberrypi_fw_set_rate._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @raspberrypi_clk_match, !85, !"raspberrypi_clk_match", i1 false, i1 false}
!85 = !{!"../drivers/clk/bcm/clk-raspberrypi.c", i32 360, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
