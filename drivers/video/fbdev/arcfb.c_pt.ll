; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/arcfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/arcfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.arcfb_par = type { i32, i32, i32, %struct.atomic_t, [9 x i8], ptr, i32, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@arcfb_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arcfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arcfb_probe, ptr @arcfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__param_str_num_cols = internal constant [15 x i8] c"arcfb.num_cols\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@num_cols = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_cols = internal constant %struct.kernel_param { ptr @__param_str_num_cols, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_cols } }, section "__param", align 4
@__UNIQUE_ID_num_colstype309 = internal constant [30 x i8] c"arcfb.parmtype=num_cols:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_num_cols310 = internal constant [59 x i8] c"arcfb.parm=num_cols:Num horiz panels, eg: 2 = 128 bit wide\00", section ".modinfo", align 1
@__param_str_num_rows = internal constant [15 x i8] c"arcfb.num_rows\00", align 1
@num_rows = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_num_rows = internal constant %struct.kernel_param { ptr @__param_str_num_rows, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @num_rows } }, section "__param", align 4
@__UNIQUE_ID_num_rowstype311 = internal constant [30 x i8] c"arcfb.parmtype=num_rows:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_num_rows312 = internal constant [57 x i8] c"arcfb.parm=num_rows:Num vert panels, eg: 1 = 64 bit high\00", section ".modinfo", align 1
@__param_str_nosplash = internal constant [15 x i8] c"arcfb.nosplash\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@nosplash = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nosplash = internal constant %struct.kernel_param { ptr @__param_str_nosplash, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nosplash } }, section "__param", align 4
@__UNIQUE_ID_nosplashtype313 = internal constant [29 x i8] c"arcfb.parmtype=nosplash:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_nosplash314 = internal constant [52 x i8] c"arcfb.parm=nosplash:Disable doing the splash screen\00", section ".modinfo", align 1
@__param_str_arcfb_enable = internal constant [19 x i8] c"arcfb.arcfb_enable\00", align 1
@arcfb_enable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_arcfb_enable = internal constant %struct.kernel_param { ptr @__param_str_arcfb_enable, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @arcfb_enable } }, section "__param", align 4
@__UNIQUE_ID_arcfb_enabletype315 = internal constant [33 x i8] c"arcfb.parmtype=arcfb_enable:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_arcfb_enable316 = internal constant [60 x i8] c"arcfb.parm=arcfb_enable:Enable communication with Arc board\00", section ".modinfo", align 1
@__param_str_dio_addr = internal constant [15 x i8] c"arcfb.dio_addr\00", align 1
@dio_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dio_addr = internal constant %struct.kernel_param { ptr @__param_str_dio_addr, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @dio_addr } }, section "__param", align 4
@__UNIQUE_ID_dio_addrtype317 = internal constant [30 x i8] c"arcfb.parmtype=dio_addr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_dio_addr318 = internal constant [51 x i8] c"arcfb.parm=dio_addr:IO address for data, eg: 0x480\00", section ".modinfo", align 1
@__param_str_cio_addr = internal constant [15 x i8] c"arcfb.cio_addr\00", align 1
@cio_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_cio_addr = internal constant %struct.kernel_param { ptr @__param_str_cio_addr, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @cio_addr } }, section "__param", align 4
@__UNIQUE_ID_cio_addrtype319 = internal constant [30 x i8] c"arcfb.parmtype=cio_addr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_cio_addr320 = internal constant [54 x i8] c"arcfb.parm=cio_addr:IO address for control, eg: 0x400\00", section ".modinfo", align 1
@__param_str_c2io_addr = internal constant [16 x i8] c"arcfb.c2io_addr\00", align 1
@c2io_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_c2io_addr = internal constant %struct.kernel_param { ptr @__param_str_c2io_addr, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @c2io_addr } }, section "__param", align 4
@__UNIQUE_ID_c2io_addrtype321 = internal constant [31 x i8] c"arcfb.parmtype=c2io_addr:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_c2io_addr322 = internal constant [65 x i8] c"arcfb.parm=c2io_addr:IO address for secondary control, eg: 0x408\00", section ".modinfo", align 1
@__param_str_splashval = internal constant [16 x i8] c"arcfb.splashval\00", align 1
@splashval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_splashval = internal constant %struct.kernel_param { ptr @__param_str_splashval, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @splashval } }, section "__param", align 4
@__UNIQUE_ID_splashvaltype323 = internal constant [31 x i8] c"arcfb.parmtype=splashval:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_splashval324 = internal constant [66 x i8] c"arcfb.parm=splashval:Splash pattern: 0xFF is black, 0x00 is green\00", section ".modinfo", align 1
@__param_str_tuhold = internal constant [13 x i8] c"arcfb.tuhold\00", align 1
@tuhold = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tuhold = internal constant %struct.kernel_param { ptr @__param_str_tuhold, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @tuhold } }, section "__param", align 4
@__UNIQUE_ID_tuholdtype325 = internal constant [28 x i8] c"arcfb.parmtype=tuhold:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_tuhold326 = internal constant [66 x i8] c"arcfb.parm=tuhold:Time to hold between strobing data to Arc board\00", section ".modinfo", align 1
@__param_str_irq = internal constant [10 x i8] c"arcfb.irq\00", align 1
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype327 = internal constant [24 x i8] c"arcfb.parmtype=irq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irq328 = internal constant [37 x i8] c"arcfb.parm=irq:IRQ for the Arc board\00", section ".modinfo", align 1
@__initcall__kmod_arcfb__329_665_arcfb_init6 = internal global ptr @arcfb_init, section ".initcall6.init", align 4
@__exitcall_arcfb_exit = internal global ptr @arcfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description330 = internal constant [60 x i8] c"arcfb.description=fbdev driver for Arc monochrome LCD board\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [24 x i8] c"arcfb.author=Jaya Kumar\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [37 x i8] c"arcfb.file=drivers/video/fbdev/arcfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [18 x i8] c"arcfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"arcfb\00", [26 x i8] zeroinitializer }, align 32
@arcfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @arcfb_open, ptr @arcfb_release, ptr @fb_sys_read, ptr @arcfb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arcfb_pan_display, ptr @arcfb_fillrect, ptr @arcfb_copyarea, ptr @arcfb_imageblit, ptr null, ptr null, ptr @arcfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arcfb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 128, i32 64, i32 128, i32 64, i32 0, i32 0, i32 1, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arcfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"arcfb\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@arcfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014no IO addresses supplied\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arcfb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/arcfb.c\00", [36 x i8] zeroinitializer }, align 32
@arcfb_probe._entry_ptr = internal global ptr @arcfb_probe._entry, section ".printk_index", align 4
@arcfb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&par->lock\00", [21 x i8] zeroinitializer }, align 32
@arcfb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016arcfb: Failed req IRQ %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arcfb_probe._entry_ptr.7 = internal global ptr @arcfb_probe._entry.5, section ".printk_index", align 4
@arcfb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016fb%d: Arc frame buffer device, using %dK of video memory\0A\00", [36 x i8] zeroinitializer }, align 32
@arcfb_probe._entry_ptr.10 = internal global ptr @arcfb_probe._entry.8, section ".printk_index", align 4
@arcfb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016fb%d: splashing lcd %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arcfb_probe._entry_ptr.13 = internal global ptr @arcfb_probe._entry.11, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@arcfb_waitq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @arcfb_waitq, i64 44), ptr getelementptr (i8, ptr @arcfb_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arcfb_waitq.lock\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18056, i64 2147763849]
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"arcfb_device\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 612, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"arcfb_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 604, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"num_cols\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 101, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"num_rows\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 102, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"nosplash\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 108, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"arcfb_enable\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 109, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"dio_addr\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 103, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"cio_addr\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 104, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"c2io_addr\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 105, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"splashval\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 106, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"tuhold\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 107, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 110, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 608, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"arcfb_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 494, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"arcfb_var\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 92, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"arcfb_fix\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 82, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 537, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 546, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 551, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 561, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 576, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 214, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"arcfb_waitq\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [31 x i8] c"../drivers/video/fbdev/arcfb.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 112, i32 8 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_arcfb_enable316, ptr @__UNIQUE_ID_arcfb_enabletype315, ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_c2io_addr322, ptr @__UNIQUE_ID_c2io_addrtype321, ptr @__UNIQUE_ID_cio_addr320, ptr @__UNIQUE_ID_cio_addrtype319, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_dio_addr318, ptr @__UNIQUE_ID_dio_addrtype317, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_irq328, ptr @__UNIQUE_ID_irqtype327, ptr @__UNIQUE_ID_license333, ptr @__UNIQUE_ID_nosplash314, ptr @__UNIQUE_ID_nosplashtype313, ptr @__UNIQUE_ID_num_cols310, ptr @__UNIQUE_ID_num_colstype309, ptr @__UNIQUE_ID_num_rows312, ptr @__UNIQUE_ID_num_rowstype311, ptr @__UNIQUE_ID_splashval324, ptr @__UNIQUE_ID_splashvaltype323, ptr @__UNIQUE_ID_tuhold326, ptr @__UNIQUE_ID_tuholdtype325, ptr @__exitcall_arcfb_exit, ptr @__initcall__kmod_arcfb__329_665_arcfb_init6, ptr @__param_arcfb_enable, ptr @__param_c2io_addr, ptr @__param_cio_addr, ptr @__param_dio_addr, ptr @__param_irq, ptr @__param_nosplash, ptr @__param_num_cols, ptr @__param_num_rows, ptr @__param_splashval, ptr @__param_tuhold, ptr @arcfb_exit, ptr @arcfb_probe._entry, ptr @arcfb_probe._entry.11, ptr @arcfb_probe._entry.5, ptr @arcfb_probe._entry.8, ptr @arcfb_probe._entry_ptr, ptr @arcfb_probe._entry_ptr.10, ptr @arcfb_probe._entry_ptr.13, ptr @arcfb_probe._entry_ptr.7, ptr @arcfb_device, ptr @arcfb_driver, ptr @num_cols, ptr @num_rows, ptr @nosplash, ptr @arcfb_enable, ptr @dio_addr, ptr @cio_addr, ptr @c2io_addr, ptr @splashval, ptr @tuhold, ptr @irq, ptr @.str, ptr @arcfb_ops, ptr @arcfb_var, ptr @arcfb_fix, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @arcfb_probe.__key, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @arcfb_waitq, ptr @.str.17], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_cols to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_rows to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nosplash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dio_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cio_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2io_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @splashval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuhold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcfb_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arcfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @arcfb_device, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arcfb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @arcfb_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arcfb_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef 0) #9
  store ptr %call3, ptr @arcfb_device, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.if.then9_crit_edge, label %if.end7

