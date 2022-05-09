; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/vl53l0x-i2c.c_pt.bc'
source_filename = "../drivers/iio/proximity/vl53l0x-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vl53l0x_data = type { ptr, %struct.completion }

@__initcall__kmod_vl53l0x_i2c__288_248_vl53l0x_driver_init6 = internal global ptr @vl53l0x_driver_init, section ".initcall6.init", align 4
@vl53l0x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @vl53l0x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_vl53l0x_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vl53l0x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vl53l0x_driver_exit = internal global ptr @vl53l0x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"vl53l0x_i2c.author=Song Qiang <songqiang1304521@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"vl53l0x_i2c.description=ST vl53l0x ToF ranging sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [51 x i8] c"vl53l0x_i2c.file=drivers/iio/proximity/vl53l0x-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"vl53l0x_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vl53l0x-i2c\00", [20 x i8] zeroinitializer }, align 32
@st_vl53l0x_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,vl53l0x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vl53l0x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"vl53l0x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vl53l0x\00", [24 x i8] zeroinitializer }, align 32
@vl53l0x_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @vl53l0x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vl53l0x_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@vl53l0x_clear_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to clear error irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vl53l0x_clear_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/proximity/vl53l0x-i2c.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vl53l0x_clear_irq._entry_ptr = internal global ptr @vl53l0x_clear_irq._entry, section ".printk_index", align 4
@vl53l0x_clear_irq._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to clear range irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@vl53l0x_clear_irq._entry_ptr.9 = internal global ptr @vl53l0x_clear_irq._entry.7, section ".printk_index", align 4
@vl53l0x_clear_irq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 96, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to clear irq: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@vl53l0x_clear_irq._entry_ptr.12 = internal global ptr @vl53l0x_clear_irq._entry.10, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@vl53l0x_configure_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 66, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"devm_request_irq error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vl53l0x_configure_irq\00", [42 x i8] zeroinitializer }, align 32
@vl53l0x_configure_irq._entry_ptr = internal global ptr @vl53l0x_configure_irq._entry, section ".printk_index", align 4
@vl53l0x_configure_irq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 74, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to configure IRQ: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vl53l0x_configure_irq._entry_ptr.18 = internal global ptr @vl53l0x_configure_irq._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"vl53l0x_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 240, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 242, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"st_vl53l0x_dt_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 234, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"vl53l0x_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 228, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 208, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"vl53l0x_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 186, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"vl53l0x_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 151, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 87, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 92, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 96, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 87, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 66, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [39 x i8] c"../drivers/iio/proximity/vl53l0x-i2c.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 74, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_vl53l0x_driver_exit, ptr @__initcall__kmod_vl53l0x_i2c__288_248_vl53l0x_driver_init6, ptr @vl53l0x_clear_irq._entry, ptr @vl53l0x_clear_irq._entry.10, ptr @vl53l0x_clear_irq._entry.7, ptr @vl53l0x_clear_irq._entry_ptr, ptr @vl53l0x_clear_irq._entry_ptr.12, ptr @vl53l0x_clear_irq._entry_ptr.9, ptr @vl53l0x_configure_irq._entry, ptr @vl53l0x_configure_irq._entry.16, ptr @vl53l0x_configure_irq._entry_ptr, ptr @vl53l0x_configure_irq._entry_ptr.18, ptr @vl53l0x_driver_exit, ptr @vl53l0x_driver, ptr @.str, ptr @st_vl53l0x_dt_match, ptr @vl53l0x_id, ptr @.str.1, ptr @vl53l0x_info, ptr @vl53l0x_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_vl53l0x_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_clear_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_clear_irq._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_clear_irq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_configure_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl53l0x_configure_irq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vl53l0x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vl53l0x_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vl53l0x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @vl53l0x_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl53l0x_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 60) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #5
  %and.i = and i32 %call.i.i, 68681728
  call void @__sanitizer_cov_trace_const_cmp4(i32 68681728, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68681728
  br i1 %cmp.i.not, label %if.end6, label %if.end.cleanup16_crit_edge

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

if.end6:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.1, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vl53l0x_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vl53l0x_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_channels, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %if.then8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %completion = getelementptr inbounds %struct.vl53l0x_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.vl53l0x_data, ptr %1, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #5
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 8
  %call.i.i35 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %21, ptr noundef nonnull @vl53l0x_handle_irq, ptr noundef null, i32 noundef 2, ptr noundef %23, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i.i35) #8
  br label %cleanup16

