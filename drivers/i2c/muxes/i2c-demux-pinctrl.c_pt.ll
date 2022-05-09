; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-demux-pinctrl.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-demux-pinctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_demux_pinctrl_priv = type { i32, i32, ptr, ptr, %struct.i2c_adapter, %struct.i2c_algorithm, [0 x %struct.i2c_demux_pinctrl_chan] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_demux_pinctrl_chan = type { ptr, ptr, %struct.of_changeset }
%struct.of_changeset = type { %struct.list_head }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_i2c_demux_pinctrl__289_316_i2c_demux_pinctrl_driver_init6 = internal global ptr @i2c_demux_pinctrl_driver_init, section ".initcall6.init", align 4
@i2c_demux_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_demux_pinctrl_probe, ptr @i2c_demux_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_demux_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_demux_pinctrl_driver_exit = internal global ptr @i2c_demux_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"i2c_demux_pinctrl.description=pinctrl-based I2C demux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [65 x i8] c"i2c_demux_pinctrl.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [59 x i8] c"i2c_demux_pinctrl.file=drivers/i2c/muxes/i2c-demux-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"i2c_demux_pinctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [51 x i8] c"i2c_demux_pinctrl.alias=platform:i2c-demux-pinctrl\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c-demux-pinctrl\00", [46 x i8] zeroinitializer }, align 32
@i2c_demux_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-demux-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-parent\00", [21 x i8] zeroinitializer }, align 32
@i2c_demux_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Need at least two I2C masters to switch\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_demux_pinctrl_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/i2c/muxes/i2c-demux-pinctrl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_demux_pinctrl_probe._entry_ptr = internal global ptr @i2c_demux_pinctrl_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-bus-name\00", [19 x i8] zeroinitializer }, align 32
@i2c_demux_pinctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't get phandle for parent %d\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_demux_pinctrl_probe._entry_ptr.10 = internal global ptr @i2c_demux_pinctrl_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@dev_attr_available_masters = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_masters_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_master = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_master_show, ptr @current_master_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c-demux (master i2c-%d)\00", [38 x i8] zeroinitializer }, align 32
@i2c_demux_activate_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to setup demux-adapter %d (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c_demux_activate_master\00", [38 x i8] zeroinitializer }, align 32
@i2c_demux_activate_master._entry_ptr = internal global ptr @i2c_demux_activate_master._entry, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"available_masters\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d:%pOF%c\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"current_master\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"i2c_demux_pinctrl_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 308, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 310, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"i2c_demux_pinctrl_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 302, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 215, i32 44 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 217, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 229, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 238, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 244, i32 44 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 245, i32 45 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"dev_attr_available_masters\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"dev_attr_current_master\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 104, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 125, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 176, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 170, i32 54 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 206, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [41 x i8] c"../drivers/i2c/muxes/i2c-demux-pinctrl.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 184, i32 22 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_i2c_demux_pinctrl_driver_exit, ptr @__initcall__kmod_i2c_demux_pinctrl__289_316_i2c_demux_pinctrl_driver_init6, ptr @i2c_demux_activate_master._entry, ptr @i2c_demux_activate_master._entry_ptr, ptr @i2c_demux_pinctrl_driver_exit, ptr @i2c_demux_pinctrl_probe._entry, ptr @i2c_demux_pinctrl_probe._entry.8, ptr @i2c_demux_pinctrl_probe._entry_ptr, ptr @i2c_demux_pinctrl_probe._entry_ptr.10, ptr @i2c_demux_pinctrl_driver, ptr @.str, ptr @i2c_demux_pinctrl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @dev_attr_available_masters, ptr @dev_attr_current_master, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_demux_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_demux_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_demux_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_demux_pinctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_available_masters to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_master to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_demux_activate_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_demux_pinctrl_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_demux_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_demux_pinctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup66

if.end:                                           ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 16) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 1408) #8
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 64) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end.cleanup66_crit_edge, label %devm_kcalloc.exit, !prof !64

if.end.cleanup66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

devm_kcalloc.exit:                                ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %call5.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %devm_kcalloc.exit.cleanup66_crit_edge, label %if.end9