if.then2.if.then9_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7:                                          ; preds = %if.then2
  %call6 = tail call i32 @platform_device_add(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then2.if.then9_crit_edge
  %ret.016 = phi i32 [ %call6, %if.end7.if.then9_crit_edge ], [ -12, %if.then2.if.then9_crit_edge ]
  %1 = load ptr, ptr @arcfb_device, align 4
  tail call void @platform_device_put(ptr noundef %1) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arcfb_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.016, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @num_cols, align 4
  %mul = shl i32 %0, 12
  %1 = load i32, ptr @num_rows, align 4
  %mul2 = mul i32 %mul, %1
  %div115 = lshr exact i32 %mul2, 3
  %call = tail call noalias ptr @vzalloc(i32 noundef %div115) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call4 = tail call ptr @framebuffer_alloc(i32 noundef 80, ptr noundef %dev3) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end7:                                          ; preds = %if.end
  %2 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %2, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 20
  %4 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @arcfb_ops, ptr %fbops, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %var, ptr @arcfb_var, i32 160)
  %fix = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %fix, ptr @arcfb_fix, i32 68)
  %par8 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 30
  %7 = ptrtoint ptr %par8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %par8, align 4
  %info9 = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %info9, align 4
  %10 = load i32, ptr @dio_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end7.do.end_crit_edge, label %lor.lhs.false

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end7
  %11 = load i32, ptr @cio_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false12

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %12 = load i32, ptr @c2io_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %lor.lhs.false12.do.end_crit_edge, label %if.end16

lor.lhs.false12.do.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false12.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end7.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %err1

if.end16:                                         ; preds = %lor.lhs.false12
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %8, align 4
  %14 = load i32, ptr @cio_addr, align 4
  %cio_addr = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %cio_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cio_addr, align 4
  %16 = load i32, ptr @c2io_addr, align 4
  %c2io_addr = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %c2io_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %c2io_addr, align 4
  %cslut = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %cslut to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %cslut, align 4
  %arrayidx18 = getelementptr %struct.arcfb_par, ptr %8, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %arrayidx18, align 1
  %flags = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags, align 4
  %lock = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @arcfb_probe.__key, i16 noundef signext 3) #9
  %21 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %if.end16.if.end36_crit_edge, label %if.then24

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then24:                                        ; preds = %if.end16
  %irq = getelementptr inbounds %struct.arcfb_par, ptr %8, i32 0, i32 6
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @arcfb_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.then24.if.end36_crit_edge, label %do.end31

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %24) #13
  br label %err1

if.end36:                                         ; preds = %if.then24.if.end36_crit_edge, %if.end16.if.end36_crit_edge
  %call37 = tail call i32 @register_framebuffer(ptr noundef nonnull %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.end36.err1_crit_edge, label %if.end39

if.end36.err1_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1

if.end39:                                         ; preds = %if.end36
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 1
  %26 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %node, align 4
  %28 = lshr i32 %mul2, 13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %27, i32 noundef %28) #13
  %29 = load i32, ptr @num_cols, align 4
  %30 = load i32, ptr @num_rows, align 4
  %mul45162 = mul i32 %30, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul45162)
  %cmp46163.not = icmp eq i32 %mul45162, 0
  br i1 %cmp46163.not, label %if.end39.for.end_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end39.for.body_crit_edge
  %i.0164 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end39.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.arcfb_par, ptr %8, i32 0, i32 4, i32 %i.0164
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i = or i8 %32, 9
  %33 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cio_addr, align 4
  %and.i = and i32 %34, 1048575
  %add.i = or i32 %and.i, -18874368
  %35 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %or1.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %8, align 4
  %and6.i = and i32 %37, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %38 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 62) #9, !srcloc !145
  %39 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %41 = or i8 %32, 8
  %42 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cio_addr, align 4
  %and21.i = and i32 %43, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %44 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %41) #9, !srcloc !145
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i = or i8 %46, 9
  %47 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cio_addr, align 4
  %and.i.i = and i32 %48, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %49 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %or1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %8, align 4
  %and6.i.i = and i32 %51, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %52 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 -64) #9, !srcloc !145
  %53 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %55 = or i8 %46, 8
  %56 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cio_addr, align 4
  %and21.i.i = and i32 %57, 1048575
  %add22.i.i = or i32 %and21.i.i, -18874368
  %58 = inttoptr i32 %add22.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %55) #9, !srcloc !145
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i117 = or i8 %60, 9
  %61 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cio_addr, align 4
  %and.i.i119 = and i32 %62, 1048575
  %add.i.i120 = or i32 %and.i.i119, -18874368
  %63 = inttoptr i32 %add.i.i120 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %or1.i.i117) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %8, align 4
  %and6.i.i121 = and i32 %65, 1048575
  %add7.i.i122 = or i32 %and6.i.i121, -18874368
  %66 = inttoptr i32 %add7.i.i122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 -72) #9, !srcloc !145
  %67 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %69 = or i8 %60, 8
  %70 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cio_addr, align 4
  %and21.i.i129 = and i32 %71, 1048575
  %add22.i.i130 = or i32 %and21.i.i129, -18874368
  %72 = inttoptr i32 %add22.i.i130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %69) #9, !srcloc !145
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i132 = or i8 %74, 9
  %75 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cio_addr, align 4
  %and.i.i134 = and i32 %76, 1048575
  %add.i.i135 = or i32 %and.i.i134, -18874368
  %77 = inttoptr i32 %add.i.i135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %or1.i.i132) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %8, align 4
  %and6.i.i136 = and i32 %79, 1048575
  %add7.i.i137 = or i32 %and6.i.i136, -18874368
  %80 = inttoptr i32 %add7.i.i137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 64) #9, !srcloc !145
  %81 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %83 = or i8 %74, 8
  %84 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cio_addr, align 4
  %and21.i.i144 = and i32 %85, 1048575
  %add22.i.i145 = or i32 %and21.i.i144, -18874368
  %86 = inttoptr i32 %add22.i.i145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %83) #9, !srcloc !145
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i147 = or i8 %88, 9
  %89 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cio_addr, align 4
  %and.i149 = and i32 %90, 1048575
  %add.i150 = or i32 %and.i149, -18874368
  %91 = inttoptr i32 %add.i150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %or1.i147) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %8, align 4
  %and6.i151 = and i32 %93, 1048575
  %add7.i152 = or i32 %and6.i151, -18874368
  %94 = inttoptr i32 %add7.i152 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 63) #9, !srcloc !145
  %95 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %97 = or i8 %88, 8
  %98 = ptrtoint ptr %cio_addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cio_addr, align 4
  %and21.i159 = and i32 %99, 1048575
  %add22.i160 = or i32 %and21.i159, -18874368
  %100 = inttoptr i32 %add22.i160 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 %97) #9, !srcloc !145
  %inc = add nuw i32 %i.0164, 1
  %101 = load i32, ptr @num_cols, align 4
  %102 = load i32, ptr @num_rows, align 4
  %mul45 = mul i32 %102, %101
  %cmp46 = icmp ult i32 %inc, %mul45
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end39.for.end_crit_edge
  %103 = load i32, ptr @nosplash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool47.not = icmp eq i32 %103, 0
  br i1 %tobool47.not, label %for.cond49.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond49.preheader:                             ; preds = %for.end
  %104 = load i32, ptr @num_cols, align 4
  %105 = load i32, ptr @num_rows, align 4
  %mul50165 = mul i32 %105, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul50165)
  %cmp51166.not = icmp eq i32 %mul50165, 0
  br i1 %cmp51166.not, label %for.cond49.preheader.cleanup_crit_edge, label %for.cond49.preheader.do.end55_crit_edge

