; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/xilinxfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/xilinxfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.xilinxfb_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.xilinxfb_drvdata = type { %struct.fb_info, i32, ptr, ptr, i32, i32, i8, i32, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }

@__initcall__kmod_xilinxfb__305_506_xilinxfb_of_driver_init6 = internal global ptr @xilinxfb_of_driver_init, section ".initcall6.init", align 4
@xilinxfb_of_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinxfb_of_probe, ptr @xilinxfb_of_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinxfb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xilinxfb_of_driver_exit = internal global ptr @xilinxfb_of_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [62 x i8] c"xilinxfb.author=MontaVista Software, Inc. <source@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [52 x i8] c"xilinxfb.description=Xilinx TFT frame buffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [43 x i8] c"xilinxfb.file=drivers/video/fbdev/xilinxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [21 x i8] c"xilinxfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xilinxfb\00", [23 x i8] zeroinitializer }, align 32
@xilinxfb_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-tft-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-tft-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-tft-2.01.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,plb-tft-cntlr-ref-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,plb-dvi-cntlr-ref-1.00.c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@xilinx_fb_default_pdata = internal constant { %struct.xilinxfb_platform_data, [32 x i8] } { %struct.xilinxfb_platform_data { i32 0, i32 0, i32 0, i32 640, i32 480, i32 1024, i32 480, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xlnx,dcr-splb-slave-if\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phys-size\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resolution\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"virtual-resolution\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rotate-display\00", [17 x i8] zeroinitializer }, align 32
@xilinxfb_assign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 296, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Could not allocate frame buffer memory\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xilinxfb_assign\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/video/fbdev/xilinxfb.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinxfb_assign._entry_ptr = internal global ptr @xilinxfb_assign._entry, section ".printk_index", align 4
@xilinxfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xilinx_fb_setcolreg, ptr null, ptr @xilinx_fb_blank, ptr null, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xilinx_fb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Xilinx\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@xilinx_fb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@xilinxfb_assign._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 341, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Fail to allocate colormap (%d entries)\0A\00", [56 x i8] zeroinitializer }, align 32
@xilinxfb_assign._entry_ptr.13 = internal global ptr @xilinxfb_assign._entry.11, section ".printk_index", align 4
@xilinxfb_assign._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 348, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register frame buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@xilinxfb_assign._entry_ptr.16 = internal global ptr @xilinxfb_assign._entry.14, section ".printk_index", align 4
@xilinxfb_assign.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.17, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"regs: phys=%pa, virt=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@xilinxfb_assign.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.18, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb: phys=%llx, virt=%p, size=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"xilinxfb_of_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 497, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 501, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"xilinxfb_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 487, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"xilinx_fb_default_pdata\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 103, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 433, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 456, i32 44 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 462, i32 44 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 468, i32 44 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 474, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 296, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"xilinxfb_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 252, i32 28 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"xilinx_fb_fix\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 113, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"xilinx_fb_var\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 120, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 340, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 348, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 354, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [34 x i8] c"../drivers/video/fbdev/xilinxfb.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 358, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_xilinxfb_of_driver_exit, ptr @__initcall__kmod_xilinxfb__305_506_xilinxfb_of_driver_init6, ptr @xilinxfb_assign._entry, ptr @xilinxfb_assign._entry.11, ptr @xilinxfb_assign._entry.14, ptr @xilinxfb_assign._entry_ptr, ptr @xilinxfb_assign._entry_ptr.13, ptr @xilinxfb_assign._entry_ptr.16, ptr @xilinxfb_of_driver_exit, ptr @xilinxfb_of_driver, ptr @.str, ptr @xilinxfb_of_match, ptr @xilinx_fb_default_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xilinxfb_ops, ptr @xilinx_fb_fix, ptr @xilinx_fb_var, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_of_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_fb_default_pdata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_assign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_fb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_assign._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinxfb_assign._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinxfb_of_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinxfb_of_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xilinxfb_of_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinxfb_of_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinxfb_of_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tft_access = alloca i32, align 4
  %pdata = alloca %struct.xilinxfb_platform_data, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tft_access) #7
  %0 = ptrtoint ptr %tft_access to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tft_access, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pdata) #7
  %1 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 5
  %6 = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %size, align 4, !annotation !65
  %8 = call ptr @memcpy(ptr %pdata, ptr @xilinx_fb_default_pdata, i32 32)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1208, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull %tft_access, i32 noundef 1, i32 noundef 0) #7
  %11 = ptrtoint ptr %tft_access to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tft_access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  %15 = or i8 %14, 1
  store i8 %15, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call9 = call ptr @of_get_property(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull %size) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp = icmp ugt i32 %19, 7
  br i1 %cmp, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call9, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %2, align 4
  %arrayidx13 = getelementptr i32, ptr %call9, i32 1
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %1, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call17 = call ptr @of_get_property(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull %size) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.if.end25_crit_edge, label %land.lhs.true19

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end14
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %cmp20 = icmp ugt i32 %29, 7
  br i1 %cmp20, label %if.then22, label %land.lhs.true19.if.end25_crit_edge

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call17, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %3, align 4
  %arrayidx24 = getelementptr i32, ptr %call17, i32 1
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true19.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call28 = call ptr @of_get_property(ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull %size) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end25.if.end36_crit_edge, label %land.lhs.true30

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true30:                                  ; preds = %if.end25
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp31 = icmp ugt i32 %39, 7
  br i1 %cmp31, label %if.then33, label %land.lhs.true30.if.end36_crit_edge