devm_kcalloc.exit.cleanup66_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end9:                                          ; preds = %devm_kcalloc.exit
  %bus_name = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 3
  %call10 = tail call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %bus_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.for.body_crit_edge, label %if.end9.cleanup66_crit_edge

if.end9.cleanup66_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.0146 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %8 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i126 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %i.0146, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool.not.i = icmp eq i32 %call.i126, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %for.body
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %for.inc

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %i.0146) #11
  br label %err_rollback

for.inc:                                          ; preds = %of_parse_phandle.exit
  %arrayidx = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %i.0146
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx, align 4
  %call24 = call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3264) #8
  %arrayidx25 = getelementptr %struct.property, ptr %call5.i.i, i32 %i.0146
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %arrayidx25, align 4
  %call27 = call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 3264) #8
  %value = getelementptr %struct.property, ptr %call5.i.i, i32 %i.0146, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call27, ptr %value, align 4
  %length = getelementptr %struct.property, ptr %call5.i.i, i32 %i.0146, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %length, align 4
  %chgset = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %i.0146, i32 2
  call void @of_changeset_init(ptr noundef %chgset) #8
  %call.i128 = call i32 @of_changeset_action(ptr noundef %chgset, i32 noundef 5, ptr noundef nonnull %10, ptr noundef %arrayidx25) #8
  %inc = add nuw nsw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %num_chan37 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_chan37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call, ptr %num_chan37, align 4
  %dev39 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev39, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_no_callbacks(ptr noundef %dev) #8
  %call41 = call fastcc i32 @i2c_demux_activate_master(ptr noundef nonnull %call.i, i32 noundef 0)
  %call43 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_available_masters) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.end.err_rollback_crit_edge

for.end.err_rollback_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rollback

if.end46:                                         ; preds = %for.end
  %call48 = call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_current_master) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end46.cleanup66_crit_edge, label %err_rollback_available

if.end46.cleanup66_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

err_rollback_available:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_available_masters) #8
  br label %err_rollback

err_rollback:                                     ; preds = %err_rollback_available, %for.end.err_rollback_crit_edge, %cleanup
  %i.0143 = phi i32 [ %i.0146, %cleanup ], [ %call, %for.end.err_rollback_crit_edge ], [ %call, %err_rollback_available ]
  %err.2 = phi i32 [ -2, %cleanup ], [ %call43, %for.end.err_rollback_crit_edge ], [ %call48, %err_rollback_available ]
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp slt i32 %19, 0
  br i1 %cmp.i, label %err_rollback.i2c_demux_deactivate_master.exit_crit_edge, label %if.end.i130

err_rollback.i2c_demux_deactivate_master.exit_crit_edge: ; preds = %err_rollback
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_demux_deactivate_master.exit

if.end.i130:                                      ; preds = %err_rollback
  call void @__sanitizer_cov_trace_pc() #10
  %cur_adap.i = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 4
  call void @i2c_del_adapter(ptr noundef %cur_adap.i) #8
  %parent_adap.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %19, i32 1
  %20 = ptrtoint ptr %parent_adap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent_adap.i, align 4
  call void @i2c_put_adapter(ptr noundef %21) #8
  %chgset.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %19, i32 2
  %call.i129 = call i32 @of_changeset_revert(ptr noundef %chgset.i) #8
  %22 = ptrtoint ptr %parent_adap.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %parent_adap.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -22, ptr %call.i, align 8
  br label %i2c_demux_deactivate_master.exit

i2c_demux_deactivate_master.exit:                 ; preds = %if.end.i130, %err_rollback.i2c_demux_deactivate_master.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0143)
  %cmp55147.not = icmp eq i32 %i.0143, 0
  br i1 %cmp55147.not, label %i2c_demux_deactivate_master.exit.cleanup66_crit_edge, label %i2c_demux_deactivate_master.exit.for.body56_crit_edge

i2c_demux_deactivate_master.exit.for.body56_crit_edge: ; preds = %i2c_demux_deactivate_master.exit
  br label %for.body56