for.cond49.preheader.do.end55_crit_edge:          ; preds = %for.cond49.preheader
  br label %do.end55

for.cond49.preheader.cleanup_crit_edge:           ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end55:                                         ; preds = %do.end55.do.end55_crit_edge, %for.cond49.preheader.do.end55_crit_edge
  %i.1167 = phi i32 [ %inc60, %do.end55.do.end55_crit_edge ], [ 0, %for.cond49.preheader.do.end55_crit_edge ]
  %106 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %node, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %107, i32 noundef %i.1167) #13
  tail call fastcc void @ks108_set_start_line(ptr noundef %8, i32 noundef %i.1167, i8 noundef zeroext 0)
  tail call fastcc void @ks108_clear_lcd(ptr noundef %8, i32 noundef %i.1167)
  %inc60 = add nuw i32 %i.1167, 1
  %108 = load i32, ptr @num_cols, align 4
  %109 = load i32, ptr @num_rows, align 4
  %mul50 = mul i32 %109, %108
  %cmp51 = icmp ult i32 %inc60, %mul50
  br i1 %cmp51, label %do.end55.do.end55_crit_edge, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end55.do.end55_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

err1:                                             ; preds = %if.end36.err1_crit_edge, %do.end31, %do.end
  %retval1.0 = phi i32 [ -16, %do.end31 ], [ %call37, %if.end36.err1_crit_edge ], [ -12, %do.end ]
  tail call void @framebuffer_release(ptr noundef nonnull %call4) #9
  br label %err

err:                                              ; preds = %err1, %if.end.err_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err1 ], [ -12, %if.end.err_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end55.cleanup_crit_edge, %for.cond49.preheader.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond49.preheader.cleanup_crit_edge ], [ 0, %do.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #9
  %2 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %3 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %par, align 4
  %irq = getelementptr inbounds %struct.arcfb_par, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %6, ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @vfree(ptr noundef %9) #9
  tail call void @framebuffer_release(ptr noundef nonnull %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_interrupt(i32 noundef %vec, ptr nocapture noundef readonly %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %dev_instance, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %c2io_addr.i = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %c2io_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c2io_addr.i, align 4
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %cio_addr.i = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %cio_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cio_addr.i, align 4
  %and.i12 = and i32 %8, 1048575
  %add.i13 = or i32 %and.i12, -18874368
  %9 = inttoptr i32 %add.i13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 2) #9, !srcloc !145
  %10 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #9
  %lock = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @arcfb_waitq, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %12, getelementptr inbounds (%struct.wait_queue_head, ptr @arcfb_waitq, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @arcfb_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks108_set_start_line(ptr nocapture noundef readonly %par, i32 noundef %chipindex, i8 noundef zeroext %y) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %y, -64
  %arrayidx.i = getelementptr %struct.arcfb_par, ptr %par, i32 0, i32 4, i32 %chipindex
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i = or i8 %2, 9
  %cio_addr.i = getelementptr inbounds %struct.arcfb_par, ptr %par, i32 0, i32 1
  %3 = ptrtoint ptr %cio_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cio_addr.i, align 4
  %and.i = and i32 %4, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or1.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %par, align 4
  %and6.i = and i32 %7, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %8 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %0) #9, !srcloc !145
  %9 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %11 = or i8 %2, 8
  %12 = ptrtoint ptr %cio_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cio_addr.i, align 4
  %and21.i = and i32 %13, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %14 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #9, !srcloc !145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ks108_clear_lcd(ptr nocapture noundef readonly %par, i32 noundef %chipindex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.arcfb_par, ptr %par, i32 0, i32 4, i32 %chipindex
  %cio_addr.i.i = getelementptr inbounds %struct.arcfb_par, ptr %par, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc6.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc7, %for.inc6.for.body_crit_edge ]
  %conv = trunc i32 %i.032 to i8
  %0 = or i8 %conv, -72
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i = or i8 %2, 9
  %3 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cio_addr.i.i, align 4
  %and.i.i = and i32 %4, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %par, align 4
  %and6.i.i = and i32 %7, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %8 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %0) #9, !srcloc !145
  %9 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %11 = or i8 %2, 8
  %12 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cio_addr.i.i, align 4
  %and21.i.i = and i32 %13, 1048575
  %add22.i.i = or i32 %and21.i.i, -18874368
  %14 = inttoptr i32 %add22.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #9, !srcloc !145
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i17 = or i8 %16, 9
  %17 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cio_addr.i.i, align 4
  %and.i.i19 = and i32 %18, 1048575
  %add.i.i20 = or i32 %and.i.i19, -18874368
  %19 = inttoptr i32 %add.i.i20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %or1.i.i17) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %par, align 4
  %and6.i.i21 = and i32 %21, 1048575
  %add7.i.i22 = or i32 %and6.i.i21, -18874368
  %22 = inttoptr i32 %add7.i.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 64) #9, !srcloc !145
  %23 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %25 = or i8 %16, 8
  %26 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cio_addr.i.i, align 4
  %and21.i.i29 = and i32 %27, 1048575
  %add22.i.i30 = or i32 %and21.i.i29, -18874368
  %28 = inttoptr i32 %add22.i.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %25) #9, !srcloc !145
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body
  %j.031 = phi i32 [ 0, %for.body ], [ %inc, %for.body4.for.body4_crit_edge ]
  %29 = load i32, ptr @splashval, align 4
  %conv5 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %32 = or i8 %31, 1
  %33 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cio_addr.i.i, align 4
  %and.i = and i32 %34, 1048575
  %add.i = or i32 %and.i, -18874368
  %35 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %32) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %par, align 4
  %and6.i = and i32 %37, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %38 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv5) #9, !srcloc !145
  %39 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cio_addr.i.i, align 4
  %and21.i = and i32 %42, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %43 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %31) #9, !srcloc !145
  %inc = add nuw nsw i32 %j.031, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc6, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.inc6:                                         ; preds = %for.body4
  %inc7 = add nuw nsw i32 %i.032, 1
  %exitcond33.not = icmp eq i32 %inc7, 9
  br i1 %exitcond33.not, label %for.end8, label %for.inc6.for.body_crit_edge

for.inc6.for.body_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end8:                                         ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #9, !srcloc !154
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %ref_count = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #9
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #9, !srcloc !155
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_write(ptr nocapture noundef readonly %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %mul = mul i32 %7, %5
  %div63 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div63, i32 %conv)
  %cmp = icmp ult i32 %div63, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %conv, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div63)
  %cmp5 = icmp ugt i32 %add, %div63
  %sub = sub i32 %div63, %conv
  %spec.select = select i1 %cmp5, i32 %sub, i32 %count
  %spec.select64 = select i1 %cmp5, i32 -28, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end
  %8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp9.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then9
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_user.exit_crit_edge, label %if.then27.i.i, !prof !156

land.rhs16.i.i.copy_from_user.exit_crit_edge:     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_user.exit

