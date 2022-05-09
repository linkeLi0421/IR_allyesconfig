; ModuleID = '/llk/IR_all_yes/drivers/media/rc/mtk-cir.c_pt.bc'
source_filename = "../drivers/media/rc/mtk-cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_ir_data = type { ptr, ptr, i8, i8, i32 }
%struct.mtk_field_type = type { i32, i8, i32 }
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
%struct.mtk_ir = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.72, i8, i8 }
%union.anon.72 = type { i32 }

@__initcall__kmod_mtk_cir__235_449_mtk_ir_driver_init6 = internal global ptr @mtk_ir_driver_init, section ".initcall6.init", align 4
@mtk_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_ir_probe, ptr @mtk_ir_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_ir_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_ir_driver_exit = internal global ptr @mtk_ir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description236 = internal constant [59 x i8] c"mtk_cir.description=Mediatek IR Receiver Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [50 x i8] c"mtk_cir.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [38 x i8] c"mtk_cir.file=drivers/media/rc/mtk-cir\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"mtk_cir.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_cir\00", [24 x i8] zeroinitializer }, align 32
@mtk_ir_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-cir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-cir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get a ir clock.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtk_ir_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/rc/mtk-cir.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr = internal global ptr @mtk_ir_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate device\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.10 = internal global ptr @mtk_ir_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_cir/input0\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,rc-map-name\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register rc device\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.16 = internal global ptr @mtk_ir_probe._entry.14, section ".printk_index", align 4
@mtk_ir_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"try to enable ir_clk failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.19 = internal global ptr @mtk_ir_probe._entry.17, section ".printk_index", align 4
@mtk_ir_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.21 = internal global ptr @mtk_ir_probe._entry.20, section ".printk_index", align 4
@mtk_ir_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed request irq\0A\00", [44 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.24 = internal global ptr @mtk_ir_probe._entry.22, section ".printk_index", align 4
@mtk_ir_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 410, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Initialized MT7623 IR driver, sample period = %dus\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_ir_probe._entry_ptr.28 = internal global ptr @mtk_ir_probe._entry.25, section ".printk_index", align 4
@mtk_ir_irq.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtk_ir_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"@reg%d=0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@mtk_chk_period.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_chk_period\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"@pwm clk  = \09%lu\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_chk_period.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.33, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"@chkperiod = %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7623_data = internal constant { %struct.mtk_ir_data, [16 x i8] } { %struct.mtk_ir_data { ptr @mt7623_regs, ptr @mt7623_fields, i8 4, i8 15, i32 255 }, [16 x i8] zeroinitializer }, align 32
@mt7622_data = internal constant { %struct.mtk_ir_data, [16 x i8] } { %struct.mtk_ir_data { ptr @mt7622_regs, ptr @mt7622_fields, i8 32, i8 15, i32 65535 }, [16 x i8] zeroinitializer }, align 32
@mt7623_regs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 136, i32 204, i32 208], [16 x i8] zeroinitializer }, align 32
@mt7623_fields = internal constant { [2 x %struct.mtk_field_type], [40 x i8] } { [2 x %struct.mtk_field_type] [%struct.mtk_field_type { i32 16, i8 8, i32 2096896 }, %struct.mtk_field_type { i32 16, i8 0, i32 255 }], [40 x i8] zeroinitializer }, align 32
@mt7622_regs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 48, i32 28, i32 32], [16 x i8] zeroinitializer }, align 32
@mt7622_fields = internal constant { [2 x %struct.mtk_field_type], [40 x i8] } { [2 x %struct.mtk_field_type] [%struct.mtk_field_type { i32 36, i8 0, i32 33554431 }, %struct.mtk_field_type { i32 16, i8 0, i32 33554431 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"mtk_ir_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 440, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 444, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"mtk_ir_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 284, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 307, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 309, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 313, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 328, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 334, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 339, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 340, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 349, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 360, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 365, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 378, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 409, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 228, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 161, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 163, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"mt7623_data\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 268, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"mt7622_data\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 276, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"mt7623_regs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 76, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"mt7623_fields\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 114, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"mt7622_regs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 83, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"mt7622_fields\00", align 1
@___asan_gen_.143 = private constant [30 x i8] c"../drivers/media/rc/mtk-cir.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 119, i32 36 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_mtk_ir_driver_exit, ptr @__initcall__kmod_mtk_cir__235_449_mtk_ir_driver_init6, ptr @mtk_ir_driver_exit, ptr @mtk_ir_probe._entry, ptr @mtk_ir_probe._entry.14, ptr @mtk_ir_probe._entry.17, ptr @mtk_ir_probe._entry.20, ptr @mtk_ir_probe._entry.22, ptr @mtk_ir_probe._entry.25, ptr @mtk_ir_probe._entry.8, ptr @mtk_ir_probe._entry_ptr, ptr @mtk_ir_probe._entry_ptr.10, ptr @mtk_ir_probe._entry_ptr.16, ptr @mtk_ir_probe._entry_ptr.19, ptr @mtk_ir_probe._entry_ptr.21, ptr @mtk_ir_probe._entry_ptr.24, ptr @mtk_ir_probe._entry_ptr.28, ptr @mtk_ir_driver, ptr @.str, ptr @mtk_ir_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @mt7623_data, ptr @mt7622_data, ptr @mt7623_regs, ptr @mt7623_fields, ptr @mt7622_regs, ptr @mt7622_fields], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ir_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_fields to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_fields to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_ir_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_ir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_ir_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ir_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %data, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %clk = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %bus = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %bus, align 4
  %cmp.i219 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then14, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %bus, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %base, align 4
  %cmp.i220 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_rc_allocate_device(ptr noundef %dev1, i32 noundef 1) #6
  %rc = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25, ptr %rc, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call25, i32 0, i32 24
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv, align 4
  %16 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %device_name, align 8
  %19 = load ptr, ptr %rc, align 4
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %input_phys, align 4
  %21 = load ptr, ptr %rc, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 25, ptr %input_id, align 8
  %23 = load ptr, ptr %rc, align 4
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %23, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %vendor, align 2
  %25 = load ptr, ptr %rc, align 4
  %product = getelementptr inbounds %struct.rc_dev, ptr %25, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %product, align 4
  %27 = load ptr, ptr %rc, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %27, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %version, align 2
  %call43 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #6
  %tobool44.not = icmp eq ptr %call43, null
  %..str.13 = select i1 %tobool44.not, ptr @.str.13, ptr %call43
  %29 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rc, align 4
  %map_name46 = getelementptr inbounds %struct.rc_dev, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %map_name46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %..str.13, ptr %map_name46, align 4
  %32 = load ptr, ptr %rc, align 4
  %parent = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1, ptr %parent, align 8
  %34 = load ptr, ptr %rc, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str, ptr %driver_name, align 8
  %36 = load ptr, ptr %rc, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 130023420, ptr %allowed_protocols, align 8
  %38 = load ptr, ptr %rc, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %38, i32 0, i32 37
  %39 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 46, ptr %rx_resolution, align 8
  %40 = load ptr, ptr %rc, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %40, i32 0, i32 34
  %41 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 11985, ptr %timeout, align 4
  %42 = load ptr, ptr %rc, align 4
  %call54 = tail call i32 @devm_rc_register_device(ptr noundef %dev1, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end60:                                         ; preds = %if.end32
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call61 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.mtk_ir, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call61, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp = icmp slt i32 %call61, 0
  br i1 %cmp, label %if.end60.cleanup_crit_edge, label %if.end64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  %call66 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %47 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus, align 4
  %call74 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end80, label %do.end79

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %exit_clkdisable_clk

if.end80:                                         ; preds = %if.end72
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %arrayidx.i = getelementptr i32, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 %54
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !90
  %and.i = and i32 %57, -2
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %arrayidx3.i = getelementptr i32, ptr %61, i32 2
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx3.i, align 4
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %65, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %and.i) #6, !srcloc !91
  %66 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq, align 4
  %call.i221 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %67, ptr noundef nonnull @mtk_ir_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool83.not = icmp eq i32 %call.i221, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  %68 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus, align 4
  tail call void @clk_disable(ptr noundef %69) #6
  tail call void @clk_unprepare(ptr noundef %69) #6
  br label %exit_clkdisable_clk

if.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call fastcc i32 @mtk_chk_period(ptr noundef nonnull %call.i)
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %fields = getelementptr inbounds %struct.mtk_ir_data, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fields, align 4
  %offset = getelementptr inbounds %struct.mtk_field_type, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %offset, align 4
  %conv = zext i8 %75 to i32
  %shl = shl i32 %call89, %conv
  %mask = getelementptr inbounds %struct.mtk_field_type, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mask, align 4
  %and = and i32 %shl, %77
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %73, align 4
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %81, i32 %79
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  %neg.i = xor i32 %77, -1
  %and.i222 = and i32 %82, %neg.i
  %or.i = or i32 %and.i222, %and
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %84, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !91
  %85 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data, align 4
  %hw_period = getelementptr inbounds %struct.mtk_ir_data, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %hw_period to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hw_period, align 4
  %fields103 = getelementptr inbounds %struct.mtk_ir_data, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %fields103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fields103, align 4
  %arrayidx104 = getelementptr %struct.mtk_field_type, ptr %90, i32 1
  %offset105 = getelementptr %struct.mtk_field_type, ptr %90, i32 1, i32 1
  %91 = ptrtoint ptr %offset105 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %offset105, align 4
  %conv106 = zext i8 %92 to i32
  %shl107 = shl i32 %88, %conv106
  %mask111 = getelementptr %struct.mtk_field_type, ptr %90, i32 1, i32 2
  %93 = ptrtoint ptr %mask111 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mask111, align 4
  %and112 = and i32 %shl107, %94
  %95 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx104, align 4
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr.i224 = getelementptr i8, ptr %98, i32 %96
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224) #6, !srcloc !90
  %neg.i225 = xor i32 %94, -1
  %and.i226 = and i32 %99, %neg.i225
  %or.i227 = or i32 %and.i226, %and112
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr2.i228 = getelementptr i8, ptr %101, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i228, i32 %or.i227) #6, !srcloc !91
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr.i230 = getelementptr i8, ptr %103, i32 20
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #6, !srcloc !90
  %and.i231 = and i32 %104, -7937
  %or.i232 = or i32 %and.i231, 256
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %add.ptr2.i233 = getelementptr i8, ptr %106, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i233, i32 %or.i232) #6, !srcloc !91
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr.i235 = getelementptr i8, ptr %108, i32 12
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #6, !srcloc !90
  %or127 = or i32 %109, 8193
  %110 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base, align 4
  %add.ptr.i237 = getelementptr i8, ptr %111, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %or127) #6, !srcloc !91
  %112 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %arrayidx.i239 = getelementptr i32, ptr %115, i32 2
  %116 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i239, align 4
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %119, i32 %117
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i241) #6, !srcloc !90
  %or.i242 = or i32 %120, 1
  %121 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %arrayidx3.i243 = getelementptr i32, ptr %124, i32 2
  %125 = ptrtoint ptr %arrayidx3.i243 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx3.i243, align 4
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr.i2.i244 = getelementptr i8, ptr %128, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i244, i32 %or.i242) #6, !srcloc !91
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 46) #9
  br label %cleanup