i2c_demux_deactivate_master.exit.cleanup66_crit_edge: ; preds = %i2c_demux_deactivate_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %i2c_demux_deactivate_master.exit.for.body56_crit_edge
  %j.0148 = phi i32 [ %inc64, %for.body56.for.body56_crit_edge ], [ 0, %i2c_demux_deactivate_master.exit.for.body56_crit_edge ]
  %arrayidx58 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %j.0148
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx58, align 4
  call void @of_node_put(ptr noundef %25) #8
  %chgset62 = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %call.i, i32 0, i32 6, i32 %j.0148, i32 2
  call void @of_changeset_destroy(ptr noundef %chgset62) #8
  %inc64 = add nuw nsw i32 %j.0148, 1
  %exitcond152.not = icmp eq i32 %inc64, %i.0143
  br i1 %exitcond152.not, label %for.body56.cleanup66_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56

for.body56.cleanup66_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

cleanup66:                                        ; preds = %for.body56.cleanup66_crit_edge, %i2c_demux_deactivate_master.exit.cleanup66_crit_edge, %if.end46.cleanup66_crit_edge, %if.end9.cleanup66_crit_edge, %devm_kcalloc.exit.cleanup66_crit_edge, %if.end.cleanup66_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %devm_kcalloc.exit.cleanup66_crit_edge ], [ %call10, %if.end9.cleanup66_crit_edge ], [ 0, %if.end46.cleanup66_crit_edge ], [ -12, %if.end.cleanup66_crit_edge ], [ %err.2, %i2c_demux_deactivate_master.exit.cleanup66_crit_edge ], [ %err.2, %for.body56.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_demux_pinctrl_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_current_master) #8
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_available_masters) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %entry.i2c_demux_deactivate_master.exit_crit_edge, label %if.end.i

entry.i2c_demux_deactivate_master.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_demux_deactivate_master.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_adap.i = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %cur_adap.i) #8
  %parent_adap.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %4 = ptrtoint ptr %parent_adap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_adap.i, align 4
  tail call void @i2c_put_adapter(ptr noundef %5) #8
  %chgset.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %3, i32 2
  %call.i = tail call i32 @of_changeset_revert(ptr noundef %chgset.i) #8
  %6 = ptrtoint ptr %parent_adap.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %parent_adap.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -22, ptr %1, align 8
  br label %i2c_demux_deactivate_master.exit

i2c_demux_deactivate_master.exit:                 ; preds = %if.end.i, %entry.i2c_demux_deactivate_master.exit_crit_edge
  %num_chan = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13 = icmp sgt i32 %9, 0
  br i1 %cmp13, label %i2c_demux_deactivate_master.exit.for.body_crit_edge, label %i2c_demux_deactivate_master.exit.for.end_crit_edge

i2c_demux_deactivate_master.exit.for.end_crit_edge: ; preds = %i2c_demux_deactivate_master.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