if.then.i.i.i:                                    ; preds = %if.then9
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %spec.select, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %spec.select, i32 -1226833920) #14, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !156

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %spec.select) #9
  %12 = tail call i32 @llvm.read_register.i32(metadata !134) #9
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !158
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %spec.select) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !156

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i67 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %spec.select, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %spec.select, %res.0.i.i67
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i67)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i67, %if.then11.i.i ], [ %spec.select, %if.then27.i.i ], [ %spec.select, %land.rhs16.i.i.copy_from_user.exit_crit_edge ]
  %sub10 = sub i32 %spec.select, %n.addr.0.i
  %conv11 = zext i32 %sub10 to i64
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %add12 = add i64 %17, %conv11
  store i64 %add12, ptr %ppos, align 8
  br label %if.end13

if.end13:                                         ; preds = %copy_from_user.exit, %if.end.if.end13_crit_edge
  %count.addr.1 = phi i32 [ %sub10, %copy_from_user.exit ], [ 0, %if.end.if.end13_crit_edge ]
  %err.1 = phi i32 [ -14, %copy_from_user.exit ], [ %spec.select64, %if.end.if.end13_crit_edge ]
  %mul14 = shl i32 %conv, 3
  %sub15 = add i32 %5, -1
  %neg = sub i32 0, %5
  %and = and i32 %mul14, %neg
  %18 = add i32 %count.addr.1, %conv
  %add17 = shl i32 %18, 3
  %or = or i32 %add17, %sub15
  %sub19 = sub i32 %or, %and
  %and.frozen = freeze i32 %and
  %.frozen = freeze i32 %5
  %div20 = udiv i32 %and.frozen, %.frozen
  %19 = mul i32 %div20, %.frozen
  %rem.decomposed = sub i32 %and.frozen, %19
  %div21 = udiv i32 %sub19, %5
  tail call fastcc void @arcfb_lcd_update(ptr noundef %3, i32 noundef %rem.decomposed, i32 noundef %div20, i32 noundef %5, i32 noundef %div21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool22.not = icmp eq i32 %count.addr.1, 0
  %spec.select69 = select i1 %tobool22.not, i32 %err.1, i32 %count.addr.1
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup_crit_edge ], [ %spec.select69, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %2 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vmode, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %4 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp = icmp ult i32 %5, 64
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %7)
  %cmp4 = icmp ult i32 %7, 65
  br i1 %cmp4, label %for.cond.preheader, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %land.lhs.true2
  %8 = load i32, ptr @num_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp518.not = icmp eq i32 %8, 0
  br i1 %cmp518.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cio_addr.i.i = getelementptr inbounds %struct.arcfb_par, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yoffset, align 4
  %conv = trunc i32 %10 to i8
  %11 = or i8 %conv, -64
  %arrayidx.i.i = getelementptr %struct.arcfb_par, ptr %1, i32 0, i32 4, i32 %i.019
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i = or i8 %13, 9
  %14 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cio_addr.i.i, align 4
  %and.i.i = and i32 %15, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or1.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %and6.i.i = and i32 %18, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %19 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %11) #9, !srcloc !145
  %20 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %22 = or i8 %13, 8
  %23 = ptrtoint ptr %cio_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cio_addr.i.i, align 4
  %and21.i.i = and i32 %24, 1048575
  %add22.i.i = or i32 %and21.i.i, -18874368
  %25 = inttoptr i32 %add22.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %22) #9, !srcloc !145
  %inc = add nuw i32 %i.019, 1
  %26 = load i32, ptr @num_cols, align 4
  %cmp5 = icmp ult i32 %inc, %26
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %27 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yoffset, align 4
  %yoffset9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %yoffset9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %yoffset9, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %land.lhs.true2.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcfb_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #9
  %2 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rect, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  tail call fastcc void @arcfb_lcd_update(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcfb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #9
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %area, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  tail call fastcc void @arcfb_lcd_update(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arcfb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #9
  %2 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %4 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  tail call fastcc void @arcfb_lcd_update(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcfb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %ctl2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par1, align 4
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup20_crit_edge [
    i32 18056, label %sw.bb
    i32 -2147203447, label %entry.sw.bb12_crit_edge
  ]

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !134) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoremove_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %7, align 4
  %irq = getelementptr inbounds %struct.arcfb_par, ptr %2, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %cleanup20.critedge, label %do.body6

do.body6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.arcfb_par, ptr %2, i32 0, i32 7
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void @prepare_to_wait(ptr noundef nonnull @arcfb_waitq, ptr noundef nonnull %wait, i32 noundef 1) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #9
  call void @schedule() #9
  call void @finish_wait(ptr noundef nonnull @arcfb_waitq, ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %do.body6, %entry.sw.bb12_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctl2) #9
  %19 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par1, align 4
  %c2io_addr.i = getelementptr inbounds %struct.arcfb_par, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %c2io_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c2io_addr.i, align 4
  %and.i26 = and i32 %22, 1048575
  %add.i = or i32 %and.i26, -18874368
  %23 = inttoptr i32 %add.i to ptr
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #9, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %25 = ptrtoint ptr %ctl2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ctl2, align 1
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb12.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb12.copy_to_user.exit.thread_crit_edge:       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb12
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 1, i32 -1226833920) #14, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ctl2, i32 noundef 1) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ctl2, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool16.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool16.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb12.copy_to_user.exit.thread_crit_edge
  %27 = phi i32 [ -14, %sw.bb12.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctl2) #9
  br label %cleanup20

cleanup20.critedge:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup20.critedge, %copy_to_user.exit.thread, %entry.cleanup20_crit_edge
  %retval.2 = phi i32 [ %27, %copy_to_user.exit.thread ], [ -22, %cleanup20.critedge ], [ -22, %entry.cleanup20_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arcfb_lcd_update(ptr nocapture noundef readonly %par, i32 noundef %dx, i32 noundef %dy, i32 noundef %w, i32 noundef %h) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dy, -8
  %sub = and i32 %dy, 7
  %add = add nuw nsw i32 %sub, 7
  %add1 = add i32 %add, %h
  %div36 = and i32 %add1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %cmp4.not37 = icmp eq i32 %w, 0
  br i1 %cmp4.not37, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add2 = add i32 %dx, -1
  %sub3 = add i32 %add2, %w
  %or = or i32 %dx, 63
  %0 = tail call i32 @llvm.umin.i32(i32 %sub3, i32 %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div36)
  %cmp1.not29.i = icmp eq i32 %div36, 0
  %add.i = add i32 %and, -1
  %sub.i = add i32 %add.i, %div36
  %or.i = or i32 %dy, 63
  %1 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %or.i) #9
  %cio_addr.i.i.i.i.i = getelementptr inbounds %struct.arcfb_par, ptr %par, i32 0, i32 1
  %info.i.i.i = getelementptr inbounds %struct.arcfb_par, ptr %par, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %arcfb_lcd_update_horiz.exit.while.body_crit_edge, %while.body.lr.ph
  %left.041 = phi i32 [ %dx, %while.body.lr.ph ], [ %add8, %arcfb_lcd_update_horiz.exit.while.body_crit_edge ]
  %distance.040 = phi i32 [ %w, %while.body.lr.ph ], [ %sub7, %arcfb_lcd_update_horiz.exit.while.body_crit_edge ]
  %right.038 = phi i32 [ %0, %while.body.lr.ph ], [ %85, %arcfb_lcd_update_horiz.exit.while.body_crit_edge ]
  br i1 %cmp1.not29.i, label %while.body.arcfb_lcd_update_horiz.exit_crit_edge, label %while.body.lr.ph.i

while.body.arcfb_lcd_update_horiz.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_horiz.exit

while.body.lr.ph.i:                               ; preds = %while.body
  %shr.i.i.i = lshr i32 %left.041, 6
  %div43.i.i.i = lshr i32 %left.041, 3
  %conv7.i.i.i = trunc i32 %left.041 to i8
  %2 = or i8 %conv7.i.i.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %left.041, i32 %right.038)
  %cmp.not24.i.i.i = icmp ugt i32 %left.041, %right.038
  br label %while.body.i

while.body.i:                                     ; preds = %arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %distance.033.i = phi i32 [ %div36, %while.body.lr.ph.i ], [ %sub4.i, %arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge ]
  %upper.031.i = phi i32 [ %and, %while.body.lr.ph.i ], [ %add5.i, %arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge ]
  %lower.030.i = phi i32 [ %1, %while.body.lr.ph.i ], [ %83, %arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge ]
  %3 = xor i32 %lower.030.i, -1
  %add3.neg.i = add i32 %upper.031.i, %distance.033.i
  %sub4.i = add i32 %add3.neg.i, %3
  %sub.i.i = sub i32 1, %upper.031.i
  %add.i.i = add i32 %sub.i.i, %lower.030.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.not9.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp.not9.i.i, label %while.body.i.arcfb_lcd_update_vert.exit.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.arcfb_lcd_update_vert.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_vert.exit.i

