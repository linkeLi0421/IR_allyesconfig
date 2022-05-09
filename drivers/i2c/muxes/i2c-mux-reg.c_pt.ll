; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-reg.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_reg_platform_data = type { i32, i32, ptr, i32, i8, i8, ptr, i32, i8, ptr, i32 }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }

@__initcall__kmod_i2c_mux_reg__289_262_i2c_mux_reg_driver_init6 = internal global ptr @i2c_mux_reg_driver_init, section ".initcall6.init", align 4
@i2c_mux_reg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_mux_reg_probe, ptr @i2c_mux_reg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mux_reg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_mux_reg_driver_exit = internal global ptr @i2c_mux_reg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [62 x i8] c"i2c_mux_reg.description=Register-based I2C multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [52 x i8] c"i2c_mux_reg.author=York Sun <yorksun@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [47 x i8] c"i2c_mux_reg.file=drivers/i2c/muxes/i2c-mux-reg\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"i2c_mux_reg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [39 x i8] c"i2c_mux_reg.alias=platform:i2c-mux-reg\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c-mux-reg\00", [20 x i8] zeroinitializer }, align 32
@i2c_mux_reg_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-mux-reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error parsing device tree\00", [38 x i8] zeroinitializer }, align 32
@i2c_mux_reg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Register not set, using platform resource\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_mux_reg_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/muxes/i2c-mux-reg.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_mux_reg_probe._entry_ptr = internal global ptr @i2c_mux_reg_probe._entry, section ".printk_index", align 4
@i2c_mux_reg_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 197, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid register size\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i2c_mux_reg_probe._entry_ptr.10 = internal global ptr @i2c_mux_reg_probe._entry.7, section ".printk_index", align 4
@i2c_mux_reg_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_mux_reg\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d port mux on %s adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-parent\00", [21 x i8] zeroinitializer }, align 32
@i2c_mux_reg_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 94, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot parse i2c-parent\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_mux_reg_probe_dt\00", [43 x i8] zeroinitializer }, align 32
@i2c_mux_reg_probe_dt._entry_ptr = internal global ptr @i2c_mux_reg_probe_dt._entry, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write-only\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle-state\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"i2c_mux_reg_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 253, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 257, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"i2c_mux_reg_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 247, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 176, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 184, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 197, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 224, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 92, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 94, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 106, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 121, i32 51 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 130, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [35 x i8] c"../drivers/i2c/muxes/i2c-mux-reg.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 135, i32 32 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_i2c_mux_reg_driver_exit, ptr @__initcall__kmod_i2c_mux_reg__289_262_i2c_mux_reg_driver_init6, ptr @i2c_mux_reg_driver_exit, ptr @i2c_mux_reg_probe._entry, ptr @i2c_mux_reg_probe._entry.7, ptr @i2c_mux_reg_probe._entry_ptr, ptr @i2c_mux_reg_probe._entry_ptr.10, ptr @i2c_mux_reg_probe_dt._entry, ptr @i2c_mux_reg_probe_dt._entry_ptr, ptr @i2c_mux_reg_driver, ptr @.str, ptr @i2c_mux_reg_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_reg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_reg_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_reg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_reg_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_reg_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_reg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_mux_reg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_mux_reg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_mux_reg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_reg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = call ptr @memcpy(ptr %call.i, ptr %1, i32 40)
  br label %if.end12

if.else:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %5 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %4, null
  %6 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  br i1 %tobool.not.i, label %if.else.i2c_mux_reg_probe_dt.exit.thread_crit_edge, label %if.end.i

if.else.i2c_mux_reg_probe_dt.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread

if.end.i:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %7 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %8 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end4.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %i2c_mux_reg_probe_dt.exit.thread

if.end4.i:                                        ; preds = %of_parse_phandle.exit.i
  %call5.i = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %9) #6
  call void @of_node_put(ptr noundef nonnull %9) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, label %if.end8.i

if.end4.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call5.i, i32 0, i32 11
  %10 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr.i.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_adapter, ptr %call5.i, i32 0, i32 9
  call void @put_device(ptr noundef %dev10.i) #6
  %call.i102.i = call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i102.i, null
  br i1 %cmp.not5.i.i, label %if.end8.i.of_get_child_count.exit.i_crit_edge, label %if.end8.i.for.body.i.i_crit_edge

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

if.end8.i.of_get_child_count.exit.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i102.i, %if.end8.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end8.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end8.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %n_values.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %n_values.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num.0.lcssa.i.i, ptr %n_values.i, align 4
  %call.i103.i = call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i103.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %of_get_child_count.exit.i.if.end24.i_crit_edge

