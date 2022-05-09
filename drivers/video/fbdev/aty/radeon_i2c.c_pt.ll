; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.80], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.80 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.radeon_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"monid\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vga\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crt2\00", [27 x i8] zeroinitializer }, align 32
@radeon_probe_i2c_connector.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"radeonfb\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_probe_i2c_connector\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/fbdev/aty/radeon_i2c.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"radeonfb: I2C (port %d) ... not found\0A\00", [57 x i8] zeroinitializer }, align 32
@radeon_probe_i2c_connector.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 39, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"radeonfb: I2C (port %d) ... found LVDS panel\0A\00", [50 x i8] zeroinitializer }, align 32
@radeon_probe_i2c_connector.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"radeonfb: I2C (port %d) ... found TMDS panel\0A\00", [50 x i8] zeroinitializer }, align 32
@radeon_probe_i2c_connector.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"radeonfb: I2C (port %d) ... found CRT display\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeonfb %s\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@radeon_setup_i2c_bus.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"radeon_setup_i2c_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C bus %s registered.\0A\00", [40 x i8] zeroinitializer }, align 32
@radeon_setup_i2c_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.6, i32 96, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register I2C bus %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_setup_i2c_bus._entry_ptr = internal global ptr @radeon_setup_i2c_bus._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 107, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 111, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 115, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 119, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 151, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 158, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 161, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 165, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 73, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 94, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [40 x i8] c"../drivers/video/fbdev/aty/radeon_i2c.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 96, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @radeon_setup_i2c_bus._entry, ptr @radeon_setup_i2c_bus._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_setup_i2c_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_create_i2c_busses(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rinfo, ptr %i2c, align 8
  %ddc_reg = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 0, i32 1
  %1 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 104, ptr %ddc_reg, align 4
  %class = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %class, align 4
  tail call fastcc void @radeon_setup_i2c_bus(ptr noundef %i2c, ptr noundef nonnull @.str)
  %arrayidx9 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rinfo, ptr %arrayidx9, align 8
  %ddc_reg13 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 1, i32 1
  %4 = ptrtoint ptr %ddc_reg13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %ddc_reg13, align 4
  tail call fastcc void @radeon_setup_i2c_bus(ptr noundef %arrayidx9, ptr noundef nonnull @.str.1)
  %arrayidx18 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 2
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rinfo, ptr %arrayidx18, align 8
  %ddc_reg22 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 2, i32 1
  %6 = ptrtoint ptr %ddc_reg22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 96, ptr %ddc_reg22, align 4
  tail call fastcc void @radeon_setup_i2c_bus(ptr noundef %arrayidx18, ptr noundef nonnull @.str.2)
  %arrayidx27 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 3
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rinfo, ptr %arrayidx27, align 8
  %ddc_reg31 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 3, i32 1
  %8 = ptrtoint ptr %ddc_reg31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 108, ptr %ddc_reg31, align 4
  tail call fastcc void @radeon_setup_i2c_bus(ptr noundef %arrayidx27, ptr noundef nonnull @.str.3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_setup_i2c_bus(ptr noundef %chan, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 2
  %name1 = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 2, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1, i32 noundef 48, ptr noundef nonnull @.str.11, ptr noundef %name)
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3
  %algo_data = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %algo, ptr %algo_data, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 8
  %pdev = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %parent = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %setsda = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %setsda to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @radeon_gpio_setsda, ptr %setsda, align 4
  %setscl = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %setscl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @radeon_gpio_setscl, ptr %setscl, align 8
  %getsda = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %getsda to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @radeon_gpio_getsda, ptr %getsda, align 4
  %getscl = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %getscl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @radeon_gpio_getscl, ptr %getscl, align 8
  %udelay = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %udelay, align 4
  %timeout = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %timeout, align 8
  %13 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chan, ptr %algo, align 8
  %driver_data.i.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 2, i32 9, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chan, ptr %driver_data.i.i, align 4
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 8
  %ddc_reg.i = getelementptr inbounds %struct.radeon_i2c_chan, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %20 = and i32 %19, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i, align 8
  %23 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #5, !srcloc !47
  %25 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base.i, align 8
  %27 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %26, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 8
  %mmio_base.i1 = getelementptr inbounds %struct.radeonfb_info, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %mmio_base.i1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base.i1, align 8
  %34 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %33, i32 %35
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %37 = and i32 %36, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %mmio_base.i1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base.i1, align 8
  %40 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr5.i5 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i5, i32 %37) #5, !srcloc !47
  %42 = ptrtoint ptr %mmio_base.i1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio_base.i1, align 8
  %44 = ptrtoint ptr %ddc_reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ddc_reg.i, align 4
  %add.ptr10.i6 = getelementptr i8, ptr %43, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i6) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #5
  %call15 = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br i1 %cmp, label %do.body, label %do.end26

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_setup_i2c_bus.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_setup_i2c_bus, %if.end30)) #5
          to label %if.then20 [label %if.end30], !srcloc !52

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan, align 8
  %pdev22 = getelementptr inbounds %struct.radeonfb_info, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @radeon_setup_i2c_bus.__UNIQUE_ID_ddebug305, ptr noundef %dev23, ptr noundef nonnull @.str.13, ptr noundef %name) #5
  br label %if.end30

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan, align 8
  %pdev28 = getelementptr inbounds %struct.radeonfb_info, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %pdev28 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.14, ptr noundef %name) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.then20, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_delete_i2c_busses(ptr noundef %rinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %adapter = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %i2c, align 8
  %arrayidx8 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx8, align 8
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %adapter14 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 1, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter14) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx8, align 8
  %arrayidx20 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 2
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx20, align 8
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %if.end15.if.end27_crit_edge, label %if.then23

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %adapter26 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 2, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter26) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end15.if.end27_crit_edge
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx20, align 8
  %arrayidx32 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 3
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx32, align 8
  %tobool34.not = icmp eq ptr %10, null
  br i1 %tobool34.not, label %if.end27.if.end39_crit_edge, label %if.then35

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %adapter38 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 3, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter38) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end27.if.end39_crit_edge
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx32, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_probe_i2c_connector(ptr noundef %rinfo, i32 noundef %conn, ptr noundef writeonly %out_edid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %conn, -1
  %adapter = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 50, i32 %sub, i32 2
  %call = tail call ptr @fb_ddc_read(ptr noundef %adapter) #5
  %tobool.not = icmp eq ptr %out_edid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %out_edid to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %out_edid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_i2c_connector, %cleanup)) #5
          to label %if.then8 [label %cleanup], !srcloc !52

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.7, i32 noundef %conn) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx11 = getelementptr i8, ptr %call, i32 20
  %1 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool12.not = icmp sgt i8 %2, -1
  br i1 %tobool12.not, label %do.body58, label %if.then13