while.body.i.i:                                   ; preds = %arcfb_lcd_update_page.exit.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %upper.011.i.i = phi i32 [ %add3.i.i, %arcfb_lcd_update_page.exit.i.i.while.body.i.i_crit_edge ], [ %upper.031.i, %while.body.i.while.body.i.i_crit_edge ]
  %distance.010.i.i = phi i32 [ %sub2.i.i, %arcfb_lcd_update_page.exit.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %while.body.i.while.body.i.i_crit_edge ]
  %sub2.i.i = add i32 %distance.010.i.i, -8
  %shr1.i.i.i = lshr i32 %upper.011.i.i, 6
  %4 = load i32, ptr @num_cols, align 4
  %mul.i.i.i = mul i32 %4, %shr1.i.i.i
  %add.i.i.i = add i32 %mul.i.i.i, %shr.i.i.i
  %div1.i.i.i = lshr i32 %upper.011.i.i, 3
  %conv.i.i.i = trunc i32 %div1.i.i.i to i8
  %5 = or i8 %conv.i.i.i, -72
  %arrayidx.i.i.i.i.i = getelementptr %struct.arcfb_par, ptr %par, i32 0, i32 4, i32 %add.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i.i.i.i = or i8 %7, 9
  %8 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %9, 1048575
  %add.i.i.i.i.i = or i32 %and.i.i.i.i.i, -18874368
  %10 = inttoptr i32 %add.i.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %or1.i.i.i.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %par, align 4
  %and6.i.i.i.i.i = and i32 %12, 1048575
  %add7.i.i.i.i.i = or i32 %and6.i.i.i.i.i, -18874368
  %13 = inttoptr i32 %add7.i.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %5) #9, !srcloc !145
  %14 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %16 = or i8 %7, 8
  %17 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and21.i.i.i.i.i = and i32 %18, 1048575
  %add22.i.i.i.i.i = or i32 %and21.i.i.i.i.i, -18874368
  %19 = inttoptr i32 %add22.i.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #9, !srcloc !145
  %20 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i.i.i, align 4
  %var.i.i.i = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %var.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %var.i.i.i, align 4
  %div22.i.i.i = lshr i32 %23, 3
  %24 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 25
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %or1.i.i7.i.i.i = or i8 %28, 9
  %29 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and.i.i9.i.i.i = and i32 %30, 1048575
  %add.i.i10.i.i.i = or i32 %and.i.i9.i.i.i, -18874368
  %31 = inttoptr i32 %add.i.i10.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %or1.i.i7.i.i.i) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %par, align 4
  %and6.i.i11.i.i.i = and i32 %33, 1048575
  %add7.i.i12.i.i.i = or i32 %and6.i.i11.i.i.i, -18874368
  %34 = inttoptr i32 %add7.i.i12.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %2) #9, !srcloc !145
  %35 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %35) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %37 = or i8 %28, 8
  %38 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and21.i.i19.i.i.i = and i32 %39, 1048575
  %add22.i.i20.i.i.i = or i32 %and21.i.i19.i.i.i, -18874368
  %40 = inttoptr i32 %add22.i.i20.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %37) #9, !srcloc !145
  br i1 %cmp.not24.i.i.i, label %while.body.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge, label %for.cond.preheader.preheader.i.i.i

while.body.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_page.exit.i.i

for.cond.preheader.preheader.i.i.i:               ; preds = %while.body.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %div43.i.i.i
  %mul5.i.i.i = mul i32 %div22.i.i.i, %upper.011.i.i
  %add.ptr6.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul5.i.i.i
  %mul21.2.i.i.i = shl nuw nsw i32 %div22.i.i.i, 1
  %mul21.3.i.i.i = mul nuw nsw i32 %div22.i.i.i, 3
  %mul21.4.i.i.i = shl nuw nsw i32 %div22.i.i.i, 2
  %mul21.5.i.i.i = mul nuw i32 %div22.i.i.i, 5
  %mul21.6.i.i.i = mul nuw i32 %div22.i.i.i, 6
  %mul21.7.i.i.i = mul nuw i32 %div22.i.i.i, 7
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge, %for.cond.preheader.preheader.i.i.i
  %rightshift.028.i.i.i = phi i8 [ %rightshift.1.i.i.i, %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge ], [ 0, %for.cond.preheader.preheader.i.i.i ]
  %bitmask.027.i.i.i = phi i8 [ %bitmask.1.i.i.i, %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge ], [ 1, %for.cond.preheader.preheader.i.i.i ]
  %left.addr.026.i.i.i = phi i32 [ %inc32.i.i.i, %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge ], [ %left.041, %for.cond.preheader.preheader.i.i.i ]
  %src.025.i.i.i = phi ptr [ %src.1.i.i.i, %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge ], [ %add.ptr6.i.i.i, %for.cond.preheader.preheader.i.i.i ]
  %conv11.i.i.i = zext i8 %rightshift.028.i.i.i to i32
  %41 = ptrtoint ptr %src.025.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %src.025.i.i.i, align 1
  %and254.i.i.i = and i8 %42, %bitmask.027.i.i.i
  %and25.i.i.i = zext i8 %and254.i.i.i to i32
  %shr28.i.i.i = lshr i32 %and25.i.i.i, %conv11.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rightshift.028.i.i.i)
  %cmp12.1.i.i.i = icmp eq i8 %rightshift.028.i.i.i, 0
  %add.ptr15.1.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %div22.i.i.i
  %43 = ptrtoint ptr %add.ptr15.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %add.ptr15.1.i.i.i, align 1
  %and5.1.i.i.i = and i8 %44, %bitmask.027.i.i.i
  %and.1.i.i.i = zext i8 %and5.1.i.i.i to i32
  br i1 %cmp12.1.i.i.i, label %for.inc.1.thread.i.i.i, label %for.inc.1.i.i.i

for.inc.1.thread.i.i.i:                           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.1.i.i.i = sub nuw nsw i32 1, %conv11.i.i.i
  %shl.1.i.i.i = shl nuw nsw i32 %and.1.i.i.i, %sub.1.i.i.i
  %val.1.12937.i.i.i = or i32 %shl.1.i.i.i, %shr28.i.i.i
  br label %for.inc.2.thread.i.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %sub27.1.i.i.i = add nsw i32 %conv11.i.i.i, -1
  %shr28.1.i.i.i = lshr i32 %and.1.i.i.i, %sub27.1.i.i.i
  %val.1.129.i.i.i = or i32 %shr28.1.i.i.i, %shr28.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rightshift.028.i.i.i)
  %cmp12.2.i.i.i = icmp eq i8 %rightshift.028.i.i.i, 1
  br i1 %cmp12.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.thread.i.i.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.for.inc.2.thread.i.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.thread.i.i.i

for.inc.2.thread.i.i.i:                           ; preds = %for.inc.1.i.i.i.for.inc.2.thread.i.i.i_crit_edge, %for.inc.1.thread.i.i.i
  %val.1.12940.i.i.i = phi i32 [ %val.1.12937.i.i.i, %for.inc.1.thread.i.i.i ], [ %val.1.129.i.i.i, %for.inc.1.i.i.i.for.inc.2.thread.i.i.i_crit_edge ]
  %add.ptr15.2.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.2.i.i.i
  %45 = ptrtoint ptr %add.ptr15.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr15.2.i.i.i, align 1
  %and5.2.i.i.i = and i8 %46, %bitmask.027.i.i.i
  %and.2.i.i.i = zext i8 %and5.2.i.i.i to i32
  %sub.2.i.i.i = sub nuw nsw i32 2, %conv11.i.i.i
  %shl.2.i.i.i = shl nuw nsw i32 %and.2.i.i.i, %sub.2.i.i.i
  %val.1.23043.i.i.i = or i32 %shl.2.i.i.i, %val.1.12940.i.i.i
  br label %for.inc.3.thread.i.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %add.ptr22.2.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.2.i.i.i
  %47 = ptrtoint ptr %add.ptr22.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr22.2.i.i.i, align 1
  %and254.2.i.i.i = and i8 %48, %bitmask.027.i.i.i
  %and25.2.i.i.i = zext i8 %and254.2.i.i.i to i32
  %sub27.2.i.i.i = add nsw i32 %conv11.i.i.i, -2
  %shr28.2.i.i.i = lshr i32 %and25.2.i.i.i, %sub27.2.i.i.i
  %val.1.230.i.i.i = or i32 %shr28.2.i.i.i, %val.1.129.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rightshift.028.i.i.i)
  %cmp12.3.i.i.i = icmp ult i8 %rightshift.028.i.i.i, 3
  br i1 %cmp12.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.thread.i.i.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.for.inc.3.thread.i.i.i_crit_edge: ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.thread.i.i.i

