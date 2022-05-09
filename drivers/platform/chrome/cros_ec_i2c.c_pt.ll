; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_i2c.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_response_i2c = type { i8, i8, %struct.ec_host_response }
%struct.ec_host_response = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_cros_ec_i2c__292_373_cros_ec_driver_init6 = internal global ptr @cros_ec_driver_init, section ".initcall6.init", align 4
@cros_ec_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cros_ec_i2c_probe, ptr @cros_ec_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_i2c_pm_ops, ptr null, ptr null }, ptr @cros_ec_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_driver_exit = internal global ptr @cros_ec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file293 = internal constant [53 x i8] c"cros_ec_i2c.file=drivers/platform/chrome/cros_ec_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [27 x i8] c"cros_ec_i2c.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [71 x i8] c"cros_ec_i2c.description=I2C interface for ChromeOS Embedded Controller\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-i2c\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr @cros_ec_i2c_suspend, ptr @cros_ec_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cros-ec-i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cros_ec_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot register EC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/chrome/cros_ec_i2c.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_i2c_probe._entry_ptr = internal global ptr @cros_ec_i2c_probe._entry, section ".printk_index", align 4
@cros_ec_cmd_xfer_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c transfer failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_cmd_xfer_i2c\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_cmd_xfer_i2c._entry_ptr = internal global ptr @cros_ec_cmd_xfer_i2c._entry, section ".printk_index", align 4
@cros_ec_cmd_xfer_i2c._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get response: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cros_ec_cmd_xfer_i2c._entry_ptr.10 = internal global ptr @cros_ec_cmd_xfer_i2c._entry.8, section ".printk_index", align 4
@cros_ec_cmd_xfer_i2c._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"packet too long (%d bytes, expected %d)\00", [56 x i8] zeroinitializer }, align 32
@cros_ec_cmd_xfer_i2c._entry_ptr.13 = internal global ptr @cros_ec_cmd_xfer_i2c._entry.11, section ".printk_index", align 4
@cros_ec_cmd_xfer_i2c.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.7, ptr @.str.3, ptr @.str.15, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros_ec_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"packet: %*ph, sum = %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@cros_ec_cmd_xfer_i2c._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad packet checksum\0A\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_cmd_xfer_i2c._entry_ptr.18 = internal global ptr @cros_ec_cmd_xfer_i2c._entry.16, section ".printk_index", align 4
@cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.3, ptr @.str.6, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_pkt_xfer_i2c\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.19, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry_ptr = internal global ptr @cros_ec_pkt_xfer_i2c._entry, section ".printk_index", align 4
@cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"command 0x%02x in progress\0A\00", [36 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"command 0x%02x returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"response of %u bytes too short; not a full header\0A\00", [45 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry_ptr.24 = internal global ptr @cros_ec_pkt_xfer_i2c._entry.22, section ".printk_index", align 4
@cros_ec_pkt_xfer_i2c._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"response data size is too large: expected %u, got %u\0A\00", [42 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry_ptr.27 = internal global ptr @cros_ec_pkt_xfer_i2c._entry.25, section ".printk_index", align 4
@cros_ec_pkt_xfer_i2c._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cros_ec_pkt_xfer_i2c._entry_ptr.29 = internal global ptr @cros_ec_pkt_xfer_i2c._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"cros_ec_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 361, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 363, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"cros_ec_i2c_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 340, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"cros_ec_i2c_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 335, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"cros_ec_i2c_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 347, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 305, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 235, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 238, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 251, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 263, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 266, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 97, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 100, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 114, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 119, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 137, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 145, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private constant [41 x i8] c"../drivers/platform/chrome/cros_ec_i2c.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 166, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_cros_ec_driver_exit, ptr @__initcall__kmod_cros_ec_i2c__292_373_cros_ec_driver_init6, ptr @cros_ec_cmd_xfer_i2c._entry, ptr @cros_ec_cmd_xfer_i2c._entry.11, ptr @cros_ec_cmd_xfer_i2c._entry.16, ptr @cros_ec_cmd_xfer_i2c._entry.8, ptr @cros_ec_cmd_xfer_i2c._entry_ptr, ptr @cros_ec_cmd_xfer_i2c._entry_ptr.10, ptr @cros_ec_cmd_xfer_i2c._entry_ptr.13, ptr @cros_ec_cmd_xfer_i2c._entry_ptr.18, ptr @cros_ec_driver_exit, ptr @cros_ec_i2c_probe._entry, ptr @cros_ec_i2c_probe._entry_ptr, ptr @cros_ec_pkt_xfer_i2c._entry, ptr @cros_ec_pkt_xfer_i2c._entry.22, ptr @cros_ec_pkt_xfer_i2c._entry.25, ptr @cros_ec_pkt_xfer_i2c._entry.28, ptr @cros_ec_pkt_xfer_i2c._entry_ptr, ptr @cros_ec_pkt_xfer_i2c._entry_ptr.24, ptr @cros_ec_pkt_xfer_i2c._entry_ptr.27, ptr @cros_ec_pkt_xfer_i2c._entry_ptr.29, ptr @cros_ec_driver, ptr @.str, ptr @cros_ec_i2c_of_match, ptr @cros_ec_i2c_pm_ops, ptr @cros_ec_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_cmd_xfer_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_cmd_xfer_i2c._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_cmd_xfer_i2c._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_cmd_xfer_i2c._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_i2c._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_i2c._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_pkt_xfer_i2c._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cros_ec_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @cros_ec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 328, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev2, align 4
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %priv, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq3, align 8
  %cmd_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 17
  %6 = ptrtoint ptr %cmd_xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cros_ec_cmd_xfer_i2c, ptr %cmd_xfer, align 8
  %pkt_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 18
  %7 = ptrtoint ptr %pkt_xfer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cros_ec_pkt_xfer_i2c, ptr %pkt_xfer, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name, ptr %call.i, align 8
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %din_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 22, ptr %din_size, align 4
  %dout_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %dout_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9, ptr %dout_size, align 8
  %call4 = tail call i32 @cros_ec_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @cros_ec_unregister(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_cmd_xfer_i2c(ptr noundef %ec_dev, ptr noundef %msg) #2 align 64 {
entry:
  %i2c_msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_msg) #6
  %2 = getelementptr inbounds i8, ptr %i2c_msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 20)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %i2c_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %8 = load i16, ptr %addr, align 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx4, align 4
  %flags7 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags7, align 2
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %insize, align 4
  %add = add i32 %12, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %conv = trunc i32 %add to i16
  %len9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %len9, align 4
  %buf = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %buf, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outsize, align 4
  %add11 = add i32 %16, 4
  %call9.i.i231 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11, i32 noundef 3520) #10
  %tobool13.not = icmp eq ptr %call9.i.i231, null
  br i1 %tobool13.not, label %if.end.done_crit_edge, label %if.end15

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end15:                                         ; preds = %if.end
  %conv16 = trunc i32 %add11 to i16
  %len18 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %17 = ptrtoint ptr %len18 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv16, ptr %len18, align 4
  %buf20 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i231, ptr %buf20, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  %21 = trunc i32 %20 to i8
  %conv22 = add i8 %21, -36
  %22 = ptrtoint ptr %call9.i.i231 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22, ptr %call9.i.i231, align 128
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %23 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %command, align 4
  %conv24 = trunc i32 %24 to i8
  %arrayidx25 = getelementptr i8, ptr %call9.i.i231, i32 1
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv24, ptr %arrayidx25, align 1
  %26 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %outsize, align 4
  %conv27 = trunc i32 %27 to i8
  %arrayidx28 = getelementptr i8, ptr %call9.i.i231, i32 2
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv27, ptr %arrayidx28, align 2
  %conv30 = zext i8 %conv22 to i32
  %conv32 = and i32 %24, 255
  %add33 = add nuw nsw i32 %conv32, %conv30
  %add36 = add i32 %add33, %27
  %29 = load i32, ptr %outsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp243.not = icmp eq i32 %29, 0
  br i1 %cmp243.not, label %if.end15.for.end_crit_edge, label %for.body.preheader

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end15
  %30 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %outsize, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sum.0.in245 = phi i32 [ %add47, %for.body.for.body_crit_edge ], [ %add36, %for.body.preheader ]
  %i.0244 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx40 = getelementptr %struct.cros_ec_command, ptr %msg, i32 0, i32 5, i32 %i.0244
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  %add41 = add i32 %i.0244, 3
  %arrayidx42 = getelementptr i8, ptr %call9.i.i231, i32 %add41
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx42, align 1
  %conv45 = zext i8 %33 to i32
  %conv46 = and i32 %sum.0.in245, 255
  %add47 = add nuw nsw i32 %conv46, %conv45
  %inc = add nuw i32 %i.0244, 1
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = add i32 %31, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end15.for.end_crit_edge
  %sum.0.in.lcssa = phi i32 [ %add36, %if.end15.for.end_crit_edge ], [ %add47, %for.end.loopexit ]
  %.lcssa = phi i32 [ 3, %if.end15.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %sum.0 = trunc i32 %sum.0.in.lcssa to i8
  %arrayidx51 = getelementptr i8, ptr %call9.i.i231, i32 %.lcssa
  %35 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sum.0, ptr %arrayidx51, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %call52 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %i2c_msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end, label %if.else

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.6, i32 noundef %call52) #9
  br label %done

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call52)
  %cmp56.not = icmp eq i32 %call52, 2
  br i1 %cmp56.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev62 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %40 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev62, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.9, i32 noundef %call52) #9
  br label %done