if.end.i:                                         ; preds = %if.then8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 10, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i36 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i36, label %do.end8.i, label %vl53l0x_configure_irq.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call4.i) #8
  br label %cleanup16

vl53l0x_configure_irq.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool10.not = icmp eq i32 %call4.i, 0
  br i1 %tobool10.not, label %vl53l0x_configure_irq.exit.if.end13_crit_edge, label %vl53l0x_configure_irq.exit.cleanup16_crit_edge

vl53l0x_configure_irq.exit.cleanup16_crit_edge:   ; preds = %vl53l0x_configure_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

vl53l0x_configure_irq.exit.if.end13_crit_edge:    ; preds = %vl53l0x_configure_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %vl53l0x_configure_irq.exit.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %call15 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13, %vl53l0x_configure_irq.exit.cleanup16_crit_edge, %do.end8.i, %do.end.i, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.1 = phi i32 [ %call15, %if.end13 ], [ %call4.i, %vl53l0x_configure_irq.exit.cleanup16_crit_edge ], [ -12, %entry.cleanup16_crit_edge ], [ -95, %if.end.cleanup16_crit_edge ], [ %call4.i, %do.end8.i ], [ %call.i.i35, %do.end.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl53l0x_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buffer.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %3)
  %cmp.not = icmp eq i32 %3, 22
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer.i) #5
  %7 = getelementptr inbounds [12 x i8], ptr %buffer.i, i32 0, i32 10
  %8 = getelementptr inbounds [12 x i8], ptr %buffer.i, i32 0, i32 11
  %9 = call ptr @memset(ptr %buffer.i, i32 255, i32 12)
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb..loopexit_crit_edge, label %if.end.i

sw.bb..loopexit_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.end.i:                                         ; preds = %sw.bb
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then3.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.then3.i:                                       ; preds = %if.end.i
  %completion.i = getelementptr inbounds %struct.vl53l0x_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %completion.i, align 4
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then3.i..loopexit_crit_edge, label %if.else.i

if.then3.i..loopexit_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp8.i = icmp eq i32 %call5.i, 0
  br i1 %cmp8.i, label %if.else.i..loopexit_crit_edge, label %if.end11.i

if.else.i..loopexit_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.end11.i:                                       ; preds = %if.else.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 11, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end11.i.if.end.i.i_crit_edge

if.end11.i.if.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.2, i32 noundef %call.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end11.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 11, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end9.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.8, i32 noundef %call4.i.i) #8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %do.end9.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call12.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 19) #5
  %21 = and i32 %call12.i.i, -2147483641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end10.i.i.if.end24.i_crit_edge, label %do.end17.i.i

if.end10.i.i.if.end24.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.end17.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.11, i32 noundef %call12.i.i) #8
  br label %if.end24.i

do.body.i:                                        ; preds = %if.end19.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %tries.0.i = phi i16 [ %dec.i, %if.end19.i.do.body.i_crit_edge ], [ 20, %if.end.i.do.body.i_crit_edge ]
  %call13.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.body.i..loopexit_crit_edge, label %if.end16.i

do.body.i..loopexit_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.end16.i:                                       ; preds = %do.body.i
  %and.i = and i32 %call13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end16.i.if.end24.i_crit_edge

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end19.i:                                       ; preds = %if.end16.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #5
  %dec.i = add nsw i16 %tries.0.i, -1
  %tobool20.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool20.not.i, label %if.end19.i..loopexit_crit_edge, label %if.end19.i.do.body.i_crit_edge