for.inc.3.thread.i.i.i:                           ; preds = %for.inc.2.i.i.i.for.inc.3.thread.i.i.i_crit_edge, %for.inc.2.thread.i.i.i
  %val.1.23046.i.i.i = phi i32 [ %val.1.23043.i.i.i, %for.inc.2.thread.i.i.i ], [ %val.1.230.i.i.i, %for.inc.2.i.i.i.for.inc.3.thread.i.i.i_crit_edge ]
  %add.ptr15.3.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.3.i.i.i
  %49 = ptrtoint ptr %add.ptr15.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr15.3.i.i.i, align 1
  %and5.3.i.i.i = and i8 %50, %bitmask.027.i.i.i
  %and.3.i.i.i = zext i8 %and5.3.i.i.i to i32
  %sub.3.i.i.i = sub nsw i32 3, %conv11.i.i.i
  %shl.3.i.i.i = shl nuw nsw i32 %and.3.i.i.i, %sub.3.i.i.i
  %val.1.33149.i.i.i = or i32 %shl.3.i.i.i, %val.1.23046.i.i.i
  br label %for.inc.4.thread.i.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %add.ptr22.3.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.3.i.i.i
  %51 = ptrtoint ptr %add.ptr22.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr22.3.i.i.i, align 1
  %and254.3.i.i.i = and i8 %52, %bitmask.027.i.i.i
  %and25.3.i.i.i = zext i8 %and254.3.i.i.i to i32
  %sub27.3.i.i.i = add nsw i32 %conv11.i.i.i, -3
  %shr28.3.i.i.i = lshr i32 %and25.3.i.i.i, %sub27.3.i.i.i
  %val.1.331.i.i.i = or i32 %shr28.3.i.i.i, %val.1.230.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rightshift.028.i.i.i)
  %cmp12.4.i.i.i = icmp eq i8 %rightshift.028.i.i.i, 3
  br i1 %cmp12.4.i.i.i, label %for.inc.3.i.i.i.for.inc.4.thread.i.i.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.for.inc.4.thread.i.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.thread.i.i.i

for.inc.4.thread.i.i.i:                           ; preds = %for.inc.3.i.i.i.for.inc.4.thread.i.i.i_crit_edge, %for.inc.3.thread.i.i.i
  %val.1.33152.i.i.i = phi i32 [ %val.1.33149.i.i.i, %for.inc.3.thread.i.i.i ], [ %val.1.331.i.i.i, %for.inc.3.i.i.i.for.inc.4.thread.i.i.i_crit_edge ]
  %add.ptr15.4.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.4.i.i.i
  %53 = ptrtoint ptr %add.ptr15.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr15.4.i.i.i, align 1
  %and5.4.i.i.i = and i8 %54, %bitmask.027.i.i.i
  %and.4.i.i.i = zext i8 %and5.4.i.i.i to i32
  %sub.4.i.i.i = sub nsw i32 4, %conv11.i.i.i
  %shl.4.i.i.i = shl nuw nsw i32 %and.4.i.i.i, %sub.4.i.i.i
  %val.1.43255.i.i.i = or i32 %shl.4.i.i.i, %val.1.33152.i.i.i
  br label %for.inc.5.thread.i.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %add.ptr22.4.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.4.i.i.i
  %55 = ptrtoint ptr %add.ptr22.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr22.4.i.i.i, align 1
  %and254.4.i.i.i = and i8 %56, %bitmask.027.i.i.i
  %and25.4.i.i.i = zext i8 %and254.4.i.i.i to i32
  %sub27.4.i.i.i = add nsw i32 %conv11.i.i.i, -4
  %shr28.4.i.i.i = lshr i32 %and25.4.i.i.i, %sub27.4.i.i.i
  %val.1.432.i.i.i = or i32 %shr28.4.i.i.i, %val.1.331.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %rightshift.028.i.i.i)
  %cmp12.5.i.i.i = icmp ult i8 %rightshift.028.i.i.i, 5
  br i1 %cmp12.5.i.i.i, label %for.inc.4.i.i.i.for.inc.5.thread.i.i.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.for.inc.5.thread.i.i.i_crit_edge: ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.thread.i.i.i

for.inc.5.thread.i.i.i:                           ; preds = %for.inc.4.i.i.i.for.inc.5.thread.i.i.i_crit_edge, %for.inc.4.thread.i.i.i
  %val.1.43258.i.i.i = phi i32 [ %val.1.43255.i.i.i, %for.inc.4.thread.i.i.i ], [ %val.1.432.i.i.i, %for.inc.4.i.i.i.for.inc.5.thread.i.i.i_crit_edge ]
  %add.ptr15.5.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.5.i.i.i
  %57 = ptrtoint ptr %add.ptr15.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %add.ptr15.5.i.i.i, align 1
  %and5.5.i.i.i = and i8 %58, %bitmask.027.i.i.i
  %and.5.i.i.i = zext i8 %and5.5.i.i.i to i32
  %sub.5.i.i.i = sub nsw i32 5, %conv11.i.i.i
  %shl.5.i.i.i = shl nuw nsw i32 %and.5.i.i.i, %sub.5.i.i.i
  %val.1.53361.i.i.i = or i32 %shl.5.i.i.i, %val.1.43258.i.i.i
  br label %for.inc.6.thread.i.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %add.ptr22.5.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.5.i.i.i
  %59 = ptrtoint ptr %add.ptr22.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr22.5.i.i.i, align 1
  %and254.5.i.i.i = and i8 %60, %bitmask.027.i.i.i
  %and25.5.i.i.i = zext i8 %and254.5.i.i.i to i32
  %sub27.5.i.i.i = add nsw i32 %conv11.i.i.i, -5
  %shr28.5.i.i.i = lshr i32 %and25.5.i.i.i, %sub27.5.i.i.i
  %val.1.533.i.i.i = or i32 %shr28.5.i.i.i, %val.1.432.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %rightshift.028.i.i.i)
  %cmp12.6.i.i.i = icmp eq i8 %rightshift.028.i.i.i, 5
  br i1 %cmp12.6.i.i.i, label %for.inc.5.i.i.i.for.inc.6.thread.i.i.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.for.inc.6.thread.i.i.i_crit_edge: ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.thread.i.i.i

for.inc.6.thread.i.i.i:                           ; preds = %for.inc.5.i.i.i.for.inc.6.thread.i.i.i_crit_edge, %for.inc.5.thread.i.i.i
  %val.1.53364.i.i.i = phi i32 [ %val.1.53361.i.i.i, %for.inc.5.thread.i.i.i ], [ %val.1.533.i.i.i, %for.inc.5.i.i.i.for.inc.6.thread.i.i.i_crit_edge ]
  %add.ptr15.6.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.6.i.i.i
  %61 = ptrtoint ptr %add.ptr15.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr15.6.i.i.i, align 1
  %and5.6.i.i.i = and i8 %62, %bitmask.027.i.i.i
  %and.6.i.i.i = zext i8 %and5.6.i.i.i to i32
  %sub.6.i.i.i = sub nsw i32 6, %conv11.i.i.i
  %shl.6.i.i.i = shl nuw nsw i32 %and.6.i.i.i, %sub.6.i.i.i
  %val.1.63467.i.i.i = or i32 %shl.6.i.i.i, %val.1.53364.i.i.i
  br label %if.then.7.i.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %add.ptr22.6.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.6.i.i.i
  %63 = ptrtoint ptr %add.ptr22.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr22.6.i.i.i, align 1
  %and254.6.i.i.i = and i8 %64, %bitmask.027.i.i.i
  %and25.6.i.i.i = zext i8 %and254.6.i.i.i to i32
  %sub27.6.i.i.i = add nsw i32 %conv11.i.i.i, -6
  %shr28.6.i.i.i = lshr i32 %and25.6.i.i.i, %sub27.6.i.i.i
  %val.1.634.i.i.i = or i32 %shr28.6.i.i.i, %val.1.533.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %rightshift.028.i.i.i)
  %cmp12.7.i.i.i = icmp ult i8 %rightshift.028.i.i.i, 7
  br i1 %cmp12.7.i.i.i, label %for.inc.6.i.i.i.if.then.7.i.i.i_crit_edge, label %if.else.7.i.i.i

for.inc.6.i.i.i.if.then.7.i.i.i_crit_edge:        ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.7.i.i.i