if.end64:                                         ; preds = %if.else
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv68 = zext i8 %45 to i32
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 4
  %46 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv68, ptr %result, align 4
  %call69 = call i32 @cros_ec_check_result(ptr noundef %ec_dev, ptr noundef %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end64.done_crit_edge

if.end64.done_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end72:                                         ; preds = %if.end64
  %arrayidx73 = getelementptr i8, ptr %call9.i.i, i32 1
  %47 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %48 to i32
  %49 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %insize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv74)
  %cmp76 = icmp ult i32 %50, %conv74
  br i1 %cmp76, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %dev82 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %51 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.12, i32 noundef %conv74, i32 noundef %50) #9
  br label %done

if.end84:                                         ; preds = %if.end72
  %53 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call9.i.i, align 128
  %add89 = add i8 %54, %48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp92247.not = icmp eq i8 %48, 0
  br i1 %cmp92247.not, label %if.end84.do.body108_crit_edge, label %if.end84.for.body94_crit_edge

if.end84.for.body94_crit_edge:                    ; preds = %if.end84
  br label %for.body94

if.end84.do.body108_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body108

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %if.end84.for.body94_crit_edge
  %sum.1249 = phi i8 [ %add103, %for.body94.for.body94_crit_edge ], [ %add89, %if.end84.for.body94_crit_edge ]
  %i.1248 = phi i32 [ %inc106, %for.body94.for.body94_crit_edge ], [ 0, %if.end84.for.body94_crit_edge ]
  %add95 = add nuw nsw i32 %i.1248, 2
  %arrayidx96 = getelementptr i8, ptr %call9.i.i, i32 %add95
  %55 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx96, align 1
  %arrayidx98 = getelementptr %struct.cros_ec_command, ptr %msg, i32 0, i32 5, i32 %i.1248
  %57 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx98, align 1
  %add103 = add i8 %56, %sum.1249
  %inc106 = add nuw nsw i32 %i.1248, 1
  %exitcond.not = icmp eq i32 %inc106, %conv74
  br i1 %exitcond.not, label %for.body94.do.body108_crit_edge, label %for.body94.for.body94_crit_edge

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body94