of_get_child_count.exit.i.if.end24.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.else.i:                                        ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i104.i = call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, ptr noundef null) #6
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %of_get_child_count.exit.i.if.end24.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %of_get_child_count.exit.i.if.end24.i_crit_edge ]
  %little_endian22.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %little_endian22.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink.i, ptr %little_endian22.i, align 4
  %call.i106.i = call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.18, ptr noundef null) #6
  %tobool.i107.i = icmp ne ptr %call.i106.i, null
  %write_only.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool.i107.i to i8
  %15 = ptrtoint ptr %write_only.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %write_only.i, align 1
  %16 = ptrtoint ptr %n_values.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_values.i, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #6
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end24.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !63

if.end24.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end24.i
  %20 = extractvalue { i32, i1 } %18, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %20, i32 noundef 3520) #6
  %tobool31.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool31.not.i, label %devm_kcalloc.exit.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, label %if.end33.i

devm_kcalloc.exit.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread

if.end33.i:                                       ; preds = %devm_kcalloc.exit.i
  %call34.i = call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #6
  %cmp.not113.i = icmp eq ptr %call34.i, null
  br i1 %cmp.not113.i, label %if.end33.i.for.end.i_crit_edge, label %if.end33.i.for.body.i_crit_edge

if.end33.i.for.body.i_crit_edge:                  ; preds = %if.end33.i
  br label %for.body.i

if.end33.i.for.end.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end33.i.for.body.i_crit_edge
  %i.0115.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end33.i.for.body.i_crit_edge ]
  %child.0114.i = phi ptr [ %call36.i, %for.body.i.for.body.i_crit_edge ], [ %call34.i, %if.end33.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %call5.i.i.i, i32 %i.0115.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0114.i, ptr noundef nonnull @.str.19, ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0) #6
  %inc.i = add i32 %i.0115.i, 1
  %call36.i = call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef nonnull %child.0114.i) #6
  %cmp.not.i = icmp eq ptr %call36.i, null
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end33.i.for.end.i_crit_edge
  %values38.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %values38.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i.i, ptr %values38.i, align 4
  %idle.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 7
  %call.i.i108.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.20, ptr noundef %idle.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i108.i)
  %tobool41.not.i = icmp sgt i32 %call.i.i108.i, -1
  br i1 %tobool41.not.i, label %if.then42.i, label %for.end.i.if.end44.i_crit_edge

for.end.i.if.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then42.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %idle_in_use.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %idle_in_use.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %idle_in_use.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %for.end.i.if.end44.i_crit_edge
  %call45.i = call i32 @of_address_to_resource(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp eq i32 %call45.i, 0
  br i1 %cmp46.i, label %if.then47.i, label %if.end44.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge

if.end44.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread163

if.then47.i:                                      ; preds = %if.end44.i
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %25 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %24, 1
  %add.i.i = sub i32 %sub.i.i, %26
  %reg_size.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i.i, ptr %reg_size.i, align 4
  %call51.i = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %res.i) #6
  %reg.i = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call51.i, ptr %reg.i, align 4
  %cmp.i.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %i2c_mux_reg_probe_dt.exit, label %if.then47.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge

if.then47.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge: ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %i2c_mux_reg_probe_dt.exit.thread163

i2c_mux_reg_probe_dt.exit.thread:                 ; preds = %devm_kcalloc.exit.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, %if.end24.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, %if.end4.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge, %do.end.i, %if.else.i2c_mux_reg_probe_dt.exit.thread_crit_edge
  %retval.0.i158.ph = phi i32 [ -12, %if.end24.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge ], [ -517, %if.end4.i.i2c_mux_reg_probe_dt.exit.thread_crit_edge ], [ -19, %if.else.i2c_mux_reg_probe_dt.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  br label %if.then8

i2c_mux_reg_probe_dt.exit.thread163:              ; preds = %if.then47.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge, %if.end44.i.i2c_mux_reg_probe_dt.exit.thread163_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  br label %if.end12

i2c_mux_reg_probe_dt.exit:                        ; preds = %if.then47.i
  %29 = ptrtoint ptr %call51.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  %cmp = icmp slt ptr %call51.i, null
  br i1 %cmp, label %i2c_mux_reg_probe_dt.exit.if.then8_crit_edge, label %i2c_mux_reg_probe_dt.exit.if.end12_crit_edge

i2c_mux_reg_probe_dt.exit.if.end12_crit_edge:     ; preds = %i2c_mux_reg_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

i2c_mux_reg_probe_dt.exit.if.then8_crit_edge:     ; preds = %i2c_mux_reg_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %i2c_mux_reg_probe_dt.exit.if.then8_crit_edge, %i2c_mux_reg_probe_dt.exit.thread
  %retval.0.i158161 = phi i32 [ %retval.0.i158.ph, %i2c_mux_reg_probe_dt.exit.thread ], [ %29, %i2c_mux_reg_probe_dt.exit.if.then8_crit_edge ]
  %call10 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i158161, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end12:                                         ; preds = %i2c_mux_reg_probe_dt.exit.if.end12_crit_edge, %i2c_mux_reg_probe_dt.exit.thread163, %if.then4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i, align 4
  %call15 = call ptr @i2c_get_adapter(i32 noundef %31) #6
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %reg = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %tobool20.not = icmp eq ptr %33, null
  br i1 %tobool20.not, label %do.end, label %if.end18.if.end38_crit_edge

if.end18.if.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end:                                           ; preds = %if.end18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %call23 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %end.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i, align 4
  %36 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call23, align 4
  %sub.i = add i32 %35, 1
  %add.i = sub i32 %sub.i, %37
  %reg_size = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %reg_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %reg_size, align 4
  %call27 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call23) #6
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call27, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %call27 to i32
  br label %err_put_parent