if.else.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr22.7.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.7.i.i.i
  %65 = ptrtoint ptr %add.ptr22.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr22.7.i.i.i, align 1
  %and254.7.i.i.i = and i8 %66, %bitmask.027.i.i.i
  %and25.7.i.i.i = zext i8 %and254.7.i.i.i to i32
  %sub27.7.i.i.i = add nsw i32 %conv11.i.i.i, -7
  %shr28.7.i.i.i = lshr i32 %and25.7.i.i.i, %sub27.7.i.i.i
  br label %for.inc.7.i.i.i

if.then.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i.if.then.7.i.i.i_crit_edge, %for.inc.6.thread.i.i.i
  %val.1.63470.i.i.i = phi i32 [ %val.1.63467.i.i.i, %for.inc.6.thread.i.i.i ], [ %val.1.634.i.i.i, %for.inc.6.i.i.i.if.then.7.i.i.i_crit_edge ]
  %add.ptr15.7.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %mul21.7.i.i.i
  %67 = ptrtoint ptr %add.ptr15.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr15.7.i.i.i, align 1
  %and5.7.i.i.i = and i8 %68, %bitmask.027.i.i.i
  %and.7.i.i.i = zext i8 %and5.7.i.i.i to i32
  %sub.7.i.i.i = sub nsw i32 7, %conv11.i.i.i
  %shl.7.i.i.i = shl nuw nsw i32 %and.7.i.i.i, %sub.7.i.i.i
  br label %for.inc.7.i.i.i

for.inc.7.i.i.i:                                  ; preds = %if.then.7.i.i.i, %if.else.7.i.i.i
  %val.1.63469.i.i.i = phi i32 [ %val.1.63470.i.i.i, %if.then.7.i.i.i ], [ %val.1.634.i.i.i, %if.else.7.i.i.i ]
  %.pn.in.7.i.i.i = phi i32 [ %shl.7.i.i.i, %if.then.7.i.i.i ], [ %shr28.7.i.i.i, %if.else.7.i.i.i ]
  %val.1.735.i.i.i = or i32 %.pn.in.7.i.i.i, %val.1.63469.i.i.i
  %val.1.7.i.i.i = trunc i32 %val.1.735.i.i.i to i8
  %69 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %71 = or i8 %70, 1
  %72 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %73, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %74 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 %71) #9, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %par, align 4
  %and6.i.i.i.i = and i32 %76, 1048575
  %add7.i.i.i.i = or i32 %and6.i.i.i.i, -18874368
  %77 = inttoptr i32 %add7.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %val.1.7.i.i.i) #9, !srcloc !145
  %78 = load i32, ptr @tuhold, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %cio_addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cio_addr.i.i.i.i.i, align 4
  %and21.i.i.i.i = and i32 %81, 1048575
  %add22.i.i.i.i = or i32 %and21.i.i.i.i, -18874368
  %82 = inttoptr i32 %add22.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %70) #9, !srcloc !145
  %inc32.i.i.i = add i32 %left.addr.026.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bitmask.027.i.i.i)
  %cmp34.i.i.i = icmp eq i8 %bitmask.027.i.i.i, -128
  %shl39.i.i.i = shl i8 %bitmask.027.i.i.i, 1
  %inc41.i.i.i = add i8 %rightshift.028.i.i.i, 1
  %src.1.idx.i.i.i = zext i1 %cmp34.i.i.i to i32
  %src.1.i.i.i = getelementptr i8, ptr %src.025.i.i.i, i32 %src.1.idx.i.i.i
  %bitmask.1.i.i.i = select i1 %cmp34.i.i.i, i8 1, i8 %shl39.i.i.i
  %rightshift.1.i.i.i = select i1 %cmp34.i.i.i, i8 0, i8 %inc41.i.i.i
  %cmp.not.i.i.i = icmp ugt i32 %inc32.i.i.i, %right.038
  br i1 %cmp.not.i.i.i, label %for.inc.7.i.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge, label %for.inc.7.i.i.i.for.inc.i.i.i_crit_edge

for.inc.7.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.inc.7.i.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge: ; preds = %for.inc.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_page.exit.i.i

arcfb_lcd_update_page.exit.i.i:                   ; preds = %for.inc.7.i.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge, %while.body.i.i.arcfb_lcd_update_page.exit.i.i_crit_edge
  %add3.i.i = add i32 %upper.011.i.i, 8
  %cmp.not.i.i = icmp eq i32 %sub2.i.i, 0
  br i1 %cmp.not.i.i, label %arcfb_lcd_update_page.exit.i.i.arcfb_lcd_update_vert.exit.i_crit_edge, label %arcfb_lcd_update_page.exit.i.i.while.body.i.i_crit_edge

arcfb_lcd_update_page.exit.i.i.while.body.i.i_crit_edge: ; preds = %arcfb_lcd_update_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

arcfb_lcd_update_page.exit.i.i.arcfb_lcd_update_vert.exit.i_crit_edge: ; preds = %arcfb_lcd_update_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_vert.exit.i

arcfb_lcd_update_vert.exit.i:                     ; preds = %arcfb_lcd_update_page.exit.i.i.arcfb_lcd_update_vert.exit.i_crit_edge, %while.body.i.arcfb_lcd_update_vert.exit.i_crit_edge
  %add5.i = add i32 %lower.030.i, 1
  %sub7.i = add i32 %add3.neg.i, -1
  %or8.i = or i32 %add5.i, 63
  %83 = tail call i32 @llvm.umin.i32(i32 %sub7.i, i32 %or8.i) #9
  %cmp1.not.i = icmp eq i32 %sub4.i, 0
  br i1 %cmp1.not.i, label %arcfb_lcd_update_vert.exit.i.arcfb_lcd_update_horiz.exit_crit_edge, label %arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge

arcfb_lcd_update_vert.exit.i.while.body.i_crit_edge: ; preds = %arcfb_lcd_update_vert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

arcfb_lcd_update_vert.exit.i.arcfb_lcd_update_horiz.exit_crit_edge: ; preds = %arcfb_lcd_update_vert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfb_lcd_update_horiz.exit

arcfb_lcd_update_horiz.exit:                      ; preds = %arcfb_lcd_update_vert.exit.i.arcfb_lcd_update_horiz.exit_crit_edge, %while.body.arcfb_lcd_update_horiz.exit_crit_edge
  %84 = xor i32 %right.038, -1
  %add6.neg = add i32 %left.041, %distance.040
  %sub7 = add i32 %add6.neg, %84
  %add8 = add i32 %right.038, 1
  %sub10 = add i32 %add6.neg, -1
  %or11 = or i32 %add8, 63
  %85 = tail call i32 @llvm.umin.i32(i32 %sub10, i32 %or11)
  %cmp4.not = icmp eq i32 %sub7, 0
  br i1 %cmp4.not, label %arcfb_lcd_update_horiz.exit.while.end_crit_edge, label %arcfb_lcd_update_horiz.exit.while.body_crit_edge

arcfb_lcd_update_horiz.exit.while.body_crit_edge: ; preds = %arcfb_lcd_update_horiz.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