for.body94.do.body108_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body108

do.body108:                                       ; preds = %for.body94.do.body108_crit_edge, %if.end84.do.body108_crit_edge
  %sum.1.lcssa = phi i8 [ %add89, %if.end84.do.body108_crit_edge ], [ %add103, %for.body94.do.body108_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_cmd_xfer_i2c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_cmd_xfer_i2c, %if.then113)) #6
          to label %do.end121 [label %if.then113], !srcloc !79

if.then113:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %dev114 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %58 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev114, align 4
  %60 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len9, align 4
  %conv117 = zext i16 %61 to i32
  %conv118 = zext i8 %sum.1.lcssa to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_cmd_xfer_i2c.__UNIQUE_ID_ddebug291, ptr noundef %59, ptr noundef nonnull @.str.15, i32 noundef %conv117, ptr noundef nonnull %call9.i.i, i32 noundef %conv118) #6
  br label %do.end121

do.end121:                                        ; preds = %if.then113, %do.body108
  %add123 = add nuw nsw i32 %conv74, 2
  %arrayidx124 = getelementptr i8, ptr %call9.i.i, i32 %add123
  %62 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sum.1.lcssa, i8 %63)
  %cmp126.not = icmp eq i8 %sum.1.lcssa, %63
  br i1 %cmp126.not, label %do.end121.done_crit_edge, label %do.end131

