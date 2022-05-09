; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/ping.c_pt.bc'
source_filename = "../drivers/iio/proximity/ping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.ping_cfg = type { i32, i32, i64 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ping_data = type { ptr, ptr, %struct.mutex, i32, i64, i64, %struct.completion, %struct.completion, ptr }

@__initcall__kmod_ping__192_328_ping_driver_init6 = internal global ptr @ping_driver_init, section ".initcall6.init", align 4
@ping_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ping_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ping_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ping_driver_exit = internal global ptr @ping_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author193 = internal constant [47 x i8] c"ping.author=Andreas Klinger <ak@it-klinger.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [69 x i8] c"ping.description=PING sensors for distance measuring using one GPIOs\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [37 x i8] c"ping.file=drivers/iio/proximity/ping\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [17 x i8] c"ping.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias197 = internal constant [25 x i8] c"ping.alias=platform:ping\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ping-gpio\00", [22 x i8] zeroinitializer }, align 32
@of_ping_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parallax,ping\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pa_ping_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parallax,laserping\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pa_laser_ping_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ping_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ping_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/proximity/ping.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ping_probe._entry_ptr = internal global ptr @ping_probe._entry, section ".printk_index", align 4
@ping_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@ping_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get ping-gpios: err=%ld\0A\00", [61 x i8] zeroinitializer }, align 32
@ping_probe._entry_ptr.10 = internal global ptr @ping_probe._entry.8, section ".printk_index", align 4
@ping_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cansleep-GPIOs not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@ping_probe._entry_ptr.13 = internal global ptr @ping_probe._entry.11, section ".printk_index", align 4
@ping_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ping_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ping_chan_spec = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ping_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpiod_to_irq: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ping_read\00", [22 x i8] zeroinitializer }, align 32
@ping_read._entry_ptr = internal global ptr @ping_read._entry, section ".printk_index", align 4
@ping_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"request_irq: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ping_read._entry_ptr.19 = internal global ptr @ping_read._entry.17, section ".printk_index", align 4
@ping_read.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.20, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"distance out of range: dt=%lldns\0A\00", [62 x i8] zeroinitializer }, align 32
@ping_read.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.21, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"target too close or to far\0A\00", [36 x i8] zeroinitializer }, align 32
@ping_read.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.22, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"internal sensor error\0A\00", [41 x i8] zeroinitializer }, align 32
@ping_read.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.23, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"internal sensor timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@ping_read.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.3, ptr @.str.24, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error in gpiod_direction_output\0A\00", [63 x i8] zeroinitializer }, align 32
@pa_ping_cfg = internal constant { %struct.ping_cfg, [16 x i8] } { %struct.ping_cfg { i32 5, i32 0, i64 18500000 }, [16 x i8] zeroinitializer }, align 32
@pa_laser_ping_cfg = internal constant { %struct.ping_cfg, [16 x i8] } { %struct.ping_cfg { i32 5, i32 1, i64 15500000 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"ping_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 320, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 323, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"of_ping_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 269, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 285, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 293, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 297, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 299, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 305, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"ping_iio_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 256, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"ping_chan_spec\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 260, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 87, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 122, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 131, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 168, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 181, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 185, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 189, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 223, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"pa_ping_cfg\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 63, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"pa_laser_ping_cfg\00", align 1
@___asan_gen_.119 = private constant [32 x i8] c"../drivers/iio/proximity/ping.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 69, i32 30 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_ping_driver_exit, ptr @__initcall__kmod_ping__192_328_ping_driver_init6, ptr @ping_driver_exit, ptr @ping_probe._entry, ptr @ping_probe._entry.11, ptr @ping_probe._entry.8, ptr @ping_probe._entry_ptr, ptr @ping_probe._entry_ptr.10, ptr @ping_probe._entry_ptr.13, ptr @ping_read._entry, ptr @ping_read._entry.17, ptr @ping_read._entry_ptr, ptr @ping_read._entry_ptr.19, ptr @ping_driver, ptr @.str, ptr @of_ping_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ping_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @ping_iio_info, ptr @ping_chan_spec, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pa_ping_cfg, ptr @pa_laser_ping_cfg], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ping_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_chan_spec to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ping_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa_ping_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa_laser_ping_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ping_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ping_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ping_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 240) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %1, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %cfg = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %cfg, align 8
  %lock = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ping_probe.__key) #4
  %rising = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rising, align 4
  %wait.i = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #4
  %falling = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %falling to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %falling, align 4
  %wait.i57 = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i57, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #4
  %call8 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #4
  %gpiod_ping = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %gpiod_ping, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end19

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %7) #7
  %8 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_ping, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call21 = tail call i32 @gpiod_cansleep(ptr noundef %call8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.7, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ping_iio_info, ptr %info, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ping_chan_spec, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %num_channels, align 4
  %call29 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end26, %do.end14, %do.end
  %retval.0 = phi i32 [ %10, %do.end14 ], [ -19, %do.end26 ], [ %call29, %if.end28 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %1)
  %cmp.not = icmp eq i32 %1, 22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call fastcc i32 @ping_read(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %5 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %if.end3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb4 ], [ 1, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ping_read(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %lock = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %rising = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %rising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rising, align 4
  %falling = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %falling to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %falling, align 4
  %gpiod_ping = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_ping, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #4
  %cfg = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #4
  %13 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_ping, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #4
  %15 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_ping, align 4
  %call12 = tail call i32 @gpiod_direction_input(ptr noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpiod_ping, align 4
  %call16 = tail call i32 @gpiod_to_irq(ptr noundef %18) #4
  %irqnr = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %irqnr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call16, ptr %irqnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef %call16) #7
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %22 = ptrtoint ptr %irqnr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irqnr, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call16, ptr noundef nonnull @ping_handle_irq, ptr noundef null, i32 noundef 3, ptr noundef %25, ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp27 = icmp slt i32 %call.i, 0
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.18, i32 noundef %call.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call36 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %rising, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.err_reset_direction_crit_edge, label %if.else

if.end34.err_reset_direction_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset_direction

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp39 = icmp eq i32 %call36, 0
  br i1 %cmp39, label %if.else.err_reset_direction_crit_edge, label %if.end42

if.else.err_reset_direction_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset_direction

if.end42:                                         ; preds = %if.else
  %call44 = tail call i32 @wait_for_completion_killable_timeout(ptr noundef %falling, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.err_reset_direction_crit_edge, label %if.else47

if.end42.err_reset_direction_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset_direction

if.else47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp48 = icmp eq i32 %call44, 0
  br i1 %cmp48, label %if.else47.err_reset_direction_crit_edge, label %if.end51

if.else47.err_reset_direction_crit_edge:          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_reset_direction

if.end51:                                         ; preds = %if.else47
  %ts_falling = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %ts_falling to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ts_falling, align 8
  %ts_rising = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %ts_rising to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ts_rising, align 8
  %32 = ptrtoint ptr %irqnr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irqnr, align 4
  %call53 = tail call ptr @free_irq(i32 noundef %33, ptr noundef %indio_dev) #4
  %34 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpiod_ping, align 4
  %call55 = tail call i32 @gpiod_direction_output(ptr noundef %35, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %sub = sub i64 %29, %31
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg, align 8
  %timeout_ns = getelementptr inbounds %struct.ping_cfg, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %39)
  %cmp63 = icmp sgt i64 %sub, %39
  br i1 %cmp63, label %do.body65, label %if.end75

do.body65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_read.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_read, %if.then70)) #4
          to label %cleanup [label %if.then70], !srcloc !83

if.then70:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ping_read.__UNIQUE_ID_ddebug187, ptr noundef %41, ptr noundef nonnull @.str.20, i64 noundef %sub) #4
  br label %cleanup

if.end75:                                         ; preds = %if.end59
  %conv = trunc i64 %sub to i32
  %laserping_error = getelementptr inbounds %struct.ping_cfg, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %laserping_error to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %laserping_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool77.not = icmp eq i32 %43, 0
  br i1 %tobool77.not, label %if.end75.if.end150_crit_edge, label %if.then78

if.end75.if.end150_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

if.then78:                                        ; preds = %if.end75
  %44 = add i32 %conv, -12500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %44)
  %45 = icmp ult i32 %44, 1000000
  br i1 %45, label %do.body84, label %if.end101