land.lhs.true30.if.end36_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call28, align 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %5, align 4
  %arrayidx35 = getelementptr i32, ptr %call28, i32 1
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx35, align 4
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %6, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %land.lhs.true30.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call39 = call ptr @of_find_property(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %pdata, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call43 = call fastcc i32 @xilinxfb_assign(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull %pdata)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pdata) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tft_access) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinxfb_of_remove(ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #7
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #7
  %fb_alloced.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fb_alloced.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_alloced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_len.i, align 4
  %add.i = add i32 %5, 4095
  %and.i = and i32 %add.i, -4096
  %fb_virt.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %fb_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb_virt.i, align 4
  %fb_phys.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fb_phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fb_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %and.i, ptr noundef %7, i32 noundef %9, i32 noundef 0) #7
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fb_virt3.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %fb_virt3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb_virt3.i, align 4
  tail call void @iounmap(ptr noundef %11) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %flags.i.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i.i, align 4
  %conv.i.i = zext i8 %13 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.xilinxfb_release.exit_crit_edge, label %if.then.i.i

if.end.i.xilinxfb_release.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinxfb_release.exit

if.then.i.i:                                      ; preds = %if.end.i
  %and3.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !67
  br label %xilinxfb_release.exit

do.body.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs6.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #7, !srcloc !67
  br label %xilinxfb_release.exit

xilinxfb_release.exit:                            ; preds = %do.body.i.i, %if.then5.i.i, %if.end.i.xilinxfb_release.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xilinxfb_assign(ptr noundef %pdev, ptr noundef %drvdata, ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %xvirt = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 5
  %0 = ptrtoint ptr %xvirt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xvirt, align 4
  %yvirt = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 6
  %2 = ptrtoint ptr %yvirt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yvirt, align 4
  %mul = shl i32 %1, 2
  %mul2 = mul i32 %mul, %3
  %flags = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call) #7
  %regs = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup141

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %regs_phys = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 1
  %11 = ptrtoint ptr %regs_phys to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %regs_phys, align 4
  br label %if.end10