do.end121.done_crit_edge:                         ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end131:                                        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  %dev132 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %64 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev132, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.17) #9
  br label %done

done:                                             ; preds = %do.end131, %do.end121.done_crit_edge, %do.end81, %if.end64.done_crit_edge, %do.end61, %do.end, %if.end.done_crit_edge, %entry.done_crit_edge
  %retval.1.i.i238 = phi ptr [ %call9.i.i, %do.end ], [ %call9.i.i, %do.end61 ], [ %call9.i.i, %if.end64.done_crit_edge ], [ %call9.i.i, %do.end81 ], [ %call9.i.i, %do.end131 ], [ %call9.i.i, %if.end.done_crit_edge ], [ null, %entry.done_crit_edge ], [ %call9.i.i, %do.end121.done_crit_edge ]
  %out_buf.0 = phi ptr [ %call9.i.i231, %do.end ], [ %call9.i.i231, %do.end61 ], [ %call9.i.i231, %if.end64.done_crit_edge ], [ %call9.i.i231, %do.end81 ], [ %call9.i.i231, %do.end131 ], [ null, %if.end.done_crit_edge ], [ null, %entry.done_crit_edge ], [ %call9.i.i231, %do.end121.done_crit_edge ]
  %ret.0 = phi i32 [ %call52, %do.end ], [ -5, %do.end61 ], [ %call69, %if.end64.done_crit_edge ], [ -28, %do.end81 ], [ -74, %do.end131 ], [ -12, %if.end.done_crit_edge ], [ -12, %entry.done_crit_edge ], [ %conv74, %do.end121.done_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i.i238) #6
  call void @kfree(ptr noundef %out_buf.0) #6
  %command134 = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %66 = ptrtoint ptr %command134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %command134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %67)
  %cmp135 = icmp eq i32 %67, 210
  br i1 %cmp135, label %if.then137, label %done.if.end138_crit_edge

done.if.end138_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then137:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 50) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %done.if.end138_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_msg) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pkt_xfer_i2c(ptr noundef %ec_dev, ptr noundef %msg) #2 align 64 {
entry:
  %i2c_msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2c_msg) #6
  %2 = getelementptr inbounds i8, ptr %i2c_msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %i2c_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %8 = load i16, ptr %addr, align 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx4, align 4
  %flags7 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags7, align 2
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %insize, align 4
  %add = add i32 %12, 10
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 13
  %13 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp = icmp sgt i32 %add, %14
  br i1 %cmp, label %do.body9, label %do.end14, !prof !80

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #6, !srcloc !81
  unreachable

do.end14:                                         ; preds = %entry
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %15 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %din, align 4
  %conv = trunc i32 %add to i16
  %len = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds [2 x %struct.i2c_msg], ptr %i2c_msg, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %buf, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 2
  %19 = ptrtoint ptr %outsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outsize, align 4
  %add17 = add i32 %20, 9
  %dout_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 14
  %21 = ptrtoint ptr %dout_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dout_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %22)
  %cmp19 = icmp sgt i32 %add17, %22
  br i1 %cmp19, label %do.body28, label %do.end36, !prof !80