do.body84:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_read.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_read, %if.then96)) #4
          to label %cleanup [label %if.then96], !srcloc !83

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ping_read.__UNIQUE_ID_ddebug188, ptr noundef %47, ptr noundef nonnull @.str.21) #4
  br label %cleanup

if.end101:                                        ; preds = %if.then78
  %48 = add i32 %conv, -13500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %48)
  %49 = icmp ult i32 %48, 1000000
  br i1 %49, label %do.body108, label %if.end125

do.body108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_read.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_read, %if.then120)) #4
          to label %cleanup [label %if.then120], !srcloc !83

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ping_read.__UNIQUE_ID_ddebug189, ptr noundef %51, ptr noundef nonnull @.str.22) #4
  br label %cleanup

if.end125:                                        ; preds = %if.end101
  %52 = add i32 %conv, -14500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %52)
  %53 = icmp ult i32 %52, 1000000
  br i1 %53, label %do.body132, label %if.end125.if.end150_crit_edge

if.end125.if.end150_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

do.body132:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_read.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_read, %if.then144)) #4
          to label %cleanup [label %if.then144], !srcloc !83

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ping_read.__UNIQUE_ID_ddebug190, ptr noundef %55, ptr noundef nonnull @.str.23) #4
  br label %cleanup

if.end150:                                        ; preds = %if.end125.if.end150_crit_edge, %if.end75.if.end150_crit_edge
  %mul151 = mul i32 %conv, 232
  %div = udiv i32 %mul151, 1350800
  br label %cleanup