if.then13:                                        ; preds = %if.end10
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %3 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool14.not = icmp eq i32 %4, 0
  br i1 %tobool14.not, label %if.then13.do.body39_crit_edge, label %land.lhs.true

if.then13.do.body39_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

land.lhs.true:                                    ; preds = %if.then13
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 720
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not = icmp eq i32 %8, 0
  br i1 %tobool19.not, label %land.lhs.true.do.body39_crit_edge, label %do.body21

land.lhs.true.do.body39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_i2c_connector, %cleanup)) #5
          to label %if.then35 [label %cleanup], !srcloc !52

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.8, i32 noundef %conn) #5
  br label %cleanup

do.body39:                                        ; preds = %land.lhs.true.do.body39_crit_edge, %if.then13.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_i2c_connector, %cleanup)) #5
          to label %if.then53 [label %cleanup], !srcloc !52

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.9, i32 noundef %conn) #5
  br label %cleanup

do.body58:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@radeon_probe_i2c_connector, %cleanup)) #5
          to label %if.then72 [label %cleanup], !srcloc !52

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.10, i32 noundef %conn) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body58, %if.then53, %do.body39, %if.then35, %do.body21, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 2, %if.then35 ], [ 3, %if.then53 ], [ 1, %if.then72 ], [ 0, %do.body ], [ 2, %do.body21 ], [ 3, %do.body39 ], [ 1, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %ddc_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddc_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, -257
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %or = or i32 %8, 65536
  %spec.select = select i1 %tobool.not, i32 %or, i32 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 8
  %12 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ddc_reg, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #5, !srcloc !47
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %16 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddc_reg, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %ddc_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddc_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %7 = and i32 %6, -513
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %or = or i32 %8, 131072
  %spec.select = select i1 %tobool.not, i32 %or, i32 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 8
  %12 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ddc_reg, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #5, !srcloc !47
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %16 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ddc_reg, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_gpio_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %ddc_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddc_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %7 = lshr i32 %6, 16
  %.lobit = and i32 %7, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_gpio_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %ddc_reg = getelementptr inbounds %struct.radeon_i2c_chan, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %ddc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddc_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %7 = lshr i32 %6, 17
  %.lobit = and i32 %7, 1
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !27, !28, !29, !31, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 107, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 111, i32 39}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 115, i32 39}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 119, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 151, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug306, !9, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 158, i32 4}
!16 = !{ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug307, !15, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 161, i32 4}
!19 = !{ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug308, !18, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 165, i32 2}
!22 = !{ptr @radeon_probe_i2c_connector.__UNIQUE_ID_ddebug309, !21, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 73, i32 4}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 94, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @radeon_setup_i2c_bus.__UNIQUE_ID_ddebug305, !26, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/aty/radeon_i2c.c", i32 96, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @radeon_setup_i2c_bus._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @radeon_setup_i2c_bus._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 5003218}
!45 = !{i64 2156329981}
!46 = !{i64 2156330306}
!47 = !{i64 5002800}
!48 = !{i64 2156331092}
!49 = !{i64 2156328275}
!50 = !{i64 2156328600}
!51 = !{i64 2156329386}
!52 = !{i64 2148968622, i64 2148968627, i64 2148968640, i64 2148968684, i64 2148968718, i64 2148968739}
!53 = !{i64 2156344062}
!54 = !{i64 2156332301}
!55 = !{i64 2156331687}