do.body28:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

do.end36:                                         ; preds = %do.end14
  %dout = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 12
  %23 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dout, align 8
  %conv37 = trunc i32 %add17 to i16
  %len39 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %25 = ptrtoint ptr %len39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv37, ptr %len39, align 4
  %buf41 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %26 = ptrtoint ptr %buf41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %buf41, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -38, ptr %24, align 1
  %28 = load ptr, ptr %dout, align 8
  %incdec.ptr = getelementptr i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %dout, align 8
  %call = tail call i32 @cros_ec_prepare_tx(ptr noundef %ec_dev, ptr noundef %msg) #6
  %29 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dout, align 8
  %incdec.ptr44 = getelementptr i8, ptr %30, i32 -1
  store ptr %incdec.ptr44, ptr %dout, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %call45 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %i2c_msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.body49, label %if.else

do.body49:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_pkt_xfer_i2c, %if.then58)) #6
          to label %done [label %if.then58], !srcloc !79

if.then58:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.6, i32 noundef %call45) #6
  br label %done

if.else:                                          ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call45)
  %cmp62.not = icmp eq i32 %call45, 2
  br i1 %cmp62.not, label %if.end70, label %do.end67

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev68 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %35 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9, i32 noundef %call45) #9
  br label %done

if.end70:                                         ; preds = %if.else
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %16, align 1
  %conv71 = zext i8 %38 to i32
  %result72 = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 4
  %39 = ptrtoint ptr %result72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv71, ptr %result72, align 4
  %ec_response73 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2
  %40 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %38, label %do.body92 [
    i8 0, label %if.end70.sw.epilog_crit_edge
    i8 8, label %sw.bb
  ]

if.end70.sw.epilog_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_pkt_xfer_i2c, %if.then87)) #6
          to label %done [label %if.then87], !srcloc !79

if.then87:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev88 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %41 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev88, align 4
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %43 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %command, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug289, ptr noundef %42, ptr noundef nonnull @.str.20, i32 noundef %44) #6
  br label %done

do.body92:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_pkt_xfer_i2c, %if.then104)) #6
          to label %do.end110 [label %if.then104], !srcloc !79

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  %dev105 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %45 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev105, align 4
  %command106 = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %47 = ptrtoint ptr %command106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %command106, align 4
  %49 = ptrtoint ptr %result72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %result72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug290, ptr noundef %46, ptr noundef nonnull @.str.21, i32 noundef %48, i32 noundef %50) #6
  br label %do.end110

do.end110:                                        ; preds = %if.then104, %do.body92
  %51 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp113 = icmp eq i8 %52, 1
  br i1 %cmp113, label %land.lhs.true, label %do.end110.sw.epilog_crit_edge

do.end110.sw.epilog_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %do.end110
  %packet_length = getelementptr inbounds %struct.ec_host_response_i2c, ptr %16, i32 0, i32 1
  %53 = ptrtoint ptr %packet_length to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %packet_length, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp116 = icmp eq i8 %54, 0
  br i1 %cmp116, label %land.lhs.true.done_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.epilog:                                        ; preds = %land.lhs.true.sw.epilog_crit_edge, %do.end110.sw.epilog_crit_edge, %if.end70.sw.epilog_crit_edge
  %packet_length120 = getelementptr inbounds %struct.ec_host_response_i2c, ptr %16, i32 0, i32 1
  %55 = ptrtoint ptr %packet_length120 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %packet_length120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp122 = icmp ult i8 %56, 8
  br i1 %cmp122, label %do.end127, label %if.end131

do.end127:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv121 = zext i8 %56 to i32
  %dev128 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %57 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev128, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.23, i32 noundef %conv121) #9
  br label %done