i2c_demux_deactivate_master.exit.for.body_crit_edge: ; preds = %i2c_demux_deactivate_master.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %i2c_demux_deactivate_master.exit.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %i2c_demux_deactivate_master.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %i.014
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @of_node_put(ptr noundef %11) #8
  %chgset = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %i.014, i32 2
  tail call void @of_changeset_destroy(ptr noundef %chgset) #8
  %inc = add nuw nsw i32 %i.014, 1
  %12 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_chan, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %i2c_demux_deactivate_master.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_demux_activate_master(ptr noundef %priv, i32 noundef %new_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chgset = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 6, i32 %new_chan, i32 2
  %call = tail call i32 @of_changeset_apply(ptr noundef %chgset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 6, i32 %new_chan
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @of_find_i2c_adapter_by_node(ptr noundef %1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_with_revert_crit_edge, label %if.end6

if.end.err_with_revert_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_with_revert

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 9
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call7 = tail call ptr @devm_pinctrl_get(ptr noundef %3) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %4 = ptrtoint ptr %call7 to i32
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then9.if.end22_crit_edge, label %if.then9.err_with_put_crit_edge

if.then9.err_with_put_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_with_put

if.then9.if.end22_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %if.end6
  %bus_name = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus_name, align 4
  %call13 = tail call ptr @pinctrl_lookup_state(ptr noundef %call7, ptr noundef %6) #8
  %cmp.i119 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call13 to i32
  br label %err_with_put

if.end17:                                         ; preds = %if.else
  %call18 = tail call i32 @pinctrl_select_state(ptr noundef %call7, ptr noundef %call13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.err_with_put_crit_edge, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end17.err_with_put_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_with_put

if.end22:                                         ; preds = %if.end17.if.end22_crit_edge, %if.then9.if.end22_crit_edge
  %parent_adap = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 6, i32 %new_chan, i32 1
  %8 = ptrtoint ptr %parent_adap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %parent_adap, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_chan, ptr %priv, align 8
  %algo = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i2c_demux_master_xfer, ptr %algo, align 8
  %algo25 = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %algo25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %algo25, align 8
  %master_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %master_xfer_atomic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master_xfer_atomic, align 4
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %if.end22.if.end30_crit_edge, label %if.then27

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %master_xfer_atomic29 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %master_xfer_atomic29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @i2c_demux_master_xfer, ptr %master_xfer_atomic29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22.if.end30_crit_edge
  %functionality = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %functionality to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @i2c_demux_functionality, ptr %functionality, align 8
  %cur_adap = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.13, i32 noundef %18)
  %19 = ptrtoint ptr %cur_adap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cur_adap, align 8
  %algo37 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %algo37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %algo, ptr %algo37, align 8
  %algo_data = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %priv, ptr %algo_data, align 4
  %parent42 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 9, i32 1
  %22 = ptrtoint ptr %parent42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent42, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 1
  %23 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class, align 4
  %class44 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %class44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %class44, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 8
  %26 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retries, align 8
  %retries46 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %retries46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %retries46, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 7
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout, align 4
  %timeout48 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %timeout48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %timeout48, align 4
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call3, i32 0, i32 17
  %32 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %quirks, align 8
  %quirks50 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 17
  %34 = ptrtoint ptr %quirks50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %quirks50, align 8
  %dev51 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 2
  %35 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev51, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %of_node54 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 4, i32 9, i32 27
  %39 = ptrtoint ptr %of_node54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %of_node54, align 8
  %call56 = tail call i32 @i2c_add_adapter(ptr noundef %cur_adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end30.err_with_put_crit_edge, label %if.end30.cleanup66_crit_edge

if.end30.cleanup66_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end30.err_with_put_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_with_put

err_with_put:                                     ; preds = %if.end30.err_with_put_crit_edge, %if.end17.err_with_put_crit_edge, %if.then15, %if.then9.err_with_put_crit_edge
  %ret.1 = phi i32 [ %4, %if.then9.err_with_put_crit_edge ], [ %call56, %if.end30.err_with_put_crit_edge ], [ %7, %if.then15 ], [ %call18, %if.end17.err_with_put_crit_edge ]
  tail call void @i2c_put_adapter(ptr noundef nonnull %call3) #8
  br label %err_with_revert

err_with_revert:                                  ; preds = %err_with_put, %if.end.err_with_revert_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_with_put ], [ -19, %if.end.err_with_revert_crit_edge ]
  %call63 = tail call i32 @of_changeset_revert(ptr noundef %chgset) #8
  br label %do.end

do.end:                                           ; preds = %err_with_revert, %entry.do.end_crit_edge
  %ret.3 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %ret.2, %err_with_revert ]
  %dev64 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %priv, i32 0, i32 2
  %40 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.14, i32 noundef %new_chan, i32 noundef %ret.3) #11
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -22, ptr %priv, align 8
  br label %cleanup66

cleanup66:                                        ; preds = %do.end, %if.end30.cleanup66_crit_edge
  %retval.0 = phi i32 [ %ret.3, %do.end ], [ 0, %if.end30.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_apply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_demux_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %parent_adap = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %4 = ptrtoint ptr %parent_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_adap, align 4
  %call = tail call i32 @__i2c_transfer(ptr noundef %5, ptr noundef %msgs, i32 noundef %num) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_demux_functionality(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %parent_adap = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %4 = ptrtoint ptr %parent_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_adap, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo, align 8
  %functionality = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality, align 4
  %call = tail call i32 %9(ptr noundef %5) #8
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_revert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_masters_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_chan = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16 = icmp sgt i32 %3, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.017 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %count.017
  %sub = sub nuw nsw i32 4096, %count.017
  %arrayidx = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %i.018
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %sub3 = add nsw i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.018, i32 %sub3)
  %cmp4 = icmp eq i32 %i.018, %sub3
  %cond = select i1 %cmp4, i32 10, i32 32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.17, i32 noundef %i.018, ptr noundef %6, i32 noundef %cond) #8
  %add = add i32 %call5, %count.017
  %inc = add nuw nsw i32 %i.018, 1
  %7 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %8)
  %cmp = icmp slt i32 %inc, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp1 = icmp ult i32 %add, 4096
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_master_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_master_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !65
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %num_chan = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp2.not = icmp ult i32 %4, %6
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp.i = icmp eq i32 %8, %4
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp slt i32 %8, 0
  br i1 %cmp.i.i, label %if.end.i.if.end2.i_crit_edge, label %i2c_demux_deactivate_master.exit.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2.i