arcfb_lcd_update_horiz.exit.while.end_crit_edge:  ; preds = %arcfb_lcd_update_horiz.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %arcfb_lcd_update_horiz.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !115, !117, !119, !120, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__param_num_cols, !1, !"__param_num_cols", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/arcfb.c", i32 644, i32 1}
!2 = !{ptr @__UNIQUE_ID_num_colstype309, !1, !"__UNIQUE_ID_num_colstype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_num_cols310, !4, !"__UNIQUE_ID_num_cols310", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/arcfb.c", i32 645, i32 1}
!5 = !{ptr @__param_num_rows, !6, !"__param_num_rows", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/arcfb.c", i32 646, i32 1}
!7 = !{ptr @__UNIQUE_ID_num_rowstype311, !6, !"__UNIQUE_ID_num_rowstype311", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_num_rows312, !9, !"__UNIQUE_ID_num_rows312", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/arcfb.c", i32 647, i32 1}
!10 = !{ptr @__param_nosplash, !11, !"__param_nosplash", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/arcfb.c", i32 648, i32 1}
!12 = !{ptr @__UNIQUE_ID_nosplashtype313, !11, !"__UNIQUE_ID_nosplashtype313", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_nosplash314, !14, !"__UNIQUE_ID_nosplash314", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/arcfb.c", i32 649, i32 1}
!15 = !{ptr @__param_arcfb_enable, !16, !"__param_arcfb_enable", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/arcfb.c", i32 650, i32 1}
!17 = !{ptr @__UNIQUE_ID_arcfb_enabletype315, !16, !"__UNIQUE_ID_arcfb_enabletype315", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_arcfb_enable316, !19, !"__UNIQUE_ID_arcfb_enable316", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/arcfb.c", i32 651, i32 1}
!20 = !{ptr @__param_dio_addr, !21, !"__param_dio_addr", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/arcfb.c", i32 652, i32 1}
!22 = !{ptr @__UNIQUE_ID_dio_addrtype317, !21, !"__UNIQUE_ID_dio_addrtype317", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_dio_addr318, !24, !"__UNIQUE_ID_dio_addr318", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/arcfb.c", i32 653, i32 1}
!25 = !{ptr @__param_cio_addr, !26, !"__param_cio_addr", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/arcfb.c", i32 654, i32 1}
!27 = !{ptr @__UNIQUE_ID_cio_addrtype319, !26, !"__UNIQUE_ID_cio_addrtype319", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_cio_addr320, !29, !"__UNIQUE_ID_cio_addr320", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/arcfb.c", i32 655, i32 1}
!30 = !{ptr @__param_c2io_addr, !31, !"__param_c2io_addr", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/arcfb.c", i32 656, i32 1}
!32 = !{ptr @__UNIQUE_ID_c2io_addrtype321, !31, !"__UNIQUE_ID_c2io_addrtype321", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_c2io_addr322, !34, !"__UNIQUE_ID_c2io_addr322", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/arcfb.c", i32 657, i32 1}
!35 = !{ptr @__param_splashval, !36, !"__param_splashval", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/arcfb.c", i32 658, i32 1}
!37 = !{ptr @__UNIQUE_ID_splashvaltype323, !36, !"__UNIQUE_ID_splashvaltype323", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_splashval324, !39, !"__UNIQUE_ID_splashval324", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/arcfb.c", i32 659, i32 1}
!40 = !{ptr @__param_tuhold, !41, !"__param_tuhold", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/arcfb.c", i32 660, i32 1}
!42 = !{ptr @__UNIQUE_ID_tuholdtype325, !41, !"__UNIQUE_ID_tuholdtype325", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_tuhold326, !44, !"__UNIQUE_ID_tuhold326", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/arcfb.c", i32 661, i32 1}
!45 = !{ptr @__param_irq, !46, !"__param_irq", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/arcfb.c", i32 662, i32 1}
!47 = !{ptr @__UNIQUE_ID_irqtype327, !46, !"__UNIQUE_ID_irqtype327", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_irq328, !49, !"__UNIQUE_ID_irq328", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/arcfb.c", i32 663, i32 1}
!50 = !{ptr @__initcall__kmod_arcfb__329_665_arcfb_init6, !51, !"__initcall__kmod_arcfb__329_665_arcfb_init6", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/arcfb.c", i32 665, i32 1}
!52 = !{ptr @__exitcall_arcfb_exit, !53, !"__exitcall_arcfb_exit", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/arcfb.c", i32 666, i32 1}
!54 = !{ptr @__UNIQUE_ID_description330, !55, !"__UNIQUE_ID_description330", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/arcfb.c", i32 668, i32 1}
!56 = !{ptr @__UNIQUE_ID_author331, !57, !"__UNIQUE_ID_author331", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/arcfb.c", i32 669, i32 1}
!58 = !{ptr @__UNIQUE_ID_file332, !59, !"__UNIQUE_ID_file332", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/arcfb.c", i32 670, i32 1}
!60 = !{ptr @__UNIQUE_ID_license333, !59, !"__UNIQUE_ID_license333", i1 false, i1 false}
!61 = !{ptr @num_cols, !62, !"num_cols", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/arcfb.c", i32 101, i32 22}
!63 = !{ptr @num_rows, !64, !"num_rows", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/arcfb.c", i32 102, i32 22}
!65 = !{ptr @dio_addr, !66, !"dio_addr", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/arcfb.c", i32 103, i32 22}
!67 = !{ptr @cio_addr, !68, !"cio_addr", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/arcfb.c", i32 104, i32 22}
!69 = !{ptr @c2io_addr, !70, !"c2io_addr", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/arcfb.c", i32 105, i32 22}
!71 = !{ptr @splashval, !72, !"splashval", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/arcfb.c", i32 106, i32 22}
!73 = !{ptr @tuhold, !74, !"tuhold", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/arcfb.c", i32 107, i32 22}
!75 = !{ptr @nosplash, !76, !"nosplash", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/arcfb.c", i32 108, i32 21}
!77 = !{ptr @arcfb_enable, !78, !"arcfb_enable", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/arcfb.c", i32 109, i32 21}
!79 = !{ptr @irq, !80, !"irq", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/arcfb.c", i32 110, i32 21}
!81 = !{ptr @arcfb_device, !82, !"arcfb_device", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/arcfb.c", i32 612, i32 32}
!83 = !{ptr @.str, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/arcfb.c", i32 608, i32 11}
!85 = !{ptr @arcfb_driver, !86, !"arcfb_driver", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/arcfb.c", i32 604, i32 31}
!87 = !{ptr @.str.1, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/arcfb.c", i32 537, i32 3}
!89 = !{ptr @.str.2, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @arcfb_probe._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @arcfb_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @arcfb_probe.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/arcfb.c", i32 546, i32 2}
!95 = !{ptr @.str.4, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.6, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/arcfb.c", i32 551, i32 4}
!98 = !{ptr @arcfb_probe._entry.5, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @arcfb_probe._entry_ptr.7, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.9, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/arcfb.c", i32 561, i32 2}
!102 = !{ptr @arcfb_probe._entry.8, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @arcfb_probe._entry_ptr.10, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.12, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/fbdev/arcfb.c", i32 576, i32 4}
!106 = !{ptr @arcfb_probe._entry.11, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @arcfb_probe._entry_ptr.13, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @arcfb_ops, !109, !"arcfb_ops", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/arcfb.c", i32 494, i32 28}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!112 = !{ptr @.str.14, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.15, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!115 = !{ptr @.str.16, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!117 = !{ptr @.str.17, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/arcfb.c", i32 112, i32 8}
!119 = !{ptr @arcfb_waitq, !118, !"arcfb_waitq", i1 false, i1 false}
!120 = !{ptr @arcfb_var, !121, !"arcfb_var", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/arcfb.c", i32 92, i32 39}
!122 = !{ptr @arcfb_fix, !123, !"arcfb_fix", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/arcfb.c", i32 82, i32 39}
!124 = !{ptr @__param_str_num_cols, !1, !"__param_str_num_cols", i1 false, i1 false}
!125 = !{ptr @__param_str_num_rows, !6, !"__param_str_num_rows", i1 false, i1 false}
!126 = !{ptr @__param_str_nosplash, !11, !"__param_str_nosplash", i1 false, i1 false}
!127 = !{ptr @__param_str_arcfb_enable, !16, !"__param_str_arcfb_enable", i1 false, i1 false}
!128 = !{ptr @__param_str_dio_addr, !21, !"__param_str_dio_addr", i1 false, i1 false}
!129 = !{ptr @__param_str_cio_addr, !26, !"__param_str_cio_addr", i1 false, i1 false}
!130 = !{ptr @__param_str_c2io_addr, !31, !"__param_str_c2io_addr", i1 false, i1 false}
!131 = !{ptr @__param_str_splashval, !36, !"__param_str_splashval", i1 false, i1 false}
!132 = !{ptr @__param_str_tuhold, !41, !"__param_str_tuhold", i1 false, i1 false}
!133 = !{ptr @__param_str_irq, !46, !"__param_str_irq", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2155856999}
!145 = !{i64 6100001}
!146 = !{i64 2155857337}
!147 = !{i64 2155858269}
!148 = !{i64 6100396}
!149 = !{i64 2155859584}
!150 = !{i64 2155858607}
!151 = !{i64 2155859828}
!152 = !{i64 2155860166}
!153 = !{i64 2155861098}
!154 = !{i64 2148354968, i64 2148354994, i64 2148355023, i64 2148355057, i64 2148355088, i64 2148355111}
!155 = !{i64 2148357433, i64 2148357459, i64 2148357488, i64 2148357522, i64 2148357553, i64 2148357576}
!156 = !{!"branch_weights", i32 2000, i32 1}
!157 = !{i64 2152977914, i64 2152977939}
!158 = !{i64 5473469}
!159 = !{i64 5473666}
!160 = !{i64 2152958899}
!161 = !{i64 2152978595, i64 2152978620}