if.end131:                                        ; preds = %sw.epilog
  %59 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %insize, align 4
  %data_len = getelementptr inbounds %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %data_len, align 1
  %conv133 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv133)
  %cmp134 = icmp ult i32 %60, %conv133
  br i1 %cmp134, label %do.end139, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end131
  %63 = ptrtoint ptr %ec_response73 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ec_response73, align 1
  %arrayidx147.1 = getelementptr %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %arrayidx147.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx147.1, align 1
  %add150.1 = add i8 %66, %64
  %arrayidx147.2 = getelementptr %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %arrayidx147.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx147.2, align 1
  %add150.2 = add i8 %68, %add150.1
  %arrayidx147.3 = getelementptr i8, ptr %ec_response73, i32 3
  %69 = ptrtoint ptr %arrayidx147.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx147.3, align 1
  %add150.3 = add i8 %70, %add150.2
  %arrayidx147.4 = getelementptr %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %arrayidx147.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx147.4, align 1
  %add150.4 = add i8 %72, %add150.3
  %arrayidx147.5 = getelementptr i8, ptr %ec_response73, i32 5
  %73 = ptrtoint ptr %arrayidx147.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx147.5, align 1
  %add150.5 = add i8 %74, %add150.4
  %arrayidx147.6 = getelementptr %struct.ec_host_response_i2c, ptr %16, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %arrayidx147.6 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx147.6, align 1
  %add150.6 = add i8 %76, %add150.5
  %arrayidx147.7 = getelementptr i8, ptr %ec_response73, i32 7
  %77 = ptrtoint ptr %arrayidx147.7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx147.7, align 1
  %add150.7 = add i8 %78, %add150.6
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %16, i32 10
  %79 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %conv133)
  %80 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %data_len, align 1
  %conv157 = zext i16 %81 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp158251.not = icmp eq i16 %81, 0
  br i1 %cmp158251.not, label %for.body.preheader.for.end169_crit_edge, label %for.body.preheader.for.body160_crit_edge

for.body.preheader.for.body160_crit_edge:         ; preds = %for.body.preheader
  br label %for.body160

for.body.preheader.for.end169_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end169

do.end139:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  %dev140 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %82 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev140, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.26, i32 noundef %60, i32 noundef %conv133) #9
  br label %done

for.body160:                                      ; preds = %for.body160.for.body160_crit_edge, %for.body.preheader.for.body160_crit_edge
  %i.1253 = phi i32 [ %inc168, %for.body160.for.body160_crit_edge ], [ 0, %for.body.preheader.for.body160_crit_edge ]
  %sum.1252 = phi i8 [ %add165, %for.body160.for.body160_crit_edge ], [ %add150.7, %for.body.preheader.for.body160_crit_edge ]
  %arrayidx162 = getelementptr %struct.cros_ec_command, ptr %msg, i32 0, i32 5, i32 %i.1253
  %84 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx162, align 1
  %add165 = add i8 %85, %sum.1252
  %inc168 = add nuw nsw i32 %i.1253, 1
  %exitcond.not = icmp eq i32 %inc168, %conv157
  br i1 %exitcond.not, label %for.body160.for.end169_crit_edge, label %for.body160.for.body160_crit_edge

for.body160.for.body160_crit_edge:                ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body160

for.body160.for.end169_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end169

for.end169:                                       ; preds = %for.body160.for.end169_crit_edge, %for.body.preheader.for.end169_crit_edge
  %sum.1.lcssa = phi i8 [ %add150.7, %for.body.preheader.for.end169_crit_edge ], [ %add165, %for.body160.for.end169_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sum.1.lcssa)
  %tobool170.not = icmp eq i8 %sum.1.lcssa, 0
  br i1 %tobool170.not, label %for.end169.done_crit_edge, label %do.end174

for.end169.done_crit_edge:                        ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.end174:                                        ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #8
  %dev175 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %86 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev175, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.17) #9
  br label %done