exit_clkdisable_clk:                              ; preds = %do.end87, %do.end79
  %ret.0 = phi i32 [ -22, %do.end79 ], [ %call.i221, %do.end87 ]
  %129 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %130) #6
  tail call void @clk_unprepare(ptr noundef %130) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_clkdisable_clk, %if.end88, %do.end71, %if.end60.cleanup_crit_edge, %do.end59, %do.end31, %if.then21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %13, %if.then21 ], [ %call54, %do.end59 ], [ -22, %do.end71 ], [ %ret.0, %exit_clkdisable_clk ], [ 0, %if.end88 ], [ -12, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ir_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data.i = getelementptr inbounds %struct.mtk_ir, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %base.i.i = getelementptr inbounds %struct.mtk_ir, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !90
  %and.i = and i32 %10, -2
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx3.i = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3.i, align 4
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %and.i) #6, !srcloc !91
  %irq = getelementptr inbounds %struct.mtk_ir, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %20) #6
  %bus = getelementptr inbounds %struct.mtk_ir, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 4
  tail call void @clk_disable(ptr noundef %22) #6
  tail call void @clk_unprepare(ptr noundef %22) #6
  %clk = getelementptr inbounds %struct.mtk_ir, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  tail call void @clk_unprepare(ptr noundef %24) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ir_irq(i32 noundef %irqno, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.ir_raw_event, align 4
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #6
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %rc = getelementptr inbounds %struct.mtk_ir, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rc, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %3 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %.compoundliteral.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 1
  %4 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %duty_cycle.i, align 4
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 2
  %5 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %pulse.i, align 1
  %call.i = call i32 @ir_raw_event_store(ptr noundef %2, ptr noundef nonnull %.compoundliteral.i) #6
  %idle.i = getelementptr inbounds %struct.rc_dev, ptr %2, i32 0, i32 14
  %6 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %idle.i, align 8
  call void @ir_raw_event_handle(ptr noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.mtk_ir, ptr %dev_id, i32 0, i32 6
  %base.i = getelementptr inbounds %struct.mtk_ir, ptr %dev_id, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry
  %i.073 = phi i32 [ 0, %entry ], [ %inc23, %do.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx.i = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %i.073, 2
  %add.i = add i32 %12, %mul.i
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_ir_irq.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_ir_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_ir_irq.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.30, i32 noundef %i.073, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %and = and i32 %15, 255
  %18 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load10 = load i8, ptr %pulse, align 1
  %bf.set17 = xor i8 %bf.load10, -128
  store i8 %bf.set17, ptr %pulse, align 1
  %mul19 = mul nuw nsw i32 %and, 47
  %19 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul19, ptr %rawir, align 8
  %20 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rc, align 4
  %call21 = call i32 @ir_raw_event_store_with_filter(ptr noundef %21, ptr noundef nonnull %rawir) #6
  %and.1 = lshr i32 %15, 8
  %shr.1 = and i32 %and.1, 255
  %22 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load10.1 = load i8, ptr %pulse, align 1
  %bf.set17.1 = xor i8 %bf.load10.1, -128
  store i8 %bf.set17.1, ptr %pulse, align 1
  %mul19.1 = mul nuw nsw i32 %shr.1, 47
  %23 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul19.1, ptr %rawir, align 8
  %24 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc, align 4
  %call21.1 = call i32 @ir_raw_event_store_with_filter(ptr noundef %25, ptr noundef nonnull %rawir) #6
  %and.2 = lshr i32 %15, 16
  %shr.2 = and i32 %and.2, 255
  %26 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load10.2 = load i8, ptr %pulse, align 1
  %bf.set17.2 = xor i8 %bf.load10.2, -128
  store i8 %bf.set17.2, ptr %pulse, align 1
  %mul19.2 = mul nuw nsw i32 %shr.2, 47
  %27 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul19.2, ptr %rawir, align 8
  %28 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rc, align 4
  %call21.2 = call i32 @ir_raw_event_store_with_filter(ptr noundef %29, ptr noundef nonnull %rawir) #6
  %shr.3 = lshr i32 %15, 24
  %30 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load10.3 = load i8, ptr %pulse, align 1
  %bf.set17.3 = xor i8 %bf.load10.3, -128
  store i8 %bf.set17.3, ptr %pulse, align 1
  %mul19.3 = mul nuw nsw i32 %shr.3, 47
  %31 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul19.3, ptr %rawir, align 8
  %32 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc, align 4
  %call21.3 = call i32 @ir_raw_event_store_with_filter(ptr noundef %33, ptr noundef nonnull %rawir) #6
  %inc23 = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc23, 17
  br i1 %exitcond.not, label %for.end24, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr.3)
  %cmp26 = icmp eq i32 %shr.3, 255
  br i1 %cmp26, label %land.lhs.true, label %for.end24.if.then34_crit_edge

for.end24.if.then34_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

land.lhs.true:                                    ; preds = %for.end24
  %34 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load29 = load i8, ptr %pulse, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load29)
  %cmp32 = icmp sgt i8 %bf.load29, -1
  br i1 %cmp32, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.if.then34_crit_edge

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %land.lhs.true.if.then34_crit_edge, %for.end24.if.then34_crit_edge
  %35 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load36 = load i8, ptr %pulse, align 1
  %bf.clear37 = and i8 %bf.load36, 127
  store i8 %bf.clear37, ptr %pulse, align 1
  %36 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 11985, ptr %rawir, align 8
  %37 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rc, align 4
  %call40 = call i32 @ir_raw_event_store_with_filter(ptr noundef %38, ptr noundef nonnull %rawir) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %land.lhs.true.if.end41_crit_edge
  %39 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rc, align 4
  call void @ir_raw_event_handle(ptr noundef %40) #6
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %48, i32 %46
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #6, !srcloc !90
  %or.i = or i32 %49, 1
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %51, i32 %46
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %or.i) #6, !srcloc !91
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx45 = getelementptr i32, ptr %55, i32 3
  %56 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx45, align 4
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %59, i32 %57
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #6, !srcloc !90
  %or.i69 = or i32 %60, 1
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr2.i70 = getelementptr i8, ptr %62, i32 %57
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i70, i32 %or.i69) #6, !srcloc !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #6
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_chk_period(ptr nocapture noundef readonly %ir) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %bus = getelementptr inbounds %struct.mtk_ir, ptr %ir, i32 0, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %data = getelementptr inbounds %struct.mtk_ir, ptr %ir, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %div = getelementptr inbounds %struct.mtk_ir_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %div to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div, align 4
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000000
  %div1 = udiv i32 %mul, 46
  %div2 = udiv i32 %mul, 92
  %add = add i32 %div2, %call
  %div3 = udiv i32 %add, %div1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_chk_period.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_chk_period, %if.then)) #6
          to label %do.body14 [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ir, align 4
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %div11 = getelementptr inbounds %struct.mtk_ir_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %div11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div11, align 4
  %conv12 = zext i8 %13 to i32
  %div13 = udiv i32 %call9, %conv12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_chk_period.__UNIQUE_ID_ddebug232, ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %div13) #6
  br label %do.body14