if.end10:                                         ; preds = %cleanup, %entry.if.end10_crit_edge
  %fb_phys = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 7
  %12 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fb_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %fb_phys14 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 4
  %14 = ptrtoint ptr %fb_phys14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fb_phys14, align 4
  %15 = ptrtoint ptr %fb_phys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fb_phys, align 4
  %call16 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %mul2) #7
  br label %if.end21

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %fb_alloced = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 5
  %17 = ptrtoint ptr %fb_alloced to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %fb_alloced, align 4
  %add = add i32 %mul2, 4095
  %and17 = and i32 %add, -4096
  %fb_phys18 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %and17, ptr noundef %fb_phys18, i32 noundef 3264, i32 noundef 0) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %call16.sink = phi ptr [ %call.i, %if.else ], [ %call16, %if.then12 ]
  %18 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call16.sink, ptr %18, align 4
  %tobool23.not = icmp eq ptr %call16.sink, null
  br i1 %tobool23.not, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %cleanup141

if.end25:                                         ; preds = %if.end21
  tail call void @mmioset(ptr noundef nonnull %call16.sink, i32 noundef 0, i32 noundef %mul2) #7
  %fb_phys27 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 4
  %20 = ptrtoint ptr %fb_phys27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fb_phys27, align 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 4
  %conv.i = zext i8 %23 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end25.xilinx_fb_out32.exit_crit_edge, label %if.then.i

if.end25.xilinx_fb_out32.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinx_fb_out32.exit

if.then.i:                                        ; preds = %if.end25
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %26) #7, !srcloc !67
  br label %xilinx_fb_out32.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %27 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs6.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %21) #7, !srcloc !67
  br label %xilinx_fb_out32.exit

xilinx_fb_out32.exit:                             ; preds = %do.body.i, %if.then5.i, %if.end25.xilinx_fb_out32.exit_crit_edge
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 4
  %conv.i233 = zext i8 %30 to i32
  %and.i234 = and i32 %conv.i233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235 = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i235, label %xilinx_fb_out32.exit.xilinx_fb_in32.exit_crit_edge, label %if.then.i239

xilinx_fb_out32.exit.xilinx_fb_in32.exit_crit_edge: ; preds = %xilinx_fb_out32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinx_fb_in32.exit

if.then.i239:                                     ; preds = %xilinx_fb_out32.exit
  %and3.i236 = and i32 %conv.i233, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i236)
  %tobool4.not.i237 = icmp eq i32 %and3.i236, 0
  %regs6.i238 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %31 = ptrtoint ptr %regs6.i238 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs6.i238, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7
  br i1 %tobool4.not.i237, label %if.else.i, label %if.then5.i240

if.then5.i240:                                    ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %xilinx_fb_in32.exit

if.else.i:                                        ; preds = %if.then.i239
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  br label %xilinx_fb_in32.exit

xilinx_fb_in32.exit:                              ; preds = %if.else.i, %if.then5.i240, %xilinx_fb_out32.exit.xilinx_fb_in32.exit_crit_edge
  %retval.0.i241 = phi i32 [ %34, %if.then5.i240 ], [ %33, %if.else.i ], [ 0, %xilinx_fb_out32.exit.xilinx_fb_in32.exit_crit_edge ]
  %35 = ptrtoint ptr %fb_phys27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fb_phys27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i241, i32 %36)
  %cmp.not = icmp eq i32 %retval.0.i241, %36
  br i1 %cmp.not, label %xilinx_fb_in32.exit.if.end36_crit_edge, label %if.then31

xilinx_fb_in32.exit.if.end36_crit_edge:           ; preds = %xilinx_fb_in32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then31:                                        ; preds = %xilinx_fb_in32.exit
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 4
  %39 = or i8 %38, 2
  store i8 %39, ptr %flags, align 4
  %40 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i245 = icmp eq i8 %40, 0
  br i1 %tobool.not.i245, label %if.then31.if.end36_crit_edge, label %if.then5.i250

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then5.i250:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i249 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %41 = ptrtoint ptr %regs.i249 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i249, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %43) #7, !srcloc !67
  br label %if.end36