if.end38:                                         ; preds = %do.end.if.end38_crit_edge, %if.end18.if.end38_crit_edge
  %reg_size40 = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %reg_size40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_size40, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %do.end52 [
    i32 4, label %if.end38.if.end54_crit_edge
    i32 2, label %if.end38.if.end54_crit_edge176
    i32 1, label %if.end38.if.end54_crit_edge177
  ]

if.end38.if.end54_crit_edge177:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end38.if.end54_crit_edge176:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end52:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %err_put_parent

if.end54:                                         ; preds = %if.end38.if.end54_crit_edge, %if.end38.if.end54_crit_edge176, %if.end38.if.end54_crit_edge177
  %n_values = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_values, align 4
  %call57 = call ptr @i2c_mux_alloc(ptr noundef nonnull %call15, ptr noundef %dev, i32 noundef %45, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @i2c_mux_reg_select, ptr noundef null) #6
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end54.err_put_parent_crit_edge, label %if.end60

if.end54.err_put_parent_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_parent

if.end60:                                         ; preds = %if.end54
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call57, i32 0, i32 3
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call57, ptr %driver_data.i.i, align 4
  %idle_in_use = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %idle_in_use to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %idle_in_use, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool62.not = icmp eq i8 %49, 0
  br i1 %tobool62.not, label %if.end60.if.end64_crit_edge, label %if.then63

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %call57, i32 0, i32 5
  %50 = ptrtoint ptr %deselect to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @i2c_mux_reg_deselect, ptr %deselect, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %51 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp67168 = icmp sgt i32 %52, 0
  br i1 %cmp67168, label %for.body.lr.ph, label %if.end64.do.body86_crit_edge

if.end64.do.body86_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body86

for.body.lr.ph:                                   ; preds = %if.end64
  %base_nr = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 1
  %classes = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 6
  %values = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %call.i, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %cond.end78
  %inc = add nuw nsw i32 %i.0169, 1
  %53 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_values, align 4
  %cmp67 = icmp slt i32 %inc, %54
  br i1 %cmp67, label %for.cond.for.body_crit_edge, label %for.cond.do.body86_crit_edge

for.cond.do.body86_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body86

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %55 = ptrtoint ptr %base_nr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool69.not = icmp eq i32 %56, 0
  %add = add i32 %56, %i.0169
  %spec.select = select i1 %tobool69.not, i32 0, i32 %add
  %57 = ptrtoint ptr %classes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %classes, align 4
  %tobool73.not = icmp eq ptr %58, null
  br i1 %tobool73.not, label %for.body.cond.end78_crit_edge, label %cond.true74

for.body.cond.end78_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end78

cond.true74:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i32, ptr %58, i32 %i.0169
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %cond.true74, %for.body.cond.end78_crit_edge
  %cond79 = phi i32 [ %60, %cond.true74 ], [ 0, %for.body.cond.end78_crit_edge ]
  %61 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %values, align 4
  %arrayidx81 = getelementptr i32, ptr %62, i32 %i.0169
  %63 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx81, align 4
  %call82 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call57, i32 noundef %spec.select, i32 noundef %64, i32 noundef %cond79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.cond, label %err_del_mux_adapters

do.body86:                                        ; preds = %for.cond.do.body86_crit_edge, %if.end64.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_mux_reg_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_mux_reg_probe, %cleanup)) #6
          to label %if.then92 [label %cleanup], !srcloc !65

if.then92:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_values, align 4
  %67 = ptrtoint ptr %call57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call57, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_mux_reg_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %66, ptr noundef %name) #6
  br label %cleanup

err_del_mux_adapters:                             ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_mux_del_adapters(ptr noundef nonnull %call57) #6
  br label %err_put_parent