do.body14:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_chk_period.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_chk_period, %if.then26)) #6
          to label %do.end30 [label %if.then26], !srcloc !92

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ir, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_chk_period.__UNIQUE_ID_ddebug233, ptr noundef %15, ptr noundef nonnull @.str.33, i32 noundef %div3) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  ret i32 %div3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_mtk_cir__235_449_mtk_ir_driver_init6, !1, !"__initcall__kmod_mtk_cir__235_449_mtk_ir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/mtk-cir.c", i32 449, i32 1}
!2 = !{ptr @__exitcall_mtk_ir_driver_exit, !1, !"__exitcall_mtk_ir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description236, !4, !"__UNIQUE_ID_description236", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/mtk-cir.c", i32 451, i32 1}
!5 = !{ptr @__UNIQUE_ID_author237, !6, !"__UNIQUE_ID_author237", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/mtk-cir.c", i32 452, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/mtk-cir.c", i32 453, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/mtk-cir.c", i32 444, i32 11}
!12 = !{ptr @mtk_ir_driver, !13, !"mtk_ir_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/mtk-cir.c", i32 440, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/mtk-cir.c", i32 307, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/mtk-cir.c", i32 309, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_ir_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_ir_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/mtk-cir.c", i32 313, i32 30}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/mtk-cir.c", i32 328, i32 3}
!28 = !{ptr @mtk_ir_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_ir_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/mtk-cir.c", i32 334, i32 23}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/mtk-cir.c", i32 339, i32 33}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/mtk-cir.c", i32 340, i32 33}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/mtk-cir.c", i32 349, i32 3}
!38 = !{ptr @mtk_ir_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_ir_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/rc/mtk-cir.c", i32 360, i32 3}
!42 = !{ptr @mtk_ir_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_ir_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mtk_ir_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/mtk-cir.c", i32 365, i32 3}
!46 = !{ptr @mtk_ir_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/mtk-cir.c", i32 378, i32 3}
!49 = !{ptr @mtk_ir_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtk_ir_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/rc/mtk-cir.c", i32 409, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mtk_ir_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_ir_probe._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/mtk-cir.c", i32 228, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mtk_ir_irq.__UNIQUE_ID_ddebug234, !57, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/mtk-cir.c", i32 161, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mtk_chk_period.__UNIQUE_ID_ddebug232, !61, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/rc/mtk-cir.c", i32 163, i32 2}
!66 = !{ptr @mtk_chk_period.__UNIQUE_ID_ddebug233, !65, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!67 = !{ptr @mtk_ir_match, !68, !"mtk_ir_match", i1 false, i1 false}
!68 = !{!"../drivers/media/rc/mtk-cir.c", i32 284, i32 34}
!69 = !{ptr @mt7623_data, !70, !"mt7623_data", i1 false, i1 false}
!70 = !{!"../drivers/media/rc/mtk-cir.c", i32 268, i32 33}
!71 = !{ptr @mt7623_regs, !72, !"mt7623_regs", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/mtk-cir.c", i32 76, i32 18}
!73 = !{ptr @mt7623_fields, !74, !"mt7623_fields", i1 false, i1 false}
!74 = !{!"../drivers/media/rc/mtk-cir.c", i32 114, i32 36}
!75 = !{ptr @mt7622_data, !76, !"mt7622_data", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/mtk-cir.c", i32 276, i32 33}
!77 = !{ptr @mt7622_regs, !78, !"mt7622_regs", i1 false, i1 false}
!78 = !{!"../drivers/media/rc/mtk-cir.c", i32 83, i32 18}
!79 = !{ptr @mt7622_fields, !80, !"mt7622_fields", i1 false, i1 false}
!80 = !{!"../drivers/media/rc/mtk-cir.c", i32 119, i32 36}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 4239792}
!91 = !{i64 4239374}
!92 = !{i64 2148731661, i64 2148731666, i64 2148731679, i64 2148731723, i64 2148731757, i64 2148731778}