if.end36:                                         ; preds = %if.then5.i250, %if.then31.if.end36_crit_edge, %xilinx_fb_in32.exit.if.end36_crit_edge
  %reg_ctrl_default = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 7
  %44 = ptrtoint ptr %reg_ctrl_default to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %reg_ctrl_default, align 4
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool37.not = icmp eq i32 %46, 0
  %spec.store.select = select i1 %tobool37.not, i32 1, i32 3
  %47 = ptrtoint ptr %reg_ctrl_default to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.store.select, ptr %reg_ctrl_default, align 4
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 4
  %conv.i255 = zext i8 %49 to i32
  %and.i256 = and i32 %conv.i255, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.not.i257 = icmp eq i32 %and.i256, 0
  br i1 %tobool.not.i257, label %if.end36.xilinx_fb_out32.exit265_crit_edge, label %if.then.i260

if.end36.xilinx_fb_out32.exit265_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinx_fb_out32.exit265

if.then.i260:                                     ; preds = %if.end36
  %and3.i258 = and i32 %conv.i255, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i258)
  %tobool4.not.i259 = icmp eq i32 %and3.i258, 0
  br i1 %tobool4.not.i259, label %do.body.i264, label %if.then5.i262

if.then5.i262:                                    ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i261 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %50 = ptrtoint ptr %regs.i261 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i261, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %52 = shl nuw nsw i32 %spec.store.select, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %52) #7, !srcloc !67
  br label %xilinx_fb_out32.exit265

do.body.i264:                                     ; preds = %if.then.i260
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i263 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %53 = ptrtoint ptr %regs6.i263 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs6.i263, align 4
  %add.ptr8.i = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %spec.store.select) #7, !srcloc !67
  br label %xilinx_fb_out32.exit265

xilinx_fb_out32.exit265:                          ; preds = %do.body.i264, %if.then5.i262, %if.end36.xilinx_fb_out32.exit265_crit_edge
  %device = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 21
  %55 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev1, ptr %device, align 4
  %56 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %18, align 4
  %58 = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %58, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 20
  %60 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @xilinxfb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 7
  %61 = call ptr @memcpy(ptr %fix, ptr @xilinx_fb_fix, i32 68)
  %62 = ptrtoint ptr %fb_phys27 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fb_phys27, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul2, ptr %smem_len, align 4
  %66 = ptrtoint ptr %xvirt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xvirt, align 4
  %mul53 = shl i32 %67, 2
  %line_length = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 7, i32 9
  %68 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul53, ptr %line_length, align 4
  %pseudo_palette = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 8
  %pseudo_palette57 = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 27
  %69 = ptrtoint ptr %pseudo_palette57 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %pseudo_palette, ptr %pseudo_palette57, align 4
  %flags59 = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 2
  %70 = ptrtoint ptr %flags59 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %flags59, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6
  %71 = call ptr @memcpy(ptr %var, ptr @xilinx_fb_var, i32 160)
  %screen_height_mm = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 1
  %72 = ptrtoint ptr %screen_height_mm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %screen_height_mm, align 4
  %height = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6, i32 14
  %74 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %height, align 4
  %screen_width_mm = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 2
  %75 = ptrtoint ptr %screen_width_mm to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %screen_width_mm, align 4
  %width = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6, i32 15
  %77 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %width, align 4
  %xres = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 3
  %78 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xres, align 4
  %80 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %var, align 4
  %yres = getelementptr inbounds %struct.xilinxfb_platform_data, ptr %pdata, i32 0, i32 4
  %81 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %yres, align 4
  %yres70 = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %yres70 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %yres70, align 4
  %84 = load i32, ptr %xvirt, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6, i32 2
  %85 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %xres_virtual, align 4
  %86 = ptrtoint ptr %yvirt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %yvirt, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 6, i32 3
  %88 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %yres_virtual, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %drvdata, i32 0, i32 12
  %call78 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 16, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end84, label %do.end83

do.end83:                                         ; preds = %xilinx_fb_out32.exit265
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 16) #10
  br label %err_cmap