err_reset_direction:                              ; preds = %if.else47.err_reset_direction_crit_edge, %if.end42.err_reset_direction_crit_edge, %if.else.err_reset_direction_crit_edge, %if.end34.err_reset_direction_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end34.err_reset_direction_crit_edge ], [ %call44, %if.end42.err_reset_direction_crit_edge ], [ -110, %if.else.err_reset_direction_crit_edge ], [ -110, %if.else47.err_reset_direction_crit_edge ]
  %56 = ptrtoint ptr %irqnr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irqnr, align 4
  %call153 = tail call ptr @free_irq(i32 noundef %57, ptr noundef %indio_dev) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  %58 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gpiod_ping, align 4
  %call156 = tail call i32 @gpiod_direction_output(ptr noundef %59, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err_reset_direction.cleanup_crit_edge, label %do.body159

err_reset_direction.cleanup_crit_edge:            ; preds = %err_reset_direction
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body159:                                       ; preds = %err_reset_direction
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ping_read.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ping_read, %if.then171)) #4
          to label %cleanup [label %if.then171], !srcloc !83

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ping_read.__UNIQUE_ID_ddebug191, ptr noundef %61, ptr noundef nonnull @.str.24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %do.body159, %err_reset_direction.cleanup_crit_edge, %if.end150, %if.then144, %do.body132, %if.then120, %do.body108, %if.then96, %do.body84, %if.then70, %do.body65, %if.then57, %do.end31, %do.end, %if.then
  %retval.0 = phi i32 [ %call12, %if.then ], [ %23, %do.end ], [ %call.i, %do.end31 ], [ %call55, %if.then57 ], [ %div, %if.end150 ], [ -5, %if.then70 ], [ -5, %if.then96 ], [ -5, %if.then120 ], [ -5, %if.then144 ], [ %ret.0, %if.then171 ], [ %ret.0, %err_reset_direction.cleanup_crit_edge ], [ -5, %do.body65 ], [ -5, %do.body84 ], [ -5, %do.body108 ], [ -5, %do.body132 ], [ %ret.0, %do.body159 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ping_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @ktime_get() #4
  %gpiod_ping = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpiod_ping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_ping, align 4
  %call2 = tail call i32 @gpiod_get_value(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ts_rising = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ts_rising to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1, ptr %ts_rising, align 8
  %rising = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ts_falling = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %ts_falling to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call1, ptr %ts_falling, align 8
  %falling = getelementptr inbounds %struct.ping_data, ptr %1, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %falling.sink = phi ptr [ %falling, %if.else ], [ %rising, %if.then ]
  tail call void @complete(ptr noundef %falling.sink) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_ping__192_328_ping_driver_init6, !1, !"__initcall__kmod_ping__192_328_ping_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/ping.c", i32 328, i32 1}
!2 = !{ptr @__exitcall_ping_driver_exit, !1, !"__exitcall_ping_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author193, !4, !"__UNIQUE_ID_author193", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/ping.c", i32 330, i32 1}
!5 = !{ptr @__UNIQUE_ID_description194, !6, !"__UNIQUE_ID_description194", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/ping.c", i32 331, i32 1}
!7 = !{ptr @__UNIQUE_ID_file195, !8, !"__UNIQUE_ID_file195", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/ping.c", i32 332, i32 1}
!9 = !{ptr @__UNIQUE_ID_license196, !8, !"__UNIQUE_ID_license196", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias197, !11, !"__UNIQUE_ID_alias197", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/ping.c", i32 333, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/ping.c", i32 323, i32 12}
!14 = !{ptr @ping_driver, !15, !"ping_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/ping.c", i32 320, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/proximity/ping.c", i32 285, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ping_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ping_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ping_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/proximity/ping.c", i32 293, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/proximity/ping.c", i32 297, i32 41}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/proximity/ping.c", i32 299, i32 3}
!31 = !{ptr @ping_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ping_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/proximity/ping.c", i32 305, i32 3}
!35 = !{ptr @ping_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ping_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ping_iio_info, !41, !"ping_iio_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/proximity/ping.c", i32 256, i32 30}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/proximity/ping.c", i32 122, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ping_read._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ping_read._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/proximity/ping.c", i32 131, i32 3}
!49 = !{ptr @ping_read._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ping_read._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/proximity/ping.c", i32 168, i32 3}
!53 = !{ptr @ping_read.__UNIQUE_ID_ddebug187, !52, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/proximity/ping.c", i32 181, i32 4}
!56 = !{ptr @ping_read.__UNIQUE_ID_ddebug188, !55, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/proximity/ping.c", i32 185, i32 4}
!59 = !{ptr @ping_read.__UNIQUE_ID_ddebug189, !58, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/proximity/ping.c", i32 189, i32 4}
!62 = !{ptr @ping_read.__UNIQUE_ID_ddebug190, !61, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/proximity/ping.c", i32 223, i32 3}
!65 = !{ptr @ping_read.__UNIQUE_ID_ddebug191, !64, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!66 = !{ptr @ping_chan_spec, !67, !"ping_chan_spec", i1 false, i1 false}
!67 = !{!"../drivers/iio/proximity/ping.c", i32 260, i32 35}
!68 = !{ptr @of_ping_match, !69, !"of_ping_match", i1 false, i1 false}
!69 = !{!"../drivers/iio/proximity/ping.c", i32 269, i32 34}
!70 = !{ptr @pa_ping_cfg, !71, !"pa_ping_cfg", i1 false, i1 false}
!71 = !{!"../drivers/iio/proximity/ping.c", i32 63, i32 30}
!72 = !{ptr @pa_laser_ping_cfg, !73, !"pa_laser_ping_cfg", i1 false, i1 false}
!73 = !{!"../drivers/iio/proximity/ping.c", i32 69, i32 30}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148184951, i64 2148184956, i64 2148184969, i64 2148185013, i64 2148185047, i64 2148185068}