done:                                             ; preds = %do.end174, %for.end169.done_crit_edge, %do.end139, %do.end127, %land.lhs.true.done_crit_edge, %if.then87, %sw.bb, %do.end67, %if.then58, %do.body49
  %ret.0 = phi i32 [ %call45, %if.then58 ], [ -5, %do.end67 ], [ -74, %do.end127 ], [ -90, %do.end139 ], [ -74, %do.end174 ], [ -11, %if.then87 ], [ -93, %land.lhs.true.done_crit_edge ], [ %conv157, %for.end169.done_crit_edge ], [ %call45, %do.body49 ], [ -11, %sw.bb ]
  %command179 = getelementptr inbounds %struct.cros_ec_command, ptr %msg, i32 0, i32 1
  %88 = ptrtoint ptr %command179 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %command179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %89)
  %cmp180 = icmp eq i32 %89, 210
  br i1 %cmp180, label %if.then182, label %done.if.end183_crit_edge

done.if.end183_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then182:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 50) #6
  br label %if.end183

if.end183:                                        ; preds = %if.then182, %done.if.end183_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2c_msg) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_check_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_prepare_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @cros_ec_suspend(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @cros_ec_resume(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_cros_ec_i2c__292_373_cros_ec_driver_init6, !1, !"__initcall__kmod_cros_ec_i2c__292_373_cros_ec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_cros_ec_driver_exit, !1, !"__exitcall_cros_ec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file293, !4, !"__UNIQUE_ID_file293", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_license294, !4, !"__UNIQUE_ID_license294", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 376, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 363, i32 11}
!10 = !{ptr @cros_ec_driver, !11, !"cros_ec_driver", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 361, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 305, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cros_ec_i2c_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @cros_ec_i2c_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 235, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cros_ec_cmd_xfer_i2c._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cros_ec_cmd_xfer_i2c._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 238, i32 3}
!27 = !{ptr @cros_ec_cmd_xfer_i2c._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cros_ec_cmd_xfer_i2c._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 251, i32 3}
!31 = !{ptr @cros_ec_cmd_xfer_i2c._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cros_ec_cmd_xfer_i2c._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 263, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cros_ec_cmd_xfer_i2c.__UNIQUE_ID_ddebug291, !34, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 266, i32 3}
!39 = !{ptr @cros_ec_cmd_xfer_i2c._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cros_ec_cmd_xfer_i2c._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 97, i32 3}
!43 = !{ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!44 = !{ptr @cros_ec_pkt_xfer_i2c._entry, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 100, i32 3}
!46 = !{ptr @cros_ec_pkt_xfer_i2c._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 114, i32 3}
!49 = !{ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 119, i32 3}
!52 = !{ptr @cros_ec_pkt_xfer_i2c.__UNIQUE_ID_ddebug290, !51, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 137, i32 3}
!55 = !{ptr @cros_ec_pkt_xfer_i2c._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cros_ec_pkt_xfer_i2c._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 145, i32 3}
!59 = !{ptr @cros_ec_pkt_xfer_i2c._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cros_ec_pkt_xfer_i2c._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @cros_ec_pkt_xfer_i2c._entry.28, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 166, i32 3}
!63 = !{ptr @cros_ec_pkt_xfer_i2c._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @cros_ec_i2c_of_match, !65, !"cros_ec_i2c_of_match", i1 false, i1 false}
!65 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 340, i32 34}
!66 = !{ptr @cros_ec_i2c_pm_ops, !67, !"cros_ec_i2c_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 335, i32 32}
!68 = !{ptr @cros_ec_i2c_id, !69, !"cros_ec_i2c_id", i1 false, i1 false}
!69 = !{!"../drivers/platform/chrome/cros_ec_i2c.c", i32 347, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148955200, i64 2148955205, i64 2148955218, i64 2148955262, i64 2148955296, i64 2148955317}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2155741917, i64 2155742418, i64 2155741954, i64 2155742010, i64 2155742044, i64 2155742068, i64 2155742109, i64 2155742130, i64 2155742158, i64 2155742192}
!82 = !{i64 2155743584, i64 2155744085, i64 2155743621, i64 2155743677, i64 2155743711, i64 2155743735, i64 2155743776, i64 2155743797, i64 2155743825, i64 2155743859}