if.end19.i.do.body.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end19.i..loopexit_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.end24.i:                                       ; preds = %if.end16.i.if.end24.i_crit_edge, %do.end17.i.i, %if.end10.i.i.if.end24.i_crit_edge
  %call25.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %6, i8 noundef zeroext 20, i8 noundef zeroext 12, ptr noundef nonnull %buffer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end24.i..loopexit_crit_edge, label %if.else28.i

if.end24.i..loopexit_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

if.else28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call25.i)
  %cmp29.not.i = icmp eq i32 %call25.i, 12
  br i1 %cmp29.not.i, label %vl53l0x_read_proximity.exit, label %if.else28.i..loopexit_crit_edge

if.else28.i..loopexit_crit_edge:                  ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %.loopexit

vl53l0x_read_proximity.exit:                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %7, align 1
  %conv.i = zext i8 %24 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %8, align 1
  %conv34.i = zext i8 %26 to i32
  %add.i = or i32 %shl.i, %conv34.i
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i) #5
  br label %cleanup

.loopexit:                                        ; preds = %if.else28.i..loopexit_crit_edge, %if.end24.i..loopexit_crit_edge, %if.end19.i..loopexit_crit_edge, %do.body.i..loopexit_crit_edge, %if.else.i..loopexit_crit_edge, %if.then3.i..loopexit_crit_edge, %sw.bb..loopexit_crit_edge
  %retval.0.i.ph = phi i32 [ -121, %if.else28.i..loopexit_crit_edge ], [ %call25.i, %if.end24.i..loopexit_crit_edge ], [ -110, %if.else.i..loopexit_crit_edge ], [ %call5.i, %if.then3.i..loopexit_crit_edge ], [ %call.i, %sw.bb..loopexit_crit_edge ], [ -110, %if.end19.i..loopexit_crit_edge ], [ %call13.i, %do.body.i..loopexit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer.i) #5
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %.loopexit, %vl53l0x_read_proximity.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %.loopexit ], [ 1, %vl53l0x_read_proximity.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl53l0x_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %completion = getelementptr inbounds %struct.vl53l0x_data, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_vl53l0x_i2c__288_248_vl53l0x_driver_init6, !1, !"__initcall__kmod_vl53l0x_i2c__288_248_vl53l0x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 248, i32 1}
!2 = !{ptr @__exitcall_vl53l0x_driver_exit, !1, !"__exitcall_vl53l0x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 250, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 251, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 252, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 242, i32 11}
!12 = !{ptr @vl53l0x_driver, !13, !"vl53l0x_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 240, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 208, i32 20}
!16 = !{ptr @vl53l0x_info, !17, !"vl53l0x_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 186, i32 30}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 87, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vl53l0x_clear_irq._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @vl53l0x_clear_irq._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 92, i32 3}
!28 = !{ptr @vl53l0x_clear_irq._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vl53l0x_clear_irq._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 96, i32 3}
!32 = !{ptr @vl53l0x_clear_irq._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vl53l0x_clear_irq._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @vl53l0x_channels, !35, !"vl53l0x_channels", i1 false, i1 false}
!35 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 151, i32 35}
!36 = !{ptr @init_completion.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/completion.h", i32 87, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 66, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vl53l0x_configure_irq._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vl53l0x_configure_irq._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 74, i32 3}
!46 = !{ptr @vl53l0x_configure_irq._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vl53l0x_configure_irq._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @st_vl53l0x_dt_match, !49, !"st_vl53l0x_dt_match", i1 false, i1 false}
!49 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 234, i32 34}
!50 = !{ptr @vl53l0x_id, !51, !"vl53l0x_id", i1 false, i1 false}
!51 = !{!"../drivers/iio/proximity/vl53l0x-i2c.c", i32 228, i32 35}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