err_put_parent:                                   ; preds = %err_del_mux_adapters, %if.end54.err_put_parent_crit_edge, %do.end52, %if.then33
  %ret.0 = phi i32 [ -22, %do.end52 ], [ %call82, %err_del_mux_adapters ], [ %40, %if.then33 ], [ -12, %if.end54.err_put_parent_crit_edge ]
  call void @i2c_put_adapter(ptr noundef nonnull %call15) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_parent, %if.then92, %do.body86, %if.end12.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_put_parent ], [ %call10, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end12.cleanup_crit_edge ], [ 0, %if.then92 ], [ 0, %do.body86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_reg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @i2c_put_adapter(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_reg_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %call1 = tail call fastcc i32 @i2c_mux_reg_set(ptr noundef %1, i32 noundef %chan)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_reg_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %idle_in_use = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %idle_in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idle_in_use, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %idle = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idle, align 4
  %call2 = tail call fastcc i32 @i2c_mux_reg_set(ptr noundef %1, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_mux_reg_set(ptr nocapture noundef readonly %mux, i32 noundef %chan_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %reg_size = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 10
  %2 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_size, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %sw.bb16
    i32 1, label %sw.bb38
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end
  %little_endian = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 4
  %5 = ptrtoint ptr %little_endian to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %little_endian, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool3.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %chan_id) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %1, i32 %7) #6, !srcloc !66
  br label %if.end9

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %chan_id) #6, !srcloc !66
  br label %if.end9

if.end9:                                          ; preds = %do.body, %if.then4
  %write_only = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 5
  %10 = ptrtoint ptr %write_only to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_only, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.return_crit_edge

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  br label %return

sw.bb16:                                          ; preds = %if.end
  %little_endian18 = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 4
  %15 = ptrtoint ptr %little_endian18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %little_endian18, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %do.body24, label %if.then20

if.then20:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %chan_id to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %1, i16 %17) #6, !srcloc !70
  br label %if.end29

do.body24:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %conv26 = trunc i32 %chan_id to i16
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %conv26) #6, !srcloc !70
  br label %if.end29

if.end29:                                         ; preds = %do.body24, %if.then20
  %write_only31 = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 5
  %20 = ptrtoint ptr %write_only31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_only31, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool32.not = icmp eq i8 %21, 0
  br i1 %tobool32.not, label %if.then33, label %if.end29.return_crit_edge

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  br label %return

sw.bb38:                                          ; preds = %if.end
  %conv39 = trunc i32 %chan_id to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv39) #6, !srcloc !75
  %write_only43 = getelementptr inbounds %struct.i2c_mux_reg_platform_data, ptr %mux, i32 0, i32 5
  %25 = ptrtoint ptr %write_only43 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_only43, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool44.not = icmp eq i8 %26, 0
  br i1 %tobool44.not, label %if.then45, label %sw.bb38.return_crit_edge

sw.bb38.return_crit_edge:                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then45:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg, align 4
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  br label %return

return:                                           ; preds = %if.then45, %sw.bb38.return_crit_edge, %if.then33, %if.end29.return_crit_edge, %if.then12, %if.end9.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb38.return_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end29.return_crit_edge ], [ 0, %if.then33 ], [ 0, %if.end9.return_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_i2c_mux_reg__289_262_i2c_mux_reg_driver_init6, !1, !"__initcall__kmod_i2c_mux_reg__289_262_i2c_mux_reg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_i2c_mux_reg_driver_exit, !1, !"__exitcall_i2c_mux_reg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias294, !11, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 267, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 257, i32 11}
!14 = !{ptr @i2c_mux_reg_driver, !15, !"i2c_mux_reg_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 253, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 176, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 184, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i2c_mux_reg_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @i2c_mux_reg_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 197, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @i2c_mux_reg_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @i2c_mux_reg_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 224, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @i2c_mux_reg_probe.__UNIQUE_ID_ddebug288, !32, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 92, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 94, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @i2c_mux_reg_probe_dt._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @i2c_mux_reg_probe_dt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 106, i32 32}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 108, i32 39}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 121, i32 51}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 130, i32 31}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 135, i32 32}
!52 = !{ptr @i2c_mux_reg_of_match, !53, !"i2c_mux_reg_of_match", i1 false, i1 false}
!53 = !{!"../drivers/i2c/muxes/i2c-mux-reg.c", i32 247, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i8 0, i8 2}
!65 = !{i64 2148991641, i64 2148991646, i64 2148991659, i64 2148991703, i64 2148991737, i64 2148991758}
!66 = !{i64 6827605}
!67 = !{i64 6828023}
!68 = !{i64 2154360882}
!69 = !{i64 2154361687}
!70 = !{i64 6826985}
!71 = !{i64 2155534217}
!72 = !{i64 6827185}
!73 = !{i64 2154360270}
!74 = !{i64 2154361263}
!75 = !{i64 6827408}
!76 = !{i64 6827803}
!77 = !{i64 2154359658}