i2c_demux_deactivate_master.exit.i:               ; preds = %if.end.i
  %cur_adap.i.i = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 4
  call void @i2c_del_adapter(ptr noundef %cur_adap.i.i) #8
  %parent_adap.i.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %8, i32 1
  %9 = ptrtoint ptr %parent_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_adap.i.i, align 4
  call void @i2c_put_adapter(ptr noundef %10) #8
  %chgset.i.i = getelementptr %struct.i2c_demux_pinctrl_priv, ptr %1, i32 0, i32 6, i32 %8, i32 2
  %call.i.i = call i32 @of_changeset_revert(ptr noundef %chgset.i.i) #8
  %11 = ptrtoint ptr %parent_adap.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent_adap.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -22, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %i2c_demux_deactivate_master.exit.i.if.end2.i_crit_edge, label %i2c_demux_deactivate_master.exit.i.i2c_demux_change_master.exit_crit_edge

i2c_demux_deactivate_master.exit.i.i2c_demux_change_master.exit_crit_edge: ; preds = %i2c_demux_deactivate_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_demux_change_master.exit

i2c_demux_deactivate_master.exit.i.if.end2.i_crit_edge: ; preds = %i2c_demux_deactivate_master.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2.i

if.end2.i:                                        ; preds = %i2c_demux_deactivate_master.exit.i.if.end2.i_crit_edge, %if.end.i.if.end2.i_crit_edge
  %call3.i = call fastcc i32 @i2c_demux_activate_master(ptr noundef %1, i32 noundef %4) #8
  br label %i2c_demux_change_master.exit

i2c_demux_change_master.exit:                     ; preds = %if.end2.i, %i2c_demux_deactivate_master.exit.i.i2c_demux_change_master.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end2.i ], [ %call.i.i, %i2c_demux_deactivate_master.exit.i.i2c_demux_change_master.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  %spec.select = select i1 %cmp6, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %i2c_demux_change_master.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ], [ %spec.select, %i2c_demux_change_master.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_i2c_demux_pinctrl__289_316_i2c_demux_pinctrl_driver_init6, !1, !"__initcall__kmod_i2c_demux_pinctrl__289_316_i2c_demux_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 316, i32 1}
!2 = !{ptr @__exitcall_i2c_demux_pinctrl_driver_exit, !1, !"__exitcall_i2c_demux_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 318, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 319, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 320, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 321, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 310, i32 11}
!14 = !{ptr @i2c_demux_pinctrl_driver, !15, !"i2c_demux_pinctrl_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 308, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 215, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 217, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i2c_demux_pinctrl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @i2c_demux_pinctrl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 229, i32 36}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 238, i32 4}
!30 = !{ptr @i2c_demux_pinctrl_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @i2c_demux_pinctrl_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 244, i32 44}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 245, i32 45}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 104, i32 4}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 125, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @i2c_demux_activate_master._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @i2c_demux_activate_master._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 176, i32 8}
!45 = !{ptr @dev_attr_available_masters, !44, !"dev_attr_available_masters", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 170, i32 54}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 206, i32 8}
!50 = !{ptr @dev_attr_current_master, !49, !"dev_attr_current_master", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 184, i32 22}
!53 = !{ptr @i2c_demux_pinctrl_of_match, !54, !"i2c_demux_pinctrl_of_match", i1 false, i1 false}
!54 = !{!"../drivers/i2c/muxes/i2c-demux-pinctrl.c", i32 302, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"auto-init"}