if.end84:                                         ; preds = %xilinx_fb_out32.exit265
  %call86 = tail call i32 @register_framebuffer(ptr noundef %drvdata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end92, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #7
  br label %err_cmap

if.end92:                                         ; preds = %if.end84
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %flags, align 4
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool96.not = icmp eq i8 %91, 0
  br i1 %tobool96.not, label %if.end92.do.body110_crit_edge, label %do.body98

if.end92.do.body110_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body110

do.body98:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinxfb_assign.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xilinxfb_assign, %if.then103)) #7
          to label %do.body110 [label %if.then103], !srcloc !71

if.then103:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %regs_phys104 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 1
  %regs105 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %92 = ptrtoint ptr %regs105 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs105, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinxfb_assign.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %regs_phys104, ptr noundef %93) #7
  br label %do.body110

do.body110:                                       ; preds = %if.then103, %do.body98, %if.end92.do.body110_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xilinxfb_assign.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xilinxfb_assign, %if.then122)) #7
          to label %cleanup141 [label %if.then122], !srcloc !71

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %fb_phys27 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fb_phys27, align 4
  %conv124 = zext i32 %95 to i64
  %96 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xilinxfb_assign.__UNIQUE_ID_ddebug304, ptr noundef %dev1, ptr noundef nonnull @.str.18, i64 noundef %conv124, ptr noundef %97, i32 noundef %mul2) #7
  br label %cleanup141

err_cmap:                                         ; preds = %do.end91, %do.end83
  %rc.0 = phi i32 [ %call78, %do.end83 ], [ %call86, %do.end91 ]
  %fb_alloced131 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 5
  %98 = ptrtoint ptr %fb_alloced131 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fb_alloced131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool132.not = icmp eq i32 %99, 0
  br i1 %tobool132.not, label %if.else138, label %if.then133

if.then133:                                       ; preds = %err_cmap
  call void @__sanitizer_cov_trace_pc() #9
  %add134 = add i32 %mul2, 4095
  %and135 = and i32 %add134, -4096
  %100 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %18, align 4
  %102 = ptrtoint ptr %fb_phys27 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fb_phys27, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %and135, ptr noundef %101, i32 noundef %103, i32 noundef 0) #7
  br label %if.end140

if.else138:                                       ; preds = %err_cmap
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %18, align 4
  tail call void @iounmap(ptr noundef %105) #7
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %if.then133
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags, align 4
  %conv.i267 = zext i8 %107 to i32
  %and.i268 = and i32 %conv.i267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i269 = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i269, label %if.end140.cleanup141_crit_edge, label %if.then.i272

if.end140.cleanup141_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

if.then.i272:                                     ; preds = %if.end140
  %and3.i270 = and i32 %conv.i267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i270)
  %tobool4.not.i271 = icmp eq i32 %and3.i270, 0
  br i1 %tobool4.not.i271, label %do.body.i278, label %if.then5.i275

if.then5.i275:                                    ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i273 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %108 = ptrtoint ptr %regs.i273 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i273, align 4
  %add.ptr.i274 = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 0) #7, !srcloc !67
  br label %cleanup141

do.body.i278:                                     ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i276 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %drvdata, i32 0, i32 2
  %110 = ptrtoint ptr %regs6.i276 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs6.i276, align 4
  %add.ptr8.i277 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i277, i32 0) #7, !srcloc !67
  br label %cleanup141

cleanup141:                                       ; preds = %do.body.i278, %if.then5.i275, %if.end140.cleanup141_crit_edge, %if.then122, %do.body110, %do.end, %cleanup.thread
  %retval.1 = phi i32 [ -12, %do.end ], [ 0, %if.then122 ], [ %8, %cleanup.thread ], [ 0, %do.body110 ], [ %rc.0, %if.end140.cleanup141_crit_edge ], [ %rc.0, %if.then5.i275 ], [ %rc.0, %do.body.i278 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %fbi) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 27
  %0 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pseudo_palette, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %red, 77
  %mul2 = mul i32 %green, 151
  %mul3 = mul i32 %blue, 28
  %add = add i32 %mul, 127
  %add4 = add i32 %add, %mul2
  %add5 = add i32 %add4, %mul3
  %shr = lshr i32 %add5, 8
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end.if.end6_crit_edge
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %if.end.if.end6_crit_edge ]
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %if.end.if.end6_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %if.end.if.end6_crit_edge ]
  %shr8 = and i32 %green.addr.0, -256
  %shr9 = lshr i32 %blue.addr.0, 8
  %4 = shl i32 %red.addr.0, 8
  %shl = and i32 %4, -65536
  %or = or i32 %shr9, %shr8
  %or12 = or i32 %or, %shl
  %arrayidx = getelementptr i32, ptr %1, i32 %regno
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or12, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %fbi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge18
    i32 3, label %entry.sw.bb1_crit_edge19
    i32 4, label %entry.sw.bb1_crit_edge20
  ]

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %reg_ctrl_default = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 7
  %1 = ptrtoint ptr %reg_ctrl_default to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_ctrl_default, align 4
  %flags.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags.i, align 4
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %do.body.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !67
  br label %sw.epilog

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 2
  %8 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %2) #7, !srcloc !67
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20
  %flags.i4 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i4, align 4
  %conv.i5 = zext i8 %11 to i32
  %and.i6 = and i32 %conv.i5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %sw.bb1.sw.epilog_crit_edge, label %if.then.i10

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i10:                                      ; preds = %sw.bb1
  %and3.i8 = and i32 %conv.i5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i8)
  %tobool4.not.i9 = icmp eq i32 %and3.i8, 0
  br i1 %tobool4.not.i9, label %do.body.i16, label %if.then5.i13

if.then5.i13:                                     ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i11 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #7, !srcloc !67
  br label %sw.epilog

do.body.i16:                                      ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %regs6.i14 = getelementptr inbounds %struct.xilinxfb_drvdata, ptr %fbi, i32 0, i32 2
  %14 = ptrtoint ptr %regs6.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs6.i14, align 4
  %add.ptr8.i15 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i15, i32 0) #7, !srcloc !67
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body.i16, %if.then5.i13, %sw.bb1.sw.epilog_crit_edge, %do.body.i, %if.then5.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_xilinxfb__305_506_xilinxfb_of_driver_init6, !1, !"__initcall__kmod_xilinxfb__305_506_xilinxfb_of_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 506, i32 1}
!2 = !{ptr @__exitcall_xilinxfb_of_driver_exit, !1, !"__exitcall_xilinxfb_of_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 508, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 509, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 510, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 501, i32 11}
!12 = !{ptr @xilinxfb_of_driver, !13, !"xilinxfb_of_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 497, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 433, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 456, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 462, i32 44}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 468, i32 44}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 474, i32 42}
!24 = !{ptr @xilinx_fb_default_pdata, !25, !"xilinx_fb_default_pdata", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 103, i32 44}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 296, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xilinxfb_assign._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @xilinxfb_assign._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 340, i32 3}
!36 = !{ptr @xilinxfb_assign._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @xilinxfb_assign._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 348, i32 3}
!40 = !{ptr @xilinxfb_assign._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @xilinxfb_assign._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 354, i32 3}
!44 = !{ptr @xilinxfb_assign.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 358, i32 2}
!47 = !{ptr @xilinxfb_assign.__UNIQUE_ID_ddebug304, !46, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!48 = !{ptr @xilinxfb_ops, !49, !"xilinxfb_ops", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 252, i32 28}
!50 = !{ptr @xilinx_fb_fix, !51, !"xilinx_fb_fix", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 113, i32 39}
!52 = !{ptr @xilinx_fb_var, !53, !"xilinx_fb_var", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 120, i32 39}
!54 = !{ptr @xilinxfb_of_match, !55, !"xilinxfb_of_match", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/xilinxfb.c", i32 487, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 2153924098}
!67 = !{i64 6381976}
!68 = !{i64 2155951793}
!69 = !{i64 2153922743}
!70 = !{i64 2155952194}
!71 = !{i64 2148289781, i64 2148289786, i64 2148289799, i64 2148289843, i64 2148289877, i64 2148289898}
