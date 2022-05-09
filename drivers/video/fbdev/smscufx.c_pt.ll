; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/smscufx.c_pt.bc'
source_filename = "../drivers/video/fbdev/smscufx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufx_data = type { ptr, ptr, ptr, %struct.urb_list, %struct.kref, i32, i8, %struct.delayed_work, %struct.atomic_t, %struct.atomic_t, ptr, i32, [256 x i32] }
%struct.urb_list = type { %struct.list_head, %struct.spinlock, %struct.semaphore, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.urb_node = type { %struct.list_head, ptr, %struct.delayed_work, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.dloarea = type { i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }

@__initcall__kmod_smscufx__341_1773_ufx_driver_init6 = internal global ptr @ufx_driver_init, section ".initcall6.init", align 4
@ufx_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ufx_usb_probe, ptr @ufx_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ufx_driver_exit = internal global ptr @ufx_driver_exit, section ".exitcall.exit", align 4
@__param_str_console = internal constant [16 x i8] c"smscufx.console\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@console = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_console = internal constant %struct.kernel_param { ptr @__param_str_console, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @console } }, section "__param", align 4
@__UNIQUE_ID_consoletype344 = internal constant [30 x i8] c"smscufx.parmtype=console:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console345 = internal constant [60 x i8] c"smscufx.parm=console:Allow fbcon to be used on this display\00", section ".modinfo", align 1
@__param_str_fb_defio = internal constant [17 x i8] c"smscufx.fb_defio\00", align 1
@fb_defio = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_fb_defio = internal constant %struct.kernel_param { ptr @__param_str_fb_defio, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @fb_defio } }, section "__param", align 4
@__UNIQUE_ID_fb_defiotype346 = internal constant [31 x i8] c"smscufx.parmtype=fb_defio:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fb_defio347 = internal constant [51 x i8] c"smscufx.parm=fb_defio:Enable fb_defio mmap support\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [65 x i8] c"smscufx.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [55 x i8] c"smscufx.description=SMSC UFX kernel framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [41 x i8] c"smscufx.file=drivers/video/fbdev/smscufx\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [20 x i8] c"smscufx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smscufx\00", [24 x i8] zeroinitializer }, align 32
@id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1060, i16 -25344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 -25343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ufx_usb_probe: failed alloc of dev struct\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufx_usb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/video/fbdev/smscufx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr = internal global ptr @ufx_usb_probe._entry, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s %s - serial #%s\0A\00", [44 x i8] zeroinitializer }, align 32
@ufx_usb_probe.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"vid_%04x&pid_%04x&rev_%04x driver's ufx_data struct at %p\0A\00", [37 x i8] zeroinitializer }, align 32
@ufx_usb_probe.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"console enable=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ufx_usb_probe.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fb_defio enable=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufx_alloc_urb_list failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.12 = internal global ptr @ufx_usb_probe._entry.10, section ".printk_index", align 4
@ufx_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @ufx_ops_open, ptr @ufx_ops_release, ptr @fb_sys_read, ptr @ufx_ops_write, ptr @ufx_ops_check_var, ptr @ufx_ops_set_par, ptr @ufx_ops_setcolreg, ptr null, ptr @ufx_ops_blank, ptr null, ptr @ufx_ops_fillrect, ptr @ufx_ops_copyarea, ptr @ufx_ops_imageblit, ptr null, ptr null, ptr @ufx_ops_ioctl, ptr null, ptr @ufx_ops_mmap, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1662, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fb_alloc_cmap failed %x\0A\00", [39 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.15 = internal global ptr @ufx_usb_probe._entry.13, section ".printk_index", align 4
@ufx_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&dev->free_framebuffer_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@ufx_usb_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&dev->free_framebuffer_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014smscufx: error %d reading 0x3000 register from device\00", [40 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.21 = internal global ptr @ufx_usb_probe._entry.19, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ID_REV register value 0x%08x\00", [35 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014smscufx: error %d reading 0x3004 register from device\00", [40 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.25 = internal global ptr @ufx_usb_probe._entry.23, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FPGA_REV register value 0x%08x\00", [33 x i8] zeroinitializer }, align 32
@ufx_usb_probe.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.27, i8 1, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resetting device\00", [47 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014smscufx: error %d resetting device\00", [59 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.30 = internal global ptr @ufx_usb_probe._entry.28, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.31, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"configuring system clock\00", [39 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014smscufx: error %d configuring system clock\00", [51 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.34 = internal global ptr @ufx_usb_probe._entry.32, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.35, i8 1, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"configuring DDR2 controller\00", [36 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: error %d initialising DDR2 controller\00", [47 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.38 = internal global ptr @ufx_usb_probe._entry.36, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.39, i8 1, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"configuring I2C controller\00", [37 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014smscufx: error %d initialising I2C controller\00", [48 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.42 = internal global ptr @ufx_usb_probe._entry.40, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.43, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"selecting display mode\00", [41 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 1697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014smscufx: unable to find common mode for display and adapter\00", [34 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.46 = internal global ptr @ufx_usb_probe._entry.44, section ".printk_index", align 4
@ufx_usb_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.2, ptr @.str.3, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014smscufx: error %d enabling graphics engine\00", [51 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.49 = internal global ptr @ufx_usb_probe._entry.47, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.50, i8 1, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"checking var\00", [19 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.2, ptr @.str.3, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014smscufx: error %d ufx_ops_check_var\00", [58 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.53 = internal global ptr @ufx_usb_probe._entry.51, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.54, i8 1, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"setting par\00", [20 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.2, ptr @.str.3, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014smscufx: error %d ufx_ops_set_par\00", [60 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.57 = internal global ptr @ufx_usb_probe._entry.55, section ".printk_index", align 4
@ufx_usb_probe.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.58, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"registering framebuffer\00", [40 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.2, ptr @.str.3, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014smscufx: error %d register_framebuffer\00", [55 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.61 = internal global ptr @ufx_usb_probe._entry.59, section ".printk_index", align 4
@ufx_usb_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.2, ptr @.str.3, i32 1719, ptr @.str.64, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"SMSC UDX USB device /dev/fb%d attached. %dx%d resolution. Using %dK framebuffer memory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ufx_usb_probe._entry_ptr.65 = internal global ptr @ufx_usb_probe._entry.62, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ufx_alloc_urb_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->urbs.lock\00", [16 x i8] zeroinitializer }, align 32
@ufx_alloc_urb_list.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&unode->release_urb_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@ufx_alloc_urb_list.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&unode->release_urb_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@ufx_alloc_urb_list.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 1, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufx_alloc_urb_list\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocated %d %d byte urbs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"smscufx: allocated %d %d byte urbs\0A\00", [60 x i8] zeroinitializer }, align 32
@ufx_urb_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013smscufx: %s - nonzero write bulk status received: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufx_urb_completion\00", [45 x i8] zeroinitializer }, align 32
@ufx_urb_completion._entry_ptr = internal global ptr @ufx_urb_completion._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@ufx_ops_open.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufx_ops_open\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"open /dev/fb%d user=%d fb_info=%p count=%d\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"smscufx: open /dev/fb%d user=%d fb_info=%p count=%d\00", [44 x i8] zeroinitializer }, align 32
@ufx_handle_damage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014smscufx: ufx_handle_damage unable to get urb\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufx_handle_damage\00", [46 x i8] zeroinitializer }, align 32
@ufx_handle_damage._entry_ptr = internal global ptr @ufx_handle_damage._entry, section ".printk_index", align 4
@ufx_handle_damage._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: Error submitting URB\00", [32 x i8] zeroinitializer }, align 32
@ufx_handle_damage._entry_ptr.85 = internal global ptr @ufx_handle_damage._entry.83, section ".printk_index", align 4
@ufx_get_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014smscufx: wait for urb interrupted: %x available: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufx_get_urb\00", [20 x i8] zeroinitializer }, align 32
@ufx_get_urb._entry_ptr = internal global ptr @ufx_get_urb._entry, section ".printk_index", align 4
@ufx_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013smscufx: usb_submit_urb error %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufx_submit_urb\00", [17 x i8] zeroinitializer }, align 32
@ufx_submit_urb._entry_ptr = internal global ptr @ufx_submit_urb._entry, section ".printk_index", align 4
@ufx_ops_release.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufx_ops_release\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"released /dev/fb%d user=%d count=%d\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"smscufx: released /dev/fb%d user=%d count=%d\00", [51 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014smscufx: ufx_set_vid_mode error disabling RGB pad\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufx_set_vid_mode\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr = internal global ptr @ufx_set_vid_mode._entry, section ".printk_index", align 4
@ufx_set_vid_mode._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error disabling VDAC\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.97 = internal global ptr @ufx_set_vid_mode._entry.95, section ".printk_index", align 4
@ufx_set_vid_mode._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.3, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014smscufx: ufx_set_vid_mode error blanking display\00", [45 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.100 = internal global ptr @ufx_set_vid_mode._entry.98, section ".printk_index", align 4
@ufx_set_vid_mode._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.94, ptr @.str.3, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014smscufx: ufx_set_vid_mode error disabling display\00", [44 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.103 = internal global ptr @ufx_set_vid_mode._entry.101, section ".printk_index", align 4
@ufx_set_vid_mode._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.94, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014smscufx: ufx_set_vid_mode error configuring pixclock\00", [41 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.106 = internal global ptr @ufx_set_vid_mode._entry.104, section ".printk_index", align 4
@ufx_set_vid_mode._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.94, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2000\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.109 = internal global ptr @ufx_set_vid_mode._entry.107, section ".printk_index", align 4
@ufx_set_vid_mode._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.94, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2008\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.112 = internal global ptr @ufx_set_vid_mode._entry.110, section ".printk_index", align 4
@ufx_set_vid_mode._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.94, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x200C\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.115 = internal global ptr @ufx_set_vid_mode._entry.113, section ".printk_index", align 4
@ufx_set_vid_mode._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.94, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2010\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.118 = internal global ptr @ufx_set_vid_mode._entry.116, section ".printk_index", align 4
@ufx_set_vid_mode._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.94, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2014\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.121 = internal global ptr @ufx_set_vid_mode._entry.119, section ".printk_index", align 4
@ufx_set_vid_mode._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.94, ptr @.str.3, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2018\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.124 = internal global ptr @ufx_set_vid_mode._entry.122, section ".printk_index", align 4
@ufx_set_vid_mode._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.94, ptr @.str.3, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x201C\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.127 = internal global ptr @ufx_set_vid_mode._entry.125, section ".printk_index", align 4
@ufx_set_vid_mode._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.94, ptr @.str.3, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2020\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.130 = internal global ptr @ufx_set_vid_mode._entry.128, section ".printk_index", align 4
@ufx_set_vid_mode._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.94, ptr @.str.3, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2024\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.133 = internal global ptr @ufx_set_vid_mode._entry.131, section ".printk_index", align 4
@ufx_set_vid_mode._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.94, ptr @.str.3, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2028\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.136 = internal global ptr @ufx_set_vid_mode._entry.134, section ".printk_index", align 4
@ufx_set_vid_mode._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.94, ptr @.str.3, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2040\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.139 = internal global ptr @ufx_set_vid_mode._entry.137, section ".printk_index", align 4
@ufx_set_vid_mode._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.94, ptr @.str.3, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2044\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.142 = internal global ptr @ufx_set_vid_mode._entry.140, section ".printk_index", align 4
@ufx_set_vid_mode._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.94, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: ufx_set_vid_mode error writing 0x2048\00", [47 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.145 = internal global ptr @ufx_set_vid_mode._entry.143, section ".printk_index", align 4
@ufx_set_vid_mode._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.94, ptr @.str.3, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.147 = internal global ptr @ufx_set_vid_mode._entry.146, section ".printk_index", align 4
@ufx_set_vid_mode._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.94, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014smscufx: ufx_set_vid_mode error enabling display\00", [45 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.150 = internal global ptr @ufx_set_vid_mode._entry.148, section ".printk_index", align 4
@ufx_set_vid_mode._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.94, ptr @.str.3, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014smscufx: ufx_set_vid_mode error unblanking display\00", [43 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.153 = internal global ptr @ufx_set_vid_mode._entry.151, section ".printk_index", align 4
@ufx_set_vid_mode._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.94, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014smscufx: ufx_set_vid_mode error enabling RGB pad\00", [45 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.156 = internal global ptr @ufx_set_vid_mode._entry.154, section ".printk_index", align 4
@ufx_set_vid_mode._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.94, ptr @.str.3, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014smscufx: ufx_set_vid_mode error enabling VDAC\00", [48 x i8] zeroinitializer }, align 32
@ufx_set_vid_mode._entry_ptr.159 = internal global ptr @ufx_set_vid_mode._entry.157, section ".printk_index", align 4
@ufx_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.3, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014smscufx: Failed to write register index 0x%08x with value 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufx_reg_write\00", [18 x i8] zeroinitializer }, align 32
@ufx_reg_write._entry_ptr = internal global ptr @ufx_reg_write._entry, section ".printk_index", align 4
@ufx_blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014smscufx: ufx_blank error reading 0x2004\00", [54 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ufx_blank\00", [22 x i8] zeroinitializer }, align 32
@ufx_blank._entry_ptr = internal global ptr @ufx_blank._entry, section ".printk_index", align 4
@ufx_blank._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014smscufx: ufx_blank error reading 0x2000\00", [54 x i8] zeroinitializer }, align 32
@ufx_blank._entry_ptr.166 = internal global ptr @ufx_blank._entry.164, section ".printk_index", align 4
@ufx_blank._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014smscufx: ufx_blank error writing 0x2000\00", [54 x i8] zeroinitializer }, align 32
@ufx_blank._entry_ptr.169 = internal global ptr @ufx_blank._entry.167, section ".printk_index", align 4
@ufx_blank._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_blank._entry_ptr.171 = internal global ptr @ufx_blank._entry.170, section ".printk_index", align 4
@ufx_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_disable error reading 0x2004\00", [52 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufx_disable\00", [20 x i8] zeroinitializer }, align 32
@ufx_disable._entry_ptr = internal global ptr @ufx_disable._entry, section ".printk_index", align 4
@ufx_disable._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_disable error reading 0x2000\00", [52 x i8] zeroinitializer }, align 32
@ufx_disable._entry_ptr.176 = internal global ptr @ufx_disable._entry.174, section ".printk_index", align 4
@ufx_disable._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.3, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_disable error writing 0x2000\00", [52 x i8] zeroinitializer }, align 32
@ufx_disable._entry_ptr.179 = internal global ptr @ufx_disable._entry.177, section ".printk_index", align 4
@ufx_disable._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.3, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_disable._entry_ptr.181 = internal global ptr @ufx_disable._entry.180, section ".printk_index", align 4
@ufx_config_pix_clk.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.183, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufx_config_pix_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pixclock %d ps = clk_pixel %d Hz\00", [63 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"smscufx: pixclock %d ps = clk_pixel %d Hz\00", [54 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.182, ptr @.str.3, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x7000\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr = internal global ptr @ufx_config_pix_clk._entry, section ".printk_index", align 4
@ufx_config_pix_clk._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.3, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x7008\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr.188 = internal global ptr @ufx_config_pix_clk._entry.186, section ".printk_index", align 4
@ufx_config_pix_clk._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.3, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x7004\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr.191 = internal global ptr @ufx_config_pix_clk._entry.189, section ".printk_index", align 4
@ufx_config_pix_clk._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.182, ptr @.str.3, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014smscufx: error clearing PLL0 bypass bits in 0x7000\00", [43 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr.194 = internal global ptr @ufx_config_pix_clk._entry.192, section ".printk_index", align 4
@ufx_config_pix_clk._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.182, ptr @.str.3, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014smscufx: error clearing PLL1 bypass bits in 0x7000\00", [43 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr.197 = internal global ptr @ufx_config_pix_clk._entry.195, section ".printk_index", align 4
@ufx_config_pix_clk._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.182, ptr @.str.3, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014smscufx: error clearing gate bits in 0x7000\00", [50 x i8] zeroinitializer }, align 32
@ufx_config_pix_clk._entry_ptr.200 = internal global ptr @ufx_config_pix_clk._entry.198, section ".printk_index", align 4
@ufx_reg_clear_and_set_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014smscufx: ufx_reg_clear_and_set_bits error reading 0x%x\00", [39 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ufx_reg_clear_and_set_bits\00", [37 x i8] zeroinitializer }, align 32
@ufx_reg_clear_and_set_bits._entry_ptr = internal global ptr @ufx_reg_clear_and_set_bits._entry, section ".printk_index", align 4
@ufx_reg_clear_and_set_bits._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014smscufx: ufx_reg_clear_and_set_bits error writing 0x%x\00", [39 x i8] zeroinitializer }, align 32
@ufx_reg_clear_and_set_bits._entry_ptr.205 = internal global ptr @ufx_reg_clear_and_set_bits._entry.203, section ".printk_index", align 4
@ufx_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014smscufx: ufx_enable error reading 0x2004\00", [53 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ufx_enable\00", [21 x i8] zeroinitializer }, align 32
@ufx_enable._entry_ptr = internal global ptr @ufx_enable._entry, section ".printk_index", align 4
@ufx_enable._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014smscufx: ufx_enable error reading 0x2000\00", [53 x i8] zeroinitializer }, align 32
@ufx_enable._entry_ptr.210 = internal global ptr @ufx_enable._entry.208, section ".printk_index", align 4
@ufx_enable._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.207, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014smscufx: ufx_enable error writing 0x2000\00", [53 x i8] zeroinitializer }, align 32
@ufx_enable._entry_ptr.213 = internal global ptr @ufx_enable._entry.211, section ".printk_index", align 4
@ufx_enable._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_enable._entry_ptr.215 = internal global ptr @ufx_enable._entry.214, section ".printk_index", align 4
@ufx_unblank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_unblank error reading 0x2004\00", [52 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufx_unblank\00", [20 x i8] zeroinitializer }, align 32
@ufx_unblank._entry_ptr = internal global ptr @ufx_unblank._entry, section ".printk_index", align 4
@ufx_unblank._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.217, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_unblank error reading 0x2000\00", [52 x i8] zeroinitializer }, align 32
@ufx_unblank._entry_ptr.220 = internal global ptr @ufx_unblank._entry.218, section ".printk_index", align 4
@ufx_unblank._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.217, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: ufx_unblank error writing 0x2000\00", [52 x i8] zeroinitializer }, align 32
@ufx_unblank._entry_ptr.223 = internal global ptr @ufx_unblank._entry.221, section ".printk_index", align 4
@ufx_unblank._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.3, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_unblank._entry_ptr.225 = internal global ptr @ufx_unblank._entry.224, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.226 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ufx_ops_mmap.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.229, ptr @.str.3, ptr @.str.230, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufx_ops_mmap\00", [19 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mmap() framebuffer addr:%lu size:%lu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"smscufx: mmap() framebuffer addr:%lu size:%lu\0A\00", [49 x i8] zeroinitializer }, align 32
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@ufx_free_framebuffer_work.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.232, ptr @.str.3, ptr @.str.233, i8 1, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.232 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufx_free_framebuffer_work\00", [38 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fb_info for /dev/fb%d has been freed\00", [59 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"smscufx: fb_info for /dev/fb%d has been freed\00", [50 x i8] zeroinitializer }, align 32
@ufx_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: Failed to read register index 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufx_reg_read\00", [19 x i8] zeroinitializer }, align 32
@ufx_reg_read._entry_ptr = internal global ptr @ufx_reg_read._entry, section ".printk_index", align 4
@ufx_lite_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014smscufx: ufx_lite_reset error writing 0x3008\00", [49 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ufx_lite_reset\00", [17 x i8] zeroinitializer }, align 32
@ufx_lite_reset._entry_ptr = internal global ptr @ufx_lite_reset._entry, section ".printk_index", align 4
@ufx_lite_reset._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014smscufx: ufx_lite_reset error reading 0x3008\00", [49 x i8] zeroinitializer }, align 32
@ufx_lite_reset._entry_ptr.241 = internal global ptr @ufx_lite_reset._entry.239, section ".printk_index", align 4
@ufx_config_sys_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.3, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x700C\00", [32 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufx_config_sys_clk\00", [45 x i8] zeroinitializer }, align 32
@ufx_config_sys_clk._entry_ptr = internal global ptr @ufx_config_sys_clk._entry, section ".printk_index", align 4
@ufx_config_sys_clk._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.243, ptr @.str.3, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x7014\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_sys_clk._entry_ptr.246 = internal global ptr @ufx_config_sys_clk._entry.244, section ".printk_index", align 4
@ufx_config_sys_clk._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.243, ptr @.str.3, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x7010\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_sys_clk._entry_ptr.249 = internal global ptr @ufx_config_sys_clk._entry.247, section ".printk_index", align 4
@ufx_config_sys_clk._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.243, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014smscufx: error clearing PLL1 bypass in 0x700C\00", [48 x i8] zeroinitializer }, align 32
@ufx_config_sys_clk._entry_ptr.252 = internal global ptr @ufx_config_sys_clk._entry.250, section ".printk_index", align 4
@ufx_config_sys_clk._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.243, ptr @.str.3, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014smscufx: error clearing output gate in 0x700C\00", [48 x i8] zeroinitializer }, align 32
@ufx_config_sys_clk._entry_ptr.255 = internal global ptr @ufx_config_sys_clk._entry.253, section ".printk_index", align 4
@ufx_config_ddr2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.3, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0004\00", [32 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufx_config_ddr2\00", [16 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr = internal global ptr @ufx_config_ddr2._entry, section ".printk_index", align 4
@ufx_config_ddr2._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.257, ptr @.str.3, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0008\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.260 = internal global ptr @ufx_config_ddr2._entry.258, section ".printk_index", align 4
@ufx_config_ddr2._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.257, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x000C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.263 = internal global ptr @ufx_config_ddr2._entry.261, section ".printk_index", align 4
@ufx_config_ddr2._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.257, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0010\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.266 = internal global ptr @ufx_config_ddr2._entry.264, section ".printk_index", align 4
@ufx_config_ddr2._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.257, ptr @.str.3, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0014\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.269 = internal global ptr @ufx_config_ddr2._entry.267, section ".printk_index", align 4
@ufx_config_ddr2._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.257, ptr @.str.3, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0018\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.272 = internal global ptr @ufx_config_ddr2._entry.270, section ".printk_index", align 4
@ufx_config_ddr2._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.257, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x001C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.275 = internal global ptr @ufx_config_ddr2._entry.273, section ".printk_index", align 4
@ufx_config_ddr2._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.257, ptr @.str.3, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0020\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.278 = internal global ptr @ufx_config_ddr2._entry.276, section ".printk_index", align 4
@ufx_config_ddr2._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.257, ptr @.str.3, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0024\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.281 = internal global ptr @ufx_config_ddr2._entry.279, section ".printk_index", align 4
@ufx_config_ddr2._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.257, ptr @.str.3, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0028\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.284 = internal global ptr @ufx_config_ddr2._entry.282, section ".printk_index", align 4
@ufx_config_ddr2._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.257, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x002C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.287 = internal global ptr @ufx_config_ddr2._entry.285, section ".printk_index", align 4
@ufx_config_ddr2._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.257, ptr @.str.3, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0030\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.290 = internal global ptr @ufx_config_ddr2._entry.288, section ".printk_index", align 4
@ufx_config_ddr2._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.257, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0034\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.293 = internal global ptr @ufx_config_ddr2._entry.291, section ".printk_index", align 4
@ufx_config_ddr2._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.257, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0038\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.296 = internal global ptr @ufx_config_ddr2._entry.294, section ".printk_index", align 4
@ufx_config_ddr2._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.257, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x003C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.299 = internal global ptr @ufx_config_ddr2._entry.297, section ".printk_index", align 4
@ufx_config_ddr2._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.257, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0040\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.302 = internal global ptr @ufx_config_ddr2._entry.300, section ".printk_index", align 4
@ufx_config_ddr2._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.257, ptr @.str.3, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0044\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.305 = internal global ptr @ufx_config_ddr2._entry.303, section ".printk_index", align 4
@ufx_config_ddr2._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.257, ptr @.str.3, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0048\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.308 = internal global ptr @ufx_config_ddr2._entry.306, section ".printk_index", align 4
@ufx_config_ddr2._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.257, ptr @.str.3, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x004C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.311 = internal global ptr @ufx_config_ddr2._entry.309, section ".printk_index", align 4
@ufx_config_ddr2._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.257, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x005C\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.314 = internal global ptr @ufx_config_ddr2._entry.312, section ".printk_index", align 4
@ufx_config_ddr2._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.257, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0100\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.317 = internal global ptr @ufx_config_ddr2._entry.315, section ".printk_index", align 4
@ufx_config_ddr2._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.257, ptr @.str.3, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0104\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.320 = internal global ptr @ufx_config_ddr2._entry.318, section ".printk_index", align 4
@ufx_config_ddr2._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.257, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0118\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.323 = internal global ptr @ufx_config_ddr2._entry.321, section ".printk_index", align 4
@ufx_config_ddr2._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.257, ptr @.str.3, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x0000\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.326 = internal global ptr @ufx_config_ddr2._entry.324, section ".printk_index", align 4
@ufx_config_ddr2._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.257, ptr @.str.3, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error reading 0x0000\00", [32 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.329 = internal global ptr @ufx_config_ddr2._entry.327, section ".printk_index", align 4
@ufx_config_ddr2._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.257, ptr @.str.3, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013smscufx: DDR2 initialisation timed out, reg 0x0000=0x%08x\00", [36 x i8] zeroinitializer }, align 32
@ufx_config_ddr2._entry_ptr.332 = internal global ptr @ufx_config_ddr2._entry.330, section ".printk_index", align 4
@ufx_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str.3, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014smscufx: failed to disable I2C\00", [63 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ufx_i2c_init\00", [19 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr = internal global ptr @ufx_i2c_init._entry, section ".printk_index", align 4
@ufx_i2c_init._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.334, ptr @.str.3, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x1018\00", [32 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.337 = internal global ptr @ufx_i2c_init._entry.335, section ".printk_index", align 4
@ufx_i2c_init._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.334, ptr @.str.3, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x1014\00", [32 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.340 = internal global ptr @ufx_i2c_init._entry.338, section ".printk_index", align 4
@ufx_i2c_init._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.342, ptr @.str.334, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error reading 0x1000\00", [32 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.343 = internal global ptr @ufx_i2c_init._entry.341, section ".printk_index", align 4
@ufx_i2c_init._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.334, ptr @.str.3, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: error writing 0x1000\00", [32 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.346 = internal global ptr @ufx_i2c_init._entry.344, section ".printk_index", align 4
@ufx_i2c_init._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.334, ptr @.str.3, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014smscufx: error setting TX mode bits in 0x1004\00", [48 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.349 = internal global ptr @ufx_i2c_init._entry.347, section ".printk_index", align 4
@ufx_i2c_init._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.334, ptr @.str.3, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014smscufx: failed to enable I2C\00", [32 x i8] zeroinitializer }, align 32
@ufx_i2c_init._entry_ptr.352 = internal global ptr @ufx_i2c_init._entry.350, section ".printk_index", align 4
@ufx_setup_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.354, ptr @.str.3, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013smscufx: Unable to get valid EDID from device/display\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufx_setup_modes\00", [16 x i8] zeroinitializer }, align 32
@ufx_setup_modes._entry_ptr = internal global ptr @ufx_setup_modes._entry, section ".printk_index", align 4
@ufx_setup_modes._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.354, ptr @.str.3, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013smscufx: Using previously queried EDID\0A\00", [54 x i8] zeroinitializer }, align 32
@ufx_setup_modes._entry_ptr.357 = internal global ptr @ufx_setup_modes._entry.355, section ".printk_index", align 4
@ufx_setup_modes._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.354, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013smscufx: Using default/backup EDID\0A\00", [58 x i8] zeroinitializer }, align 32
@ufx_setup_modes._entry_ptr.360 = internal global ptr @ufx_setup_modes._entry.358, section ".printk_index", align 4
@vesa_modes = external dso_local constant [0 x %struct.fb_videomode], align 4
@ufx_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"smscufx\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.362, ptr @.str.3, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013smscufx: ufx_i2c_configure failed\00", [60 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ufx_read_edid\00", [18 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr = internal global ptr @ufx_read_edid._entry, section ".printk_index", align 4
@ufx_read_edid._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.362, ptr @.str.3, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014smscufx: Failed to write 0x1100\00", [62 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr.365 = internal global ptr @ufx_read_edid._entry.363, section ".printk_index", align 4
@ufx_read_edid._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.362, ptr @.str.3, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr.367 = internal global ptr @ufx_read_edid._entry.366, section ".printk_index", align 4
@ufx_read_edid._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.362, ptr @.str.3, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014smscufx: Timeout waiting for I2C BUSY to clear\00", [47 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr.370 = internal global ptr @ufx_read_edid._entry.368, section ".printk_index", align 4
@ufx_read_edid._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.362, ptr @.str.3, i32 1452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014smscufx: Error reading i2c data\00", [62 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr.373 = internal global ptr @ufx_read_edid._entry.371, section ".printk_index", align 4
@ufx_read_edid.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.362, ptr @.str.3, ptr @.str.374, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.374 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"edid data read successfully\00", [36 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"smscufx: edid data read successfully\00", [59 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.362, ptr @.str.3, i32 1464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014smscufx: edid data contains all 0xff\00", [57 x i8] zeroinitializer }, align 32
@ufx_read_edid._entry_ptr.378 = internal global ptr @ufx_read_edid._entry.376, section ".printk_index", align 4
@ufx_i2c_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.379, ptr @.str.3, i32 1372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufx_i2c_configure\00", [46 x i8] zeroinitializer }, align 32
@ufx_i2c_configure._entry_ptr = internal global ptr @ufx_i2c_configure._entry, section ".printk_index", align 4
@ufx_i2c_configure._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.381, ptr @.str.379, ptr @.str.3, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014smscufx: failed to write 0x3010\00", [62 x i8] zeroinitializer }, align 32
@ufx_i2c_configure._entry_ptr.382 = internal global ptr @ufx_i2c_configure._entry.380, section ".printk_index", align 4
@ufx_i2c_configure._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.384, ptr @.str.379, ptr @.str.3, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smscufx: failed to set TAR bits in 0x1004\00", [52 x i8] zeroinitializer }, align 32
@ufx_i2c_configure._entry_ptr.385 = internal global ptr @ufx_i2c_configure._entry.383, section ".printk_index", align 4
@ufx_i2c_configure._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.379, ptr @.str.3, i32 1382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ufx_i2c_configure._entry_ptr.387 = internal global ptr @ufx_i2c_configure._entry.386, section ".printk_index", align 4
@ufx_i2c_wait_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.389, ptr @.str.3, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014smscufx: 0x1100 read failed\00", [34 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufx_i2c_wait_busy\00", [46 x i8] zeroinitializer }, align 32
@ufx_i2c_wait_busy._entry_ptr = internal global ptr @ufx_i2c_wait_busy._entry, section ".printk_index", align 4
@ufx_i2c_wait_busy._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.391, ptr @.str.389, ptr @.str.3, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014smscufx: I2C read failed, 0x1100=0x%08x\00", [54 x i8] zeroinitializer }, align 32
@ufx_i2c_wait_busy._entry_ptr.392 = internal global ptr @ufx_i2c_wait_busy._entry.390, section ".printk_index", align 4
@ufx_i2c_wait_busy._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.389, ptr @.str.3, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014smscufx: I2C access timed out, resetting I2C hardware\00", [40 x i8] zeroinitializer }, align 32
@ufx_i2c_wait_busy._entry_ptr.395 = internal global ptr @ufx_i2c_wait_busy._entry.393, section ".printk_index", align 4
@ufx_i2c_wait_busy._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.389, ptr @.str.3, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014smscufx: 0x1100 write failed\00", [33 x i8] zeroinitializer }, align 32
@ufx_i2c_wait_busy._entry_ptr.398 = internal global ptr @ufx_i2c_wait_busy._entry.396, section ".printk_index", align 4
@ufx_is_valid_mode.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.399, ptr @.str.3, ptr @.str.400, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.399 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufx_is_valid_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%dx%d too many pixels\00", [42 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smscufx: %dx%d too many pixels\00", [33 x i8] zeroinitializer }, align 32
@ufx_is_valid_mode.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.399, ptr @.str.3, ptr @.str.402, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.402 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%dx%d %dps pixel clock too fast\00", [32 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smscufx: %dx%d %dps pixel clock too fast\00", [55 x i8] zeroinitializer }, align 32
@ufx_is_valid_mode.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.399, ptr @.str.3, ptr @.str.404, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.404 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%dx%d (pixclk %dps %dMHz) valid mode\00", [59 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"smscufx: %dx%d (pixclk %dps %dMHz) valid mode\00", [50 x i8] zeroinitializer }, align 32
@__const.ufx_var_color_format.red = private unnamed_addr constant %struct.fb_bitfield { i32 11, i32 5, i32 0 }, align 4
@__const.ufx_var_color_format.green = private unnamed_addr constant %struct.fb_bitfield { i32 5, i32 6, i32 0 }, align 4
@__const.ufx_var_color_format.blue = private unnamed_addr constant %struct.fb_bitfield { i32 0, i32 5, i32 0 }, align 4
@ufx_realloc_framebuffer.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.406, ptr @.str.3, ptr @.str.407, i8 1, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.406 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufx_realloc_framebuffer\00", [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Reallocating framebuffer. Addresses will change!\00", [47 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"smscufx: Reallocating framebuffer. Addresses will change!\00", [38 x i8] zeroinitializer }, align 32
@ufx_ops_set_par.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.409, ptr @.str.3, ptr @.str.410, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.409 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufx_ops_set_par\00", [16 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_par mode %dx%d\00", [45 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smscufx: set_par mode %dx%d\00", [36 x i8] zeroinitializer }, align 32
@ufx_free.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.412, ptr @.str.3, ptr @.str.413, i8 1, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.412 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ufx_free\00", [23 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"freeing ufx_data %p\00", [44 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smscufx: freeing ufx_data %p\00", [35 x i8] zeroinitializer }, align 32
@ufx_free_urb_list.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.415, ptr @.str.3, ptr @.str.416, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.415 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufx_free_urb_list\00", [46 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Waiting for completes and freeing all render urbs\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"smscufx: Waiting for completes and freeing all render urbs\0A\00", [36 x i8] zeroinitializer }, align 32
@ufx_usb_disconnect.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.418, ptr @.str.3, ptr @.str.419, i8 1, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.418 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufx_usb_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB disconnect starting\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smscufx: USB disconnect starting\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.421 = internal global [4 x i64] [i64 2, i64 32, i64 170, i64 173]
@___asan_gen_.422 = private unnamed_addr constant [11 x i8] c"ufx_driver\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1766, i32 26 }
@___asan_gen_.425 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 130, i32 13 }
@___asan_gen_.428 = private unnamed_addr constant [9 x i8] c"fb_defio\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 131, i32 13 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1773, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 122, i32 35 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1622, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1634, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1636, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1640, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1641, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1644, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [8 x i8] c"ufx_ops\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1271, i32 28 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1662, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1666, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1672, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1673, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1676, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1677, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1679, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1681, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1683, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1685, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1687, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1689, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1691, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1693, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1695, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1697, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1700, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1705, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1707, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1709, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1711, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1713, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1715, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1717, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1850, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1861, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1893, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1786, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 33, i32 31 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 34, i32 28 }
@___asan_gen_.642 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 35, i32 39 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1096, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 866, i32 4 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 885, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1910, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1942, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1175, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 665, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 668, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 672, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 675, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 678, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 681, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 693, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 697, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 701, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 713, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 717, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 721, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 724, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 727, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 733, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 737, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 740, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 743, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 754, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 758, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 762, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 766, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 770, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 188, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 243, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 246, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 255, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 263, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 317, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 320, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 329, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 337, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 621, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 630, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 635, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 640, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 643, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 648, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 653, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 199, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 206, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 354, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 357, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 366, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 374, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 280, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 283, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 292, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 300, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 230, i32 6 }
@___asan_gen_.1002 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1002, i32 214, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1005, i32 174, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 791, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1150, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 161, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 228, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 231, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 387, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 390, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 393, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 396, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 400, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 411, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 414, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 417, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 420, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 423, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 426, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 429, i32 2 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 432, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 435, i32 2 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 438, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 441, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 444, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 447, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 450, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 453, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 456, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 459, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 462, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 465, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 468, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 471, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 474, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 477, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 480, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 484, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 490, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1330, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1335, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1339, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1342, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1355, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1359, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1363, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1517, i32 3 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1522, i32 5 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1534, i32 5 }
@___asan_gen_.1307 = private unnamed_addr constant [8 x i8] c"ufx_fix\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 108, i32 33 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1430, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1440, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1444, i32 3 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1447, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1452, i32 4 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1459, i32 4 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1464, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1372, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1375, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1379, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1382, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1396, i32 3 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1401, i32 5 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1413, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1415, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1189, i32 3 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1195, i32 3 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1200, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1297, i32 2 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1244, i32 2 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1115, i32 2 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1816, i32 2 }
@___asan_gen_.1463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1464 = private constant [33 x i8] c"../drivers/video/fbdev/smscufx.c\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1464, i32 1746, i32 2 }
@llvm.compiler.used = appending global [487 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_console345, ptr @__UNIQUE_ID_consoletype344, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_fb_defio347, ptr @__UNIQUE_ID_fb_defiotype346, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_ufx_driver_exit, ptr @__initcall__kmod_smscufx__341_1773_ufx_driver_init6, ptr @__param_console, ptr @__param_fb_defio, ptr @ufx_blank._entry, ptr @ufx_blank._entry.164, ptr @ufx_blank._entry.167, ptr @ufx_blank._entry.170, ptr @ufx_blank._entry_ptr, ptr @ufx_blank._entry_ptr.166, ptr @ufx_blank._entry_ptr.169, ptr @ufx_blank._entry_ptr.171, ptr @ufx_config_ddr2._entry, ptr @ufx_config_ddr2._entry.258, ptr @ufx_config_ddr2._entry.261, ptr @ufx_config_ddr2._entry.264, ptr @ufx_config_ddr2._entry.267, ptr @ufx_config_ddr2._entry.270, ptr @ufx_config_ddr2._entry.273, ptr @ufx_config_ddr2._entry.276, ptr @ufx_config_ddr2._entry.279, ptr @ufx_config_ddr2._entry.282, ptr @ufx_config_ddr2._entry.285, ptr @ufx_config_ddr2._entry.288, ptr @ufx_config_ddr2._entry.291, ptr @ufx_config_ddr2._entry.294, ptr @ufx_config_ddr2._entry.297, ptr @ufx_config_ddr2._entry.300, ptr @ufx_config_ddr2._entry.303, ptr @ufx_config_ddr2._entry.306, ptr @ufx_config_ddr2._entry.309, ptr @ufx_config_ddr2._entry.312, ptr @ufx_config_ddr2._entry.315, ptr @ufx_config_ddr2._entry.318, ptr @ufx_config_ddr2._entry.321, ptr @ufx_config_ddr2._entry.324, ptr @ufx_config_ddr2._entry.327, ptr @ufx_config_ddr2._entry.330, ptr @ufx_config_ddr2._entry_ptr, ptr @ufx_config_ddr2._entry_ptr.260, ptr @ufx_config_ddr2._entry_ptr.263, ptr @ufx_config_ddr2._entry_ptr.266, ptr @ufx_config_ddr2._entry_ptr.269, ptr @ufx_config_ddr2._entry_ptr.272, ptr @ufx_config_ddr2._entry_ptr.275, ptr @ufx_config_ddr2._entry_ptr.278, ptr @ufx_config_ddr2._entry_ptr.281, ptr @ufx_config_ddr2._entry_ptr.284, ptr @ufx_config_ddr2._entry_ptr.287, ptr @ufx_config_ddr2._entry_ptr.290, ptr @ufx_config_ddr2._entry_ptr.293, ptr @ufx_config_ddr2._entry_ptr.296, ptr @ufx_config_ddr2._entry_ptr.299, ptr @ufx_config_ddr2._entry_ptr.302, ptr @ufx_config_ddr2._entry_ptr.305, ptr @ufx_config_ddr2._entry_ptr.308, ptr @ufx_config_ddr2._entry_ptr.311, ptr @ufx_config_ddr2._entry_ptr.314, ptr @ufx_config_ddr2._entry_ptr.317, ptr @ufx_config_ddr2._entry_ptr.320, ptr @ufx_config_ddr2._entry_ptr.323, ptr @ufx_config_ddr2._entry_ptr.326, ptr @ufx_config_ddr2._entry_ptr.329, ptr @ufx_config_ddr2._entry_ptr.332, ptr @ufx_config_pix_clk._entry, ptr @ufx_config_pix_clk._entry.186, ptr @ufx_config_pix_clk._entry.189, ptr @ufx_config_pix_clk._entry.192, ptr @ufx_config_pix_clk._entry.195, ptr @ufx_config_pix_clk._entry.198, ptr @ufx_config_pix_clk._entry_ptr, ptr @ufx_config_pix_clk._entry_ptr.188, ptr @ufx_config_pix_clk._entry_ptr.191, ptr @ufx_config_pix_clk._entry_ptr.194, ptr @ufx_config_pix_clk._entry_ptr.197, ptr @ufx_config_pix_clk._entry_ptr.200, ptr @ufx_config_sys_clk._entry, ptr @ufx_config_sys_clk._entry.244, ptr @ufx_config_sys_clk._entry.247, ptr @ufx_config_sys_clk._entry.250, ptr @ufx_config_sys_clk._entry.253, ptr @ufx_config_sys_clk._entry_ptr, ptr @ufx_config_sys_clk._entry_ptr.246, ptr @ufx_config_sys_clk._entry_ptr.249, ptr @ufx_config_sys_clk._entry_ptr.252, ptr @ufx_config_sys_clk._entry_ptr.255, ptr @ufx_disable._entry, ptr @ufx_disable._entry.174, ptr @ufx_disable._entry.177, ptr @ufx_disable._entry.180, ptr @ufx_disable._entry_ptr, ptr @ufx_disable._entry_ptr.176, ptr @ufx_disable._entry_ptr.179, ptr @ufx_disable._entry_ptr.181, ptr @ufx_driver_exit, ptr @ufx_enable._entry, ptr @ufx_enable._entry.208, ptr @ufx_enable._entry.211, ptr @ufx_enable._entry.214, ptr @ufx_enable._entry_ptr, ptr @ufx_enable._entry_ptr.210, ptr @ufx_enable._entry_ptr.213, ptr @ufx_enable._entry_ptr.215, ptr @ufx_get_urb._entry, ptr @ufx_get_urb._entry_ptr, ptr @ufx_handle_damage._entry, ptr @ufx_handle_damage._entry.83, ptr @ufx_handle_damage._entry_ptr, ptr @ufx_handle_damage._entry_ptr.85, ptr @ufx_i2c_configure._entry, ptr @ufx_i2c_configure._entry.380, ptr @ufx_i2c_configure._entry.383, ptr @ufx_i2c_configure._entry.386, ptr @ufx_i2c_configure._entry_ptr, ptr @ufx_i2c_configure._entry_ptr.382, ptr @ufx_i2c_configure._entry_ptr.385, ptr @ufx_i2c_configure._entry_ptr.387, ptr @ufx_i2c_init._entry, ptr @ufx_i2c_init._entry.335, ptr @ufx_i2c_init._entry.338, ptr @ufx_i2c_init._entry.341, ptr @ufx_i2c_init._entry.344, ptr @ufx_i2c_init._entry.347, ptr @ufx_i2c_init._entry.350, ptr @ufx_i2c_init._entry_ptr, ptr @ufx_i2c_init._entry_ptr.337, ptr @ufx_i2c_init._entry_ptr.340, ptr @ufx_i2c_init._entry_ptr.343, ptr @ufx_i2c_init._entry_ptr.346, ptr @ufx_i2c_init._entry_ptr.349, ptr @ufx_i2c_init._entry_ptr.352, ptr @ufx_i2c_wait_busy._entry, ptr @ufx_i2c_wait_busy._entry.390, ptr @ufx_i2c_wait_busy._entry.393, ptr @ufx_i2c_wait_busy._entry.396, ptr @ufx_i2c_wait_busy._entry_ptr, ptr @ufx_i2c_wait_busy._entry_ptr.392, ptr @ufx_i2c_wait_busy._entry_ptr.395, ptr @ufx_i2c_wait_busy._entry_ptr.398, ptr @ufx_lite_reset._entry, ptr @ufx_lite_reset._entry.239, ptr @ufx_lite_reset._entry_ptr, ptr @ufx_lite_reset._entry_ptr.241, ptr @ufx_read_edid._entry, ptr @ufx_read_edid._entry.363, ptr @ufx_read_edid._entry.366, ptr @ufx_read_edid._entry.368, ptr @ufx_read_edid._entry.371, ptr @ufx_read_edid._entry.376, ptr @ufx_read_edid._entry_ptr, ptr @ufx_read_edid._entry_ptr.365, ptr @ufx_read_edid._entry_ptr.367, ptr @ufx_read_edid._entry_ptr.370, ptr @ufx_read_edid._entry_ptr.373, ptr @ufx_read_edid._entry_ptr.378, ptr @ufx_reg_clear_and_set_bits._entry, ptr @ufx_reg_clear_and_set_bits._entry.203, ptr @ufx_reg_clear_and_set_bits._entry_ptr, ptr @ufx_reg_clear_and_set_bits._entry_ptr.205, ptr @ufx_reg_read._entry, ptr @ufx_reg_read._entry_ptr, ptr @ufx_reg_write._entry, ptr @ufx_reg_write._entry_ptr, ptr @ufx_set_vid_mode._entry, ptr @ufx_set_vid_mode._entry.101, ptr @ufx_set_vid_mode._entry.104, ptr @ufx_set_vid_mode._entry.107, ptr @ufx_set_vid_mode._entry.110, ptr @ufx_set_vid_mode._entry.113, ptr @ufx_set_vid_mode._entry.116, ptr @ufx_set_vid_mode._entry.119, ptr @ufx_set_vid_mode._entry.122, ptr @ufx_set_vid_mode._entry.125, ptr @ufx_set_vid_mode._entry.128, ptr @ufx_set_vid_mode._entry.131, ptr @ufx_set_vid_mode._entry.134, ptr @ufx_set_vid_mode._entry.137, ptr @ufx_set_vid_mode._entry.140, ptr @ufx_set_vid_mode._entry.143, ptr @ufx_set_vid_mode._entry.146, ptr @ufx_set_vid_mode._entry.148, ptr @ufx_set_vid_mode._entry.151, ptr @ufx_set_vid_mode._entry.154, ptr @ufx_set_vid_mode._entry.157, ptr @ufx_set_vid_mode._entry.95, ptr @ufx_set_vid_mode._entry.98, ptr @ufx_set_vid_mode._entry_ptr, ptr @ufx_set_vid_mode._entry_ptr.100, ptr @ufx_set_vid_mode._entry_ptr.103, ptr @ufx_set_vid_mode._entry_ptr.106, ptr @ufx_set_vid_mode._entry_ptr.109, ptr @ufx_set_vid_mode._entry_ptr.112, ptr @ufx_set_vid_mode._entry_ptr.115, ptr @ufx_set_vid_mode._entry_ptr.118, ptr @ufx_set_vid_mode._entry_ptr.121, ptr @ufx_set_vid_mode._entry_ptr.124, ptr @ufx_set_vid_mode._entry_ptr.127, ptr @ufx_set_vid_mode._entry_ptr.130, ptr @ufx_set_vid_mode._entry_ptr.133, ptr @ufx_set_vid_mode._entry_ptr.136, ptr @ufx_set_vid_mode._entry_ptr.139, ptr @ufx_set_vid_mode._entry_ptr.142, ptr @ufx_set_vid_mode._entry_ptr.145, ptr @ufx_set_vid_mode._entry_ptr.147, ptr @ufx_set_vid_mode._entry_ptr.150, ptr @ufx_set_vid_mode._entry_ptr.153, ptr @ufx_set_vid_mode._entry_ptr.156, ptr @ufx_set_vid_mode._entry_ptr.159, ptr @ufx_set_vid_mode._entry_ptr.97, ptr @ufx_setup_modes._entry, ptr @ufx_setup_modes._entry.355, ptr @ufx_setup_modes._entry.358, ptr @ufx_setup_modes._entry_ptr, ptr @ufx_setup_modes._entry_ptr.357, ptr @ufx_setup_modes._entry_ptr.360, ptr @ufx_submit_urb._entry, ptr @ufx_submit_urb._entry_ptr, ptr @ufx_unblank._entry, ptr @ufx_unblank._entry.218, ptr @ufx_unblank._entry.221, ptr @ufx_unblank._entry.224, ptr @ufx_unblank._entry_ptr, ptr @ufx_unblank._entry_ptr.220, ptr @ufx_unblank._entry_ptr.223, ptr @ufx_unblank._entry_ptr.225, ptr @ufx_urb_completion._entry, ptr @ufx_urb_completion._entry_ptr, ptr @ufx_usb_probe._entry, ptr @ufx_usb_probe._entry.10, ptr @ufx_usb_probe._entry.13, ptr @ufx_usb_probe._entry.19, ptr @ufx_usb_probe._entry.23, ptr @ufx_usb_probe._entry.28, ptr @ufx_usb_probe._entry.32, ptr @ufx_usb_probe._entry.36, ptr @ufx_usb_probe._entry.40, ptr @ufx_usb_probe._entry.44, ptr @ufx_usb_probe._entry.47, ptr @ufx_usb_probe._entry.51, ptr @ufx_usb_probe._entry.55, ptr @ufx_usb_probe._entry.59, ptr @ufx_usb_probe._entry.62, ptr @ufx_usb_probe._entry_ptr, ptr @ufx_usb_probe._entry_ptr.12, ptr @ufx_usb_probe._entry_ptr.15, ptr @ufx_usb_probe._entry_ptr.21, ptr @ufx_usb_probe._entry_ptr.25, ptr @ufx_usb_probe._entry_ptr.30, ptr @ufx_usb_probe._entry_ptr.34, ptr @ufx_usb_probe._entry_ptr.38, ptr @ufx_usb_probe._entry_ptr.42, ptr @ufx_usb_probe._entry_ptr.46, ptr @ufx_usb_probe._entry_ptr.49, ptr @ufx_usb_probe._entry_ptr.53, ptr @ufx_usb_probe._entry_ptr.57, ptr @ufx_usb_probe._entry_ptr.61, ptr @ufx_usb_probe._entry_ptr.65, ptr @ufx_driver, ptr @console, ptr @fb_defio, ptr @.str, ptr @id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ufx_ops, ptr @.str.14, ptr @ufx_usb_probe.__key, ptr @.str.16, ptr @ufx_usb_probe.__key.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @ufx_alloc_urb_list.__key, ptr @.str.66, ptr @ufx_alloc_urb_list.__key.67, ptr @.str.68, ptr @ufx_alloc_urb_list.__key.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @sema_init.__key, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.212, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.222, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.256, ptr @.str.257, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @.str.289, ptr @.str.292, ptr @.str.295, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.325, ptr @.str.328, ptr @.str.331, ptr @.str.333, ptr @.str.334, ptr @.str.336, ptr @.str.339, ptr @.str.342, ptr @.str.345, ptr @.str.348, ptr @.str.351, ptr @.str.353, ptr @.str.354, ptr @.str.356, ptr @.str.359, ptr @ufx_fix, ptr @.str.361, ptr @.str.362, ptr @.str.364, ptr @.str.369, ptr @.str.372, ptr @.str.374, ptr @.str.375, ptr @.str.377, ptr @.str.379, ptr @.str.381, ptr @.str.384, ptr @.str.388, ptr @.str.389, ptr @.str.391, ptr @.str.394, ptr @.str.397, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420], section "llvm.metadata"
@0 = internal global [348 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_defio to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_usb_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_alloc_urb_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_alloc_urb_list.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_alloc_urb_list.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_urb_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_handle_damage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_handle_damage._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_get_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_set_vid_mode._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_blank._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_blank._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_blank._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_disable._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_disable._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_disable._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_pix_clk._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_reg_clear_and_set_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_reg_clear_and_set_bits._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_enable._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_enable._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_enable._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_unblank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_unblank._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_unblank._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_unblank._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_lite_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_lite_reset._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_sys_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_sys_clk._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_sys_clk._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_sys_clk._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_sys_clk._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_config_ddr2._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_init._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_setup_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_setup_modes._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_setup_modes._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_read_edid._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_configure._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_configure._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_configure._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_wait_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_wait_busy._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_wait_busy._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufx_i2c_wait_busy._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ufx_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ufx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ufx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_usb_probe(ptr nocapture noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fpga_rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fpga_rev) #10
  %0 = ptrtoint ptr %fpga_rev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fpga_rev, align 4, !annotation !705
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !706

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1618, 0\0A.popsection", ""() #10, !srcloc !707
  unreachable

do.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1284) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end17:                                         ; preds = %do.end10
  %kref = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !708
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !706

if.end17.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !709

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %gdev = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %gdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %gdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then29)) #10
          to label %do.body34 [label %if.then29], !srcloc !710

if.then29:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gdev, align 4
  %manufacturer = getelementptr i8, ptr %2, i32 1108
  %12 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %manufacturer, align 4
  %product = getelementptr i8, ptr %2, i32 1104
  %14 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %product, align 8
  %serial = getelementptr i8, ptr %2, i32 1112
  %16 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug326, ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %13, ptr noundef %15, ptr noundef %17) #10
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %kref_get.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then46)) #10
          to label %do.body55 [label %if.then46], !srcloc !710

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gdev, align 4
  %idVendor = getelementptr i8, ptr %2, i32 936
  %20 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idVendor, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  %idProduct = getelementptr i8, ptr %2, i32 938
  %23 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idProduct, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv49 = zext i16 %25 to i32
  %bcdDevice = getelementptr i8, ptr %2, i32 940
  %26 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bcdDevice, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv51 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug327, ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv49, i32 noundef %conv51, ptr noundef nonnull %call7.i.i) #10
  br label %do.body55

do.body55:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then67)) #10
          to label %do.body74 [label %if.then67], !srcloc !710

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gdev, align 4
  %31 = load i8, ptr @console, align 1, !range !711
  %32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug328, ptr noundef %30, ptr noundef nonnull @.str.8, i32 noundef %32) #10
  br label %do.body74

do.body74:                                        ; preds = %if.then67, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then86)) #10
          to label %do.end92 [label %if.then86], !srcloc !710

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gdev, align 4
  %35 = load i8, ptr @fb_defio, align 1, !range !711
  %36 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug329, ptr noundef %34, ptr noundef nonnull @.str.9, i32 noundef %36) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %do.body74
  %call93 = tail call fastcc i32 @ufx_alloc_urb_list(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end98, label %if.end100

do.end98:                                         ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11) #14
  br label %put_ref

if.end100:                                        ; preds = %do.end92
  %call102 = tail call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %2) #10
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.end100.put_ref_crit_edge, label %if.end105

if.end100.put_ref_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_ref

if.end105:                                        ; preds = %if.end100
  %info106 = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %info106 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call102, ptr %info106, align 8
  %par = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 30
  %40 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %par, align 4
  %pseudo_palette = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 12
  %pseudo_palette107 = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 27
  %41 = ptrtoint ptr %pseudo_palette107 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pseudo_palette, ptr %pseudo_palette107, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 20
  %42 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ufx_ops, ptr %fbops, align 4
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 12
  %call108 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %do.end114, label %do.end9.i

do.end114:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14, i32 noundef %call108) #14
  br label %destroy_modedb

do.end9.i:                                        ; preds = %if.end105
  %free_framebuffer_work = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %free_framebuffer_work, i32 noundef 0) #10
  %45 = ptrtoint ptr %free_framebuffer_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %free_framebuffer_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @ufx_usb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry125 = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %46 = ptrtoint ptr %entry125 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry125, ptr %entry125, align 4
  %prev.i = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry125, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ufx_free_framebuffer_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull @ufx_usb_probe.__key.17) #10
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 13
  %49 = ptrtoint ptr %modelist to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %modelist, ptr %modelist, align 4
  %prev.i570 = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %prev.i570 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %modelist, ptr %prev.i570, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i571 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i = icmp eq ptr %call7.i.i571, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end142_crit_edge, label %if.end12.i

do.end9.i.do.end142_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142

if.end12.i:                                       ; preds = %do.end9.i
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i = shl i32 %55, 8
  %or15.i = or i32 %shl.i.i, -2147483520
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or15.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 12288, ptr noundef nonnull %call7.i.i571, i16 noundef zeroext 4, i32 noundef 5000) #10
  %56 = ptrtoint ptr %call7.i.i571 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i571, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %59 = ptrtoint ptr %call7.i.i571 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %call7.i.i571, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i571) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %do.end27.i, label %do.body146, !prof !706

do.end27.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef 12288) #14
  br label %do.end142

do.end142:                                        ; preds = %do.end27.i, %do.end9.i.do.end142_crit_edge
  %retval.0.i572.ph = phi i32 [ %call16.i, %do.end27.i ], [ -12, %do.end9.i.do.end142_crit_edge ]
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %retval.0.i572.ph) #14
  br label %error

do.body146:                                       ; preds = %if.end12.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then158)) #10
          to label %do.end162 [label %if.then158], !srcloc !710

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug330, ptr noundef %61, ptr noundef nonnull @.str.22, i32 noundef %58) #10
  br label %do.end162

do.end162:                                        ; preds = %if.then158, %do.body146
  %call163 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %call7.i.i, i32 noundef 12292, ptr noundef nonnull %fpga_rev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end169, label %do.body173

do.end169:                                        ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #12
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call163) #14
  br label %error

do.body173:                                       ; preds = %do.end162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then185)) #10
          to label %do.body190 [label %if.then185], !srcloc !710

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gdev, align 4
  %64 = ptrtoint ptr %fpga_rev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fpga_rev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug331, ptr noundef %63, ptr noundef nonnull @.str.26, i32 noundef %65) #10
  br label %do.body190

do.body190:                                       ; preds = %if.then185, %do.body173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then202)) #10
          to label %do.end206 [label %if.then202], !srcloc !710

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug332, ptr noundef %67, ptr noundef nonnull @.str.27) #10
  br label %do.end206

do.end206:                                        ; preds = %if.then202, %do.body190
  %call207 = tail call fastcc i32 @ufx_lite_reset(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %do.end213, label %do.body217

do.end213:                                        ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #12
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call207) #14
  br label %error

do.body217:                                       ; preds = %do.end206
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then229)) #10
          to label %do.end233 [label %if.then229], !srcloc !710

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug333, ptr noundef %69, ptr noundef nonnull @.str.31) #10
  br label %do.end233

do.end233:                                        ; preds = %if.then229, %do.body217
  %call234 = tail call fastcc i32 @ufx_config_sys_clk(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %do.end240, label %do.body244

do.end240:                                        ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #12
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call234) #14
  br label %error

do.body244:                                       ; preds = %do.end233
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then256)) #10
          to label %do.end260 [label %if.then256], !srcloc !710

if.then256:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug334, ptr noundef %71, ptr noundef nonnull @.str.35) #10
  br label %do.end260

do.end260:                                        ; preds = %if.then256, %do.body244
  %call261 = tail call fastcc i32 @ufx_config_ddr2(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %cmp262 = icmp slt i32 %call261, 0
  br i1 %cmp262, label %do.end267, label %do.body271

do.end267:                                        ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #12
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call261) #14
  br label %error

do.body271:                                       ; preds = %do.end260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then283)) #10
          to label %do.end287 [label %if.then283], !srcloc !710

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug335, ptr noundef %73, ptr noundef nonnull @.str.39) #10
  br label %do.end287

do.end287:                                        ; preds = %if.then283, %do.body271
  %call288 = tail call fastcc i32 @ufx_i2c_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %cmp289 = icmp slt i32 %call288, 0
  br i1 %cmp289, label %do.end294, label %do.body298

do.end294:                                        ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #12
  %call296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %call288) #14
  br label %error

do.body298:                                       ; preds = %do.end287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then310)) #10
          to label %do.end314 [label %if.then310], !srcloc !710

if.then310:                                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug336, ptr noundef %75, ptr noundef nonnull @.str.43) #10
  br label %do.end314

do.end314:                                        ; preds = %if.then310, %do.body298
  %call315 = tail call fastcc i32 @ufx_setup_modes(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %cmp316 = icmp slt i32 %call315, 0
  br i1 %cmp316, label %do.end321, label %if.end324

do.end321:                                        ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #12
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #14
  br label %error

if.end324:                                        ; preds = %do.end314
  %call325 = tail call fastcc i32 @ufx_reg_set_bits(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %cmp326 = icmp slt i32 %call325, 0
  br i1 %cmp326, label %do.end331, label %if.end334

do.end331:                                        ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #12
  %call333 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call325) #14
  br label %error

if.end334:                                        ; preds = %if.end324
  %usb_active = getelementptr inbounds %struct.ufx_data, ptr %call7.i.i, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usb_active, i32 noundef 4) #10
  %76 = ptrtoint ptr %usb_active to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 1, ptr %usb_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then347)) #10
          to label %do.end351 [label %if.then347], !srcloc !710

if.then347:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug337, ptr noundef %78, ptr noundef nonnull @.str.50) #10
  br label %do.end351

do.end351:                                        ; preds = %if.then347, %if.end334
  %var = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 6
  %call352 = tail call i32 @ufx_ops_check_var(ptr noundef %var, ptr noundef nonnull %call102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %cmp353 = icmp slt i32 %call352, 0
  br i1 %cmp353, label %do.end358, label %do.body362

do.end358:                                        ; preds = %do.end351
  call void @__sanitizer_cov_trace_pc() #12
  %call360 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call352) #14
  br label %error

do.body362:                                       ; preds = %do.end351
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then374)) #10
          to label %do.end378 [label %if.then374], !srcloc !710

if.then374:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug338, ptr noundef %80, ptr noundef nonnull @.str.54) #10
  br label %do.end378

do.end378:                                        ; preds = %if.then374, %do.body362
  %call379 = tail call i32 @ufx_ops_set_par(ptr noundef nonnull %call102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call379)
  %cmp380 = icmp slt i32 %call379, 0
  br i1 %cmp380, label %do.end385, label %do.body389

do.end385:                                        ; preds = %do.end378
  call void @__sanitizer_cov_trace_pc() #12
  %call387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call379) #14
  br label %error

do.body389:                                       ; preds = %do.end378
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_probe.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then401)) #10
          to label %do.end405 [label %if.then401], !srcloc !710

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %gdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufx_usb_probe.__UNIQUE_ID_ddebug339, ptr noundef %82, ptr noundef nonnull @.str.58) #10
  br label %do.end405

do.end405:                                        ; preds = %if.then401, %do.body389
  %call406 = tail call i32 @register_framebuffer(ptr noundef nonnull %call102) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call406)
  %cmp407 = icmp slt i32 %call406, 0
  br i1 %cmp407, label %do.end412, label %do.end418

do.end412:                                        ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #12
  %call414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call406) #14
  br label %error

do.end418:                                        ; preds = %do.end405
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %gdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %gdev, align 4
  %node = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 1
  %85 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %node, align 4
  %87 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %yres, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %smem_len, align 4
  %shr = lshr i32 %92, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.63, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %shr) #14
  br label %cleanup

error:                                            ; preds = %do.end412, %do.end385, %do.end358, %do.end331, %do.end321, %do.end294, %do.end267, %do.end240, %do.end213, %do.end169, %do.end142
  %retval1.0 = phi i32 [ %retval.0.i572.ph, %do.end142 ], [ %call163, %do.end169 ], [ %call207, %do.end213 ], [ %call234, %do.end240 ], [ %call261, %do.end267 ], [ %call288, %do.end294 ], [ %call315, %do.end321 ], [ %call325, %do.end331 ], [ %call352, %do.end358 ], [ %call379, %do.end385 ], [ %call406, %do.end412 ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  br label %destroy_modedb

destroy_modedb:                                   ; preds = %error, %do.end114
  %retval1.1 = phi i32 [ %call108, %do.end114 ], [ %retval1.0, %error ]
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 8, i32 1
  %93 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %modedb, align 4
  tail call void @fb_destroy_modedb(ptr noundef %94) #10
  %95 = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 25
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  tail call void @vfree(ptr noundef %97) #10
  %modelist423 = getelementptr inbounds %struct.fb_info, ptr %call102, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist423) #10
  tail call void @framebuffer_release(ptr noundef nonnull %call102) #10
  br label %put_ref

put_ref:                                          ; preds = %destroy_modedb, %if.end100.put_ref_crit_edge, %do.end98
  %retval1.2 = phi i32 [ %retval1.1, %destroy_modedb ], [ -12, %if.end100.put_ref_crit_edge ], [ -12, %do.end98 ]
  %call.i.i.i.i.i.i573 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !712
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !713
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %put_ref
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i574 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i574, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !709

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %put_ref
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !714
  %count.i.i = getelementptr %struct.ufx_data, ptr %call7.i.i, i32 0, i32 3, i32 4
  %99 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i.i = icmp sgt i32 %100, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.do.body.i.i_crit_edge

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufx_free_urb_list(ptr noundef nonnull %call7.i.i) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.then.i.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then4.i.i)) #10
          to label %ufx_free.exit.i [label %if.then4.i.i], !srcloc !710

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.414, ptr noundef nonnull %call7.i.i) #10
  br label %ufx_free.exit.i

ufx_free.exit.i:                                  ; preds = %if.then4.i.i, %do.body.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %ufx_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call.i.i.i.i.i.i575 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !712
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !713
  %asmresult.i.i.i.i.i.i.i576 = extractvalue { i32, i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i576)
  %cmp.i.i.i.i577 = icmp eq i32 %asmresult.i.i.i.i.i.i.i576, 1
  br i1 %cmp.i.i.i.i577, label %if.then.i584, label %if.end5.i.i.i.i579

if.end5.i.i.i.i579:                               ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i576)
  %.not.i.i.i.i578 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i576, 0
  br i1 %.not.i.i.i.i578, label %if.end5.i.i.i.i579.cleanup_crit_edge, label %if.then10.i.i.i.i580, !prof !709

if.end5.i.i.i.i579.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i579
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i580:                             ; preds = %if.end5.i.i.i.i579
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %cleanup

if.then.i584:                                     ; preds = %kref_put.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !714
  %count.i.i582 = getelementptr %struct.ufx_data, ptr %call7.i.i, i32 0, i32 3, i32 4
  %102 = ptrtoint ptr %count.i.i582 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count.i.i582, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i583 = icmp sgt i32 %103, 0
  br i1 %cmp.i.i583, label %if.then.i.i585, label %if.then.i584.do.body.i.i586_crit_edge

if.then.i584.do.body.i.i586_crit_edge:            ; preds = %if.then.i584
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i586

if.then.i.i585:                                   ; preds = %if.then.i584
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufx_free_urb_list(ptr noundef nonnull %call7.i.i) #10
  br label %do.body.i.i586

do.body.i.i586:                                   ; preds = %if.then.i.i585, %if.then.i584.do.body.i.i586_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_probe, %if.then4.i.i587)) #10
          to label %ufx_free.exit.i588 [label %if.then4.i.i587], !srcloc !710

if.then4.i.i587:                                  ; preds = %do.body.i.i586
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.414, ptr noundef nonnull %call7.i.i) #10
  br label %ufx_free.exit.i588

ufx_free.exit.i588:                               ; preds = %if.then4.i.i587, %do.body.i.i586
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ufx_free.exit.i588, %if.then10.i.i.i.i580, %if.end5.i.i.i.i579.cleanup_crit_edge, %do.end418, %do.end15
  %retval.0 = phi i32 [ -12, %do.end15 ], [ 0, %do.end418 ], [ %retval1.2, %if.end5.i.i.i.i579.cleanup_crit_edge ], [ %retval1.2, %if.then10.i.i.i.i580 ], [ %retval1.2, %ufx_free.exit.i588 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fpga_rev) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_usb_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_usb_disconnect.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_disconnect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_usb_disconnect.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.420) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %virtualized = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %virtualized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %virtualized, align 4
  %usb_active = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usb_active, i32 noundef 4) #10
  %3 = ptrtoint ptr %usb_active to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %usb_active, align 4
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  %fb_count = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %free_framebuffer_work = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %free_framebuffer_work, i32 noundef 0) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %kref = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !712
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !713
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !709

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !714
  %count.i.i = getelementptr %struct.ufx_data, ptr %1, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp sgt i32 %10, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.do.body.i.i_crit_edge

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufx_free_urb_list(ptr noundef %1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.then.i.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_usb_disconnect, %if.then4.i.i)) #10
          to label %ufx_free.exit.i [label %if.then4.i.i], !srcloc !710

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.414, ptr noundef %1) #10
  br label %ufx_free.exit.i

ufx_free.exit.i:                                  ; preds = %if.then4.i.i, %do.body.i.i
  tail call void @kfree(ptr noundef %1) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %ufx_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_alloc_urb_list(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3
  %lock = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.66, ptr noundef nonnull @ufx_alloc_urb_list.__key, i16 noundef signext 3) #10
  %size2 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65024, ptr %size2, align 4
  %1 = ptrtoint ptr %urbs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %urbs, ptr %urbs, align 4
  %prev.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %urbs, ptr %prev.i, align 4
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %list_add_tail.exit.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 116) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %dev5 = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev5, align 8
  %release_urb_work = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %release_urb_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %release_urb_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %release_urb_work, align 4
  %lockdep_map = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.68, ptr noundef nonnull @ufx_alloc_urb_list.__key.67, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry14 = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry14, ptr %entry14, align 8
  %prev.i1 = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry14, ptr %prev.i1, align 4
  %func = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ufx_release_urb_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.70, ptr noundef nonnull @ufx_alloc_urb_list.__key.69) #10
  %call25 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %while.end

if.end28:                                         ; preds = %if.end
  %urb29 = getelementptr inbounds %struct.urb_node, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %urb29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call25, ptr %urb29, align 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 15
  %call30 = tail call ptr @usb_alloc_coherent(ptr noundef %11, i32 noundef 65024, i32 noundef 3264, ptr noundef %transfer_dma) #10
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @usb_free_urb(ptr noundef nonnull %call25) #10
  br label %while.end

if.end33:                                         ; preds = %if.end28
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -1073709056
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 8
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call30, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65024, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ufx_urb_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call25, i32 0, i32 13
  %22 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_flags, align 4
  %or37 = or i32 %23, 4
  store i32 %or37, ptr %transfer_flags, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %25, ptr noundef %urbs) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_add_tail.exit_crit_edge

if.end33.list_add_tail.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %urbs, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end33.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %if.then32, %if.then27, %while.body.while.end_crit_edge
  %i.06 = phi i32 [ %i.09, %if.then32 ], [ %i.09, %if.then27 ], [ 4, %list_add_tail.exit.while.end_crit_edge ], [ %i.09, %while.body.while.end_crit_edge ]
  %limit_sem = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2
  %wait_list1.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 2
  %30 = ptrtoint ptr %limit_sem to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %limit_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 4
  %34 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.76, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 4, i32 4
  %37 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 0, i32 4, i32 5
  %38 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 1
  %39 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.06, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %40 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2, i32 2, i32 1
  %41 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %count43 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %count43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.06, ptr %count43, align 4
  %available = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %available to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.06, ptr %available, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_alloc_urb_list.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_alloc_urb_list, %if.then50)) #10
          to label %do.end53 [label %if.then50], !srcloc !710

if.then50:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_alloc_urb_list.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.73, i32 noundef %i.06, i32 noundef 65024) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %while.end
  ret i32 %i.06
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_free_framebuffer_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr i8, ptr %work, i32 -136
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %node2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %node2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node2, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #10
  %len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %modedb = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modedb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_destroy_modedb(ptr noundef nonnull %7) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %10) #10
  %modelist = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist) #10
  %11 = ptrtoint ptr %info1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %info1, align 4
  tail call void @framebuffer_release(ptr noundef %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free_framebuffer_work.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_free_framebuffer_work, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !710

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free_framebuffer_work.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.234, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end7
  %kref = getelementptr i8, ptr %work, i32 -12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !712
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !713
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !709

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !714
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 -144
  %count.i.i = getelementptr i8, ptr %work, i32 -20
  %13 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.do.body.i.i_crit_edge

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufx_free_urb_list(ptr noundef %add.ptr.i.i) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.then.i.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_free_framebuffer_work, %if.then4.i.i)) #10
          to label %ufx_free.exit.i [label %if.then4.i.i], !srcloc !710

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.414, ptr noundef %add.ptr.i.i) #10
  br label %ufx_free.exit.i

ufx_free.exit.i:                                  ; preds = %if.then4.i.i, %do.body.i.i
  tail call void @kfree(ptr noundef %add.ptr.i.i) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %ufx_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_reg_read(ptr noundef readonly %dev, i32 noundef %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !706

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #10, !srcloc !715
  unreachable

do.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or15 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %index to i16
  %call16 = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or15, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i, align 8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %data, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end27, label %if.end12.cleanup_crit_edge, !prof !706

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %index) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end9.cleanup_crit_edge ], [ %call16, %do.end27 ], [ %call16, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_lite_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !705
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %entry
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end_crit_edge, label %if.end12.i

do.end9.i.do.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end12.i:                                       ; preds = %do.end9.i
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12296, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %if.end, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 12296, i32 noundef 1) #14
  br label %do.end

do.end:                                           ; preds = %do.end26.i, %do.end9.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call15.i, %do.end26.i ], [ -12, %do.end9.i.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237) #14
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  %call2 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 12296, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11 = icmp eq i32 %8, 0
  %cond = select i1 %cmp11, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end7 ], [ %cond, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_config_sys_clk(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data.i.i79 = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %entry
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end_crit_edge, label %if.end12.i

do.end9.i.do.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end12.i:                                       ; preds = %do.end9.i
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 251658368, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28684, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %do.end9.i55, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 28684, i32 noundef -2147483633) #14
  br label %do.end

do.end:                                           ; preds = %do.end26.i, %do.end9.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call15.i, %do.end26.i ], [ -12, %do.end9.i.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #14
  br label %cleanup

do.end9.i55:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i54 = icmp eq ptr %call7.i.i51, null
  br i1 %tobool10.not.i54, label %do.end9.i55.do.end7_crit_edge, label %if.end12.i60

do.end9.i55.do.end7_crit_edge:                    ; preds = %do.end9.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end12.i60:                                     ; preds = %do.end9.i55
  %7 = ptrtoint ptr %call7.i.i51 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1325535232, ptr %call7.i.i51, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i56 = shl i32 %11, 8
  %or.i57 = or i32 %shl.i.i56, -2147483648
  %call15.i58 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i57, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28692, ptr noundef nonnull %call7.i.i51, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i58)
  %cmp.i59 = icmp slt i32 %call15.i58, 0
  br i1 %cmp.i59, label %do.end26.i62, label %do.end9.i69, !prof !706

do.end26.i62:                                     ; preds = %if.end12.i60
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 28692, i32 noundef 1049167) #14
  br label %do.end7

do.end7:                                          ; preds = %do.end26.i62, %do.end9.i55.do.end7_crit_edge
  %retval.0.i63.ph = phi i32 [ %call15.i58, %do.end26.i62 ], [ -12, %do.end9.i55.do.end7_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245) #14
  br label %cleanup

do.end9.i69:                                      ; preds = %if.end12.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i68 = icmp eq ptr %call7.i.i65, null
  br i1 %tobool10.not.i68, label %do.end9.i69.do.end16_crit_edge, label %if.end12.i74

do.end9.i69.do.end16_crit_edge:                   ; preds = %do.end9.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

if.end12.i74:                                     ; preds = %do.end9.i69
  %13 = ptrtoint ptr %call7.i.i65 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call7.i.i65, align 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i70 = shl i32 %17, 8
  %or.i71 = or i32 %shl.i.i70, -2147483648
  %call15.i72 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i71, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28688, ptr noundef nonnull %call7.i.i65, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i72)
  %cmp.i73 = icmp slt i32 %call15.i72, 0
  br i1 %cmp.i73, label %do.end26.i76, label %if.end19, !prof !706

do.end26.i76:                                     ; preds = %if.end12.i74
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 28688, i32 noundef 0) #14
  br label %do.end16

do.end16:                                         ; preds = %do.end26.i76, %do.end9.i69.do.end16_crit_edge
  %retval.0.i77.ph = phi i32 [ %call15.i72, %do.end26.i76 ], [ -12, %do.end9.i69.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end12.i74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #10
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %data.i.i, align 4, !annotation !705
  %call.i.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 28684, ptr noundef nonnull %data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end19.do.end25_crit_edge, label %if.end.i.i

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end.i.i:                                       ; preds = %if.end19
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.i.i, align 4
  %and.i.i = and i32 %20, -11
  %call2.i.i = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28684, i32 noundef %and.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.do.end25_crit_edge, label %if.end28

if.end.i.i.do.end25_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end25:                                         ; preds = %if.end.i.i.do.end25_crit_edge, %if.end19.do.end25_crit_edge
  %.str.204.sink.i.i = phi ptr [ @.str.201, %if.end19.do.end25_crit_edge ], [ @.str.204, %if.end.i.i.do.end25_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i, %if.end19.do.end25_crit_edge ], [ %call2.i.i, %if.end.i.i.do.end25_crit_edge ]
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i, i32 noundef 28684) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251) #14
  br label %cleanup

if.end28:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  tail call void @msleep(i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i79) #10
  %21 = ptrtoint ptr %data.i.i79 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %data.i.i79, align 4, !annotation !705
  %call.i.i80 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 28684, ptr noundef nonnull %data.i.i79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %cmp.i.i81 = icmp slt i32 %call.i.i80, 0
  br i1 %cmp.i.i81, label %if.end28.do.end34_crit_edge, label %if.end.i.i85

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

if.end.i.i85:                                     ; preds = %if.end28
  %22 = ptrtoint ptr %data.i.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i.i79, align 4
  %and.i.i82 = and i32 %23, 2147483647
  %call2.i.i83 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28684, i32 noundef %and.i.i82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i83)
  %cmp3.i.i84 = icmp slt i32 %call2.i.i83, 0
  br i1 %cmp3.i.i84, label %if.end.i.i85.do.end34_crit_edge, label %ufx_reg_clear_bits.exit91

if.end.i.i85.do.end34_crit_edge:                  ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

ufx_reg_clear_bits.exit91:                        ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i79) #10
  br label %cleanup

do.end34:                                         ; preds = %if.end.i.i85.do.end34_crit_edge, %if.end28.do.end34_crit_edge
  %.str.204.sink.i.i86 = phi ptr [ @.str.201, %if.end28.do.end34_crit_edge ], [ @.str.204, %if.end.i.i85.do.end34_crit_edge ]
  %retval.0.ph.i.i87 = phi i32 [ %call.i.i80, %if.end28.do.end34_crit_edge ], [ %call2.i.i83, %if.end.i.i85.do.end34_crit_edge ]
  %call9.i.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i86, i32 noundef 28684) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i79) #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %ufx_reg_clear_bits.exit91, %do.end25, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i63.ph, %do.end7 ], [ %retval.0.i77.ph, %do.end16 ], [ %retval.0.ph.i.i, %do.end25 ], [ %retval.0.ph.i.i87, %do.end34 ], [ 0, %ufx_reg_clear_bits.exit91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_config_ddr2(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !705
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %entry
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end_crit_edge, label %if.end12.i

do.end9.i.do.end_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end12.i:                                       ; preds = %do.end9.i
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1997479680, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %do.end9.i307, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4, i32 noundef 2035575) #14
  br label %do.end

do.end:                                           ; preds = %do.end26.i, %do.end9.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call15.i, %do.end26.i ], [ -12, %do.end9.i.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256) #14
  br label %cleanup

do.end9.i307:                                     ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i303 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i306 = icmp eq ptr %call7.i.i303, null
  br i1 %tobool10.not.i306, label %do.end9.i307.do.end8_crit_edge, label %if.end12.i312

do.end9.i307.do.end8_crit_edge:                   ; preds = %do.end9.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.end12.i312:                                    ; preds = %do.end9.i307
  %8 = ptrtoint ptr %call7.i.i303 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 61695, ptr %call7.i.i303, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i308 = shl i32 %12, 8
  %or.i309 = or i32 %shl.i.i308, -2147483648
  %call15.i310 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i309, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef nonnull %call7.i.i303, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i303) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i310)
  %cmp.i311 = icmp slt i32 %call15.i310, 0
  br i1 %cmp.i311, label %do.end26.i314, label %do.end9.i321, !prof !706

do.end26.i314:                                    ; preds = %if.end12.i312
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8, i32 noundef -1048576) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end26.i314, %do.end9.i307.do.end8_crit_edge
  %retval.0.i315.ph = phi i32 [ %call15.i310, %do.end26.i314 ], [ -12, %do.end9.i307.do.end8_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.259) #14
  br label %cleanup

do.end9.i321:                                     ; preds = %if.end12.i312
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i317 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i320 = icmp eq ptr %call7.i.i317, null
  br i1 %tobool10.not.i320, label %do.end9.i321.do.end17_crit_edge, label %if.end12.i326

do.end9.i321.do.end17_crit_edge:                  ; preds = %do.end9.i321
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.end12.i326:                                    ; preds = %do.end9.i321
  %14 = ptrtoint ptr %call7.i.i317 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 572718863, ptr %call7.i.i317, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i322 = shl i32 %18, 8
  %or.i323 = or i32 %shl.i.i322, -2147483648
  %call15.i324 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i323, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %call7.i.i317, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i317) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i324)
  %cmp.i325 = icmp slt i32 %call15.i324, 0
  br i1 %cmp.i325, label %do.end26.i328, label %do.end9.i335, !prof !706

do.end26.i328:                                    ; preds = %if.end12.i326
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 12, i32 noundef 268378658) #14
  br label %do.end17

do.end17:                                         ; preds = %do.end26.i328, %do.end9.i321.do.end17_crit_edge
  %retval.0.i329.ph = phi i32 [ %call15.i324, %do.end26.i328 ], [ -12, %do.end9.i321.do.end17_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262) #14
  br label %cleanup

do.end9.i335:                                     ; preds = %if.end12.i326
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i331 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i334 = icmp eq ptr %call7.i.i331, null
  br i1 %tobool10.not.i334, label %do.end9.i335.do.end26_crit_edge, label %if.end12.i340

do.end9.i335.do.end26_crit_edge:                  ; preds = %do.end9.i335
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

if.end12.i340:                                    ; preds = %do.end9.i335
  %20 = ptrtoint ptr %call7.i.i331 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 336069376, ptr %call7.i.i331, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i336 = shl i32 %24, 8
  %or.i337 = or i32 %shl.i.i336, -2147483648
  %call15.i338 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i337, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %call7.i.i331, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i331) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i338)
  %cmp.i339 = icmp slt i32 %call15.i338, 0
  br i1 %cmp.i339, label %do.end26.i342, label %do.end9.i349, !prof !706

do.end26.i342:                                    ; preds = %if.end12.i340
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 16, i32 noundef 198676) #14
  br label %do.end26

do.end26:                                         ; preds = %do.end26.i342, %do.end9.i335.do.end26_crit_edge
  %retval.0.i343.ph = phi i32 [ %call15.i338, %do.end26.i342 ], [ -12, %do.end9.i335.do.end26_crit_edge ]
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #14
  br label %cleanup

do.end9.i349:                                     ; preds = %if.end12.i340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i345 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i348 = icmp eq ptr %call7.i.i345, null
  br i1 %tobool10.not.i348, label %do.end9.i349.do.end35_crit_edge, label %if.end12.i354

do.end9.i349.do.end35_crit_edge:                  ; preds = %do.end9.i349
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.end12.i354:                                    ; preds = %do.end9.i349
  %26 = ptrtoint ptr %call7.i.i345 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 419450880, ptr %call7.i.i345, align 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i350 = shl i32 %30, 8
  %or.i351 = or i32 %shl.i.i350, -2147483648
  %call15.i352 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i351, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef nonnull %call7.i.i345, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i345) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i352)
  %cmp.i353 = icmp slt i32 %call15.i352, 0
  br i1 %cmp.i353, label %do.end26.i356, label %do.end9.i363, !prof !706

do.end26.i356:                                    ; preds = %if.end12.i354
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 20, i32 noundef 5242905) #14
  br label %do.end35

do.end35:                                         ; preds = %do.end26.i356, %do.end9.i349.do.end35_crit_edge
  %retval.0.i357.ph = phi i32 [ %call15.i352, %do.end26.i356 ], [ -12, %do.end9.i349.do.end35_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #14
  br label %cleanup

do.end9.i363:                                     ; preds = %if.end12.i354
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i359 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i362 = icmp eq ptr %call7.i.i359, null
  br i1 %tobool10.not.i362, label %do.end9.i363.do.end44_crit_edge, label %if.end12.i368

do.end9.i363.do.end44_crit_edge:                  ; preds = %do.end9.i363
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.end12.i368:                                    ; preds = %do.end9.i363
  %32 = ptrtoint ptr %call7.i.i359 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 353307906, ptr %call7.i.i359, align 8
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i364 = shl i32 %36, 8
  %or.i365 = or i32 %shl.i.i364, -2147483648
  %call15.i366 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i365, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 24, ptr noundef nonnull %call7.i.i359, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i359) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i366)
  %cmp.i367 = icmp slt i32 %call15.i366, 0
  br i1 %cmp.i367, label %do.end26.i370, label %do.end9.i377, !prof !706

do.end26.i370:                                    ; preds = %if.end12.i368
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 24, i32 noundef 34410261) #14
  br label %do.end44

do.end44:                                         ; preds = %do.end26.i370, %do.end9.i363.do.end44_crit_edge
  %retval.0.i371.ph = phi i32 [ %call15.i366, %do.end26.i370 ], [ -12, %do.end9.i363.do.end44_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271) #14
  br label %cleanup

do.end9.i377:                                     ; preds = %if.end12.i368
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i373 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i376 = icmp eq ptr %call7.i.i373, null
  br i1 %tobool10.not.i376, label %do.end9.i377.do.end53_crit_edge, label %if.end12.i382

do.end9.i377.do.end53_crit_edge:                  ; preds = %do.end9.i377
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53

if.end12.i382:                                    ; preds = %do.end9.i377
  %38 = ptrtoint ptr %call7.i.i373 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 86201090, ptr %call7.i.i373, align 8
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i378 = shl i32 %42, 8
  %or.i379 = or i32 %shl.i.i378, -2147483648
  %call15.i380 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i379, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28, ptr noundef nonnull %call7.i.i373, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i373) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i380)
  %cmp.i381 = icmp slt i32 %call15.i380, 0
  br i1 %cmp.i381, label %do.end26.i384, label %do.end9.i391, !prof !706

do.end26.i384:                                    ; preds = %if.end12.i382
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 28, i32 noundef 39002885) #14
  br label %do.end53

do.end53:                                         ; preds = %do.end26.i384, %do.end9.i377.do.end53_crit_edge
  %retval.0.i385.ph = phi i32 [ %call15.i380, %do.end26.i384 ], [ -12, %do.end9.i377.do.end53_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274) #14
  br label %cleanup

do.end9.i391:                                     ; preds = %if.end12.i382
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i387 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i390 = icmp eq ptr %call7.i.i387, null
  br i1 %tobool10.not.i390, label %do.end9.i391.do.end62_crit_edge, label %if.end12.i396

do.end9.i391.do.end62_crit_edge:                  ; preds = %do.end9.i391
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

if.end12.i396:                                    ; preds = %do.end9.i391
  %44 = ptrtoint ptr %call7.i.i387 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 84476683, ptr %call7.i.i387, align 8
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i392 = shl i32 %48, 8
  %or.i393 = or i32 %shl.i.i392, -2147483648
  %call15.i394 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i393, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef nonnull %call7.i.i387, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i387) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i394)
  %cmp.i395 = icmp slt i32 %call15.i394, 0
  br i1 %cmp.i395, label %do.end26.i398, label %do.end9.i405, !prof !706

do.end26.i398:                                    ; preds = %if.end12.i396
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 32, i32 noundef 184748293) #14
  br label %do.end62

do.end62:                                         ; preds = %do.end26.i398, %do.end9.i391.do.end62_crit_edge
  %retval.0.i399.ph = phi i32 [ %call15.i394, %do.end26.i398 ], [ -12, %do.end9.i391.do.end62_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #14
  br label %cleanup

do.end9.i405:                                     ; preds = %if.end12.i396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i401 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i404 = icmp eq ptr %call7.i.i401, null
  br i1 %tobool10.not.i404, label %do.end9.i405.do.end71_crit_edge, label %if.end12.i410

do.end9.i405.do.end71_crit_edge:                  ; preds = %do.end9.i405
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end71

if.end12.i410:                                    ; preds = %do.end9.i405
  %50 = ptrtoint ptr %call7.i.i401 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 654835712, ptr %call7.i.i401, align 8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i406 = shl i32 %54, 8
  %or.i407 = or i32 %shl.i.i406, -2147483648
  %call15.i408 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i407, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef nonnull %call7.i.i401, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i401) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i408)
  %cmp.i409 = icmp slt i32 %call15.i408, 0
  br i1 %cmp.i409, label %do.end26.i412, label %do.end9.i419, !prof !706

do.end26.i412:                                    ; preds = %if.end12.i410
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 36, i32 noundef 2087) #14
  br label %do.end71

do.end71:                                         ; preds = %do.end26.i412, %do.end9.i405.do.end71_crit_edge
  %retval.0.i413.ph = phi i32 [ %call15.i408, %do.end26.i412 ], [ -12, %do.end9.i405.do.end71_crit_edge ]
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280) #14
  br label %cleanup

do.end9.i419:                                     ; preds = %if.end12.i410
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i415 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i418 = icmp eq ptr %call7.i.i415, null
  br i1 %tobool10.not.i418, label %do.end9.i419.do.end80_crit_edge, label %if.end12.i424

do.end9.i419.do.end80_crit_edge:                  ; preds = %do.end9.i419
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

if.end12.i424:                                    ; preds = %do.end9.i419
  %56 = ptrtoint ptr %call7.i.i415 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %call7.i.i415, align 8
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i420 = shl i32 %60, 8
  %or.i421 = or i32 %shl.i.i420, -2147483648
  %call15.i422 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i421, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %call7.i.i415, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i415) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i422)
  %cmp.i423 = icmp slt i32 %call15.i422, 0
  br i1 %cmp.i423, label %do.end26.i426, label %do.end9.i433, !prof !706

do.end26.i426:                                    ; preds = %if.end12.i424
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 40, i32 noundef 0) #14
  br label %do.end80

do.end80:                                         ; preds = %do.end26.i426, %do.end9.i419.do.end80_crit_edge
  %retval.0.i427.ph = phi i32 [ %call15.i422, %do.end26.i426 ], [ -12, %do.end9.i419.do.end80_crit_edge ]
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283) #14
  br label %cleanup

do.end9.i433:                                     ; preds = %if.end12.i424
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i429 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i432 = icmp eq ptr %call7.i.i429, null
  br i1 %tobool10.not.i432, label %do.end9.i433.do.end89_crit_edge, label %if.end12.i438

do.end9.i433.do.end89_crit_edge:                  ; preds = %do.end9.i433
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

if.end12.i438:                                    ; preds = %do.end9.i433
  %62 = ptrtoint ptr %call7.i.i429 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1107296256, ptr %call7.i.i429, align 8
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i434 = shl i32 %66, 8
  %or.i435 = or i32 %shl.i.i434, -2147483648
  %call15.i436 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i435, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %call7.i.i429, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i429) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i436)
  %cmp.i437 = icmp slt i32 %call15.i436, 0
  br i1 %cmp.i437, label %do.end26.i440, label %do.end9.i447, !prof !706

do.end26.i440:                                    ; preds = %if.end12.i438
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i439 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 44, i32 noundef 66) #14
  br label %do.end89

do.end89:                                         ; preds = %do.end26.i440, %do.end9.i433.do.end89_crit_edge
  %retval.0.i441.ph = phi i32 [ %call15.i436, %do.end26.i440 ], [ -12, %do.end9.i433.do.end89_crit_edge ]
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286) #14
  br label %cleanup

do.end9.i447:                                     ; preds = %if.end12.i438
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i443 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i446 = icmp eq ptr %call7.i.i443, null
  br i1 %tobool10.not.i446, label %do.end9.i447.do.end98_crit_edge, label %if.end12.i452

do.end9.i447.do.end98_crit_edge:                  ; preds = %do.end9.i447
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

if.end12.i452:                                    ; preds = %do.end9.i447
  %68 = ptrtoint ptr %call7.i.i443 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 21001, ptr %call7.i.i443, align 8
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %shl.i.i448 = shl i32 %72, 8
  %or.i449 = or i32 %shl.i.i448, -2147483648
  %call15.i450 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i449, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef nonnull %call7.i.i443, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i443) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i450)
  %cmp.i451 = icmp slt i32 %call15.i450, 0
  br i1 %cmp.i451, label %do.end26.i454, label %do.end9.i461, !prof !706

do.end26.i454:                                    ; preds = %if.end12.i452
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i453 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 48, i32 noundef 156368896) #14
  br label %do.end98

do.end98:                                         ; preds = %do.end26.i454, %do.end9.i447.do.end98_crit_edge
  %retval.0.i455.ph = phi i32 [ %call15.i450, %do.end26.i454 ], [ -12, %do.end9.i447.do.end98_crit_edge ]
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289) #14
  br label %cleanup

do.end9.i461:                                     ; preds = %if.end12.i452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i457 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i460 = icmp eq ptr %call7.i.i457, null
  br i1 %tobool10.not.i460, label %do.end9.i461.do.end107_crit_edge, label %if.end12.i466

do.end9.i461.do.end107_crit_edge:                 ; preds = %do.end9.i461
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end107

if.end12.i466:                                    ; preds = %do.end9.i461
  %74 = ptrtoint ptr %call7.i.i457 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 338895362, ptr %call7.i.i457, align 8
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i462 = shl i32 %78, 8
  %or.i463 = or i32 %shl.i.i462, -2147483648
  %call15.i464 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i463, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 52, ptr noundef nonnull %call7.i.i457, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i457) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i464)
  %cmp.i465 = icmp slt i32 %call15.i464, 0
  br i1 %cmp.i465, label %do.end26.i468, label %do.end9.i475, !prof !706

do.end26.i468:                                    ; preds = %if.end12.i466
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i467 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 52, i32 noundef 35795732) #14
  br label %do.end107

do.end107:                                        ; preds = %do.end26.i468, %do.end9.i461.do.end107_crit_edge
  %retval.0.i469.ph = phi i32 [ %call15.i464, %do.end26.i468 ], [ -12, %do.end9.i461.do.end107_crit_edge ]
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292) #14
  br label %cleanup

do.end9.i475:                                     ; preds = %if.end12.i466
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i471 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i474 = icmp eq ptr %call7.i.i471, null
  br i1 %tobool10.not.i474, label %do.end9.i475.do.end116_crit_edge, label %if.end12.i480

do.end9.i475.do.end116_crit_edge:                 ; preds = %do.end9.i475
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

if.end12.i480:                                    ; preds = %do.end9.i475
  %80 = ptrtoint ptr %call7.i.i471 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1124090624, ptr %call7.i.i471, align 8
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i476 = shl i32 %84, 8
  %or.i477 = or i32 %shl.i.i476, -2147483648
  %call15.i478 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i477, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef nonnull %call7.i.i471, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i471) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i478)
  %cmp.i479 = icmp slt i32 %call15.i478, 0
  br i1 %cmp.i479, label %do.end26.i482, label %do.end9.i489, !prof !706

do.end26.i482:                                    ; preds = %if.end12.i480
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i481 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 56, i32 noundef 4390979) #14
  br label %do.end116

do.end116:                                        ; preds = %do.end26.i482, %do.end9.i475.do.end116_crit_edge
  %retval.0.i483.ph = phi i32 [ %call15.i478, %do.end26.i482 ], [ -12, %do.end9.i475.do.end116_crit_edge ]
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295) #14
  br label %cleanup

do.end9.i489:                                     ; preds = %if.end12.i480
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i485 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i488 = icmp eq ptr %call7.i.i485, null
  br i1 %tobool10.not.i488, label %do.end9.i489.do.end125_crit_edge, label %if.end12.i494

do.end9.i489.do.end125_crit_edge:                 ; preds = %do.end9.i489
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end125

if.end12.i494:                                    ; preds = %do.end9.i489
  %86 = ptrtoint ptr %call7.i.i485 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 251662320, ptr %call7.i.i485, align 8
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i.i490 = shl i32 %90, 8
  %or.i491 = or i32 %shl.i.i490, -2147483648
  %call15.i492 = tail call i32 @usb_control_msg(ptr noundef %88, i32 noundef %or.i491, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef nonnull %call7.i.i485, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i485) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i492)
  %cmp.i493 = icmp slt i32 %call15.i492, 0
  br i1 %cmp.i493, label %do.end26.i496, label %do.end9.i503, !prof !706

do.end26.i496:                                    ; preds = %if.end12.i494
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 60, i32 noundef -267452401) #14
  br label %do.end125

do.end125:                                        ; preds = %do.end26.i496, %do.end9.i489.do.end125_crit_edge
  %retval.0.i497.ph = phi i32 [ %call15.i492, %do.end26.i496 ], [ -12, %do.end9.i489.do.end125_crit_edge ]
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298) #14
  br label %cleanup

do.end9.i503:                                     ; preds = %if.end12.i494
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i499 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i502 = icmp eq ptr %call7.i.i499, null
  br i1 %tobool10.not.i502, label %do.end9.i503.do.end134_crit_edge, label %if.end12.i508

do.end9.i503.do.end134_crit_edge:                 ; preds = %do.end9.i503
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end134

if.end12.i508:                                    ; preds = %do.end9.i503
  %92 = ptrtoint ptr %call7.i.i499 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 267419891, ptr %call7.i.i499, align 8
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i504 = shl i32 %96, 8
  %or.i505 = or i32 %shl.i.i504, -2147483648
  %call15.i506 = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or.i505, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %call7.i.i499, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i499) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i506)
  %cmp.i507 = icmp slt i32 %call15.i506, 0
  br i1 %cmp.i507, label %do.end26.i510, label %do.end9.i517, !prof !706

do.end26.i510:                                    ; preds = %if.end12.i508
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i509 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 64, i32 noundef -209653745) #14
  br label %do.end134

do.end134:                                        ; preds = %do.end26.i510, %do.end9.i503.do.end134_crit_edge
  %retval.0.i511.ph = phi i32 [ %call15.i506, %do.end26.i510 ], [ -12, %do.end9.i503.do.end134_crit_edge ]
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301) #14
  br label %cleanup

do.end9.i517:                                     ; preds = %if.end12.i508
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i513 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i516 = icmp eq ptr %call7.i.i513, null
  br i1 %tobool10.not.i516, label %do.end9.i517.do.end143_crit_edge, label %if.end12.i522

do.end9.i517.do.end143_crit_edge:                 ; preds = %do.end9.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end143

if.end12.i522:                                    ; preds = %do.end9.i517
  %98 = ptrtoint ptr %call7.i.i513 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1778118672, ptr %call7.i.i513, align 8
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i518 = shl i32 %102, 8
  %or.i519 = or i32 %shl.i.i518, -2147483648
  %call15.i520 = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or.i519, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 68, ptr noundef nonnull %call7.i.i513, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i513) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i520)
  %cmp.i521 = icmp slt i32 %call15.i520, 0
  br i1 %cmp.i521, label %do.end26.i524, label %do.end9.i531, !prof !706

do.end26.i524:                                    ; preds = %if.end12.i522
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i523 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 68, i32 noundef -267451242) #14
  br label %do.end143

do.end143:                                        ; preds = %do.end26.i524, %do.end9.i517.do.end143_crit_edge
  %retval.0.i525.ph = phi i32 [ %call15.i520, %do.end26.i524 ], [ -12, %do.end9.i517.do.end143_crit_edge ]
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304) #14
  br label %cleanup

do.end9.i531:                                     ; preds = %if.end12.i522
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i527 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i530 = icmp eq ptr %call7.i.i527, null
  br i1 %tobool10.not.i530, label %do.end9.i531.do.end152_crit_edge, label %if.end12.i536

do.end9.i531.do.end152_crit_edge:                 ; preds = %do.end9.i531
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end152

if.end12.i536:                                    ; preds = %do.end9.i531
  %104 = ptrtoint ptr %call7.i.i527 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 100927491, ptr %call7.i.i527, align 8
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %shl.i.i532 = shl i32 %108, 8
  %or.i533 = or i32 %shl.i.i532, -2147483648
  %call15.i534 = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or.i533, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 72, ptr noundef nonnull %call7.i.i527, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i527) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i534)
  %cmp.i535 = icmp slt i32 %call15.i534, 0
  br i1 %cmp.i535, label %do.end26.i538, label %do.end9.i545, !prof !706

do.end26.i538:                                    ; preds = %if.end12.i536
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 72, i32 noundef 50856966) #14
  br label %do.end152

do.end152:                                        ; preds = %do.end26.i538, %do.end9.i531.do.end152_crit_edge
  %retval.0.i539.ph = phi i32 [ %call15.i534, %do.end26.i538 ], [ -12, %do.end9.i531.do.end152_crit_edge ]
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307) #14
  br label %cleanup

do.end9.i545:                                     ; preds = %if.end12.i536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %109 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i541 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i544 = icmp eq ptr %call7.i.i541, null
  br i1 %tobool10.not.i544, label %do.end9.i545.do.end161_crit_edge, label %if.end12.i550

do.end9.i545.do.end161_crit_edge:                 ; preds = %do.end9.i545
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end161

if.end12.i550:                                    ; preds = %do.end9.i545
  %110 = ptrtoint ptr %call7.i.i541 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1048576, ptr %call7.i.i541, align 8
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %shl.i.i546 = shl i32 %114, 8
  %or.i547 = or i32 %shl.i.i546, -2147483648
  %call15.i548 = tail call i32 @usb_control_msg(ptr noundef %112, i32 noundef %or.i547, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 76, ptr noundef nonnull %call7.i.i541, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i541) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i548)
  %cmp.i549 = icmp slt i32 %call15.i548, 0
  br i1 %cmp.i549, label %do.end26.i552, label %do.end9.i559, !prof !706

do.end26.i552:                                    ; preds = %if.end12.i550
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i551 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 76, i32 noundef 4096) #14
  br label %do.end161

do.end161:                                        ; preds = %do.end26.i552, %do.end9.i545.do.end161_crit_edge
  %retval.0.i553.ph = phi i32 [ %call15.i548, %do.end26.i552 ], [ -12, %do.end9.i545.do.end161_crit_edge ]
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310) #14
  br label %cleanup

do.end9.i559:                                     ; preds = %if.end12.i550
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %115 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i555 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %115, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i558 = icmp eq ptr %call7.i.i555, null
  br i1 %tobool10.not.i558, label %do.end9.i559.do.end170_crit_edge, label %if.end12.i564

do.end9.i559.do.end170_crit_edge:                 ; preds = %do.end9.i559
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end170

if.end12.i564:                                    ; preds = %do.end9.i559
  %116 = ptrtoint ptr %call7.i.i555 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 117440512, ptr %call7.i.i555, align 8
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 8
  %shl.i.i560 = shl i32 %120, 8
  %or.i561 = or i32 %shl.i.i560, -2147483648
  %call15.i562 = tail call i32 @usb_control_msg(ptr noundef %118, i32 noundef %or.i561, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 92, ptr noundef nonnull %call7.i.i555, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i555) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i562)
  %cmp.i563 = icmp slt i32 %call15.i562, 0
  br i1 %cmp.i563, label %do.end26.i566, label %do.end9.i573, !prof !706

do.end26.i566:                                    ; preds = %if.end12.i564
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 92, i32 noundef 7) #14
  br label %do.end170

do.end170:                                        ; preds = %do.end26.i566, %do.end9.i559.do.end170_crit_edge
  %retval.0.i567.ph = phi i32 [ %call15.i562, %do.end26.i566 ], [ -12, %do.end9.i559.do.end170_crit_edge ]
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313) #14
  br label %cleanup

do.end9.i573:                                     ; preds = %if.end12.i564
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %121 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i569 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %121, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i572 = icmp eq ptr %call7.i.i569, null
  br i1 %tobool10.not.i572, label %do.end9.i573.do.end179_crit_edge, label %if.end12.i578

do.end9.i573.do.end179_crit_edge:                 ; preds = %do.end9.i573
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end179

if.end12.i578:                                    ; preds = %do.end9.i573
  %122 = ptrtoint ptr %call7.i.i569 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 302051412, ptr %call7.i.i569, align 8
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i574 = shl i32 %126, 8
  %or.i575 = or i32 %shl.i.i574, -2147483648
  %call15.i576 = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i575, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i569, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i569) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i576)
  %cmp.i577 = icmp slt i32 %call15.i576, 0
  br i1 %cmp.i577, label %do.end26.i580, label %do.end9.i587, !prof !706

do.end26.i580:                                    ; preds = %if.end12.i578
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i579 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 256, i32 noundef 1425014802) #14
  br label %do.end179

do.end179:                                        ; preds = %do.end26.i580, %do.end9.i573.do.end179_crit_edge
  %retval.0.i581.ph = phi i32 [ %call15.i576, %do.end26.i580 ], [ -12, %do.end9.i573.do.end179_crit_edge ]
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #14
  br label %cleanup

do.end9.i587:                                     ; preds = %if.end12.i578
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i583 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i586 = icmp eq ptr %call7.i.i583, null
  br i1 %tobool10.not.i586, label %do.end9.i587.do.end188_crit_edge, label %if.end12.i592

do.end9.i587.do.end188_crit_edge:                 ; preds = %do.end9.i587
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end188

if.end12.i592:                                    ; preds = %do.end9.i587
  %128 = ptrtoint ptr %call7.i.i583 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 306184192, ptr %call7.i.i583, align 8
  %129 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i.i588 = shl i32 %132, 8
  %or.i589 = or i32 %shl.i.i588, -2147483648
  %call15.i590 = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or.i589, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 260, ptr noundef nonnull %call7.i.i583, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i583) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i590)
  %cmp.i591 = icmp slt i32 %call15.i590, 0
  br i1 %cmp.i591, label %do.end26.i594, label %do.end9.i601, !prof !706

do.end26.i594:                                    ; preds = %if.end12.i592
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i593 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 260, i32 noundef 16402) #14
  br label %do.end188

do.end188:                                        ; preds = %do.end26.i594, %do.end9.i587.do.end188_crit_edge
  %retval.0.i595.ph = phi i32 [ %call15.i590, %do.end26.i594 ], [ -12, %do.end9.i587.do.end188_crit_edge ]
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319) #14
  br label %cleanup

do.end9.i601:                                     ; preds = %if.end12.i592
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %133 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i597 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %133, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i600 = icmp eq ptr %call7.i.i597, null
  br i1 %tobool10.not.i600, label %do.end9.i601.do.end197_crit_edge, label %if.end12.i606

do.end9.i601.do.end197_crit_edge:                 ; preds = %do.end9.i601
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end197

if.end12.i606:                                    ; preds = %do.end9.i601
  %134 = ptrtoint ptr %call7.i.i597 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1077952576, ptr %call7.i.i597, align 8
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 8
  %shl.i.i602 = shl i32 %138, 8
  %or.i603 = or i32 %shl.i.i602, -2147483648
  %call15.i604 = tail call i32 @usb_control_msg(ptr noundef %136, i32 noundef %or.i603, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 280, ptr noundef nonnull %call7.i.i597, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i597) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i604)
  %cmp.i605 = icmp slt i32 %call15.i604, 0
  br i1 %cmp.i605, label %do.end26.i608, label %do.end9.i615, !prof !706

do.end26.i608:                                    ; preds = %if.end12.i606
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i607 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 280, i32 noundef 1077952576) #14
  br label %do.end197

do.end197:                                        ; preds = %do.end26.i608, %do.end9.i601.do.end197_crit_edge
  %retval.0.i609.ph = phi i32 [ %call15.i604, %do.end26.i608 ], [ -12, %do.end9.i601.do.end197_crit_edge ]
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322) #14
  br label %cleanup

do.end9.i615:                                     ; preds = %if.end12.i606
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i611 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i614 = icmp eq ptr %call7.i.i611, null
  br i1 %tobool10.not.i614, label %do.end9.i615.do.end206_crit_edge, label %if.end12.i620

do.end9.i615.do.end206_crit_edge:                 ; preds = %do.end9.i615
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end206

if.end12.i620:                                    ; preds = %do.end9.i615
  %140 = ptrtoint ptr %call7.i.i611 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 16777216, ptr %call7.i.i611, align 8
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 8
  %shl.i.i616 = shl i32 %144, 8
  %or.i617 = or i32 %shl.i.i616, -2147483648
  %call15.i618 = tail call i32 @usb_control_msg(ptr noundef %142, i32 noundef %or.i617, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i611, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i611) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i618)
  %cmp.i619 = icmp slt i32 %call15.i618, 0
  br i1 %cmp.i619, label %do.end26.i622, label %if.end12.i620.while.cond_crit_edge, !prof !706

if.end12.i620.while.cond_crit_edge:               ; preds = %if.end12.i620
  br label %while.cond

do.end26.i622:                                    ; preds = %if.end12.i620
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i621 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 0, i32 noundef 1) #14
  br label %do.end206

do.end206:                                        ; preds = %do.end26.i622, %do.end9.i615.do.end206_crit_edge
  %retval.0.i623.ph = phi i32 [ %call15.i618, %do.end26.i622 ], [ -12, %do.end9.i615.do.end206_crit_edge ]
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.325) #14
  br label %cleanup

while.cond:                                       ; preds = %if.end219.while.cond_crit_edge, %if.end12.i620.while.cond_crit_edge
  %i.0 = phi i32 [ %inc, %if.end219.while.cond_crit_edge ], [ 0, %if.end12.i620.while.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 500
  br i1 %exitcond.not, label %do.end225, label %while.body

while.body:                                       ; preds = %while.cond
  %call211 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %do.end216, label %if.end219

do.end216:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328) #14
  br label %cleanup

if.end219:                                        ; preds = %while.body
  %145 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tmp, align 4
  %cmp220 = icmp ugt i32 %146, -1073741825
  br i1 %cmp220, label %if.end219.cleanup_crit_edge, label %if.end219.while.cond_crit_edge

if.end219.while.cond_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end219.cleanup_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end225:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tmp, align 4
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, i32 noundef %148) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end225, %if.end219.cleanup_crit_edge, %do.end216, %do.end206, %do.end197, %do.end188, %do.end179, %do.end170, %do.end161, %do.end152, %do.end143, %do.end134, %do.end125, %do.end116, %do.end107, %do.end98, %do.end89, %do.end80, %do.end71, %do.end62, %do.end53, %do.end44, %do.end35, %do.end26, %do.end17, %do.end8, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i315.ph, %do.end8 ], [ %retval.0.i329.ph, %do.end17 ], [ %retval.0.i343.ph, %do.end26 ], [ %retval.0.i357.ph, %do.end35 ], [ %retval.0.i371.ph, %do.end44 ], [ %retval.0.i385.ph, %do.end53 ], [ %retval.0.i399.ph, %do.end62 ], [ %retval.0.i413.ph, %do.end71 ], [ %retval.0.i427.ph, %do.end80 ], [ %retval.0.i441.ph, %do.end89 ], [ %retval.0.i455.ph, %do.end98 ], [ %retval.0.i469.ph, %do.end107 ], [ %retval.0.i483.ph, %do.end116 ], [ %retval.0.i497.ph, %do.end125 ], [ %retval.0.i511.ph, %do.end134 ], [ %retval.0.i525.ph, %do.end143 ], [ %retval.0.i539.ph, %do.end152 ], [ %retval.0.i553.ph, %do.end161 ], [ %retval.0.i567.ph, %do.end170 ], [ %retval.0.i581.ph, %do.end179 ], [ %retval.0.i595.ph, %do.end188 ], [ %retval.0.i609.ph, %do.end197 ], [ %retval.0.i623.ph, %do.end206 ], [ %call211, %do.end216 ], [ -110, %do.end225 ], [ 0, %if.end219.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_i2c_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !705
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %entry
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.cleanup.sink.split_crit_edge, label %if.end12.i

do.end9.i.cleanup.sink.split_crit_edge:           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i:                                       ; preds = %do.end9.i
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call7.i.i, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4204, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %do.end9.i83, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4204, i32 noundef 0) #14
  br label %cleanup.sink.split

do.end9.i83:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i82 = icmp eq ptr %call7.i.i79, null
  br i1 %tobool10.not.i82, label %do.end9.i83.cleanup.sink.split_crit_edge, label %if.end12.i88

do.end9.i83.cleanup.sink.split_crit_edge:         ; preds = %do.end9.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i88:                                     ; preds = %do.end9.i83
  %8 = ptrtoint ptr %call7.i.i79 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 201326592, ptr %call7.i.i79, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i84 = shl i32 %12, 8
  %or.i85 = or i32 %shl.i.i84, -2147483648
  %call15.i86 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i85, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4120, ptr noundef nonnull %call7.i.i79, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i86)
  %cmp.i87 = icmp slt i32 %call15.i86, 0
  br i1 %cmp.i87, label %do.end26.i90, label %do.end9.i97, !prof !706

do.end26.i90:                                     ; preds = %if.end12.i88
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4120, i32 noundef 12) #14
  br label %cleanup.sink.split

do.end9.i97:                                      ; preds = %if.end12.i88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i96 = icmp eq ptr %call7.i.i93, null
  br i1 %tobool10.not.i96, label %do.end9.i97.cleanup.sink.split_crit_edge, label %if.end12.i102

do.end9.i97.cleanup.sink.split_crit_edge:         ; preds = %do.end9.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i102:                                    ; preds = %do.end9.i97
  %14 = ptrtoint ptr %call7.i.i93 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100663296, ptr %call7.i.i93, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i98 = shl i32 %18, 8
  %or.i99 = or i32 %shl.i.i98, -2147483648
  %call15.i100 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i99, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4116, ptr noundef nonnull %call7.i.i93, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i100)
  %cmp.i101 = icmp slt i32 %call15.i100, 0
  br i1 %cmp.i101, label %do.end26.i104, label %if.end20, !prof !706

do.end26.i104:                                    ; preds = %if.end12.i102
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4116, i32 noundef 6) #14
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end12.i102
  %call21 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4096, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup.sink.split_crit_edge, label %if.end29

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end29:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp, align 4
  %and = and i32 %20, -56
  %or31 = or i32 %and, 35
  %call32 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 4096, i32 noundef %or31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.cleanup.sink.split_crit_edge, label %if.end40

if.end29.cleanup.sink.split_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end40:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %data.i, align 4, !annotation !705
  %call.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4100, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i107 = icmp slt i32 %call.i, 0
  br i1 %cmp.i107, label %if.end40.do.end46_crit_edge, label %if.end.i

if.end40.do.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.end.i:                                         ; preds = %if.end40
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i, align 4
  %and.i = and i32 %23, -3073
  %call2.i = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 4100, i32 noundef %and.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end46_crit_edge, label %do.end9.i113

if.end.i.do.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end46:                                         ; preds = %if.end.i.do.end46_crit_edge, %if.end40.do.end46_crit_edge
  %.str.204.sink.i = phi ptr [ @.str.201, %if.end40.do.end46_crit_edge ], [ @.str.204, %if.end.i.do.end46_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end40.do.end46_crit_edge ], [ %call2.i, %if.end.i.do.end46_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i, i32 noundef 4100) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  br label %cleanup.sink.split

do.end9.i113:                                     ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i112 = icmp eq ptr %call7.i.i109, null
  br i1 %tobool10.not.i112, label %do.end9.i113.cleanup.sink.split_crit_edge, label %if.end12.i118

do.end9.i113.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i118:                                    ; preds = %do.end9.i113
  %25 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %call7.i.i109, align 8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i114 = shl i32 %29, 8
  %or.i115 = or i32 %shl.i.i114, -2147483648
  %call15.i116 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i115, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4204, ptr noundef nonnull %call7.i.i109, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i116)
  %cmp.i117 = icmp slt i32 %call15.i116, 0
  br i1 %cmp.i117, label %do.end26.i120, label %if.end12.i118.cleanup_crit_edge, !prof !706

if.end12.i118.cleanup_crit_edge:                  ; preds = %if.end12.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26.i120:                                    ; preds = %if.end12.i118
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4204, i32 noundef 1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end26.i120, %do.end9.i113.cleanup.sink.split_crit_edge, %do.end46, %if.end29.cleanup.sink.split_crit_edge, %if.end20.cleanup.sink.split_crit_edge, %do.end26.i104, %do.end9.i97.cleanup.sink.split_crit_edge, %do.end26.i90, %do.end9.i83.cleanup.sink.split_crit_edge, %do.end26.i, %do.end9.i.cleanup.sink.split_crit_edge
  %.str.351.sink = phi ptr [ @.str.348, %do.end46 ], [ @.str.333, %do.end9.i.cleanup.sink.split_crit_edge ], [ @.str.333, %do.end26.i ], [ @.str.336, %do.end9.i83.cleanup.sink.split_crit_edge ], [ @.str.336, %do.end26.i90 ], [ @.str.339, %do.end9.i97.cleanup.sink.split_crit_edge ], [ @.str.339, %do.end26.i104 ], [ @.str.342, %if.end20.cleanup.sink.split_crit_edge ], [ @.str.345, %if.end29.cleanup.sink.split_crit_edge ], [ @.str.351, %do.end9.i113.cleanup.sink.split_crit_edge ], [ @.str.351, %do.end26.i120 ]
  %retval.0.ph = phi i32 [ %retval.0.ph.i, %do.end46 ], [ -12, %do.end9.i.cleanup.sink.split_crit_edge ], [ %call15.i, %do.end26.i ], [ -12, %do.end9.i83.cleanup.sink.split_crit_edge ], [ %call15.i86, %do.end26.i90 ], [ -12, %do.end9.i97.cleanup.sink.split_crit_edge ], [ %call15.i100, %do.end26.i104 ], [ %call21, %if.end20.cleanup.sink.split_crit_edge ], [ %call32, %if.end29.cleanup.sink.split_crit_edge ], [ -12, %do.end9.i113.cleanup.sink.split_crit_edge ], [ %call15.i116, %do.end26.i120 ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.351.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.i118.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.i118.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_setup_modes(ptr noundef %dev, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %fb_vmode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.if.end121_crit_edge, label %if.end4

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.end4:                                          ; preds = %if.end
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist) #10
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8
  %3 = call ptr @memset(ptr %monspecs, i32 0, i32 140)
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %call6 = tail call fastcc i32 @ufx_read_edid(ptr noundef %dev, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call6)
  %cmp = icmp sgt i32 %call6, 127
  br i1 %cmp, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call7.i, ptr noundef %monspecs) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %4 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %while.cond.1, label %if.end9.while.end_crit_edge

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.1:                                     ; preds = %if.end9
  %call6.1 = tail call fastcc i32 @ufx_read_edid(ptr noundef %dev, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call6.1)
  %cmp.1 = icmp sgt i32 %call6.1, 127
  br i1 %cmp.1, label %if.then7.1, label %while.cond.1.if.end9.1_crit_edge

while.cond.1.if.end9.1_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.1

if.then7.1:                                       ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call7.i, ptr noundef %monspecs) #10
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.then7.1, %while.cond.1.if.end9.1_crit_edge
  %6 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.not.1 = icmp eq i32 %7, 0
  br i1 %cmp11.not.1, label %while.cond.2, label %if.end9.1.while.end_crit_edge

if.end9.1.while.end_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.2:                                     ; preds = %if.end9.1
  %call6.2 = tail call fastcc i32 @ufx_read_edid(ptr noundef %dev, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call6.2)
  %cmp.2 = icmp sgt i32 %call6.2, 127
  br i1 %cmp.2, label %if.then7.2, label %while.cond.2.if.end9.2_crit_edge

while.cond.2.if.end9.2_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.2

if.then7.2:                                       ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call7.i, ptr noundef %monspecs) #10
  br label %if.end9.2

if.end9.2:                                        ; preds = %if.then7.2, %while.cond.2.if.end9.2_crit_edge
  %8 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.not.2 = icmp eq i32 %9, 0
  br i1 %cmp11.not.2, label %if.end9.2.do.end_crit_edge, label %if.end9.2.while.end_crit_edge

if.end9.2.while.end_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9.2.do.end_crit_edge:                       ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

while.end:                                        ; preds = %if.end9.2.while.end_crit_edge, %if.end9.1.while.end_crit_edge, %if.end9.while.end_crit_edge
  %call6.lcssa = phi i32 [ %call6, %if.end9.while.end_crit_edge ], [ %call6.1, %if.end9.1.while.end_crit_edge ], [ %call6.2, %if.end9.2.while.end_crit_edge ]
  %edid13 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %edid13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %edid13, align 4
  %edid_size = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 11
  %11 = ptrtoint ptr %edid_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6.lcssa, ptr %edid_size, align 4
  %12 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr14 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr14)
  %cmp17 = icmp eq i32 %.pr14, 0
  br i1 %cmp17, label %while.end.do.end_crit_edge, label %while.end.for.body.lr.ph_crit_edge

while.end.for.body.lr.ph_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %if.end9.2.do.end_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.353) #14
  %edid20 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %edid20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edid20, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %do.end.if.end36_crit_edge, label %if.then22

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then22:                                        ; preds = %do.end
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %14, ptr noundef %monspecs) #10
  %15 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.not = icmp eq i32 %16, 0
  br i1 %cmp27.not, label %if.then22.if.then83_crit_edge, label %do.end31

if.then22.if.then83_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

do.end31:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.356) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %do.end.if.end36_crit_edge
  %17 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp60.not = icmp eq i32 %.pr, 0
  br i1 %cmp60.not, label %if.end36.if.then83_crit_edge, label %if.end36.for.body.lr.ph_crit_edge

if.end36.for.body.lr.ph_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

if.end36.if.then83_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

for.body.lr.ph:                                   ; preds = %if.end36.for.body.lr.ph_crit_edge, %while.end.for.body.lr.ph_crit_edge
  %modedb = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 1
  %misc = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modedb, align 4
  %arrayidx = getelementptr %struct.fb_videomode, ptr %19, i32 %i.011
  %call66 = tail call fastcc i32 @ufx_is_valid_mode(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %modedb, align 4
  %arrayidx71 = getelementptr %struct.fb_videomode, ptr %21, i32 %i.011
  %call73 = tail call i32 @fb_add_videomode(ptr noundef %arrayidx71, ptr noundef %modelist) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %misc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %misc, align 2
  %24 = and i16 %23, -3
  store i16 %24, ptr %misc, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then68
  %inc = add nuw i32 %i.011, 1
  %25 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %modedb_len, align 4
  %cmp64 = icmp ult i32 %inc, %26
  br i1 %cmp64, label %for.inc.for.body_crit_edge, label %if.end80

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end80:                                         ; preds = %for.inc
  %call79 = tail call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #10
  %cmp81 = icmp eq ptr %call79, null
  br i1 %cmp81, label %if.end80.if.then83_crit_edge, label %if.end80.land.lhs.true_crit_edge

if.end80.land.lhs.true_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end80.if.then83_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then83

if.then83:                                        ; preds = %if.end80.if.then83_crit_edge, %if.end36.if.then83_crit_edge, %if.then22.if.then83_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fb_vmode) #10
  %27 = call ptr @memset(ptr %fb_vmode, i32 0, i32 56)
  br label %for.body87

for.body87:                                       ; preds = %for.inc96.for.body87_crit_edge, %if.then83
  %i.113 = phi i32 [ 0, %if.then83 ], [ %inc97, %for.inc96.for.body87_crit_edge ]
  %arrayidx88 = getelementptr [0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 %i.113
  %call89 = tail call fastcc i32 @ufx_is_valid_mode(ptr noundef %arrayidx88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %for.body87.for.inc96_crit_edge, label %if.then91

for.body87.for.inc96_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc96

if.then91:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #12
  %call94 = tail call i32 @fb_add_videomode(ptr noundef %arrayidx88, ptr noundef %modelist) #10
  br label %for.inc96

for.inc96:                                        ; preds = %if.then91, %for.body87.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.113, 1
  %exitcond.not = icmp eq i32 %inc97, 43
  br i1 %exitcond.not, label %if.end101, label %for.inc96.for.body87_crit_edge

for.inc96.for.body87_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body87

if.end101:                                        ; preds = %for.inc96
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 2
  %28 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 800, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 3
  %29 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 600, ptr %yres, align 4
  %refresh = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 1
  %30 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 60, ptr %refresh, align 4
  %call100 = call ptr @fb_find_nearest_mode(ptr noundef nonnull %fb_vmode, ptr noundef %modelist) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fb_vmode) #10
  %cmp102.not = icmp eq ptr %call100, null
  br i1 %cmp102.not, label %if.end101.land.lhs.true116_crit_edge, label %if.end101.land.lhs.true_crit_edge

if.end101.land.lhs.true_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end101.land.lhs.true116_crit_edge:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true116

land.lhs.true:                                    ; preds = %if.end101.land.lhs.true_crit_edge, %if.end80.land.lhs.true_crit_edge
  %default_vmode.17 = phi ptr [ %call100, %if.end101.land.lhs.true_crit_edge ], [ %call79, %if.end80.land.lhs.true_crit_edge ]
  %fb_count = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 5
  %31 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp104 = icmp eq i32 %32, 0
  br i1 %cmp104, label %if.then106, label %land.lhs.true.land.lhs.true116_crit_edge

land.lhs.true.land.lhs.true116_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true116

if.then106:                                       ; preds = %land.lhs.true
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %default_vmode.17) #10
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %33 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %red1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %34 = call ptr @memcpy(ptr %red1.i, ptr @__const.ufx_var_color_format.red, i32 12)
  %green2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %35 = call ptr @memcpy(ptr %green2.i, ptr @__const.ufx_var_color_format.green, i32 12)
  %blue3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %36 = call ptr @memcpy(ptr %blue3.i, ptr @__const.ufx_var_color_format.blue, i32 12)
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %37 = call ptr @memcpy(ptr %fix, ptr @ufx_fix, i32 68)
  %38 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %var, align 4
  %mul = shl i32 %39, 1
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %40 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %line_length, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %41 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_realloc_framebuffer.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_setup_modes, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_realloc_framebuffer.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.408) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then106
  %42 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line_length, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres.i, align 4
  %mul.i = mul i32 %45, %43
  %add.i = add i32 %mul.i, 4095
  %and.i = and i32 %add.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 0
  br i1 %cmp.i, label %if.then4.i, label %do.end.i.land.lhs.true116_crit_edge

do.end.i.land.lhs.true116_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true116

if.then4.i:                                       ; preds = %do.end.i
  %call5.i = call noalias ptr @vmalloc(i32 noundef %mul.i) #15
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then4.i.land.lhs.true116_crit_edge, label %if.end8.i

if.then4.i.land.lhs.true116_crit_edge:            ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true116

if.end8.i:                                        ; preds = %if.then4.i
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %41, align 4
  %tobool9.not.i = icmp eq ptr %47, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @vfree(ptr noundef nonnull %47) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i, ptr %41, align 4
  %49 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i, ptr %smem_len.i, align 4
  %50 = ptrtoint ptr %call5.i to i32
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %smem_start.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 264068, ptr %flags.i, align 4
  br label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end11.i, %if.then4.i.land.lhs.true116_crit_edge, %do.end.i.land.lhs.true116_crit_edge, %land.lhs.true.land.lhs.true116_crit_edge, %if.end101.land.lhs.true116_crit_edge
  %result.0 = phi i32 [ -22, %land.lhs.true.land.lhs.true116_crit_edge ], [ -22, %if.end101.land.lhs.true116_crit_edge ], [ -12, %if.then4.i.land.lhs.true116_crit_edge ], [ 0, %if.end11.i ], [ 0, %do.end.i.land.lhs.true116_crit_edge ]
  %edid117 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 10
  %53 = ptrtoint ptr %edid117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %edid117, align 4
  %cmp118.not = icmp eq ptr %54, %call7.i
  br i1 %cmp118.not, label %land.lhs.true116.if.end121_crit_edge, label %if.then120

land.lhs.true116.if.end121_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then120:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %land.lhs.true116.if.end121_crit_edge, %if.end.if.end121_crit_edge
  %result.09 = phi i32 [ %result.0, %if.then120 ], [ %result.0, %land.lhs.true116.if.end121_crit_edge ], [ -12, %if.end.if.end121_crit_edge ]
  %55 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev1, align 4
  %tobool123.not = icmp eq ptr %56, null
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %if.then124

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %lock125 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock125) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end121.if.end126_crit_edge
  ret i32 %result.09
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_reg_set_bits(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.i, align 4, !annotation !705
  %call.i = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 16384, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split.i_crit_edge, label %if.end.i

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.i, align 4
  %or.i = or i32 %2, 1
  %call2.i = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 16384, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.ufx_reg_clear_and_set_bits.exit_crit_edge

if.end.i.ufx_reg_clear_and_set_bits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_reg_clear_and_set_bits.exit

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.204.sink.i = phi ptr [ @.str.201, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.204, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i, i32 noundef 16384) #14
  br label %ufx_reg_clear_and_set_bits.exit

ufx_reg_clear_and_set_bits.exit:                  ; preds = %cleanup.sink.split.i, %if.end.i.ufx_reg_clear_and_set_bits.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.ufx_reg_clear_and_set_bits.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #10
  %0 = call ptr @memset(ptr %mode, i32 255, i32 56)
  %1 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %3 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %yres, align 4
  %mul = shl i32 %2, 1
  %mul1 = mul i32 %mul, %4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %6)
  %cmp = icmp ugt i32 %mul1, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %7 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %red1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %red1.i, ptr @__const.ufx_var_color_format.red, i32 12)
  %green2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %9 = call ptr @memcpy(ptr %green2.i, ptr @__const.ufx_var_color_format.green, i32 12)
  %blue3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %10 = call ptr @memcpy(ptr %blue3.i, ptr @__const.ufx_var_color_format.blue, i32 12)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef %var) #10
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %11 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %13 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres.i, align 4
  %mul.i = mul i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2359296, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 2359296
  br i1 %cmp.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_check_var, %if.then3.i)) #10
          to label %cleanup [label %if.then3.i], !srcloc !710

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xres.i, align 4
  %17 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.401, i32 noundef %16, i32 noundef %18) #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %19 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixclock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %20)
  %cmp7.i = icmp ult i32 %20, 5000
  br i1 %cmp7.i, label %do.body9.i, label %do.body28.i

do.body9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_check_var, %if.then21.i)) #10
          to label %cleanup [label %if.then21.i], !srcloc !710

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xres.i, align 4
  %23 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %yres.i, align 4
  %25 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixclock.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.403, i32 noundef %22, i32 noundef %24, i32 noundef %26) #10
  br label %cleanup

do.body28.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_check_var, %ufx_is_valid_mode.exit.thread10)) #10
          to label %cleanup [label %ufx_is_valid_mode.exit.thread10], !srcloc !710

ufx_is_valid_mode.exit.thread10:                  ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xres.i, align 4
  %29 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yres.i, align 4
  %31 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pixclock.i, align 4
  %div.i = udiv i32 1000000, %32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.405, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %div.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ufx_is_valid_mode.exit.thread10, %do.body28.i, %if.then21.i, %do.body9.i, %if.then3.i, %do.body.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %ufx_is_valid_mode.exit.thread10 ], [ 0, %do.body28.i ], [ -22, %if.then21.i ], [ -22, %if.then3.i ], [ -22, %do.body.i ], [ -22, %do.body9.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_set_par(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_ops_set_par.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_set_par, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_ops_set_par.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.411, i32 noundef %3, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %var4 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call5 = tail call fastcc i32 @ufx_set_vid_mode(ptr noundef %1, ptr noundef %var4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %fb_count = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %land.lhs.true
  %8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp836.not = icmp ult i32 %12, 2
  br i1 %cmp836.not, label %if.then7.for.end_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then7.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %10, i32 %i.037
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 14310, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.037, 1
  %14 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smem_len, align 4
  %div33 = lshr i32 %15, 1
  %cmp8 = icmp ult i32 %inc, %div33
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then7.for.end_crit_edge
  %16 = ptrtoint ptr %var4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var4, align 4
  %yres12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %yres12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres12, align 4
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %17, i32 noundef %19)
  br label %if.end14

if.end14:                                         ; preds = %for.end, %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %20 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fbdefio, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %21, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_release_urb_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %limit_sem = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 3, i32 2
  tail call void @up(ptr noundef %limit_sem) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_urb_completion(ptr nocapture noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.urb_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %entry.if.end10_crit_edge
    i32 -2, label %entry.if.end10_crit_edge48
    i32 -104, label %entry.if.end10_crit_edge49
    i32 -108, label %entry.if.end10_crit_edge50
  ]

entry.if.end10_crit_edge50:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

entry.if.end10_crit_edge49:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

entry.if.end10_crit_edge48:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef %5) #14
  %lost_pixels = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels, i32 noundef 4) #10
  %7 = ptrtoint ptr %lost_pixels to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %lost_pixels, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge48, %entry.if.end10_crit_edge49, %entry.if.end10_crit_edge50
  %urbs = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3
  %size = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %transfer_buffer_length, align 4
  %lock = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3, i32 1
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prev.i = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %12, ptr noundef %urbs) #10
  br i1 %call.i.i46, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %prev.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %urbs, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %1, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  %available = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %available, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %available, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #10
  %19 = load i8, ptr @fb_defio, align 1, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %release_urb_work = getelementptr inbounds %struct.urb_node, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i47 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %release_urb_work, i32 noundef 0) #10
  br label %if.end31

if.else:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %limit_sem = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 3, i32 2
  tail call void @up(ptr noundef %limit_sem) #10
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_open(ptr noundef %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %cmp = icmp eq i32 %user, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @console, align 1, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %virtualized = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %virtualized to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %virtualized, align 4, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fb_count = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fb_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %fb_count, align 4
  %kref = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !708
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !706

if.end3.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !709

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %9 = load i8, ptr @fb_defio, align 1, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %kref_get.exit.do.body_crit_edge, label %land.lhs.true5

kref_get.exit.do.body_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true5:                                   ; preds = %kref_get.exit
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %10 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbdefio, align 4
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %if.then7, label %land.lhs.true5.do.body_crit_edge

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then7:                                         ; preds = %land.lhs.true5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 112) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then7.if.end11_crit_edge, label %if.then10

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %call7.i.i, align 8
  %deferred_io = getelementptr inbounds %struct.fb_deferred_io, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %deferred_io to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ufx_dpy_deferred_io, ptr %deferred_io, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7.if.end11_crit_edge
  %15 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %fbdefio, align 4
  tail call void @fb_deferred_io_init(ptr noundef %info) #10
  br label %do.body

do.body:                                          ; preds = %if.end11, %land.lhs.true5.do.body_crit_edge, %kref_get.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_ops_open.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_open, %if.then18)) #10
          to label %cleanup [label %if.then18], !srcloc !710

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node, align 4
  %18 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fb_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_ops_open.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.80, i32 noundef %17, i32 noundef %user, ptr noundef %info, i32 noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_release(ptr noundef %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %fb_count = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %fb_count, align 4
  %virtualized = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %virtualized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %virtualized, align 4, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %free_framebuffer_work = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %free_framebuffer_work, i32 noundef 100) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true4:                                   ; preds = %if.end
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %9 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fbdefio, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.lhs.true4.do.body_crit_edge, label %if.then6

land.lhs.true4.do.body_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fb_deferred_io_cleanup(ptr noundef %info) #10
  %11 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbdefio, align 4
  tail call void @kfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fbdefio, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %land.lhs.true4.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_ops_release.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_release, %if.then14)) #10
          to label %do.end [label %if.then14], !srcloc !710

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %node = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node, align 4
  %16 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fb_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_ops_release.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.92, i32 noundef %15, i32 noundef %user, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %kref = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !712
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !713
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !709

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !714
  %count.i.i = getelementptr %struct.ufx_data, ptr %1, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp sgt i32 %20, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.do.body.i.i_crit_edge

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ufx_free_urb_list(ptr noundef %1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i.i, %if.then.i.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_release, %if.then4.i.i)) #10
          to label %ufx_free.exit.i [label %if.then4.i.i], !srcloc !710

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.414, ptr noundef %1) #10
  br label %ufx_free.exit.i

ufx_free.exit.i:                                  ; preds = %if.then4.i.i, %do.body.i.i
  tail call void @kfree(ptr noundef %1) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %ufx_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %call = tail call i32 @fb_sys_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i64 %3 to i32
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  %div = udiv i32 %conv, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %div, i32 0)
  %div6 = udiv i32 %call, %5
  %add = add nuw i32 %div6, 1
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 %8)
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef 0, i32 noundef %6, i32 noundef %11, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ufx_ops_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %regno)
  %cmp.not = icmp ugt i32 %1, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp1 = icmp ult i32 %regno, 16
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %red3 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %red3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %red3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp4 = icmp eq i32 %3, 10
  %and11 = and i32 %red, 63488
  %and = lshr i32 %red, 1
  %shr = and i32 %and, 31744
  %.sink31 = select i1 %cmp4, i32 6, i32 5
  %.sink = select i1 %cmp4, i32 992, i32 2016
  %and11.sink = select i1 %cmp4, i32 %shr, i32 %and11
  %and12 = lshr i32 %green, %.sink31
  %shr13 = and i32 %and12, %.sink
  %or14 = or i32 %shr13, %and11.sink
  %and15 = lshr i32 %blue, 11
  %shr16 = and i32 %and15, 31
  %or17 = or i32 %or14, %shr16
  %pseudo_palette18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %4 = ptrtoint ptr %pseudo_palette18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pseudo_palette18, align 4
  %arrayidx19 = getelementptr i32, ptr %5, i32 %regno
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or17, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call = tail call fastcc i32 @ufx_set_vid_mode(ptr noundef %1, ptr noundef %var)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_ops_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #10
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
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_ops_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #10
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
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_ops_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #10
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
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %usb_active = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #10
  %2 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.421)
  switch i32 %cmd, label %if.end.cleanup41_crit_edge [
    i32 173, label %if.then1
    i32 170, label %if.then9
  ]

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.then1:                                         ; preds = %if.end
  %5 = inttoptr i32 %arg to ptr
  %edid2 = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %edid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edid2, align 4
  %edid_size = getelementptr inbounds %struct.ufx_data, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %edid_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edid_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.i.i = icmp slt i32 %9, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then1
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup41_crit_edge, label %if.then27.i.i, !prof !709

land.rhs16.i.i.cleanup41_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.226, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup41

if.then.i.i.i:                                    ; preds = %if.then1
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %9, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.228, i32 noundef 174) #10
  %call.i.i67 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i67, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %9, i32 -1226833920) #16, !srcloc !717
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef %9) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %7, i32 noundef %9) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %9, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %9, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool4.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup41

if.then9:                                         ; preds = %if.end
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %11 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fbdefio, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then11

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6000, ptr %12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9.if.end13_crit_edge
  %14 = inttoptr i32 %arg to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %14, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %20 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp19 = icmp ugt i32 %19, %21
  br i1 %cmp19, label %if.then20, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %14, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17.if.end24_crit_edge
  %y = getelementptr inbounds %struct.dloarea, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25 = icmp slt i32 %24, 0
  br i1 %cmp25, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %y, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %26 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp31 = icmp ugt i32 %27, %29
  br i1 %cmp31, label %if.then32, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %y, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %14, align 4
  %33 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y, align 4
  %w = getelementptr inbounds %struct.dloarea, ptr %14, i32 0, i32 2
  %35 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.dloarea, ptr %14, i32 0, i32 3
  %37 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %h, align 4
  tail call fastcc void @ufx_handle_damage(ptr noundef %1, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  br label %cleanup41

cleanup41:                                        ; preds = %if.end36, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup41_crit_edge ], [ 0, %if.end.cleanup41_crit_edge ], [ 0, %if.end36 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup41_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufx_ops_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %sub = sub i32 %3, %1
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %5)
  %cmp = icmp ugt i32 %5, 1048575
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp3 = icmp ult i32 %7, %sub
  %sub8 = sub i32 %7, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub8)
  %cmp9 = icmp ugt i32 %shl, %sub8
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_start, align 4
  %add = add i32 %9, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_ops_mmap.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_ops_mmap, %if.then15)) #10
          to label %do.end [label %if.then15], !srcloc !710

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_ops_mmap.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.231, i32 noundef %add, i32 noundef %sub) #10
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17.not50 = icmp eq i32 %sub, 0
  br i1 %cmp17.not50, label %do.end.cleanup_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %do.end.while.body_crit_edge
  %start.053 = phi i32 [ %add23, %if.end22.while.body_crit_edge ], [ %1, %do.end.while.body_crit_edge ]
  %pos.052 = phi i32 [ %add24, %if.end22.while.body_crit_edge ], [ %add, %do.end.while.body_crit_edge ]
  %size.051 = phi i32 [ %12, %if.end22.while.body_crit_edge ], [ %sub, %do.end.while.body_crit_edge ]
  %10 = inttoptr i32 %pos.052 to ptr
  %call18 = tail call i32 @vmalloc_to_pfn(ptr noundef %10) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_user to i32))
  %11 = load i32, ptr @pgprot_user, align 4
  %or = or i32 %11, 768
  %call19 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %start.053, i32 noundef %call18, i32 noundef 4096, i32 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %while.body
  %add23 = add i32 %start.053, 4096
  %add24 = add i32 %pos.052, 4096
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %size.051, i32 4096)
  %cmp17.not = icmp ult i32 %size.051, 4097
  br i1 %cmp17.not, label %if.end22.cleanup_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -11, %while.body.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufx_dpy_deferred_io(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pagelist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %4 = load i8, ptr @fb_defio, align 1, !range !711
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_active = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #10
  %5 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pagelist5 = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %pagelist5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn77 = load ptr, ptr %pagelist5, align 4
  %cmp.not78 = icmp eq ptr %.pn77, %pagelist5
  br i1 %cmp.not78, label %if.end4.cleanup_crit_edge, label %for.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %info7 = getelementptr inbounds %struct.ufx_data, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end50.for.body_crit_edge, %for.body.lr.ph
  %.pn79 = phi ptr [ %.pn77, %for.body.lr.ph ], [ %.pn, %do.end50.for.body_crit_edge ]
  %8 = ptrtoint ptr %info7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info7, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var, align 4
  %index = getelementptr inbounds %struct.anon.3, ptr %.pn79, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %shl = shl i32 %13, 12
  %mul = shl i32 %11, 1
  %div = udiv i32 %shl, %mul
  %div9 = udiv i32 4096, %mul
  %add = add nuw nsw i32 %div9, 1
  %yres = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres, align 4
  %sub = sub i32 %15, %div
  %16 = tail call i32 @llvm.smin.i32(i32 %add, i32 %sub)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div)
  %cmp17.not = icmp ugt i32 %15, %div
  br i1 %cmp17.not, label %do.body29, label %do.body22, !prof !709

do.body22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #10, !srcloc !718
  unreachable

do.body29:                                        ; preds = %for.body
  %add30 = add i32 %16, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %15)
  %cmp34 = icmp ugt i32 %add30, %15
  br i1 %cmp34, label %do.body42, label %do.end50, !prof !706

do.body42:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 979, 0\0A.popsection", ""() #10, !srcloc !719
  unreachable

do.end50:                                         ; preds = %do.body29
  tail call fastcc void @ufx_handle_damage(ptr noundef %3, i32 noundef 0, i32 noundef %div, i32 noundef %11, i32 noundef %16)
  %17 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist5
  br i1 %cmp.not, label %do.end50.cleanup_crit_edge, label %do.end50.for.body_crit_edge

do.end50.for.body_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.end50.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufx_handle_damage(ptr noundef %dev, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %width, 1
  %add = add i32 %mul, 3
  %and = and i32 %add, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %width)
  %cmp = icmp slt i32 %width, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %height)
  %cmp1 = icmp slt i32 %height, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup53_crit_edge, label %lor.lhs.false2

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

lor.lhs.false2:                                   ; preds = %entry
  %add3 = add i32 %width, %x
  %info = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %3)
  %cmp4 = icmp ugt i32 %add3, %3
  br i1 %cmp4, label %lor.lhs.false2.cleanup53_crit_edge, label %lor.lhs.false5

lor.lhs.false2.cleanup53_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %add6 = add i32 %height, %y
  %yres = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %5)
  %cmp9 = icmp ugt i32 %add6, %5
  br i1 %cmp9, label %lor.lhs.false5.cleanup53_crit_edge, label %if.end

lor.lhs.false5.cleanup53_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end:                                           ; preds = %lor.lhs.false5
  %usb_active = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #10
  %6 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  br i1 %tobool.not.not, label %if.end.cleanup53_crit_edge, label %while.body.lr.ph

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

while.body.lr.ph:                                 ; preds = %if.end
  %limit_sem.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2
  %urbs.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 1
  %available33.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 3
  %add20 = add i32 %mul, 24
  %tobool.not.i1 = icmp eq ptr %dev, null
  %conv.i = trunc i32 %x to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %conv36.i = trunc i32 %width to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv36.i) #10
  %mul52.i = shl i32 %x, 1
  %size.i = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 5
  %lost_pixels.i4 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %start_line.019 = phi i32 [ 0, %while.body.lr.ph ], [ %add52, %cleanup.while.body_crit_edge ]
  %call.i = tail call i32 @down_timeout(ptr noundef %limit_sem.i, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body5.i, label %ufx_get_urb.exit.thread

ufx_get_urb.exit.thread:                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i4, i32 noundef 4) #10
  %10 = ptrtoint ptr %lost_pixels.i4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %lost_pixels.i4, align 4
  %11 = ptrtoint ptr %available33.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %available33.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %call.i, i32 noundef %12) #14
  br label %cleanup53.sink.split

do.body5.i:                                       ; preds = %while.body
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %13 = ptrtoint ptr %urbs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %urbs.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %urbs.i
  br i1 %cmp.i.not.i, label %do.body21.i, label %do.end29.i, !prof !706

do.body21.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1917, 0\0A.popsection", ""() #10, !srcloc !720
  unreachable

do.end29.i:                                       ; preds = %do.body5.i
  %call.i.i47.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #10
  br i1 %call.i.i47.i, label %if.end.i.i.i, label %do.end29.i.ufx_get_urb.exit_crit_edge

do.end29.i.ufx_get_urb.exit_crit_edge:            ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_get_urb.exit

if.end.i.i.i:                                     ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %ufx_get_urb.exit

ufx_get_urb.exit:                                 ; preds = %if.end.i.i.i, %do.end29.i.ufx_get_urb.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %14, ptr %14, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %14, ptr %prev.i3.i.i, align 4
  %23 = ptrtoint ptr %available33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %available33.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %available33.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #10
  %urb37.i = getelementptr inbounds %struct.urb_node, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %urb37.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb37.i, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %ufx_get_urb.exit.cleanup53.sink.split_crit_edge, label %do.body18

ufx_get_urb.exit.cleanup53.sink.split_crit_edge:  ; preds = %ufx_get_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53.sink.split

do.body18:                                        ; preds = %ufx_get_urb.exit
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add20)
  %cmp21 = icmp ult i32 %28, %add20
  br i1 %cmp21, label %do.body25, label %do.end33, !prof !706

do.body25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 871, 0\0A.popsection", ""() #10, !srcloc !721
  unreachable

do.end33:                                         ; preds = %do.body18
  %sub = add i32 %28, -24
  %div = udiv i32 %sub, %and
  %sub35 = sub i32 %height, %start_line.019
  %29 = tail call i32 @llvm.smin.i32(i32 %div, i32 %sub35)
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 %28)
  %33 = load ptr, ptr %transfer_buffer, align 4
  %add40 = add i32 %start_line.019, %y
  %mul1.i = mul i32 %29, %and
  br i1 %tobool.not.i1, label %do.body5.i2, label %do.body11.i, !prof !706

do.body5.i2:                                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 817, 0\0A.popsection", ""() #10, !srcloc !722
  unreachable

do.body11.i:                                      ; preds = %do.end33
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %tobool12.not.i = icmp eq ptr %35, null
  br i1 %tobool12.not.i, label %do.body22.i, label %do.end30.i, !prof !706

do.body22.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !723
  unreachable

do.end30.i:                                       ; preds = %do.body11.i
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %33, align 4
  %add31.i = add i32 %mul1.i, 16
  %37 = tail call i32 @llvm.bswap.i32(i32 %add31.i) #10
  %arrayidx32.i = getelementptr i16, ptr %33, i32 2
  %38 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx32.i, align 4
  %arrayidx33.i = getelementptr i16, ptr %33, i32 4
  %39 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %8, ptr %arrayidx33.i, align 2
  %conv34.i = trunc i32 %add40 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv34.i) #10
  %arrayidx35.i = getelementptr i16, ptr %33, i32 5
  %41 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx35.i, align 2
  %arrayidx37.i = getelementptr i16, ptr %33, i32 6
  %42 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %9, ptr %arrayidx37.i, align 2
  %conv38.i = trunc i32 %29 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv38.i) #10
  %arrayidx39.i = getelementptr i16, ptr %33, i32 7
  %44 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx39.i, align 2
  %arrayidx40.i = getelementptr i16, ptr %33, i32 8
  %45 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx40.i, align 4
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  %var.i = getelementptr inbounds %struct.fb_info, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %var.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %var.i, align 4
  %50 = trunc i32 %49 to i16
  %conv42.i = or i16 %50, 16384
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv42.i) #10
  %arrayidx43.i = getelementptr i16, ptr %33, i32 10
  %52 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx43.i, align 2
  %53 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %info, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %54, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %yres.i, align 4
  %conv46.i = trunc i32 %56 to i16
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv46.i) #10
  %arrayidx47.i = getelementptr i16, ptr %33, i32 11
  %58 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %arrayidx47.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp85.i = icmp sgt i32 %29, 0
  br i1 %cmp85.i, label %do.end30.i.for.body.i_crit_edge, label %do.end30.i.ufx_raw_rect.exit_crit_edge

do.end30.i.ufx_raw_rect.exit_crit_edge:           ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_raw_rect.exit

do.end30.i.for.body.i_crit_edge:                  ; preds = %do.end30.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end30.i.for.body.i_crit_edge
  %line.086.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end30.i.for.body.i_crit_edge ]
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %60, i32 0, i32 7, i32 9
  %61 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %line_length.i, align 4
  %add50.i = add i32 %line.086.i, %add40
  %mul51.i = mul i32 %62, %add50.i
  %add53.i = add i32 %mul51.i, %mul52.i
  %mul54.i = mul i32 %line.086.i, %and
  %add55.i = add i32 %mul54.i, 24
  %div84.i = lshr exact i32 %add55.i, 1
  %arrayidx56.i = getelementptr i16, ptr %33, i32 %div84.i
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %60, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %smem_start.i, align 4
  %65 = inttoptr i32 %64 to ptr
  %add.ptr.i = getelementptr i8, ptr %65, i32 %add53.i
  %66 = call ptr @memcpy(ptr %arrayidx56.i, ptr %add.ptr.i, i32 %mul)
  %inc.i = add nuw nsw i32 %line.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.body.i.ufx_raw_rect.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.ufx_raw_rect.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_raw_rect.exit

ufx_raw_rect.exit:                                ; preds = %for.body.i.ufx_raw_rect.exit_crit_edge, %do.end30.i.ufx_raw_rect.exit_crit_edge
  %add42 = add i32 %mul1.i, 24
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add42)
  %cmp.i = icmp ult i32 %68, %add42
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !706

do.body2.i:                                       ; preds = %ufx_raw_rect.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1935, 0\0A.popsection", ""() #10, !srcloc !724
  unreachable

do.end7.i:                                        ; preds = %ufx_raw_rect.exit
  %69 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add42, ptr %transfer_buffer_length, align 4
  %call.i3 = tail call i32 @usb_submit_urb(ptr noundef nonnull %26, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool8.not.i = icmp eq i32 %call.i3, 0
  br i1 %tobool8.not.i, label %do.end7.i.cleanup_crit_edge, label %ufx_submit_urb.exit

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufx_submit_urb.exit:                              ; preds = %do.end7.i
  tail call void @ufx_urb_completion(ptr noundef nonnull %26) #10
  %call.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i4, i32 noundef 4) #10
  %70 = ptrtoint ptr %lost_pixels.i4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %lost_pixels.i4, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %call.i3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp44 = icmp slt i32 %call.i3, 0
  br i1 %cmp44, label %ufx_submit_urb.exit.cleanup53.sink.split_crit_edge, label %ufx_submit_urb.exit.cleanup_crit_edge

ufx_submit_urb.exit.cleanup_crit_edge:            ; preds = %ufx_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ufx_submit_urb.exit.cleanup53.sink.split_crit_edge: ; preds = %ufx_submit_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53.sink.split

cleanup:                                          ; preds = %ufx_submit_urb.exit.cleanup_crit_edge, %do.end7.i.cleanup_crit_edge
  %add52 = add i32 %29, %start_line.019
  %cmp12 = icmp slt i32 %add52, %height
  br i1 %cmp12, label %cleanup.while.body_crit_edge, label %cleanup.cleanup53_crit_edge

cleanup.cleanup53_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup53.sink.split:                             ; preds = %ufx_submit_urb.exit.cleanup53.sink.split_crit_edge, %ufx_get_urb.exit.cleanup53.sink.split_crit_edge, %ufx_get_urb.exit.thread
  %.str.81.sink = phi ptr [ @.str.81, %ufx_get_urb.exit.thread ], [ @.str.81, %ufx_get_urb.exit.cleanup53.sink.split_crit_edge ], [ @.str.84, %ufx_submit_urb.exit.cleanup53.sink.split_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.81.sink) #14
  br label %cleanup53

cleanup53:                                        ; preds = %cleanup53.sink.split, %cleanup.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %lor.lhs.false5.cleanup53_crit_edge, %lor.lhs.false2.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_set_vid_mode(ptr noundef %dev, ptr nocapture noundef readonly %var) unnamed_addr #2 align 64 {
entry:
  %dc_ctrl.i590 = alloca i32, align 4
  %dc_sts.i591 = alloca i32, align 4
  %dc_ctrl.i559 = alloca i32, align 4
  %dc_sts.i560 = alloca i32, align 4
  %dc_ctrl.i457 = alloca i32, align 4
  %dc_sts.i458 = alloca i32, align 4
  %dc_ctrl.i = alloca i32, align 4
  %dc_sts.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %entry
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.cleanup.sink.split_crit_edge, label %if.end12.i

do.end9.i.cleanup.sink.split_crit_edge:           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i:                                       ; preds = %do.end9.i
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32728, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %do.end9.i442, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 32808, i32 noundef 0) #14
  br label %cleanup.sink.split

do.end9.i442:                                     ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i438 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i441 = icmp eq ptr %call7.i.i438, null
  br i1 %tobool10.not.i441, label %do.end9.i442.cleanup.sink.split_crit_edge, label %if.end12.i447

do.end9.i442.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i442
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i447:                                    ; preds = %do.end9.i442
  %7 = ptrtoint ptr %call7.i.i438 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call7.i.i438, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i443 = shl i32 %11, 8
  %or.i444 = or i32 %shl.i.i443, -2147483648
  %call15.i445 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i444, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32732, ptr noundef nonnull %call7.i.i438, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i438) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i445)
  %cmp.i446 = icmp slt i32 %call15.i445, 0
  br i1 %cmp.i446, label %do.end26.i449, label %if.end10, !prof !706

do.end26.i449:                                    ; preds = %if.end12.i447
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 32804, i32 noundef 0) #14
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end12.i447
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_ctrl.i) #10
  %12 = ptrtoint ptr %dc_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %dc_ctrl.i, align 4, !annotation !705
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_sts.i) #10
  %13 = ptrtoint ptr %dc_sts.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %dc_sts.i, align 4, !annotation !705
  %call.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i452 = icmp slt i32 %call.i, 0
  br i1 %cmp.i452, label %if.end10.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end10.cleanup.sink.split.i_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end10
  %call2.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 8192, ptr noundef nonnull %dc_ctrl.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end10.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end10.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %dc_sts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dc_sts.i, align 4
  %and.i = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i453 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i453, label %lor.lhs.false.i, label %if.end10.i.if.end19_crit_edge

if.end10.i.if.end19_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %16 = ptrtoint ptr %dc_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dc_ctrl.i, align 4
  %and11.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %lor.lhs.false.i.if.end19_crit_edge

lor.lhs.false.i.if.end19_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %or.i454 = or i32 %17, 256
  %call15.i455 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 8192, i32 noundef %or.i454) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i455)
  %cmp16.i = icmp slt i32 %call15.i455, 0
  br i1 %cmp16.i, label %if.end14.i.cleanup.sink.split.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  br label %for.body.i

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

for.cond.i:                                       ; preds = %if.end36.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 250
  br i1 %exitcond.not.i, label %for.cond.i.do.end16_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end16_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end14.i.for.body.i_crit_edge
  %i.01.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end14.i.for.body.i_crit_edge ]
  %call28.i = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %for.body.i.cleanup.sink.split.i_crit_edge, label %if.end36.i

for.body.i.cleanup.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end36.i:                                       ; preds = %for.body.i
  %18 = ptrtoint ptr %dc_sts.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dc_sts.i, align 4
  %and37.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %for.cond.i, label %if.end36.i.if.end19_crit_edge

if.end36.i.if.end19_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

cleanup.sink.split.i:                             ; preds = %for.body.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end10.cleanup.sink.split.i_crit_edge
  %.str.162.sink.i = phi ptr [ @.str.162, %if.end10.cleanup.sink.split.i_crit_edge ], [ @.str.165, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.168, %if.end14.i.cleanup.sink.split.i_crit_edge ], [ @.str.162, %for.body.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end10.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call15.i455, %if.end14.i.cleanup.sink.split.i_crit_edge ], [ %call28.i, %for.body.i.cleanup.sink.split.i_crit_edge ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.162.sink.i) #14
  br label %do.end16

do.end16:                                         ; preds = %cleanup.sink.split.i, %for.cond.i.do.end16_crit_edge
  %retval.0.i456 = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -5, %for.cond.i.do.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i) #10
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end36.i.if.end19_crit_edge, %lor.lhs.false.i.if.end19_crit_edge, %if.end10.i.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_ctrl.i457) #10
  %20 = ptrtoint ptr %dc_ctrl.i457 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %dc_ctrl.i457, align 4, !annotation !705
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_sts.i458) #10
  %21 = ptrtoint ptr %dc_sts.i458 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %dc_sts.i458, align 4, !annotation !705
  %call.i459 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i458) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i459)
  %cmp.i460 = icmp slt i32 %call.i459, 0
  br i1 %cmp.i460, label %if.end19.cleanup.sink.split.i473_crit_edge, label %if.end.i463

if.end19.cleanup.sink.split.i473_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i473

if.end.i463:                                      ; preds = %if.end19
  %call2.i461 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8192, ptr noundef nonnull %dc_ctrl.i457) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i461)
  %cmp3.i462 = icmp slt i32 %call2.i461, 0
  br i1 %cmp3.i462, label %if.end.i463.cleanup.sink.split.i473_crit_edge, label %if.end10.i465

if.end.i463.cleanup.sink.split.i473_crit_edge:    ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i473

if.end10.i465:                                    ; preds = %if.end.i463
  %22 = ptrtoint ptr %dc_sts.i458 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dc_sts.i458, align 4
  %and.i464 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i464)
  %cmp11.i = icmp eq i32 %and.i464, 0
  br i1 %cmp11.i, label %if.end10.i465.if.end28_crit_edge, label %lor.lhs.false.i466

if.end10.i465.if.end28_crit_edge:                 ; preds = %if.end10.i465
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

lor.lhs.false.i466:                               ; preds = %if.end10.i465
  %24 = ptrtoint ptr %dc_ctrl.i457 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dc_ctrl.i457, align 4
  %and12.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  br i1 %cmp13.i, label %lor.lhs.false.i466.if.end28_crit_edge, label %if.end15.i

lor.lhs.false.i466.if.end28_crit_edge:            ; preds = %lor.lhs.false.i466
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end15.i:                                       ; preds = %lor.lhs.false.i466
  %and16.i = and i32 %25, -2
  %call17.i = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8192, i32 noundef %and16.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.cleanup.sink.split.i473_crit_edge, label %if.end15.i.for.body.i471_crit_edge

if.end15.i.for.body.i471_crit_edge:               ; preds = %if.end15.i
  br label %for.body.i471

if.end15.i.cleanup.sink.split.i473_crit_edge:     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i473

for.cond.i469:                                    ; preds = %if.end37.i
  %inc.i467 = add nuw nsw i32 %i.01.i470, 1
  %exitcond.not.i468 = icmp eq i32 %inc.i467, 250
  br i1 %exitcond.not.i468, label %for.cond.i469.do.end25_crit_edge, label %for.cond.i469.for.body.i471_crit_edge

for.cond.i469.for.body.i471_crit_edge:            ; preds = %for.cond.i469
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i471

for.cond.i469.do.end25_crit_edge:                 ; preds = %for.cond.i469
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

for.body.i471:                                    ; preds = %for.cond.i469.for.body.i471_crit_edge, %if.end15.i.for.body.i471_crit_edge
  %i.01.i470 = phi i32 [ %inc.i467, %for.cond.i469.for.body.i471_crit_edge ], [ 0, %if.end15.i.for.body.i471_crit_edge ]
  %call29.i = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i458) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %for.body.i471.cleanup.sink.split.i473_crit_edge, label %if.end37.i

for.body.i471.cleanup.sink.split.i473_crit_edge:  ; preds = %for.body.i471
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i473

if.end37.i:                                       ; preds = %for.body.i471
  %26 = ptrtoint ptr %dc_sts.i458 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dc_sts.i458, align 4
  %and38.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp39.i = icmp eq i32 %and38.i, 0
  br i1 %cmp39.i, label %if.end37.i.if.end28_crit_edge, label %for.cond.i469

if.end37.i.if.end28_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

cleanup.sink.split.i473:                          ; preds = %for.body.i471.cleanup.sink.split.i473_crit_edge, %if.end15.i.cleanup.sink.split.i473_crit_edge, %if.end.i463.cleanup.sink.split.i473_crit_edge, %if.end19.cleanup.sink.split.i473_crit_edge
  %.str.172.sink.i = phi ptr [ @.str.172, %if.end19.cleanup.sink.split.i473_crit_edge ], [ @.str.175, %if.end.i463.cleanup.sink.split.i473_crit_edge ], [ @.str.178, %if.end15.i.cleanup.sink.split.i473_crit_edge ], [ @.str.172, %for.body.i471.cleanup.sink.split.i473_crit_edge ]
  %retval.0.ph.i472 = phi i32 [ %call.i459, %if.end19.cleanup.sink.split.i473_crit_edge ], [ %call2.i461, %if.end.i463.cleanup.sink.split.i473_crit_edge ], [ %call17.i, %if.end15.i.cleanup.sink.split.i473_crit_edge ], [ %call29.i, %for.body.i471.cleanup.sink.split.i473_crit_edge ]
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.172.sink.i) #14
  br label %do.end25

do.end25:                                         ; preds = %cleanup.sink.split.i473, %for.cond.i469.do.end25_crit_edge
  %retval.0.i474 = phi i32 [ %retval.0.ph.i472, %cleanup.sink.split.i473 ], [ -5, %for.cond.i469.do.end25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i458) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i457) #10
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end37.i.if.end28_crit_edge, %lor.lhs.false.i466.if.end28_crit_edge, %if.end10.i465.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i458) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i457) #10
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %28 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixclock, align 4
  %call29 = tail call fastcc i32 @ufx_config_pix_clk(ptr noundef %dev, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup.sink.split_crit_edge, label %do.end9.i479

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end9.i479:                                     ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i475 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i478 = icmp eq ptr %call7.i.i475, null
  br i1 %tobool10.not.i478, label %do.end9.i479.cleanup.sink.split_crit_edge, label %if.end12.i484

do.end9.i479.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i479
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i484:                                    ; preds = %do.end9.i479
  %31 = ptrtoint ptr %call7.i.i475 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 67174400, ptr %call7.i.i475, align 8
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i480 = shl i32 %35, 8
  %or.i481 = or i32 %shl.i.i480, -2147483648
  %call15.i482 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i481, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8192, ptr noundef nonnull %call7.i.i475, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i475) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i482)
  %cmp.i483 = icmp slt i32 %call15.i482, 0
  br i1 %cmp.i483, label %do.end26.i486, label %if.end46, !prof !706

do.end26.i486:                                    ; preds = %if.end12.i484
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8192, i32 noundef 260) #14
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end12.i484
  %36 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %38 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %right_margin, align 4
  %add = add i32 %39, %37
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %40 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hsync_len, align 4
  %add47 = add i32 %add, %41
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %42 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %left_margin, align 4
  %add48 = add i32 %add47, %43
  %sub = shl i32 %add48, 16
  %shl = add i32 %sub, -65536
  %conv72 = and i32 %37, 65535
  %sub73 = add nsw i32 %conv72, -1
  %or = or i32 %shl, %sub73
  %call74 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8200, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end46.cleanup.sink.split_crit_edge, label %if.end83

if.end46.cleanup.sink.split_crit_edge:            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end83:                                         ; preds = %if.end46
  %sub85 = shl i32 %add, 16
  %shl86 = add i32 %sub85, -65536
  %conv87 = and i32 %add47, 65535
  %sub88 = add nsw i32 %conv87, -1
  %or89 = or i32 %sub88, %shl86
  %call90 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8204, i32 noundef %or89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end83.cleanup.sink.split_crit_edge, label %if.end99

if.end83.cleanup.sink.split_crit_edge:            ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end99:                                         ; preds = %if.end83
  %call106 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8208, i32 noundef %or89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.end99.cleanup.sink.split_crit_edge, label %if.end115

if.end99.cleanup.sink.split_crit_edge:            ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end115:                                        ; preds = %if.end99
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %44 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %upper_margin, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %46 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %yres, align 4
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %48 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lower_margin, align 4
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %50 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vsync_len, align 4
  %add116 = add i32 %49, %47
  %add117 = add i32 %add116, %45
  %add118 = add i32 %add117, %51
  %sub143 = shl i32 %add118, 16
  %shl144 = add i32 %sub143, -65536
  %conv145 = and i32 %47, 65535
  %sub146 = add nsw i32 %conv145, -1
  %or147 = or i32 %shl144, %sub146
  %call148 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8212, i32 noundef %or147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.end115.cleanup.sink.split_crit_edge, label %if.end157

if.end115.cleanup.sink.split_crit_edge:           ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end157:                                        ; preds = %if.end115
  %add130 = add i32 %add116, %51
  %sub159 = shl i32 %add116, 16
  %shl160 = add i32 %sub159, -65536
  %conv161 = and i32 %add130, 65535
  %sub162 = add nsw i32 %conv161, -1
  %or163 = or i32 %sub162, %shl160
  %call164 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8216, i32 noundef %or163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end157.cleanup.sink.split_crit_edge, label %if.end173

if.end157.cleanup.sink.split_crit_edge:           ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end173:                                        ; preds = %if.end157
  %call180 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8220, i32 noundef %or163)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %cmp181 = icmp slt i32 %call180, 0
  br i1 %cmp181, label %if.end173.cleanup.sink.split_crit_edge, label %do.end9.i493

if.end173.cleanup.sink.split_crit_edge:           ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end9.i493:                                     ; preds = %if.end173
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i489 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i492 = icmp eq ptr %call7.i.i489, null
  br i1 %tobool10.not.i492, label %do.end9.i493.cleanup.sink.split_crit_edge, label %if.end12.i498

do.end9.i493.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i493
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i498:                                    ; preds = %do.end9.i493
  %53 = ptrtoint ptr %call7.i.i489 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %call7.i.i489, align 8
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i494 = shl i32 %57, 8
  %or.i495 = or i32 %shl.i.i494, -2147483648
  %call15.i496 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i495, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8224, ptr noundef nonnull %call7.i.i489, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i489) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i496)
  %cmp.i497 = icmp slt i32 %call15.i496, 0
  br i1 %cmp.i497, label %do.end26.i500, label %do.end9.i507, !prof !706

do.end26.i500:                                    ; preds = %if.end12.i498
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8224, i32 noundef 0) #14
  br label %cleanup.sink.split

do.end9.i507:                                     ; preds = %if.end12.i498
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i503 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i506 = icmp eq ptr %call7.i.i503, null
  br i1 %tobool10.not.i506, label %do.end9.i507.cleanup.sink.split_crit_edge, label %if.end12.i512

do.end9.i507.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i507
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i512:                                    ; preds = %do.end9.i507
  %59 = ptrtoint ptr %call7.i.i503 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %call7.i.i503, align 8
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %shl.i.i508 = shl i32 %63, 8
  %or.i509 = or i32 %shl.i.i508, -2147483648
  %call15.i510 = tail call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or.i509, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8228, ptr noundef nonnull %call7.i.i503, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i503) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i510)
  %cmp.i511 = icmp slt i32 %call15.i510, 0
  br i1 %cmp.i511, label %do.end26.i514, label %if.end209, !prof !706

do.end26.i514:                                    ; preds = %if.end12.i512
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8228, i32 noundef 0) #14
  br label %cleanup.sink.split

if.end209:                                        ; preds = %if.end12.i512
  %64 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %var, align 4
  %66 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %yres, align 4
  %mul = shl i32 %65, 1
  %mul212 = mul i32 %mul, %67
  %add213 = add i32 %mul212, 7
  %and = and i32 %add213, -8
  %call214 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8232, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %if.end209.cleanup.sink.split_crit_edge, label %do.end9.i521

if.end209.cleanup.sink.split_crit_edge:           ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end9.i521:                                     ; preds = %if.end209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i517 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i520 = icmp eq ptr %call7.i.i517, null
  br i1 %tobool10.not.i520, label %do.end9.i521.cleanup.sink.split_crit_edge, label %if.end12.i526

do.end9.i521.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i521
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i526:                                    ; preds = %do.end9.i521
  %69 = ptrtoint ptr %call7.i.i517 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %call7.i.i517, align 8
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i522 = shl i32 %73, 8
  %or.i523 = or i32 %shl.i.i522, -2147483648
  %call15.i524 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i523, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8256, ptr noundef nonnull %call7.i.i517, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i517) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i524)
  %cmp.i525 = icmp slt i32 %call15.i524, 0
  br i1 %cmp.i525, label %do.end26.i528, label %do.end9.i535, !prof !706

do.end26.i528:                                    ; preds = %if.end12.i526
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i527 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8256, i32 noundef 0) #14
  br label %cleanup.sink.split

do.end9.i535:                                     ; preds = %if.end12.i526
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i531 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i534 = icmp eq ptr %call7.i.i531, null
  br i1 %tobool10.not.i534, label %do.end9.i535.cleanup.sink.split_crit_edge, label %if.end12.i540

do.end9.i535.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i535
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i540:                                    ; preds = %do.end9.i535
  %75 = ptrtoint ptr %call7.i.i531 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %call7.i.i531, align 8
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i536 = shl i32 %79, 8
  %or.i537 = or i32 %shl.i.i536, -2147483648
  %call15.i538 = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i537, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8260, ptr noundef nonnull %call7.i.i531, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i531) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i538)
  %cmp.i539 = icmp slt i32 %call15.i538, 0
  br i1 %cmp.i539, label %do.end26.i542, label %do.end9.i549, !prof !706

do.end26.i542:                                    ; preds = %if.end12.i540
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8260, i32 noundef 0) #14
  br label %cleanup.sink.split

do.end9.i549:                                     ; preds = %if.end12.i540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i545 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i548 = icmp eq ptr %call7.i.i545, null
  br i1 %tobool10.not.i548, label %do.end9.i549.cleanup.sink.split_crit_edge, label %if.end12.i554

do.end9.i549.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i549
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i554:                                    ; preds = %do.end9.i549
  %81 = ptrtoint ptr %call7.i.i545 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %call7.i.i545, align 8
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i550 = shl i32 %85, 8
  %or.i551 = or i32 %shl.i.i550, -2147483648
  %call15.i552 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i551, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8264, ptr noundef nonnull %call7.i.i545, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i545) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i552)
  %cmp.i553 = icmp slt i32 %call15.i552, 0
  br i1 %cmp.i553, label %do.end26.i556, label %if.end253, !prof !706

do.end26.i556:                                    ; preds = %if.end12.i554
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i555 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 8264, i32 noundef 0) #14
  br label %cleanup.sink.split

if.end253:                                        ; preds = %if.end12.i554
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %86 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sync, align 4
  %and254 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool.not = icmp eq i32 %and254, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 17
  %and259 = shl i32 %87, 2
  %88 = and i32 %and259, 8
  %89 = or i32 %spec.select, %88
  %call264 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8256, i32 noundef %89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp slt i32 %call264, 0
  br i1 %cmp265, label %if.end253.cleanup.sink.split_crit_edge, label %if.end273

if.end253.cleanup.sink.split_crit_edge:           ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end273:                                        ; preds = %if.end253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_ctrl.i559) #10
  %90 = ptrtoint ptr %dc_ctrl.i559 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %dc_ctrl.i559, align 4, !annotation !705
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_sts.i560) #10
  %91 = ptrtoint ptr %dc_sts.i560 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %dc_sts.i560, align 4, !annotation !705
  %call.i561 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i560) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i561)
  %cmp.i562 = icmp slt i32 %call.i561, 0
  br i1 %cmp.i562, label %if.end273.cleanup.sink.split.i588_crit_edge, label %if.end.i565

if.end273.cleanup.sink.split.i588_crit_edge:      ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i588

if.end.i565:                                      ; preds = %if.end273
  %call2.i563 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8192, ptr noundef nonnull %dc_ctrl.i559) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i563)
  %cmp3.i564 = icmp slt i32 %call2.i563, 0
  br i1 %cmp3.i564, label %if.end.i565.cleanup.sink.split.i588_crit_edge, label %if.end10.i568

if.end.i565.cleanup.sink.split.i588_crit_edge:    ; preds = %if.end.i565
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i588

if.end10.i568:                                    ; preds = %if.end.i565
  %92 = ptrtoint ptr %dc_sts.i560 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dc_sts.i560, align 4
  %and.i566 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i566)
  %tobool.not.i567 = icmp eq i32 %and.i566, 0
  br i1 %tobool.not.i567, label %lor.lhs.false.i571, label %if.end10.i568.if.end283_crit_edge

if.end10.i568.if.end283_crit_edge:                ; preds = %if.end10.i568
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

lor.lhs.false.i571:                               ; preds = %if.end10.i568
  %94 = ptrtoint ptr %dc_ctrl.i559 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dc_ctrl.i559, align 4
  %and11.i569 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i569)
  %tobool12.not.i570 = icmp eq i32 %and11.i569, 0
  br i1 %tobool12.not.i570, label %if.end14.i575, label %lor.lhs.false.i571.if.end283_crit_edge

lor.lhs.false.i571.if.end283_crit_edge:           ; preds = %lor.lhs.false.i571
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

if.end14.i575:                                    ; preds = %lor.lhs.false.i571
  %or.i572 = or i32 %95, 1
  %call15.i573 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8192, i32 noundef %or.i572) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i573)
  %cmp16.i574 = icmp slt i32 %call15.i573, 0
  br i1 %cmp16.i574, label %if.end14.i575.cleanup.sink.split.i588_crit_edge, label %if.end14.i575.for.body.i582_crit_edge

if.end14.i575.for.body.i582_crit_edge:            ; preds = %if.end14.i575
  br label %for.body.i582

if.end14.i575.cleanup.sink.split.i588_crit_edge:  ; preds = %if.end14.i575
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i588

for.cond.i578:                                    ; preds = %if.end36.i585
  %inc.i576 = add nuw nsw i32 %i.01.i579, 1
  %exitcond.not.i577 = icmp eq i32 %inc.i576, 250
  br i1 %exitcond.not.i577, label %for.cond.i578.do.end280_crit_edge, label %for.cond.i578.for.body.i582_crit_edge

for.cond.i578.for.body.i582_crit_edge:            ; preds = %for.cond.i578
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i582

for.cond.i578.do.end280_crit_edge:                ; preds = %for.cond.i578
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end280

for.body.i582:                                    ; preds = %for.cond.i578.for.body.i582_crit_edge, %if.end14.i575.for.body.i582_crit_edge
  %i.01.i579 = phi i32 [ %inc.i576, %for.cond.i578.for.body.i582_crit_edge ], [ 0, %if.end14.i575.for.body.i582_crit_edge ]
  %call28.i580 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i560) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i580)
  %cmp29.i581 = icmp slt i32 %call28.i580, 0
  br i1 %cmp29.i581, label %for.body.i582.cleanup.sink.split.i588_crit_edge, label %if.end36.i585

for.body.i582.cleanup.sink.split.i588_crit_edge:  ; preds = %for.body.i582
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i588

if.end36.i585:                                    ; preds = %for.body.i582
  %96 = ptrtoint ptr %dc_sts.i560 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dc_sts.i560, align 4
  %and37.i583 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i583)
  %tobool38.not.i584 = icmp eq i32 %and37.i583, 0
  br i1 %tobool38.not.i584, label %for.cond.i578, label %if.end36.i585.if.end283_crit_edge

if.end36.i585.if.end283_crit_edge:                ; preds = %if.end36.i585
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end283

cleanup.sink.split.i588:                          ; preds = %for.body.i582.cleanup.sink.split.i588_crit_edge, %if.end14.i575.cleanup.sink.split.i588_crit_edge, %if.end.i565.cleanup.sink.split.i588_crit_edge, %if.end273.cleanup.sink.split.i588_crit_edge
  %.str.206.sink.i = phi ptr [ @.str.206, %if.end273.cleanup.sink.split.i588_crit_edge ], [ @.str.209, %if.end.i565.cleanup.sink.split.i588_crit_edge ], [ @.str.212, %if.end14.i575.cleanup.sink.split.i588_crit_edge ], [ @.str.206, %for.body.i582.cleanup.sink.split.i588_crit_edge ]
  %retval.0.ph.i586 = phi i32 [ %call.i561, %if.end273.cleanup.sink.split.i588_crit_edge ], [ %call2.i563, %if.end.i565.cleanup.sink.split.i588_crit_edge ], [ %call15.i573, %if.end14.i575.cleanup.sink.split.i588_crit_edge ], [ %call28.i580, %for.body.i582.cleanup.sink.split.i588_crit_edge ]
  %call35.i587 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.206.sink.i) #14
  br label %do.end280

do.end280:                                        ; preds = %cleanup.sink.split.i588, %for.cond.i578.do.end280_crit_edge
  %retval.0.i589 = phi i32 [ %retval.0.ph.i586, %cleanup.sink.split.i588 ], [ -5, %for.cond.i578.do.end280_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i560) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i559) #10
  br label %cleanup.sink.split

if.end283:                                        ; preds = %if.end36.i585.if.end283_crit_edge, %lor.lhs.false.i571.if.end283_crit_edge, %if.end10.i568.if.end283_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i560) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i559) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_ctrl.i590) #10
  %98 = ptrtoint ptr %dc_ctrl.i590 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %dc_ctrl.i590, align 4, !annotation !705
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dc_sts.i591) #10
  %99 = ptrtoint ptr %dc_sts.i591 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %dc_sts.i591, align 4, !annotation !705
  %call.i592 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i591) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i592)
  %cmp.i593 = icmp slt i32 %call.i592, 0
  br i1 %cmp.i593, label %if.end283.cleanup.sink.split.i619_crit_edge, label %if.end.i596

if.end283.cleanup.sink.split.i619_crit_edge:      ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i619

if.end.i596:                                      ; preds = %if.end283
  %call2.i594 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8192, ptr noundef nonnull %dc_ctrl.i590) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i594)
  %cmp3.i595 = icmp slt i32 %call2.i594, 0
  br i1 %cmp3.i595, label %if.end.i596.cleanup.sink.split.i619_crit_edge, label %if.end10.i599

if.end.i596.cleanup.sink.split.i619_crit_edge:    ; preds = %if.end.i596
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i619

if.end10.i599:                                    ; preds = %if.end.i596
  %100 = ptrtoint ptr %dc_sts.i591 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dc_sts.i591, align 4
  %and.i597 = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i597)
  %cmp11.i598 = icmp eq i32 %and.i597, 0
  br i1 %cmp11.i598, label %if.end10.i599.do.end9.i625_crit_edge, label %lor.lhs.false.i602

if.end10.i599.do.end9.i625_crit_edge:             ; preds = %if.end10.i599
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i625

lor.lhs.false.i602:                               ; preds = %if.end10.i599
  %102 = ptrtoint ptr %dc_ctrl.i590 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dc_ctrl.i590, align 4
  %and12.i600 = and i32 %103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i600)
  %cmp13.i601 = icmp eq i32 %and12.i600, 0
  br i1 %cmp13.i601, label %lor.lhs.false.i602.do.end9.i625_crit_edge, label %if.end15.i606

lor.lhs.false.i602.do.end9.i625_crit_edge:        ; preds = %lor.lhs.false.i602
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i625

if.end15.i606:                                    ; preds = %lor.lhs.false.i602
  %and16.i603 = and i32 %103, -257
  %call17.i604 = tail call fastcc i32 @ufx_reg_write(ptr noundef %dev, i32 noundef 8192, i32 noundef %and16.i603) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i604)
  %cmp18.i605 = icmp slt i32 %call17.i604, 0
  br i1 %cmp18.i605, label %if.end15.i606.cleanup.sink.split.i619_crit_edge, label %if.end15.i606.for.body.i613_crit_edge

if.end15.i606.for.body.i613_crit_edge:            ; preds = %if.end15.i606
  br label %for.body.i613

if.end15.i606.cleanup.sink.split.i619_crit_edge:  ; preds = %if.end15.i606
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i619

for.cond.i609:                                    ; preds = %if.end37.i616
  %inc.i607 = add nuw nsw i32 %i.01.i610, 1
  %exitcond.not.i608 = icmp eq i32 %inc.i607, 250
  br i1 %exitcond.not.i608, label %for.cond.i609.do.end290_crit_edge, label %for.cond.i609.for.body.i613_crit_edge

for.cond.i609.for.body.i613_crit_edge:            ; preds = %for.cond.i609
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i613

for.cond.i609.do.end290_crit_edge:                ; preds = %for.cond.i609
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end290

for.body.i613:                                    ; preds = %for.cond.i609.for.body.i613_crit_edge, %if.end15.i606.for.body.i613_crit_edge
  %i.01.i610 = phi i32 [ %inc.i607, %for.cond.i609.for.body.i613_crit_edge ], [ 0, %if.end15.i606.for.body.i613_crit_edge ]
  %call29.i611 = call fastcc i32 @ufx_reg_read(ptr noundef %dev, i32 noundef 8196, ptr noundef nonnull %dc_sts.i591) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i611)
  %cmp30.i612 = icmp slt i32 %call29.i611, 0
  br i1 %cmp30.i612, label %for.body.i613.cleanup.sink.split.i619_crit_edge, label %if.end37.i616

for.body.i613.cleanup.sink.split.i619_crit_edge:  ; preds = %for.body.i613
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i619

if.end37.i616:                                    ; preds = %for.body.i613
  %104 = ptrtoint ptr %dc_sts.i591 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dc_sts.i591, align 4
  %and38.i614 = and i32 %105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i614)
  %cmp39.i615 = icmp eq i32 %and38.i614, 0
  br i1 %cmp39.i615, label %if.end37.i616.do.end9.i625_crit_edge, label %for.cond.i609

if.end37.i616.do.end9.i625_crit_edge:             ; preds = %if.end37.i616
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i625

cleanup.sink.split.i619:                          ; preds = %for.body.i613.cleanup.sink.split.i619_crit_edge, %if.end15.i606.cleanup.sink.split.i619_crit_edge, %if.end.i596.cleanup.sink.split.i619_crit_edge, %if.end283.cleanup.sink.split.i619_crit_edge
  %.str.216.sink.i = phi ptr [ @.str.216, %if.end283.cleanup.sink.split.i619_crit_edge ], [ @.str.219, %if.end.i596.cleanup.sink.split.i619_crit_edge ], [ @.str.222, %if.end15.i606.cleanup.sink.split.i619_crit_edge ], [ @.str.216, %for.body.i613.cleanup.sink.split.i619_crit_edge ]
  %retval.0.ph.i617 = phi i32 [ %call.i592, %if.end283.cleanup.sink.split.i619_crit_edge ], [ %call2.i594, %if.end.i596.cleanup.sink.split.i619_crit_edge ], [ %call17.i604, %if.end15.i606.cleanup.sink.split.i619_crit_edge ], [ %call29.i611, %for.body.i613.cleanup.sink.split.i619_crit_edge ]
  %call36.i618 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.216.sink.i) #14
  br label %do.end290

do.end290:                                        ; preds = %cleanup.sink.split.i619, %for.cond.i609.do.end290_crit_edge
  %retval.0.i620 = phi i32 [ %retval.0.ph.i617, %cleanup.sink.split.i619 ], [ -5, %for.cond.i609.do.end290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i591) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i590) #10
  br label %cleanup.sink.split

do.end9.i625:                                     ; preds = %if.end37.i616.do.end9.i625_crit_edge, %lor.lhs.false.i602.do.end9.i625_crit_edge, %if.end10.i599.do.end9.i625_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_sts.i591) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dc_ctrl.i590) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i621 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i624 = icmp eq ptr %call7.i.i621, null
  br i1 %tobool10.not.i624, label %do.end9.i625.cleanup.sink.split_crit_edge, label %if.end12.i630

do.end9.i625.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i625
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i630:                                    ; preds = %do.end9.i625
  %107 = ptrtoint ptr %call7.i.i621 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 50331648, ptr %call7.i.i621, align 8
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i626 = shl i32 %111, 8
  %or.i627 = or i32 %shl.i.i626, -2147483648
  %call15.i628 = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %or.i627, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32728, ptr noundef nonnull %call7.i.i621, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i621) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i628)
  %cmp.i629 = icmp slt i32 %call15.i628, 0
  br i1 %cmp.i629, label %do.end26.i632, label %do.end9.i639, !prof !706

do.end26.i632:                                    ; preds = %if.end12.i630
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i631 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 32808, i32 noundef 3) #14
  br label %cleanup.sink.split

do.end9.i639:                                     ; preds = %if.end12.i630
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i635 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i638 = icmp eq ptr %call7.i.i635, null
  br i1 %tobool10.not.i638, label %do.end9.i639.cleanup.sink.split_crit_edge, label %if.end12.i644

do.end9.i639.cleanup.sink.split_crit_edge:        ; preds = %do.end9.i639
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12.i644:                                    ; preds = %do.end9.i639
  %113 = ptrtoint ptr %call7.i.i635 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 117440512, ptr %call7.i.i635, align 8
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 8
  %shl.i.i640 = shl i32 %117, 8
  %or.i641 = or i32 %shl.i.i640, -2147483648
  %call15.i642 = tail call i32 @usb_control_msg(ptr noundef %115, i32 noundef %or.i641, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext -32732, ptr noundef nonnull %call7.i.i635, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i635) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i642)
  %cmp.i643 = icmp slt i32 %call15.i642, 0
  br i1 %cmp.i643, label %do.end26.i646, label %if.end12.i644.cleanup_crit_edge, !prof !706

if.end12.i644.cleanup_crit_edge:                  ; preds = %if.end12.i644
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26.i646:                                    ; preds = %if.end12.i644
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i645 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 32804, i32 noundef 7) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end26.i646, %do.end9.i639.cleanup.sink.split_crit_edge, %do.end26.i632, %do.end9.i625.cleanup.sink.split_crit_edge, %do.end290, %do.end280, %if.end253.cleanup.sink.split_crit_edge, %do.end26.i556, %do.end9.i549.cleanup.sink.split_crit_edge, %do.end26.i542, %do.end9.i535.cleanup.sink.split_crit_edge, %do.end26.i528, %do.end9.i521.cleanup.sink.split_crit_edge, %if.end209.cleanup.sink.split_crit_edge, %do.end26.i514, %do.end9.i507.cleanup.sink.split_crit_edge, %do.end26.i500, %do.end9.i493.cleanup.sink.split_crit_edge, %if.end173.cleanup.sink.split_crit_edge, %if.end157.cleanup.sink.split_crit_edge, %if.end115.cleanup.sink.split_crit_edge, %if.end99.cleanup.sink.split_crit_edge, %if.end83.cleanup.sink.split_crit_edge, %if.end46.cleanup.sink.split_crit_edge, %do.end26.i486, %do.end9.i479.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge, %do.end25, %do.end16, %do.end26.i449, %do.end9.i442.cleanup.sink.split_crit_edge, %do.end26.i, %do.end9.i.cleanup.sink.split_crit_edge
  %.str.158.sink = phi ptr [ @.str.152, %do.end290 ], [ @.str.149, %do.end280 ], [ @.str.102, %do.end25 ], [ @.str.99, %do.end16 ], [ @.str.93, %do.end9.i.cleanup.sink.split_crit_edge ], [ @.str.93, %do.end26.i ], [ @.str.96, %do.end9.i442.cleanup.sink.split_crit_edge ], [ @.str.96, %do.end26.i449 ], [ @.str.105, %if.end28.cleanup.sink.split_crit_edge ], [ @.str.108, %do.end9.i479.cleanup.sink.split_crit_edge ], [ @.str.108, %do.end26.i486 ], [ @.str.111, %if.end46.cleanup.sink.split_crit_edge ], [ @.str.114, %if.end83.cleanup.sink.split_crit_edge ], [ @.str.117, %if.end99.cleanup.sink.split_crit_edge ], [ @.str.120, %if.end115.cleanup.sink.split_crit_edge ], [ @.str.123, %if.end157.cleanup.sink.split_crit_edge ], [ @.str.126, %if.end173.cleanup.sink.split_crit_edge ], [ @.str.129, %do.end9.i493.cleanup.sink.split_crit_edge ], [ @.str.129, %do.end26.i500 ], [ @.str.132, %do.end9.i507.cleanup.sink.split_crit_edge ], [ @.str.132, %do.end26.i514 ], [ @.str.135, %if.end209.cleanup.sink.split_crit_edge ], [ @.str.138, %do.end9.i521.cleanup.sink.split_crit_edge ], [ @.str.138, %do.end26.i528 ], [ @.str.141, %do.end9.i535.cleanup.sink.split_crit_edge ], [ @.str.141, %do.end26.i542 ], [ @.str.144, %do.end9.i549.cleanup.sink.split_crit_edge ], [ @.str.144, %do.end26.i556 ], [ @.str.138, %if.end253.cleanup.sink.split_crit_edge ], [ @.str.155, %do.end9.i625.cleanup.sink.split_crit_edge ], [ @.str.155, %do.end26.i632 ], [ @.str.158, %do.end9.i639.cleanup.sink.split_crit_edge ], [ @.str.158, %do.end26.i646 ]
  %retval.0.ph = phi i32 [ %retval.0.i620, %do.end290 ], [ %retval.0.i589, %do.end280 ], [ %retval.0.i474, %do.end25 ], [ %retval.0.i456, %do.end16 ], [ -12, %do.end9.i.cleanup.sink.split_crit_edge ], [ %call15.i, %do.end26.i ], [ -12, %do.end9.i442.cleanup.sink.split_crit_edge ], [ %call15.i445, %do.end26.i449 ], [ %call29, %if.end28.cleanup.sink.split_crit_edge ], [ -12, %do.end9.i479.cleanup.sink.split_crit_edge ], [ %call15.i482, %do.end26.i486 ], [ %call74, %if.end46.cleanup.sink.split_crit_edge ], [ %call90, %if.end83.cleanup.sink.split_crit_edge ], [ %call106, %if.end99.cleanup.sink.split_crit_edge ], [ %call148, %if.end115.cleanup.sink.split_crit_edge ], [ %call164, %if.end157.cleanup.sink.split_crit_edge ], [ %call180, %if.end173.cleanup.sink.split_crit_edge ], [ -12, %do.end9.i493.cleanup.sink.split_crit_edge ], [ %call15.i496, %do.end26.i500 ], [ -12, %do.end9.i507.cleanup.sink.split_crit_edge ], [ %call15.i510, %do.end26.i514 ], [ %call214, %if.end209.cleanup.sink.split_crit_edge ], [ -12, %do.end9.i521.cleanup.sink.split_crit_edge ], [ %call15.i524, %do.end26.i528 ], [ -12, %do.end9.i535.cleanup.sink.split_crit_edge ], [ %call15.i538, %do.end26.i542 ], [ -12, %do.end9.i549.cleanup.sink.split_crit_edge ], [ %call15.i552, %do.end26.i556 ], [ %call264, %if.end253.cleanup.sink.split_crit_edge ], [ -12, %do.end9.i625.cleanup.sink.split_crit_edge ], [ %call15.i628, %do.end26.i632 ], [ -12, %do.end9.i639.cleanup.sink.split_crit_edge ], [ %call15.i642, %do.end26.i646 ]
  %call312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.158.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.i644.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.i644.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_reg_write(ptr noundef readonly %dev, i32 noundef %index, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !706

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %1 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call7.i, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %index to i16
  %call15 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end26, label %if.end12.cleanup_crit_edge, !prof !706

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %index, i32 noundef %data) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end9.cleanup_crit_edge ], [ %call15, %do.end26 ], [ %call15, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_config_pix_clk(ptr noundef %dev, i32 noundef %pixclock) unnamed_addr #2 align 64 {
entry:
  %data.i.i106 = alloca i32, align 4
  %data.i.i93 = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 1000000000, %pixclock
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_config_pix_clk.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_config_pix_clk, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %div, 1000
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_config_pix_clk.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.184, i32 noundef %pixclock, i32 noundef %mul) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul3 = mul i32 %div, 2000
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc99.i.for.cond5.preheader.i_crit_edge, %do.end
  %div.i152 = phi i32 [ 25000000, %do.end ], [ %div.i, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %min_error.0216.i151 = phi i32 [ %mul3, %do.end ], [ %min_error.1.lcssa.i, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %div_r0.0217.i150 = phi i32 [ 1, %do.end ], [ %inc100.i, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.59.0149 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.59.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.51.0148 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.51.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.43.0147 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.43.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.35.0146 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.35.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.27.0145 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.27.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.19.0144 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.19.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.11.0143 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.11.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %asic_pll.sroa.0.0142 = phi i32 [ 0, %do.end ], [ %asic_pll.sroa.0.15, %for.inc99.i.for.cond5.preheader.i_crit_edge ]
  %sub56.i = add nsw i32 %div_r0.0217.i150, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div_r0.0217.i150)
  %cmp7.i.i = icmp ult i32 %div_r0.0217.i150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div_r0.0217.i150)
  %cmp13.i.i = icmp ult i32 %div_r0.0217.i150, 4
  %..i.i = select i1 %cmp13.i.i, i32 2, i32 1
  %retval.0.i.i = select i1 %cmp7.i.i, i32 4, i32 %..i.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc93.i.for.body7.i_crit_edge, %for.cond5.preheader.i
  %asic_pll.sroa.0.1 = phi i32 [ %asic_pll.sroa.0.0142, %for.cond5.preheader.i ], [ %asic_pll.sroa.0.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.11.1 = phi i32 [ %asic_pll.sroa.11.0143, %for.cond5.preheader.i ], [ %asic_pll.sroa.11.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.19.1 = phi i32 [ %asic_pll.sroa.19.0144, %for.cond5.preheader.i ], [ %asic_pll.sroa.19.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.27.1 = phi i32 [ %asic_pll.sroa.27.0145, %for.cond5.preheader.i ], [ %asic_pll.sroa.27.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.35.1 = phi i32 [ %asic_pll.sroa.35.0146, %for.cond5.preheader.i ], [ %asic_pll.sroa.35.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.43.1 = phi i32 [ %asic_pll.sroa.43.0147, %for.cond5.preheader.i ], [ %asic_pll.sroa.43.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.51.1 = phi i32 [ %asic_pll.sroa.51.0148, %for.cond5.preheader.i ], [ %asic_pll.sroa.51.14, %for.inc93.i.for.body7.i_crit_edge ]
  %asic_pll.sroa.59.1 = phi i32 [ %asic_pll.sroa.59.0149, %for.cond5.preheader.i ], [ %asic_pll.sroa.59.14, %for.inc93.i.for.body7.i_crit_edge ]
  %min_error.1215.i = phi i32 [ %min_error.0216.i151, %for.cond5.preheader.i ], [ %min_error.15.ph.i, %for.inc93.i.for.body7.i_crit_edge ]
  %div_f0.0213.i = phi i32 [ 1, %for.cond5.preheader.i ], [ %inc94.i, %for.inc93.i.for.body7.i_crit_edge ]
  %mul.i = mul i32 %div_f0.0213.i, %div.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %mul.i)
  %cmp8.i = icmp ult i32 %mul.i, 350000000
  br i1 %cmp8.i, label %for.body7.i.for.inc93.i_crit_edge, label %if.end10.i

for.body7.i.for.inc93.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc93.i

if.end10.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000000, i32 %mul.i)
  %cmp11.i = icmp ugt i32 %mul.i, 700000000
  br i1 %cmp11.i, label %if.end10.i.for.inc99.i_crit_edge, label %for.cond14.preheader.i

if.end10.i.for.inc99.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc99.i

for.cond14.preheader.i:                           ; preds = %if.end10.i
  %sub58.i = add nsw i32 %div_f0.0213.i, -1
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.inc87.i.for.body16.i_crit_edge, %for.cond14.preheader.i
  %asic_pll.sroa.0.2 = phi i32 [ %asic_pll.sroa.0.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.0.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.11.2 = phi i32 [ %asic_pll.sroa.11.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.11.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.19.2 = phi i32 [ %asic_pll.sroa.19.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.19.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.27.2 = phi i32 [ %asic_pll.sroa.27.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.27.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.35.2 = phi i32 [ %asic_pll.sroa.35.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.35.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.43.2 = phi i32 [ %asic_pll.sroa.43.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.43.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.51.2 = phi i32 [ %asic_pll.sroa.51.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.51.13, %for.inc87.i.for.body16.i_crit_edge ]
  %asic_pll.sroa.59.2 = phi i32 [ %asic_pll.sroa.59.1, %for.cond14.preheader.i ], [ %asic_pll.sroa.59.13, %for.inc87.i.for.body16.i_crit_edge ]
  %min_error.2212.i = phi i32 [ %min_error.1215.i, %for.cond14.preheader.i ], [ %min_error.13.ph.i, %for.inc87.i.for.body16.i_crit_edge ]
  %div_q0.0211.i = phi i32 [ 0, %for.cond14.preheader.i ], [ %inc88.i, %for.inc87.i.for.body16.i_crit_edge ]
  %div17160.i = lshr i32 %mul.i, %div_q0.0211.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %div17160.i)
  %cmp21.i = icmp ugt i32 %div17160.i, 200000000
  br i1 %cmp21.i, label %for.body16.i.for.inc87.i_crit_edge, label %for.body16.i.for.body26.i_crit_edge

for.body16.i.for.body26.i_crit_edge:              ; preds = %for.body16.i
  br label %for.body26.i

for.body16.i.for.inc87.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87.i

for.body26.i:                                     ; preds = %for.inc81.i.for.body26.i_crit_edge, %for.body16.i.for.body26.i_crit_edge
  %asic_pll.sroa.0.3 = phi i32 [ %asic_pll.sroa.0.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.0.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.11.3 = phi i32 [ %asic_pll.sroa.11.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.11.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.19.3 = phi i32 [ %asic_pll.sroa.19.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.19.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.27.3 = phi i32 [ %asic_pll.sroa.27.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.27.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.35.3 = phi i32 [ %asic_pll.sroa.35.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.35.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.43.3 = phi i32 [ %asic_pll.sroa.43.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.43.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.51.3 = phi i32 [ %asic_pll.sroa.51.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.51.2, %for.body16.i.for.body26.i_crit_edge ]
  %asic_pll.sroa.59.3 = phi i32 [ %asic_pll.sroa.59.12, %for.inc81.i.for.body26.i_crit_edge ], [ %asic_pll.sroa.59.2, %for.body16.i.for.body26.i_crit_edge ]
  %min_error.3210.i = phi i32 [ %min_error.4.lcssa.i, %for.inc81.i.for.body26.i_crit_edge ], [ %min_error.2212.i, %for.body16.i.for.body26.i_crit_edge ]
  %div_r1.0209.i = phi i32 [ %inc82.i, %for.inc81.i.for.body26.i_crit_edge ], [ 1, %for.body16.i.for.body26.i_crit_edge ]
  %div27.i = udiv i32 %div17160.i, %div_r1.0209.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %div27.i)
  %cmp28.i = icmp ult i32 %div27.i, 5000000
  br i1 %cmp28.i, label %for.body26.i.for.inc87.i_crit_edge, label %for.cond31.preheader.i

for.body26.i.for.inc87.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87.i

for.cond31.preheader.i:                           ; preds = %for.body26.i
  %sub61.i = add nsw i32 %div_r1.0209.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 87999999, i32 %div27.i)
  %cmp.i.i = icmp ugt i32 %div27.i, 87999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 53999999, i32 %div27.i)
  %cmp1.i.i = icmp ugt i32 %div27.i, 53999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 33999999, i32 %div27.i)
  %cmp4.i.i = icmp ugt i32 %div27.i, 33999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20999999, i32 %div27.i)
  %cmp7.i163.i = icmp ugt i32 %div27.i, 20999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 12999999, i32 %div27.i)
  %cmp10.i164.i = icmp ugt i32 %div27.i, 12999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999999, i32 %div27.i)
  %cmp13.i166.i = icmp ugt i32 %div27.i, 7999999
  %..i167.i = select i1 %cmp13.i166.i, i32 2, i32 1
  %.mux.i = select i1 %cmp.i.i, i32 7, i32 6
  %.mux.mux.i = select i1 %cmp1.i.i, i32 %.mux.i, i32 5
  %.mux.mux.mux.i = select i1 %cmp4.i.i, i32 %.mux.mux.i, i32 4
  %spec.select.i = select i1 %cmp10.i164.i, i32 3, i32 %..i167.i
  %retval.0.i169.i = select i1 %cmp7.i163.i, i32 %.mux.mux.mux.i, i32 %spec.select.i
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc75.i.for.body33.i_crit_edge, %for.cond31.preheader.i
  %asic_pll.sroa.0.4 = phi i32 [ %asic_pll.sroa.0.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.0.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.11.4 = phi i32 [ %asic_pll.sroa.11.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.11.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.19.4 = phi i32 [ %asic_pll.sroa.19.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.19.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.27.4 = phi i32 [ %asic_pll.sroa.27.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.27.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.35.4 = phi i32 [ %asic_pll.sroa.35.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.35.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.43.4 = phi i32 [ %asic_pll.sroa.43.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.43.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.51.4 = phi i32 [ %asic_pll.sroa.51.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.51.11, %for.inc75.i.for.body33.i_crit_edge ]
  %asic_pll.sroa.59.4 = phi i32 [ %asic_pll.sroa.59.3, %for.cond31.preheader.i ], [ %asic_pll.sroa.59.11, %for.inc75.i.for.body33.i_crit_edge ]
  %min_error.4208.i = phi i32 [ %min_error.3210.i, %for.cond31.preheader.i ], [ %min_error.9.ph.i, %for.inc75.i.for.body33.i_crit_edge ]
  %div_f1.0206.i = phi i32 [ 1, %for.cond31.preheader.i ], [ %inc76.i, %for.inc75.i.for.body33.i_crit_edge ]
  %mul34.i = mul i32 %div_f1.0206.i, %div27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %mul34.i)
  %cmp35.i = icmp ult i32 %mul34.i, 350000000
  br i1 %cmp35.i, label %for.body33.i.for.inc75.i_crit_edge, label %if.end37.i

for.body33.i.for.inc75.i_crit_edge:               ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc75.i

if.end37.i:                                       ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000000, i32 %mul34.i)
  %cmp38.i = icmp ugt i32 %mul34.i, 700000000
  br i1 %cmp38.i, label %if.end37.i.for.inc81.i_crit_edge, label %for.cond41.preheader.i

if.end37.i.for.inc81.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81.i

for.cond41.preheader.i:                           ; preds = %if.end37.i
  %sub63.i = add nsw i32 %div_f1.0206.i, -1
  %sub.i = sub i32 %mul34.i, %mul3
  %0 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %min_error.4208.i)
  %cmp54.i = icmp ult i32 %0, %min_error.4208.i
  br i1 %cmp54.i, label %if.then55.i, label %for.cond41.preheader.i.for.inc.i_crit_edge

for.cond41.preheader.i.for.inc.i_crit_edge:       ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then55.i:                                      ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul34.i, i32 %mul3)
  %cmp67.i = icmp eq i32 %mul34.i, %mul3
  br i1 %cmp67.i, label %if.then55.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.i.for.inc.i_crit_edge

if.then55.i.for.inc.i_crit_edge:                  ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then55.i.ufx_calc_pll_values.exit_crit_edge:   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.i:                                        ; preds = %if.then55.i.for.inc.i_crit_edge, %for.cond41.preheader.i.for.inc.i_crit_edge
  %asic_pll.sroa.0.5 = phi i32 [ %sub56.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.0.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.11.5 = phi i32 [ %sub58.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.11.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.19.5 = phi i32 [ %div_q0.0211.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.19.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.27.5 = phi i32 [ %retval.0.i.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.27.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.35.5 = phi i32 [ %sub61.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.35.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.43.5 = phi i32 [ %sub63.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.43.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.51.5 = phi i32 [ 0, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.51.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %asic_pll.sroa.59.5 = phi i32 [ %retval.0.i169.i, %if.then55.i.for.inc.i_crit_edge ], [ %asic_pll.sroa.59.4, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %min_error.6.i = phi i32 [ %0, %if.then55.i.for.inc.i_crit_edge ], [ %min_error.4208.i, %for.cond41.preheader.i.for.inc.i_crit_edge ]
  %div45161.1.i = lshr i32 %mul34.i, 1
  %sub.1.i = sub i32 %div45161.1.i, %mul3
  %1 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %min_error.6.i)
  %cmp54.1.i = icmp ult i32 %1, %min_error.6.i
  br i1 %cmp54.1.i, label %if.then55.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then55.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.1.i, i32 %mul3)
  %cmp67.1.i = icmp eq i32 %div45161.1.i, %mul3
  br i1 %cmp67.1.i, label %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.1.i.for.inc.1.i_crit_edge

if.then55.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then55.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then55.1.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.1.i:                                      ; preds = %if.then55.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %asic_pll.sroa.0.6 = phi i32 [ %sub56.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.0.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.11.6 = phi i32 [ %sub58.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.11.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.19.6 = phi i32 [ %div_q0.0211.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.19.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.27.6 = phi i32 [ %retval.0.i.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.27.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.35.6 = phi i32 [ %sub61.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.35.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.43.6 = phi i32 [ %sub63.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.43.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.51.6 = phi i32 [ 1, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.51.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %asic_pll.sroa.59.6 = phi i32 [ %retval.0.i169.i, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %asic_pll.sroa.59.5, %for.inc.i.for.inc.1.i_crit_edge ]
  %min_error.6.1.i = phi i32 [ %1, %if.then55.1.i.for.inc.1.i_crit_edge ], [ %min_error.6.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %div45161.2.i = lshr i32 %mul34.i, 2
  %sub.2.i = sub i32 %div45161.2.i, %mul3
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %min_error.6.1.i)
  %cmp54.2.i = icmp ult i32 %2, %min_error.6.1.i
  br i1 %cmp54.2.i, label %if.then55.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then55.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.2.i, i32 %mul3)
  %cmp67.2.i = icmp eq i32 %div45161.2.i, %mul3
  br i1 %cmp67.2.i, label %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.2.i.for.inc.2.i_crit_edge

if.then55.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then55.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then55.2.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.2.i:                                      ; preds = %if.then55.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %asic_pll.sroa.0.7 = phi i32 [ %sub56.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.0.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.11.7 = phi i32 [ %sub58.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.11.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.19.7 = phi i32 [ %div_q0.0211.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.19.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.27.7 = phi i32 [ %retval.0.i.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.27.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.35.7 = phi i32 [ %sub61.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.35.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.43.7 = phi i32 [ %sub63.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.43.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.51.7 = phi i32 [ 2, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.51.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %asic_pll.sroa.59.7 = phi i32 [ %retval.0.i169.i, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %asic_pll.sroa.59.6, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %min_error.6.2.i = phi i32 [ %2, %if.then55.2.i.for.inc.2.i_crit_edge ], [ %min_error.6.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %div45161.3.i = lshr i32 %mul34.i, 3
  %sub.3.i = sub i32 %div45161.3.i, %mul3
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %min_error.6.2.i)
  %cmp54.3.i = icmp ult i32 %3, %min_error.6.2.i
  br i1 %cmp54.3.i, label %if.then55.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.then55.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.3.i, i32 %mul3)
  %cmp67.3.i = icmp eq i32 %div45161.3.i, %mul3
  br i1 %cmp67.3.i, label %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.3.i.for.inc.3.i_crit_edge

if.then55.3.i.for.inc.3.i_crit_edge:              ; preds = %if.then55.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

if.then55.3.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.3.i:                                      ; preds = %if.then55.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %asic_pll.sroa.0.8 = phi i32 [ %sub56.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.0.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.11.8 = phi i32 [ %sub58.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.11.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.19.8 = phi i32 [ %div_q0.0211.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.19.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.27.8 = phi i32 [ %retval.0.i.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.27.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.35.8 = phi i32 [ %sub61.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.35.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.43.8 = phi i32 [ %sub63.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.43.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.51.8 = phi i32 [ 3, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.51.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %asic_pll.sroa.59.8 = phi i32 [ %retval.0.i169.i, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %asic_pll.sroa.59.7, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %min_error.6.3.i = phi i32 [ %3, %if.then55.3.i.for.inc.3.i_crit_edge ], [ %min_error.6.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %div45161.4.i = lshr i32 %mul34.i, 4
  %sub.4.i = sub i32 %div45161.4.i, %mul3
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %min_error.6.3.i)
  %cmp54.4.i = icmp ult i32 %4, %min_error.6.3.i
  br i1 %cmp54.4.i, label %if.then55.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

if.then55.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.4.i, i32 %mul3)
  %cmp67.4.i = icmp eq i32 %div45161.4.i, %mul3
  br i1 %cmp67.4.i, label %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.4.i.for.inc.4.i_crit_edge

if.then55.4.i.for.inc.4.i_crit_edge:              ; preds = %if.then55.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

if.then55.4.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.4.i:                                      ; preds = %if.then55.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %asic_pll.sroa.0.9 = phi i32 [ %sub56.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.0.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.11.9 = phi i32 [ %sub58.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.11.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.19.9 = phi i32 [ %div_q0.0211.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.19.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.27.9 = phi i32 [ %retval.0.i.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.27.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.35.9 = phi i32 [ %sub61.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.35.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.43.9 = phi i32 [ %sub63.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.43.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.51.9 = phi i32 [ 4, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.51.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %asic_pll.sroa.59.9 = phi i32 [ %retval.0.i169.i, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %asic_pll.sroa.59.8, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %min_error.6.4.i = phi i32 [ %4, %if.then55.4.i.for.inc.4.i_crit_edge ], [ %min_error.6.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %div45161.5.i = lshr i32 %mul34.i, 5
  %sub.5.i = sub i32 %div45161.5.i, %mul3
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_error.6.4.i)
  %cmp54.5.i = icmp ult i32 %5, %min_error.6.4.i
  br i1 %cmp54.5.i, label %if.then55.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

if.then55.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.5.i, i32 %mul3)
  %cmp67.5.i = icmp eq i32 %div45161.5.i, %mul3
  br i1 %cmp67.5.i, label %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.5.i.for.inc.5.i_crit_edge

if.then55.5.i.for.inc.5.i_crit_edge:              ; preds = %if.then55.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

if.then55.5.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc.5.i:                                      ; preds = %if.then55.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %asic_pll.sroa.0.10 = phi i32 [ %sub56.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.0.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.11.10 = phi i32 [ %sub58.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.11.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.19.10 = phi i32 [ %div_q0.0211.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.19.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.27.10 = phi i32 [ %retval.0.i.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.27.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.35.10 = phi i32 [ %sub61.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.35.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.43.10 = phi i32 [ %sub63.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.43.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.51.10 = phi i32 [ 5, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.51.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %asic_pll.sroa.59.10 = phi i32 [ %retval.0.i169.i, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %asic_pll.sroa.59.9, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %min_error.6.5.i = phi i32 [ %5, %if.then55.5.i.for.inc.5.i_crit_edge ], [ %min_error.6.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %div45161.6.i = lshr i32 %mul34.i, 6
  %sub.6.i = sub i32 %div45161.6.i, %mul3
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.6.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %min_error.6.5.i)
  %cmp54.6.i = icmp ult i32 %6, %min_error.6.5.i
  br i1 %cmp54.6.i, label %if.then55.6.i, label %for.inc.5.i.for.inc75.i_crit_edge

for.inc.5.i.for.inc75.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc75.i

if.then55.6.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div45161.6.i, i32 %mul3)
  %cmp67.6.i = icmp eq i32 %div45161.6.i, %mul3
  br i1 %cmp67.6.i, label %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge, label %if.then55.6.i.for.inc75.i_crit_edge

if.then55.6.i.for.inc75.i_crit_edge:              ; preds = %if.then55.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc75.i

if.then55.6.i.ufx_calc_pll_values.exit_crit_edge: ; preds = %if.then55.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

for.inc75.i:                                      ; preds = %if.then55.6.i.for.inc75.i_crit_edge, %for.inc.5.i.for.inc75.i_crit_edge, %for.body33.i.for.inc75.i_crit_edge
  %asic_pll.sroa.0.11 = phi i32 [ %asic_pll.sroa.0.4, %for.body33.i.for.inc75.i_crit_edge ], [ %sub56.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.0.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.11.11 = phi i32 [ %asic_pll.sroa.11.4, %for.body33.i.for.inc75.i_crit_edge ], [ %sub58.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.11.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.19.11 = phi i32 [ %asic_pll.sroa.19.4, %for.body33.i.for.inc75.i_crit_edge ], [ %div_q0.0211.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.19.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.27.11 = phi i32 [ %asic_pll.sroa.27.4, %for.body33.i.for.inc75.i_crit_edge ], [ %retval.0.i.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.27.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.35.11 = phi i32 [ %asic_pll.sroa.35.4, %for.body33.i.for.inc75.i_crit_edge ], [ %sub61.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.35.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.43.11 = phi i32 [ %asic_pll.sroa.43.4, %for.body33.i.for.inc75.i_crit_edge ], [ %sub63.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.43.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.51.11 = phi i32 [ %asic_pll.sroa.51.4, %for.body33.i.for.inc75.i_crit_edge ], [ 6, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.51.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %asic_pll.sroa.59.11 = phi i32 [ %asic_pll.sroa.59.4, %for.body33.i.for.inc75.i_crit_edge ], [ %retval.0.i169.i, %if.then55.6.i.for.inc75.i_crit_edge ], [ %asic_pll.sroa.59.10, %for.inc.5.i.for.inc75.i_crit_edge ]
  %min_error.9.ph.i = phi i32 [ %min_error.4208.i, %for.body33.i.for.inc75.i_crit_edge ], [ %6, %if.then55.6.i.for.inc75.i_crit_edge ], [ %min_error.6.5.i, %for.inc.5.i.for.inc75.i_crit_edge ]
  %inc76.i = add nuw nsw i32 %div_f1.0206.i, 1
  %exitcond.not.i = icmp eq i32 %inc76.i, 257
  br i1 %exitcond.not.i, label %for.inc75.i.for.inc81.i_crit_edge, label %for.inc75.i.for.body33.i_crit_edge

for.inc75.i.for.body33.i_crit_edge:               ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body33.i

for.inc75.i.for.inc81.i_crit_edge:                ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %for.inc75.i.for.inc81.i_crit_edge, %if.end37.i.for.inc81.i_crit_edge
  %asic_pll.sroa.0.12 = phi i32 [ %asic_pll.sroa.0.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.0.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.11.12 = phi i32 [ %asic_pll.sroa.11.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.11.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.19.12 = phi i32 [ %asic_pll.sroa.19.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.19.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.27.12 = phi i32 [ %asic_pll.sroa.27.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.27.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.35.12 = phi i32 [ %asic_pll.sroa.35.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.35.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.43.12 = phi i32 [ %asic_pll.sroa.43.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.43.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.51.12 = phi i32 [ %asic_pll.sroa.51.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.51.4, %if.end37.i.for.inc81.i_crit_edge ]
  %asic_pll.sroa.59.12 = phi i32 [ %asic_pll.sroa.59.11, %for.inc75.i.for.inc81.i_crit_edge ], [ %asic_pll.sroa.59.4, %if.end37.i.for.inc81.i_crit_edge ]
  %min_error.4.lcssa.i = phi i32 [ %min_error.9.ph.i, %for.inc75.i.for.inc81.i_crit_edge ], [ %min_error.4208.i, %if.end37.i.for.inc81.i_crit_edge ]
  %inc82.i = add nuw nsw i32 %div_r1.0209.i, 1
  %exitcond221.not.i = icmp eq i32 %inc82.i, 33
  br i1 %exitcond221.not.i, label %for.inc81.i.for.inc87.i_crit_edge, label %for.inc81.i.for.body26.i_crit_edge

for.inc81.i.for.body26.i_crit_edge:               ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.inc81.i.for.inc87.i_crit_edge:                ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc87.i

for.inc87.i:                                      ; preds = %for.inc81.i.for.inc87.i_crit_edge, %for.body26.i.for.inc87.i_crit_edge, %for.body16.i.for.inc87.i_crit_edge
  %asic_pll.sroa.0.13 = phi i32 [ %asic_pll.sroa.0.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.0.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.0.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.11.13 = phi i32 [ %asic_pll.sroa.11.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.11.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.11.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.19.13 = phi i32 [ %asic_pll.sroa.19.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.19.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.19.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.27.13 = phi i32 [ %asic_pll.sroa.27.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.27.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.27.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.35.13 = phi i32 [ %asic_pll.sroa.35.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.35.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.35.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.43.13 = phi i32 [ %asic_pll.sroa.43.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.43.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.43.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.51.13 = phi i32 [ %asic_pll.sroa.51.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.51.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.51.3, %for.body26.i.for.inc87.i_crit_edge ]
  %asic_pll.sroa.59.13 = phi i32 [ %asic_pll.sroa.59.2, %for.body16.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.59.12, %for.inc81.i.for.inc87.i_crit_edge ], [ %asic_pll.sroa.59.3, %for.body26.i.for.inc87.i_crit_edge ]
  %min_error.13.ph.i = phi i32 [ %min_error.2212.i, %for.body16.i.for.inc87.i_crit_edge ], [ %min_error.4.lcssa.i, %for.inc81.i.for.inc87.i_crit_edge ], [ %min_error.3210.i, %for.body26.i.for.inc87.i_crit_edge ]
  %inc88.i = add nuw nsw i32 %div_q0.0211.i, 1
  %exitcond222.not.i = icmp eq i32 %inc88.i, 7
  br i1 %exitcond222.not.i, label %for.inc87.i.for.inc93.i_crit_edge, label %for.inc87.i.for.body16.i_crit_edge

for.inc87.i.for.body16.i_crit_edge:               ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

for.inc87.i.for.inc93.i_crit_edge:                ; preds = %for.inc87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc93.i

for.inc93.i:                                      ; preds = %for.inc87.i.for.inc93.i_crit_edge, %for.body7.i.for.inc93.i_crit_edge
  %asic_pll.sroa.0.14 = phi i32 [ %asic_pll.sroa.0.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.0.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.11.14 = phi i32 [ %asic_pll.sroa.11.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.11.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.19.14 = phi i32 [ %asic_pll.sroa.19.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.19.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.27.14 = phi i32 [ %asic_pll.sroa.27.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.27.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.35.14 = phi i32 [ %asic_pll.sroa.35.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.35.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.43.14 = phi i32 [ %asic_pll.sroa.43.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.43.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.51.14 = phi i32 [ %asic_pll.sroa.51.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.51.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %asic_pll.sroa.59.14 = phi i32 [ %asic_pll.sroa.59.1, %for.body7.i.for.inc93.i_crit_edge ], [ %asic_pll.sroa.59.13, %for.inc87.i.for.inc93.i_crit_edge ]
  %min_error.15.ph.i = phi i32 [ %min_error.1215.i, %for.body7.i.for.inc93.i_crit_edge ], [ %min_error.13.ph.i, %for.inc87.i.for.inc93.i_crit_edge ]
  %inc94.i = add nuw nsw i32 %div_f0.0213.i, 1
  %exitcond223.not.i = icmp eq i32 %inc94.i, 257
  br i1 %exitcond223.not.i, label %for.inc93.i.for.inc99.i_crit_edge, label %for.inc93.i.for.body7.i_crit_edge

for.inc93.i.for.body7.i_crit_edge:                ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

for.inc93.i.for.inc99.i_crit_edge:                ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc99.i

for.inc99.i:                                      ; preds = %for.inc93.i.for.inc99.i_crit_edge, %if.end10.i.for.inc99.i_crit_edge
  %asic_pll.sroa.0.15 = phi i32 [ %asic_pll.sroa.0.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.0.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.11.15 = phi i32 [ %asic_pll.sroa.11.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.11.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.19.15 = phi i32 [ %asic_pll.sroa.19.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.19.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.27.15 = phi i32 [ %asic_pll.sroa.27.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.27.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.35.15 = phi i32 [ %asic_pll.sroa.35.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.35.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.43.15 = phi i32 [ %asic_pll.sroa.43.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.43.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.51.15 = phi i32 [ %asic_pll.sroa.51.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.51.1, %if.end10.i.for.inc99.i_crit_edge ]
  %asic_pll.sroa.59.15 = phi i32 [ %asic_pll.sroa.59.14, %for.inc93.i.for.inc99.i_crit_edge ], [ %asic_pll.sroa.59.1, %if.end10.i.for.inc99.i_crit_edge ]
  %min_error.1.lcssa.i = phi i32 [ %min_error.15.ph.i, %for.inc93.i.for.inc99.i_crit_edge ], [ %min_error.1215.i, %if.end10.i.for.inc99.i_crit_edge ]
  %inc100.i = add nuw nsw i32 %div_r0.0217.i150, 1
  %div.i = udiv i32 25000000, %inc100.i
  %exitcond224.i = icmp eq i32 %inc100.i, 6
  br i1 %exitcond224.i, label %for.inc99.i.ufx_calc_pll_values.exit_crit_edge, label %for.inc99.i.for.cond5.preheader.i_crit_edge

for.inc99.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader.i

for.inc99.i.ufx_calc_pll_values.exit_crit_edge:   ; preds = %for.inc99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ufx_calc_pll_values.exit

ufx_calc_pll_values.exit:                         ; preds = %for.inc99.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge, %if.then55.i.ufx_calc_pll_values.exit_crit_edge
  %asic_pll.sroa.0.16 = phi i32 [ %sub56.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub56.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.0.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.11.16 = phi i32 [ %sub58.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub58.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.11.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.19.16 = phi i32 [ %div_q0.0211.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %div_q0.0211.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.19.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.27.16 = phi i32 [ %retval.0.i.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.27.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.35.16 = phi i32 [ %sub61.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub61.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.35.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.43.16 = phi i32 [ %sub63.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %sub63.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.43.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.51.16 = phi i32 [ 0, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ 1, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ 2, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ 3, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ 4, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ 5, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ 6, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.51.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  %asic_pll.sroa.59.16 = phi i32 [ %retval.0.i169.i, %if.then55.6.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.5.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.4.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.3.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.2.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.1.i.ufx_calc_pll_values.exit_crit_edge ], [ %retval.0.i169.i, %if.then55.i.ufx_calc_pll_values.exit_crit_edge ], [ %asic_pll.sroa.59.15, %for.inc99.i.ufx_calc_pll_values.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !706

do.body4.i:                                       ; preds = %ufx_calc_pll_values.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i:                                        ; preds = %ufx_calc_pll_values.exit
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end8_crit_edge, label %if.end12.i

do.end9.i.do.end8_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.end12.i:                                       ; preds = %do.end9.i
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 251658368, ptr %call7.i.i, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28672, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %if.end11, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 28672, i32 noundef -2147483633) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end26.i, %do.end9.i.do.end8_crit_edge
  %retval.0.i90.ph = phi i32 [ %call15.i, %do.end26.i ], [ -12, %do.end9.i.do.end8_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end12.i
  %shl = shl i32 %asic_pll.sroa.35.16, 8
  %or = or i32 %asic_pll.sroa.43.16, %shl
  %shl12 = shl i32 %asic_pll.sroa.51.16, 16
  %or13 = or i32 %or, %shl12
  %shl14 = shl i32 %asic_pll.sroa.59.16, 20
  %or15 = or i32 %or13, %shl14
  %call16 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28680, i32 noundef %or15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  %shl25 = shl i32 %asic_pll.sroa.0.16, 8
  %or26 = or i32 %asic_pll.sroa.11.16, %shl25
  %shl27 = shl i32 %asic_pll.sroa.19.16, 16
  %or28 = or i32 %or26, %shl27
  %shl29 = shl i32 %asic_pll.sroa.27.16, 20
  %or30 = or i32 %or28, %shl29
  %call31 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28676, i32 noundef %or30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #14
  br label %cleanup

if.end39:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #10
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %data.i.i, align 4, !annotation !705
  %call.i.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 28672, ptr noundef nonnull %data.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i91 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i91, label %if.end39.do.end45_crit_edge, label %if.end.i.i

if.end39.do.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

if.end.i.i:                                       ; preds = %if.end39
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.i.i, align 4
  %and.i.i = and i32 %15, -6
  %call2.i.i = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28672, i32 noundef %and.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.do.end45_crit_edge, label %if.end48

if.end.i.i.do.end45_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end45:                                         ; preds = %if.end.i.i.do.end45_crit_edge, %if.end39.do.end45_crit_edge
  %.str.204.sink.i.i = phi ptr [ @.str.201, %if.end39.do.end45_crit_edge ], [ @.str.204, %if.end.i.i.do.end45_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i, %if.end39.do.end45_crit_edge ], [ %call2.i.i, %if.end.i.i.do.end45_crit_edge ]
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i, i32 noundef 28672) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #14
  br label %cleanup

if.end48:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #10
  tail call void @msleep(i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i93) #10
  %16 = ptrtoint ptr %data.i.i93 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %data.i.i93, align 4, !annotation !705
  %call.i.i94 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 28672, ptr noundef nonnull %data.i.i93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %cmp.i.i95 = icmp slt i32 %call.i.i94, 0
  br i1 %cmp.i.i95, label %if.end48.do.end54_crit_edge, label %if.end.i.i99

if.end48.do.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.end.i.i99:                                     ; preds = %if.end48
  %17 = ptrtoint ptr %data.i.i93 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.i.i93, align 4
  %and.i.i96 = and i32 %18, -11
  %call2.i.i97 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28672, i32 noundef %and.i.i96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i97)
  %cmp3.i.i98 = icmp slt i32 %call2.i.i97, 0
  br i1 %cmp3.i.i98, label %if.end.i.i99.do.end54_crit_edge, label %if.end57

if.end.i.i99.do.end54_crit_edge:                  ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.end54:                                         ; preds = %if.end.i.i99.do.end54_crit_edge, %if.end48.do.end54_crit_edge
  %.str.204.sink.i.i100 = phi ptr [ @.str.201, %if.end48.do.end54_crit_edge ], [ @.str.204, %if.end.i.i99.do.end54_crit_edge ]
  %retval.0.ph.i.i101 = phi i32 [ %call.i.i94, %if.end48.do.end54_crit_edge ], [ %call2.i.i97, %if.end.i.i99.do.end54_crit_edge ]
  %call9.i.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i100, i32 noundef 28672) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i93) #10
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #14
  br label %cleanup

if.end57:                                         ; preds = %if.end.i.i99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i93) #10
  tail call void @msleep(i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i106) #10
  %19 = ptrtoint ptr %data.i.i106 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %data.i.i106, align 4, !annotation !705
  %call.i.i107 = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 28672, ptr noundef nonnull %data.i.i106) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp.i.i108 = icmp slt i32 %call.i.i107, 0
  br i1 %cmp.i.i108, label %if.end57.do.end63_crit_edge, label %if.end.i.i112

if.end57.do.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

if.end.i.i112:                                    ; preds = %if.end57
  %20 = ptrtoint ptr %data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.i.i106, align 4
  %and.i.i109 = and i32 %21, 2147483647
  %call2.i.i110 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 28672, i32 noundef %and.i.i109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i110)
  %cmp3.i.i111 = icmp slt i32 %call2.i.i110, 0
  br i1 %cmp3.i.i111, label %if.end.i.i112.do.end63_crit_edge, label %ufx_reg_clear_bits.exit118

if.end.i.i112.do.end63_crit_edge:                 ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end63

ufx_reg_clear_bits.exit118:                       ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i106) #10
  br label %cleanup

do.end63:                                         ; preds = %if.end.i.i112.do.end63_crit_edge, %if.end57.do.end63_crit_edge
  %.str.204.sink.i.i113 = phi ptr [ @.str.201, %if.end57.do.end63_crit_edge ], [ @.str.204, %if.end.i.i112.do.end63_crit_edge ]
  %retval.0.ph.i.i114 = phi i32 [ %call.i.i107, %if.end57.do.end63_crit_edge ], [ %call2.i.i110, %if.end.i.i112.do.end63_crit_edge ]
  %call9.i.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i113, i32 noundef 28672) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i106) #10
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %ufx_reg_clear_bits.exit118, %do.end54, %do.end45, %do.end36, %do.end21, %do.end8
  %retval.0 = phi i32 [ %retval.0.i90.ph, %do.end8 ], [ %call16, %do.end21 ], [ %call31, %do.end36 ], [ %retval.0.ph.i.i, %do.end45 ], [ %retval.0.ph.i.i101, %do.end54 ], [ %retval.0.ph.i.i114, %do.end63 ], [ 0, %ufx_reg_clear_bits.exit118 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_to_pfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_read_edid(ptr noundef %dev, ptr nocapture noundef %edid) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !706

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/smscufx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !716
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i.i, label %do.end9.i.i.do.end12_crit_edge, label %if.end12.i.i

do.end9.i.i.do.end12_crit_edge:                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end12.i.i:                                     ; preds = %do.end9.i.i
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i.i, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %5, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call15.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4204, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp.i.i, label %do.end26.i.i, label %do.end9.i43.i, !prof !706

do.end26.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4204, i32 noundef 0) #14
  br label %do.end12

do.end9.i43.i:                                    ; preds = %if.end12.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i39.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i42.i = icmp eq ptr %call7.i.i39.i, null
  br i1 %tobool10.not.i42.i, label %do.end9.i43.i.do.end12_crit_edge, label %if.end12.i48.i

do.end9.i43.i.do.end12_crit_edge:                 ; preds = %do.end9.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end12.i48.i:                                   ; preds = %do.end9.i43.i
  %7 = ptrtoint ptr %call7.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call7.i.i39.i, align 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i44.i = shl i32 %11, 8
  %or.i45.i = or i32 %shl.i.i44.i, -2147483648
  %call15.i46.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i45.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12304, ptr noundef nonnull %call7.i.i39.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i39.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i46.i)
  %cmp.i47.i = icmp slt i32 %call15.i46.i, 0
  br i1 %cmp.i47.i, label %do.end26.i50.i, label %do.end9.i22, !prof !706

do.end26.i50.i:                                   ; preds = %if.end12.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 12304, i32 noundef 0) #14
  br label %do.end12

do.end9.i22:                                      ; preds = %if.end12.i48.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i21 = icmp eq ptr %call7.i.i18, null
  br i1 %tobool10.not.i21, label %do.end9.i22.do.end16.i_crit_edge, label %if.end12.i25

do.end9.i22.do.end16.i_crit_edge:                 ; preds = %do.end9.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

if.end12.i25:                                     ; preds = %do.end9.i22
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i23 = shl i32 %16, 8
  %or15.i = or i32 %shl.i.i23, -2147483520
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or15.i, i8 noundef zeroext -95, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 4100, ptr noundef nonnull %call7.i.i18, i16 noundef zeroext 4, i32 noundef 5000) #10
  %17 = ptrtoint ptr %call7.i.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call7.i.i18, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %call7.i.i18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call7.i.i18, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i24 = icmp slt i32 %call16.i, 0
  br i1 %cmp.i24, label %do.end27.i, label %do.end9.i, !prof !706

do.end27.i:                                       ; preds = %if.end12.i25
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef 4100) #14
  br label %do.end16.i

do.end9.i:                                        ; preds = %if.end12.i25
  %and.i.i = and i32 %19, -1024
  %or.i54.i = or i32 %and.i.i, 80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %do.end9.i.do.end16.i_crit_edge, label %if.end12.i

do.end9.i.do.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

if.end12.i:                                       ; preds = %do.end9.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i54.i) #10
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call15.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4100, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %do.end26.i, label %do.end9.i60.i, !prof !706

do.end26.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4100, i32 noundef %or.i54.i) #14
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end26.i, %do.end9.i.do.end16.i_crit_edge, %do.end27.i, %do.end9.i22.do.end16.i_crit_edge
  %.str.204.sink.i.i = phi ptr [ @.str.201, %do.end9.i22.do.end16.i_crit_edge ], [ @.str.201, %do.end27.i ], [ @.str.204, %do.end9.i.do.end16.i_crit_edge ], [ @.str.204, %do.end26.i ]
  %retval.0.ph.i.i = phi i32 [ -12, %do.end9.i22.do.end16.i_crit_edge ], [ %call16.i, %do.end27.i ], [ -12, %do.end9.i.do.end16.i_crit_edge ], [ %call15.i, %do.end26.i ]
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink.i.i, i32 noundef 4100) #14
  br label %do.end12

do.end9.i60.i:                                    ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i56.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i59.i = icmp eq ptr %call7.i.i56.i, null
  br i1 %tobool10.not.i59.i, label %do.end9.i60.i.do.end12_crit_edge, label %if.end12.i65.i

do.end9.i60.i.do.end12_crit_edge:                 ; preds = %do.end9.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.end12.i65.i:                                   ; preds = %do.end9.i60.i
  %29 = ptrtoint ptr %call7.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16777216, ptr %call7.i.i56.i, align 8
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i61.i = shl i32 %33, 8
  %or.i62.i = or i32 %shl.i.i61.i, -2147483648
  %call15.i63.i = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i62.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4204, ptr noundef nonnull %call7.i.i56.i, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i56.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i63.i)
  %cmp.i64.i = icmp slt i32 %call15.i63.i, 0
  br i1 %cmp.i64.i, label %do.end26.i67.i, label %if.end14, !prof !706

do.end26.i67.i:                                   ; preds = %if.end12.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4204, i32 noundef 1) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end26.i67.i, %do.end9.i60.i.do.end12_crit_edge, %do.end16.i, %do.end26.i50.i, %do.end9.i43.i.do.end12_crit_edge, %do.end26.i.i, %do.end9.i.i.do.end12_crit_edge
  %.str.351.sink.i = phi ptr [ @.str.384, %do.end16.i ], [ @.str.333, %do.end9.i.i.do.end12_crit_edge ], [ @.str.333, %do.end26.i.i ], [ @.str.381, %do.end9.i43.i.do.end12_crit_edge ], [ @.str.381, %do.end26.i50.i ], [ @.str.351, %do.end9.i60.i.do.end12_crit_edge ], [ @.str.351, %do.end26.i67.i ]
  %retval.0.ph.i = phi i32 [ %retval.0.ph.i.i, %do.end16.i ], [ -12, %do.end9.i.i.do.end12_crit_edge ], [ %call15.i.i, %do.end26.i.i ], [ -12, %do.end9.i43.i.do.end12_crit_edge ], [ %call15.i46.i, %do.end26.i50.i ], [ -12, %do.end9.i60.i.do.end12_crit_edge ], [ %call15.i63.i, %do.end26.i67.i ]
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.351.sink.i) #14
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.361) #14
  br label %cleanup92

if.end14:                                         ; preds = %if.end12.i65.i
  %34 = call ptr @memset(ptr %edid, i32 255, i32 128)
  br label %for.body

for.body:                                         ; preds = %for.inc.15.for.body_crit_edge, %if.end14
  %i.060 = phi i32 [ 0, %if.end14 ], [ %inc61, %for.inc.15.for.body_crit_edge ]
  %edid_u32.059 = phi ptr [ %edid, %if.end14 ], [ %incdec.ptr.15, %for.inc.15.for.body_crit_edge ]
  %mul = shl i32 %i.060, 14
  %or = or i32 %mul, 737607680
  %call16 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 4352, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end24

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.364) #14
  br label %cleanup92

if.end24:                                         ; preds = %for.body
  %or25 = or i32 %mul, -1409875968
  %call26 = tail call fastcc i32 @ufx_reg_write(ptr noundef nonnull %dev, i32 noundef 4352, i32 noundef %or25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.364) #14
  br label %cleanup92

if.end34:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %tmp.i, align 4, !annotation !705
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end34
  %i.044.i = phi i32 [ 0, %if.end34 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i = call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4352, ptr noundef nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388) #14
  br label %do.end40

if.end.i:                                         ; preds = %for.body.i
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp4.i = icmp sgt i32 %37, -1
  br i1 %cmp4.i, label %if.then5.i, label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  %and6.i = and i32 %37, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %ufx_i2c_wait_busy.exit, label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.391, i32 noundef %37) #14
  br label %do.end40

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.044.i)
  %cmp15.i = icmp ugt i32 %i.044.i, 9
  br i1 %cmp15.i, label %if.then16.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 10) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %if.end14.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %do.end9.i.i6, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end9.i.i6:                                     ; preds = %for.inc.i
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 4) #13
  %tobool10.not.i.i5 = icmp eq ptr %call7.i.i.i2, null
  br i1 %tobool10.not.i.i5, label %do.end9.i.i6.do.end28.i_crit_edge, label %if.end12.i.i11

do.end9.i.i6.do.end28.i_crit_edge:                ; preds = %do.end9.i.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28.i

if.end12.i.i11:                                   ; preds = %do.end9.i.i6
  %39 = ptrtoint ptr %call7.i.i.i2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 64, ptr %call7.i.i.i2, align 8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i.i7 = shl i32 %43, 8
  %or.i.i8 = or i32 %shl.i.i.i7, -2147483648
  %call15.i.i9 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i.i8, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4352, ptr noundef nonnull %call7.i.i.i2, i16 noundef zeroext 4, i32 noundef 5000) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i9)
  %cmp.i.i10 = icmp slt i32 %call15.i.i9, 0
  br i1 %cmp.i.i10, label %do.end26.i.i13, label %if.end12.i.i11.do.end40_crit_edge, !prof !706

if.end12.i.i11.do.end40_crit_edge:                ; preds = %if.end12.i.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end26.i.i13:                                   ; preds = %if.end12.i.i11
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef 4352, i32 noundef 1073741824) #14
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end26.i.i13, %do.end9.i.i6.do.end28.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call15.i.i9, %do.end26.i.i13 ], [ -12, %do.end9.i.i6.do.end28.i_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397) #14
  br label %do.end40

ufx_i2c_wait_busy.exit:                           ; preds = %if.then5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  %call48 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4368, ptr noundef %edid_u32.059)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %ufx_i2c_wait_busy.exit.cleanup.thread_crit_edge, label %for.inc

ufx_i2c_wait_busy.exit.cleanup.thread_crit_edge:  ; preds = %ufx_i2c_wait_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.end40:                                         ; preds = %do.end28.i, %if.end12.i.i11.do.end40_crit_edge, %do.end10.i, %do.end.i
  %retval.0.i14.ph = phi i32 [ -110, %if.end12.i.i11.do.end40_crit_edge ], [ %retval.0.i.ph.i, %do.end28.i ], [ -5, %do.end10.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369) #14
  br label %cleanup92

cleanup.thread:                                   ; preds = %for.inc.14.cleanup.thread_crit_edge, %for.inc.13.cleanup.thread_crit_edge, %for.inc.12.cleanup.thread_crit_edge, %for.inc.11.cleanup.thread_crit_edge, %for.inc.10.cleanup.thread_crit_edge, %for.inc.9.cleanup.thread_crit_edge, %for.inc.8.cleanup.thread_crit_edge, %for.inc.7.cleanup.thread_crit_edge, %for.inc.6.cleanup.thread_crit_edge, %for.inc.5.cleanup.thread_crit_edge, %for.inc.4.cleanup.thread_crit_edge, %for.inc.3.cleanup.thread_crit_edge, %for.inc.2.cleanup.thread_crit_edge, %for.inc.1.cleanup.thread_crit_edge, %for.inc.cleanup.thread_crit_edge, %ufx_i2c_wait_busy.exit.cleanup.thread_crit_edge
  %call48.lcssa = phi i32 [ %call48, %ufx_i2c_wait_busy.exit.cleanup.thread_crit_edge ], [ %call48.1, %for.inc.cleanup.thread_crit_edge ], [ %call48.2, %for.inc.1.cleanup.thread_crit_edge ], [ %call48.3, %for.inc.2.cleanup.thread_crit_edge ], [ %call48.4, %for.inc.3.cleanup.thread_crit_edge ], [ %call48.5, %for.inc.4.cleanup.thread_crit_edge ], [ %call48.6, %for.inc.5.cleanup.thread_crit_edge ], [ %call48.7, %for.inc.6.cleanup.thread_crit_edge ], [ %call48.8, %for.inc.7.cleanup.thread_crit_edge ], [ %call48.9, %for.inc.8.cleanup.thread_crit_edge ], [ %call48.10, %for.inc.9.cleanup.thread_crit_edge ], [ %call48.11, %for.inc.10.cleanup.thread_crit_edge ], [ %call48.12, %for.inc.11.cleanup.thread_crit_edge ], [ %call48.13, %for.inc.12.cleanup.thread_crit_edge ], [ %call48.14, %for.inc.13.cleanup.thread_crit_edge ], [ %call48.15, %for.inc.14.cleanup.thread_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372) #14
  br label %cleanup92

for.inc:                                          ; preds = %ufx_i2c_wait_busy.exit
  %incdec.ptr = getelementptr i32, ptr %edid_u32.059, i32 1
  %call48.1 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4372, ptr noundef %incdec.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %cmp49.1 = icmp slt i32 %call48.1, 0
  br i1 %cmp49.1, label %for.inc.cleanup.thread_crit_edge, label %for.inc.1

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i32, ptr %edid_u32.059, i32 2
  %call48.2 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4376, ptr noundef %incdec.ptr.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.2)
  %cmp49.2 = icmp slt i32 %call48.2, 0
  br i1 %cmp49.2, label %for.inc.1.cleanup.thread_crit_edge, label %for.inc.2

for.inc.1.cleanup.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i32, ptr %edid_u32.059, i32 3
  %call48.3 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4380, ptr noundef %incdec.ptr.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.3)
  %cmp49.3 = icmp slt i32 %call48.3, 0
  br i1 %cmp49.3, label %for.inc.2.cleanup.thread_crit_edge, label %for.inc.3

for.inc.2.cleanup.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i32, ptr %edid_u32.059, i32 4
  %call48.4 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4384, ptr noundef %incdec.ptr.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.4)
  %cmp49.4 = icmp slt i32 %call48.4, 0
  br i1 %cmp49.4, label %for.inc.3.cleanup.thread_crit_edge, label %for.inc.4

for.inc.3.cleanup.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr i32, ptr %edid_u32.059, i32 5
  %call48.5 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4388, ptr noundef %incdec.ptr.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.5)
  %cmp49.5 = icmp slt i32 %call48.5, 0
  br i1 %cmp49.5, label %for.inc.4.cleanup.thread_crit_edge, label %for.inc.5

for.inc.4.cleanup.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr i32, ptr %edid_u32.059, i32 6
  %call48.6 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4392, ptr noundef %incdec.ptr.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.6)
  %cmp49.6 = icmp slt i32 %call48.6, 0
  br i1 %cmp49.6, label %for.inc.5.cleanup.thread_crit_edge, label %for.inc.6

for.inc.5.cleanup.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr i32, ptr %edid_u32.059, i32 7
  %call48.7 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4396, ptr noundef %incdec.ptr.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.7)
  %cmp49.7 = icmp slt i32 %call48.7, 0
  br i1 %cmp49.7, label %for.inc.6.cleanup.thread_crit_edge, label %for.inc.7

for.inc.6.cleanup.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr i32, ptr %edid_u32.059, i32 8
  %call48.8 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4400, ptr noundef %incdec.ptr.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.8)
  %cmp49.8 = icmp slt i32 %call48.8, 0
  br i1 %cmp49.8, label %for.inc.7.cleanup.thread_crit_edge, label %for.inc.8

for.inc.7.cleanup.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr i32, ptr %edid_u32.059, i32 9
  %call48.9 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4404, ptr noundef %incdec.ptr.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.9)
  %cmp49.9 = icmp slt i32 %call48.9, 0
  br i1 %cmp49.9, label %for.inc.8.cleanup.thread_crit_edge, label %for.inc.9

for.inc.8.cleanup.thread_crit_edge:               ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr i32, ptr %edid_u32.059, i32 10
  %call48.10 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4408, ptr noundef %incdec.ptr.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.10)
  %cmp49.10 = icmp slt i32 %call48.10, 0
  br i1 %cmp49.10, label %for.inc.9.cleanup.thread_crit_edge, label %for.inc.10

for.inc.9.cleanup.thread_crit_edge:               ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr i32, ptr %edid_u32.059, i32 11
  %call48.11 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4412, ptr noundef %incdec.ptr.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.11)
  %cmp49.11 = icmp slt i32 %call48.11, 0
  br i1 %cmp49.11, label %for.inc.10.cleanup.thread_crit_edge, label %for.inc.11

for.inc.10.cleanup.thread_crit_edge:              ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr i32, ptr %edid_u32.059, i32 12
  %call48.12 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4416, ptr noundef %incdec.ptr.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.12)
  %cmp49.12 = icmp slt i32 %call48.12, 0
  br i1 %cmp49.12, label %for.inc.11.cleanup.thread_crit_edge, label %for.inc.12

for.inc.11.cleanup.thread_crit_edge:              ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr i32, ptr %edid_u32.059, i32 13
  %call48.13 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4420, ptr noundef %incdec.ptr.12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.13)
  %cmp49.13 = icmp slt i32 %call48.13, 0
  br i1 %cmp49.13, label %for.inc.12.cleanup.thread_crit_edge, label %for.inc.13

for.inc.12.cleanup.thread_crit_edge:              ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr i32, ptr %edid_u32.059, i32 14
  %call48.14 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4424, ptr noundef %incdec.ptr.13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.14)
  %cmp49.14 = icmp slt i32 %call48.14, 0
  br i1 %cmp49.14, label %for.inc.13.cleanup.thread_crit_edge, label %for.inc.14

for.inc.13.cleanup.thread_crit_edge:              ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr i32, ptr %edid_u32.059, i32 15
  %call48.15 = tail call fastcc i32 @ufx_reg_read(ptr noundef nonnull %dev, i32 noundef 4428, ptr noundef %incdec.ptr.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.15)
  %cmp49.15 = icmp slt i32 %call48.15, 0
  br i1 %cmp49.15, label %for.inc.14.cleanup.thread_crit_edge, label %for.inc.15

for.inc.14.cleanup.thread_crit_edge:              ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

for.inc.15:                                       ; preds = %for.inc.14
  %incdec.ptr.15 = getelementptr i32, ptr %edid_u32.059, i32 16
  %inc61 = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc61, 2
  br i1 %exitcond.not, label %for.body65.preheader, label %for.inc.15.for.body_crit_edge

for.inc.15.for.body_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body65.preheader:                             ; preds = %for.inc.15
  %44 = ptrtoint ptr %edid to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %edid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp66.not = icmp eq i8 %45, -1
  br i1 %cmp66.not, label %for.cond63, label %for.body65.preheader.do.body69_crit_edge

for.body65.preheader.do.body69_crit_edge:         ; preds = %for.body65.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63:                                       ; preds = %for.body65.preheader
  %arrayidx.1 = getelementptr i8, ptr %edid, i32 1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp66.not.1 = icmp eq i8 %47, -1
  br i1 %cmp66.not.1, label %for.cond63.1, label %for.cond63.do.body69_crit_edge

for.cond63.do.body69_crit_edge:                   ; preds = %for.cond63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.1:                                     ; preds = %for.cond63
  %arrayidx.2 = getelementptr i8, ptr %edid, i32 2
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp66.not.2 = icmp eq i8 %49, -1
  br i1 %cmp66.not.2, label %for.cond63.2, label %for.cond63.1.do.body69_crit_edge

for.cond63.1.do.body69_crit_edge:                 ; preds = %for.cond63.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.2:                                     ; preds = %for.cond63.1
  %arrayidx.3 = getelementptr i8, ptr %edid, i32 3
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %51)
  %cmp66.not.3 = icmp eq i8 %51, -1
  br i1 %cmp66.not.3, label %for.cond63.3, label %for.cond63.2.do.body69_crit_edge

for.cond63.2.do.body69_crit_edge:                 ; preds = %for.cond63.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.3:                                     ; preds = %for.cond63.2
  %arrayidx.4 = getelementptr i8, ptr %edid, i32 4
  %52 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %cmp66.not.4 = icmp eq i8 %53, -1
  br i1 %cmp66.not.4, label %for.cond63.4, label %for.cond63.3.do.body69_crit_edge

for.cond63.3.do.body69_crit_edge:                 ; preds = %for.cond63.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.4:                                     ; preds = %for.cond63.3
  %arrayidx.5 = getelementptr i8, ptr %edid, i32 5
  %54 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %cmp66.not.5 = icmp eq i8 %55, -1
  br i1 %cmp66.not.5, label %for.cond63.5, label %for.cond63.4.do.body69_crit_edge

for.cond63.4.do.body69_crit_edge:                 ; preds = %for.cond63.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.5:                                     ; preds = %for.cond63.4
  %arrayidx.6 = getelementptr i8, ptr %edid, i32 6
  %56 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %cmp66.not.6 = icmp eq i8 %57, -1
  br i1 %cmp66.not.6, label %for.cond63.6, label %for.cond63.5.do.body69_crit_edge

for.cond63.5.do.body69_crit_edge:                 ; preds = %for.cond63.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.6:                                     ; preds = %for.cond63.5
  %arrayidx.7 = getelementptr i8, ptr %edid, i32 7
  %58 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp66.not.7 = icmp eq i8 %59, -1
  br i1 %cmp66.not.7, label %for.cond63.7, label %for.cond63.6.do.body69_crit_edge

for.cond63.6.do.body69_crit_edge:                 ; preds = %for.cond63.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.7:                                     ; preds = %for.cond63.6
  %arrayidx.8 = getelementptr i8, ptr %edid, i32 8
  %60 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %cmp66.not.8 = icmp eq i8 %61, -1
  br i1 %cmp66.not.8, label %for.cond63.8, label %for.cond63.7.do.body69_crit_edge

for.cond63.7.do.body69_crit_edge:                 ; preds = %for.cond63.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.8:                                     ; preds = %for.cond63.7
  %arrayidx.9 = getelementptr i8, ptr %edid, i32 9
  %62 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp66.not.9 = icmp eq i8 %63, -1
  br i1 %cmp66.not.9, label %for.cond63.9, label %for.cond63.8.do.body69_crit_edge

for.cond63.8.do.body69_crit_edge:                 ; preds = %for.cond63.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.9:                                     ; preds = %for.cond63.8
  %arrayidx.10 = getelementptr i8, ptr %edid, i32 10
  %64 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %65)
  %cmp66.not.10 = icmp eq i8 %65, -1
  br i1 %cmp66.not.10, label %for.cond63.10, label %for.cond63.9.do.body69_crit_edge

for.cond63.9.do.body69_crit_edge:                 ; preds = %for.cond63.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.10:                                    ; preds = %for.cond63.9
  %arrayidx.11 = getelementptr i8, ptr %edid, i32 11
  %66 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %67)
  %cmp66.not.11 = icmp eq i8 %67, -1
  br i1 %cmp66.not.11, label %for.cond63.11, label %for.cond63.10.do.body69_crit_edge

for.cond63.10.do.body69_crit_edge:                ; preds = %for.cond63.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.11:                                    ; preds = %for.cond63.10
  %arrayidx.12 = getelementptr i8, ptr %edid, i32 12
  %68 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp66.not.12 = icmp eq i8 %69, -1
  br i1 %cmp66.not.12, label %for.cond63.12, label %for.cond63.11.do.body69_crit_edge

for.cond63.11.do.body69_crit_edge:                ; preds = %for.cond63.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.12:                                    ; preds = %for.cond63.11
  %arrayidx.13 = getelementptr i8, ptr %edid, i32 13
  %70 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %71)
  %cmp66.not.13 = icmp eq i8 %71, -1
  br i1 %cmp66.not.13, label %for.cond63.13, label %for.cond63.12.do.body69_crit_edge

for.cond63.12.do.body69_crit_edge:                ; preds = %for.cond63.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.13:                                    ; preds = %for.cond63.12
  %arrayidx.14 = getelementptr i8, ptr %edid, i32 14
  %72 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp66.not.14 = icmp eq i8 %73, -1
  br i1 %cmp66.not.14, label %for.cond63.14, label %for.cond63.13.do.body69_crit_edge

for.cond63.13.do.body69_crit_edge:                ; preds = %for.cond63.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.14:                                    ; preds = %for.cond63.13
  %arrayidx.15 = getelementptr i8, ptr %edid, i32 15
  %74 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp66.not.15 = icmp eq i8 %75, -1
  br i1 %cmp66.not.15, label %for.cond63.15, label %for.cond63.14.do.body69_crit_edge

for.cond63.14.do.body69_crit_edge:                ; preds = %for.cond63.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

for.cond63.15:                                    ; preds = %for.cond63.14
  call void @__sanitizer_cov_trace_pc() #12
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377) #14
  br label %cleanup92

do.body69:                                        ; preds = %for.cond63.14.do.body69_crit_edge, %for.cond63.13.do.body69_crit_edge, %for.cond63.12.do.body69_crit_edge, %for.cond63.11.do.body69_crit_edge, %for.cond63.10.do.body69_crit_edge, %for.cond63.9.do.body69_crit_edge, %for.cond63.8.do.body69_crit_edge, %for.cond63.7.do.body69_crit_edge, %for.cond63.6.do.body69_crit_edge, %for.cond63.5.do.body69_crit_edge, %for.cond63.4.do.body69_crit_edge, %for.cond63.3.do.body69_crit_edge, %for.cond63.2.do.body69_crit_edge, %for.cond63.1.do.body69_crit_edge, %for.cond63.do.body69_crit_edge, %for.body65.preheader.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_read_edid.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_read_edid, %if.then79)) #10
          to label %cleanup92 [label %if.then79], !srcloc !710

if.then79:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_read_edid.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.375) #10
  br label %cleanup92

cleanup92:                                        ; preds = %if.then79, %do.body69, %for.cond63.15, %cleanup.thread, %do.end40, %do.end31, %do.end21, %do.end12
  %retval.4 = phi i32 [ %retval.0.ph.i, %do.end12 ], [ -110, %for.cond63.15 ], [ 128, %if.then79 ], [ 128, %do.body69 ], [ %call48.lcssa, %cleanup.thread ], [ %call16, %do.end21 ], [ %call26, %do.end31 ], [ %retval.0.i14.ph, %do.end40 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufx_is_valid_mode(ptr nocapture noundef readonly %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %0 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %2 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yres, align 4
  %mul = mul i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2359296, i32 %mul)
  %cmp = icmp ugt i32 %mul, 2359296
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_is_valid_mode, %if.then3)) #10
          to label %return [label %if.then3], !srcloc !710

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres, align 4
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.401, i32 noundef %5, i32 noundef %7) #10
  br label %return

if.end6:                                          ; preds = %entry
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %8 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %9)
  %cmp7 = icmp ult i32 %9, 5000
  br i1 %cmp7, label %do.body9, label %do.body28

do.body9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_is_valid_mode, %if.then21)) #10
          to label %return [label %if.then21], !srcloc !710

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres, align 4
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  %14 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixclock, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.403, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %return

do.body28:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_is_valid_mode, %if.then40)) #10
          to label %return [label %if.then40], !srcloc !710

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xres, align 4
  %18 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yres, align 4
  %20 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000, %21
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_is_valid_mode.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.405, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %div) #10
  br label %return

return:                                           ; preds = %if.then40, %do.body28, %if.then21, %do.body9, %if.then3, %do.body
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then21 ], [ 1, %if.then40 ], [ 0, %do.body ], [ 0, %do.body9 ], [ 1, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_nearest_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufx_free_urb_list(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3
  %count1 = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufx_free_urb_list.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufx_free_urb_list, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ufx_free_urb_list.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.417) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %limit_sem = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not39 = icmp eq i32 %1, 0
  br i1 %tobool4.not39, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %lock = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 1
  %size = getelementptr inbounds %struct.ufx_data, ptr %dev, i32 0, i32 3, i32 5
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %dec40.in = phi i32 [ %1, %while.body.lr.ph ], [ %dec40, %list_del_init.exit.while.body_crit_edge ]
  %dec40 = add i32 %dec40.in, -1
  %call6 = tail call i32 @down_interruptible(ptr noundef %limit_sem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body11, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body11:                                        ; preds = %while.body
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urbs, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body11.list_del_init.exit_crit_edge

do.body11.list_del_init.exit_crit_edge:           ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body11.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #10
  %urb24 = getelementptr inbounds %struct.urb_node, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %urb24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb24, align 4
  %dev25 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %20 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %21) #10
  tail call void @usb_free_urb(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %3) #10
  %tobool4.not = icmp eq i32 %dec40, 0
  br i1 %tobool4.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 348)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 348)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !323, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !377, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !393, !394, !396, !398, !400, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !418, !420, !421, !422, !424, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !468, !470, !471, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !487, !488, !490, !491, !492, !494, !495, !496, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !514, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !534, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !553, !555, !556, !557, !559, !560, !561, !563, !564, !565, !567, !568, !569, !571, !572, !573, !575, !576, !577, !579, !580, !581, !582, !584, !585, !586, !588, !589, !590, !592, !593, !594, !595, !597, !598, !599, !601, !602, !604, !605, !606, !608, !609, !610, !612, !613, !614, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !635, !636, !637, !638, !640, !641, !642, !644, !645, !646, !648, !649, !650, !652, !653, !654, !655, !657, !658, !659, !661, !662, !663, !665, !667, !668, !669, !670, !672, !673, !674, !675, !677, !678, !679, !680, !682, !683, !684, !685, !687, !688, !689, !690, !692, !693, !694}
!llvm.module.flags = !{!696, !697, !698, !699, !700, !701, !702, !703}
!llvm.ident = !{!704}

!0 = !{ptr @__initcall__kmod_smscufx__341_1773_ufx_driver_init6, !1, !"__initcall__kmod_smscufx__341_1773_ufx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/smscufx.c", i32 1773, i32 1}
!2 = !{ptr @__exitcall_ufx_driver_exit, !1, !"__exitcall_ufx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_console, !4, !"__param_console", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/smscufx.c", i32 1947, i32 1}
!5 = !{ptr @__UNIQUE_ID_consoletype344, !4, !"__UNIQUE_ID_consoletype344", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_console345, !7, !"__UNIQUE_ID_console345", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/smscufx.c", i32 1948, i32 1}
!8 = !{ptr @__param_fb_defio, !9, !"__param_fb_defio", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/smscufx.c", i32 1950, i32 1}
!10 = !{ptr @__UNIQUE_ID_fb_defiotype346, !9, !"__UNIQUE_ID_fb_defiotype346", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_fb_defio347, !12, !"__UNIQUE_ID_fb_defio347", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/smscufx.c", i32 1951, i32 1}
!13 = !{ptr @__UNIQUE_ID_author348, !14, !"__UNIQUE_ID_author348", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/smscufx.c", i32 1953, i32 1}
!15 = !{ptr @__UNIQUE_ID_description349, !16, !"__UNIQUE_ID_description349", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/smscufx.c", i32 1954, i32 1}
!17 = !{ptr @__UNIQUE_ID_file350, !18, !"__UNIQUE_ID_file350", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/smscufx.c", i32 1955, i32 1}
!19 = !{ptr @__UNIQUE_ID_license351, !18, !"__UNIQUE_ID_license351", i1 false, i1 false}
!20 = !{ptr @console, !21, !"console", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/smscufx.c", i32 130, i32 13}
!22 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ufx_driver, !24, !"ufx_driver", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/smscufx.c", i32 1766, i32 26}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/smscufx.c", i32 1622, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ufx_usb_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @ufx_usb_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/smscufx.c", i32 1634, i32 2}
!35 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug326, !34, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/smscufx.c", i32 1636, i32 2}
!38 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug327, !37, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/smscufx.c", i32 1640, i32 2}
!41 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug328, !40, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/smscufx.c", i32 1641, i32 2}
!44 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug329, !43, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/smscufx.c", i32 1644, i32 3}
!47 = !{ptr @ufx_usb_probe._entry.10, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ufx_usb_probe._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/smscufx.c", i32 1662, i32 3}
!51 = !{ptr @ufx_usb_probe._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ufx_usb_probe._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ufx_usb_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/smscufx.c", i32 1666, i32 2}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ufx_usb_probe.__key.17, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/smscufx.c", i32 1672, i32 2}
!60 = !{ptr @ufx_usb_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ufx_usb_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/smscufx.c", i32 1673, i32 2}
!64 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug330, !63, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/smscufx.c", i32 1676, i32 2}
!67 = !{ptr @ufx_usb_probe._entry.23, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ufx_usb_probe._entry_ptr.25, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/smscufx.c", i32 1677, i32 2}
!71 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug331, !70, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/smscufx.c", i32 1679, i32 2}
!74 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug332, !73, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/smscufx.c", i32 1681, i32 2}
!77 = !{ptr @ufx_usb_probe._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ufx_usb_probe._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/smscufx.c", i32 1683, i32 2}
!81 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug333, !80, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/smscufx.c", i32 1685, i32 2}
!84 = !{ptr @ufx_usb_probe._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ufx_usb_probe._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/smscufx.c", i32 1687, i32 2}
!88 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug334, !87, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/smscufx.c", i32 1689, i32 2}
!91 = !{ptr @ufx_usb_probe._entry.36, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ufx_usb_probe._entry_ptr.38, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/smscufx.c", i32 1691, i32 2}
!95 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug335, !94, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/smscufx.c", i32 1693, i32 2}
!98 = !{ptr @ufx_usb_probe._entry.40, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ufx_usb_probe._entry_ptr.42, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/fbdev/smscufx.c", i32 1695, i32 2}
!102 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug336, !101, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/smscufx.c", i32 1697, i32 2}
!105 = !{ptr @ufx_usb_probe._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ufx_usb_probe._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/smscufx.c", i32 1700, i32 2}
!109 = !{ptr @ufx_usb_probe._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ufx_usb_probe._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/smscufx.c", i32 1705, i32 2}
!113 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug337, !112, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/smscufx.c", i32 1707, i32 2}
!116 = !{ptr @ufx_usb_probe._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ufx_usb_probe._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/fbdev/smscufx.c", i32 1709, i32 2}
!120 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug338, !119, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/smscufx.c", i32 1711, i32 2}
!123 = !{ptr @ufx_usb_probe._entry.55, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ufx_usb_probe._entry_ptr.57, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/smscufx.c", i32 1713, i32 2}
!127 = !{ptr @ufx_usb_probe.__UNIQUE_ID_ddebug339, !126, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/fbdev/smscufx.c", i32 1715, i32 2}
!130 = !{ptr @ufx_usb_probe._entry.59, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ufx_usb_probe._entry_ptr.61, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/fbdev/smscufx.c", i32 1717, i32 2}
!134 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ufx_usb_probe._entry.62, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @ufx_usb_probe._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @ufx_alloc_urb_list.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/video/fbdev/smscufx.c", i32 1850, i32 2}
!139 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ufx_alloc_urb_list.__key.67, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/smscufx.c", i32 1861, i32 3}
!142 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ufx_alloc_urb_list.__key.69, !141, !"__key", i1 false, i1 false}
!144 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/smscufx.c", i32 1893, i32 2}
!147 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @ufx_alloc_urb_list.__UNIQUE_ID_ddebug343, !146, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!149 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/smscufx.c", i32 1786, i32 4}
!152 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ufx_urb_completion._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @ufx_urb_completion._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @sema_init.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!161 = !{ptr @ufx_ops, !162, !"ufx_ops", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/smscufx.c", i32 1271, i32 28}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/smscufx.c", i32 1096, i32 2}
!165 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ufx_ops_open.__UNIQUE_ID_ddebug316, !164, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!167 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/smscufx.c", i32 866, i32 4}
!170 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ufx_handle_damage._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ufx_handle_damage._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/smscufx.c", i32 885, i32 3}
!175 = !{ptr @ufx_handle_damage._entry.83, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ufx_handle_damage._entry_ptr.85, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/video/fbdev/smscufx.c", i32 1910, i32 3}
!179 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ufx_get_urb._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @ufx_get_urb._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/smscufx.c", i32 1942, i32 3}
!184 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ufx_submit_urb._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @ufx_submit_urb._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/video/fbdev/smscufx.c", i32 1175, i32 2}
!189 = !{ptr @.str.91, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ufx_ops_release.__UNIQUE_ID_ddebug319, !188, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!191 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/smscufx.c", i32 665, i32 2}
!194 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @ufx_set_vid_mode._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @ufx_set_vid_mode._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/smscufx.c", i32 668, i32 2}
!199 = !{ptr @ufx_set_vid_mode._entry.95, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @ufx_set_vid_mode._entry_ptr.97, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.99, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/smscufx.c", i32 672, i32 2}
!203 = !{ptr @ufx_set_vid_mode._entry.98, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @ufx_set_vid_mode._entry_ptr.100, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/smscufx.c", i32 675, i32 2}
!207 = !{ptr @ufx_set_vid_mode._entry.101, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @ufx_set_vid_mode._entry_ptr.103, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.105, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/smscufx.c", i32 678, i32 2}
!211 = !{ptr @ufx_set_vid_mode._entry.104, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @ufx_set_vid_mode._entry_ptr.106, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/smscufx.c", i32 681, i32 2}
!215 = !{ptr @ufx_set_vid_mode._entry.107, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @ufx_set_vid_mode._entry_ptr.109, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/smscufx.c", i32 693, i32 2}
!219 = !{ptr @ufx_set_vid_mode._entry.110, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @ufx_set_vid_mode._entry_ptr.112, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/video/fbdev/smscufx.c", i32 697, i32 2}
!223 = !{ptr @ufx_set_vid_mode._entry.113, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @ufx_set_vid_mode._entry_ptr.115, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/video/fbdev/smscufx.c", i32 701, i32 2}
!227 = !{ptr @ufx_set_vid_mode._entry.116, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @ufx_set_vid_mode._entry_ptr.118, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.120, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/video/fbdev/smscufx.c", i32 713, i32 2}
!231 = !{ptr @ufx_set_vid_mode._entry.119, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ufx_set_vid_mode._entry_ptr.121, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.123, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/video/fbdev/smscufx.c", i32 717, i32 2}
!235 = !{ptr @ufx_set_vid_mode._entry.122, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ufx_set_vid_mode._entry_ptr.124, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/video/fbdev/smscufx.c", i32 721, i32 2}
!239 = !{ptr @ufx_set_vid_mode._entry.125, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ufx_set_vid_mode._entry_ptr.127, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/video/fbdev/smscufx.c", i32 724, i32 2}
!243 = !{ptr @ufx_set_vid_mode._entry.128, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ufx_set_vid_mode._entry_ptr.130, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.132, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/video/fbdev/smscufx.c", i32 727, i32 2}
!247 = !{ptr @ufx_set_vid_mode._entry.131, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @ufx_set_vid_mode._entry_ptr.133, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.135, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/video/fbdev/smscufx.c", i32 733, i32 2}
!251 = !{ptr @ufx_set_vid_mode._entry.134, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @ufx_set_vid_mode._entry_ptr.136, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.138, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/video/fbdev/smscufx.c", i32 737, i32 2}
!255 = !{ptr @ufx_set_vid_mode._entry.137, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @ufx_set_vid_mode._entry_ptr.139, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.141, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/video/fbdev/smscufx.c", i32 740, i32 2}
!259 = !{ptr @ufx_set_vid_mode._entry.140, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @ufx_set_vid_mode._entry_ptr.142, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.144, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/video/fbdev/smscufx.c", i32 743, i32 2}
!263 = !{ptr @ufx_set_vid_mode._entry.143, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @ufx_set_vid_mode._entry_ptr.145, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @ufx_set_vid_mode._entry.146, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/video/fbdev/smscufx.c", i32 754, i32 2}
!267 = !{ptr @ufx_set_vid_mode._entry_ptr.147, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.149, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/video/fbdev/smscufx.c", i32 758, i32 2}
!270 = !{ptr @ufx_set_vid_mode._entry.148, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @ufx_set_vid_mode._entry_ptr.150, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.152, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/video/fbdev/smscufx.c", i32 762, i32 2}
!274 = !{ptr @ufx_set_vid_mode._entry.151, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @ufx_set_vid_mode._entry_ptr.153, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.155, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/video/fbdev/smscufx.c", i32 766, i32 2}
!278 = !{ptr @ufx_set_vid_mode._entry.154, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @ufx_set_vid_mode._entry_ptr.156, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.158, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/video/fbdev/smscufx.c", i32 770, i32 2}
!282 = !{ptr @ufx_set_vid_mode._entry.157, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @ufx_set_vid_mode._entry_ptr.159, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.160, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/video/fbdev/smscufx.c", i32 188, i32 3}
!286 = !{ptr @.str.161, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @ufx_reg_write._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @ufx_reg_write._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.162, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/video/fbdev/smscufx.c", i32 243, i32 2}
!291 = !{ptr @.str.163, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @ufx_blank._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @ufx_blank._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.165, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/video/fbdev/smscufx.c", i32 246, i32 2}
!296 = !{ptr @ufx_blank._entry.164, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @ufx_blank._entry_ptr.166, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.168, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/video/fbdev/smscufx.c", i32 255, i32 2}
!300 = !{ptr @ufx_blank._entry.167, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @ufx_blank._entry_ptr.169, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @ufx_blank._entry.170, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/video/fbdev/smscufx.c", i32 263, i32 3}
!304 = !{ptr @ufx_blank._entry_ptr.171, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.172, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/video/fbdev/smscufx.c", i32 317, i32 2}
!307 = !{ptr @.str.173, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @ufx_disable._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @ufx_disable._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.175, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/video/fbdev/smscufx.c", i32 320, i32 2}
!312 = !{ptr @ufx_disable._entry.174, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @ufx_disable._entry_ptr.176, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.178, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/video/fbdev/smscufx.c", i32 329, i32 2}
!316 = !{ptr @ufx_disable._entry.177, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @ufx_disable._entry_ptr.179, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @ufx_disable._entry.180, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/video/fbdev/smscufx.c", i32 337, i32 3}
!320 = !{ptr @ufx_disable._entry_ptr.181, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.182, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/video/fbdev/smscufx.c", i32 621, i32 2}
!323 = !{ptr @.str.183, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @ufx_config_pix_clk.__UNIQUE_ID_ddebug306, !322, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!325 = !{ptr @.str.184, !322, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.185, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/video/fbdev/smscufx.c", i32 630, i32 2}
!328 = !{ptr @ufx_config_pix_clk._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @ufx_config_pix_clk._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.187, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/video/fbdev/smscufx.c", i32 635, i32 2}
!332 = !{ptr @ufx_config_pix_clk._entry.186, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @ufx_config_pix_clk._entry_ptr.188, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.190, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/video/fbdev/smscufx.c", i32 640, i32 2}
!336 = !{ptr @ufx_config_pix_clk._entry.189, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @ufx_config_pix_clk._entry_ptr.191, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.193, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/video/fbdev/smscufx.c", i32 643, i32 2}
!340 = !{ptr @ufx_config_pix_clk._entry.192, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @ufx_config_pix_clk._entry_ptr.194, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.196, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/video/fbdev/smscufx.c", i32 648, i32 2}
!344 = !{ptr @ufx_config_pix_clk._entry.195, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @ufx_config_pix_clk._entry_ptr.197, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.199, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/video/fbdev/smscufx.c", i32 653, i32 2}
!348 = !{ptr @ufx_config_pix_clk._entry.198, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @ufx_config_pix_clk._entry_ptr.200, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.201, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/video/fbdev/smscufx.c", i32 199, i32 2}
!352 = !{ptr @.str.202, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @ufx_reg_clear_and_set_bits._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @ufx_reg_clear_and_set_bits._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.204, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/video/fbdev/smscufx.c", i32 206, i32 2}
!357 = !{ptr @ufx_reg_clear_and_set_bits._entry.203, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @ufx_reg_clear_and_set_bits._entry_ptr.205, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.206, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/video/fbdev/smscufx.c", i32 354, i32 2}
!361 = !{ptr @.str.207, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @ufx_enable._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @ufx_enable._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.209, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/video/fbdev/smscufx.c", i32 357, i32 2}
!366 = !{ptr @ufx_enable._entry.208, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @ufx_enable._entry_ptr.210, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.212, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/video/fbdev/smscufx.c", i32 366, i32 2}
!370 = !{ptr @ufx_enable._entry.211, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ufx_enable._entry_ptr.213, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @ufx_enable._entry.214, !373, !"_entry", i1 false, i1 false}
!373 = !{!"../drivers/video/fbdev/smscufx.c", i32 374, i32 3}
!374 = !{ptr @ufx_enable._entry_ptr.215, !373, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.216, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/video/fbdev/smscufx.c", i32 280, i32 2}
!377 = !{ptr @.str.217, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @ufx_unblank._entry, !376, !"_entry", i1 false, i1 false}
!379 = !{ptr @ufx_unblank._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.219, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/video/fbdev/smscufx.c", i32 283, i32 2}
!382 = !{ptr @ufx_unblank._entry.218, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @ufx_unblank._entry_ptr.220, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.222, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/video/fbdev/smscufx.c", i32 292, i32 2}
!386 = !{ptr @ufx_unblank._entry.221, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @ufx_unblank._entry_ptr.223, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @ufx_unblank._entry.224, !389, !"_entry", i1 false, i1 false}
!389 = !{!"../drivers/video/fbdev/smscufx.c", i32 300, i32 3}
!390 = !{ptr @ufx_unblank._entry_ptr.225, !389, !"_entry_ptr", i1 false, i1 false}
!391 = distinct !{null, !392, !"__already_done", i1 false, i1 false}
!392 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!393 = !{ptr @.str.226, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.227, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!396 = !{ptr @.str.228, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!398 = !{ptr @.str.229, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/video/fbdev/smscufx.c", i32 791, i32 2}
!400 = !{ptr @.str.230, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @ufx_ops_mmap.__UNIQUE_ID_ddebug307, !399, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!402 = !{ptr @.str.231, !399, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.232, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/video/fbdev/smscufx.c", i32 1150, i32 2}
!405 = !{ptr @.str.233, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @ufx_free_framebuffer_work.__UNIQUE_ID_ddebug318, !404, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!407 = !{ptr @.str.234, !404, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.235, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/video/fbdev/smscufx.c", i32 161, i32 3}
!410 = !{ptr @.str.236, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @ufx_reg_read._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @ufx_reg_read._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.237, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/video/fbdev/smscufx.c", i32 228, i32 2}
!415 = !{ptr @.str.238, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @ufx_lite_reset._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @ufx_lite_reset._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.240, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/video/fbdev/smscufx.c", i32 231, i32 2}
!420 = !{ptr @ufx_lite_reset._entry.239, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @ufx_lite_reset._entry_ptr.241, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.242, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/video/fbdev/smscufx.c", i32 387, i32 2}
!424 = !{ptr @.str.243, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @ufx_config_sys_clk._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @ufx_config_sys_clk._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.245, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/video/fbdev/smscufx.c", i32 390, i32 2}
!429 = !{ptr @ufx_config_sys_clk._entry.244, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @ufx_config_sys_clk._entry_ptr.246, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.248, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/video/fbdev/smscufx.c", i32 393, i32 2}
!433 = !{ptr @ufx_config_sys_clk._entry.247, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @ufx_config_sys_clk._entry_ptr.249, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.251, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/video/fbdev/smscufx.c", i32 396, i32 2}
!437 = !{ptr @ufx_config_sys_clk._entry.250, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @ufx_config_sys_clk._entry_ptr.252, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.254, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/video/fbdev/smscufx.c", i32 400, i32 2}
!441 = !{ptr @ufx_config_sys_clk._entry.253, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @ufx_config_sys_clk._entry_ptr.255, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.256, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/video/fbdev/smscufx.c", i32 411, i32 2}
!445 = !{ptr @.str.257, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @ufx_config_ddr2._entry, !444, !"_entry", i1 false, i1 false}
!447 = !{ptr @ufx_config_ddr2._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.259, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/video/fbdev/smscufx.c", i32 414, i32 2}
!450 = !{ptr @ufx_config_ddr2._entry.258, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @ufx_config_ddr2._entry_ptr.260, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.262, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/video/fbdev/smscufx.c", i32 417, i32 2}
!454 = !{ptr @ufx_config_ddr2._entry.261, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @ufx_config_ddr2._entry_ptr.263, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.265, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/video/fbdev/smscufx.c", i32 420, i32 2}
!458 = !{ptr @ufx_config_ddr2._entry.264, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @ufx_config_ddr2._entry_ptr.266, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.268, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/video/fbdev/smscufx.c", i32 423, i32 2}
!462 = !{ptr @ufx_config_ddr2._entry.267, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @ufx_config_ddr2._entry_ptr.269, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.271, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/video/fbdev/smscufx.c", i32 426, i32 2}
!466 = !{ptr @ufx_config_ddr2._entry.270, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @ufx_config_ddr2._entry_ptr.272, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.274, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/video/fbdev/smscufx.c", i32 429, i32 2}
!470 = !{ptr @ufx_config_ddr2._entry.273, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @ufx_config_ddr2._entry_ptr.275, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.277, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/video/fbdev/smscufx.c", i32 432, i32 2}
!474 = !{ptr @ufx_config_ddr2._entry.276, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @ufx_config_ddr2._entry_ptr.278, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.280, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/video/fbdev/smscufx.c", i32 435, i32 2}
!478 = !{ptr @ufx_config_ddr2._entry.279, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @ufx_config_ddr2._entry_ptr.281, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.283, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/video/fbdev/smscufx.c", i32 438, i32 2}
!482 = !{ptr @ufx_config_ddr2._entry.282, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @ufx_config_ddr2._entry_ptr.284, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @.str.286, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/video/fbdev/smscufx.c", i32 441, i32 2}
!486 = !{ptr @ufx_config_ddr2._entry.285, !485, !"_entry", i1 false, i1 false}
!487 = !{ptr @ufx_config_ddr2._entry_ptr.287, !485, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.289, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/video/fbdev/smscufx.c", i32 444, i32 2}
!490 = !{ptr @ufx_config_ddr2._entry.288, !489, !"_entry", i1 false, i1 false}
!491 = !{ptr @ufx_config_ddr2._entry_ptr.290, !489, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.292, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/video/fbdev/smscufx.c", i32 447, i32 2}
!494 = !{ptr @ufx_config_ddr2._entry.291, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @ufx_config_ddr2._entry_ptr.293, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.295, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/video/fbdev/smscufx.c", i32 450, i32 2}
!498 = !{ptr @ufx_config_ddr2._entry.294, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @ufx_config_ddr2._entry_ptr.296, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.298, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/video/fbdev/smscufx.c", i32 453, i32 2}
!502 = !{ptr @ufx_config_ddr2._entry.297, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @ufx_config_ddr2._entry_ptr.299, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.301, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/video/fbdev/smscufx.c", i32 456, i32 2}
!506 = !{ptr @ufx_config_ddr2._entry.300, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @ufx_config_ddr2._entry_ptr.302, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.304, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/video/fbdev/smscufx.c", i32 459, i32 2}
!510 = !{ptr @ufx_config_ddr2._entry.303, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @ufx_config_ddr2._entry_ptr.305, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.307, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/video/fbdev/smscufx.c", i32 462, i32 2}
!514 = !{ptr @ufx_config_ddr2._entry.306, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @ufx_config_ddr2._entry_ptr.308, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.310, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/video/fbdev/smscufx.c", i32 465, i32 2}
!518 = !{ptr @ufx_config_ddr2._entry.309, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @ufx_config_ddr2._entry_ptr.311, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.313, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/video/fbdev/smscufx.c", i32 468, i32 2}
!522 = !{ptr @ufx_config_ddr2._entry.312, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @ufx_config_ddr2._entry_ptr.314, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.316, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/video/fbdev/smscufx.c", i32 471, i32 2}
!526 = !{ptr @ufx_config_ddr2._entry.315, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @ufx_config_ddr2._entry_ptr.317, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.319, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/video/fbdev/smscufx.c", i32 474, i32 2}
!530 = !{ptr @ufx_config_ddr2._entry.318, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @ufx_config_ddr2._entry_ptr.320, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.322, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/video/fbdev/smscufx.c", i32 477, i32 2}
!534 = !{ptr @ufx_config_ddr2._entry.321, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @ufx_config_ddr2._entry_ptr.323, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.325, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/video/fbdev/smscufx.c", i32 480, i32 2}
!538 = !{ptr @ufx_config_ddr2._entry.324, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @ufx_config_ddr2._entry_ptr.326, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.328, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/video/fbdev/smscufx.c", i32 484, i32 3}
!542 = !{ptr @ufx_config_ddr2._entry.327, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @ufx_config_ddr2._entry_ptr.329, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.331, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/video/fbdev/smscufx.c", i32 490, i32 2}
!546 = !{ptr @ufx_config_ddr2._entry.330, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @ufx_config_ddr2._entry_ptr.332, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.333, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/video/fbdev/smscufx.c", i32 1330, i32 2}
!550 = !{ptr @.str.334, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @ufx_i2c_init._entry, !549, !"_entry", i1 false, i1 false}
!552 = !{ptr @ufx_i2c_init._entry_ptr, !549, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.336, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/video/fbdev/smscufx.c", i32 1335, i32 2}
!555 = !{ptr @ufx_i2c_init._entry.335, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @ufx_i2c_init._entry_ptr.337, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.339, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/video/fbdev/smscufx.c", i32 1339, i32 2}
!559 = !{ptr @ufx_i2c_init._entry.338, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @ufx_i2c_init._entry_ptr.340, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.342, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/video/fbdev/smscufx.c", i32 1342, i32 2}
!563 = !{ptr @ufx_i2c_init._entry.341, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @ufx_i2c_init._entry_ptr.343, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.345, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/video/fbdev/smscufx.c", i32 1355, i32 2}
!567 = !{ptr @ufx_i2c_init._entry.344, !566, !"_entry", i1 false, i1 false}
!568 = !{ptr @ufx_i2c_init._entry_ptr.346, !566, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @.str.348, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/video/fbdev/smscufx.c", i32 1359, i32 2}
!571 = !{ptr @ufx_i2c_init._entry.347, !570, !"_entry", i1 false, i1 false}
!572 = !{ptr @ufx_i2c_init._entry_ptr.349, !570, !"_entry_ptr", i1 false, i1 false}
!573 = !{ptr @.str.351, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/video/fbdev/smscufx.c", i32 1363, i32 2}
!575 = !{ptr @ufx_i2c_init._entry.350, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @ufx_i2c_init._entry_ptr.352, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.353, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/video/fbdev/smscufx.c", i32 1517, i32 3}
!579 = !{ptr @.str.354, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @ufx_setup_modes._entry, !578, !"_entry", i1 false, i1 false}
!581 = !{ptr @ufx_setup_modes._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.356, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/video/fbdev/smscufx.c", i32 1522, i32 5}
!584 = !{ptr @ufx_setup_modes._entry.355, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @ufx_setup_modes._entry_ptr.357, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.359, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/video/fbdev/smscufx.c", i32 1534, i32 5}
!588 = !{ptr @ufx_setup_modes._entry.358, !587, !"_entry", i1 false, i1 false}
!589 = !{ptr @ufx_setup_modes._entry_ptr.360, !587, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @.str.361, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/video/fbdev/smscufx.c", i32 1430, i32 3}
!592 = !{ptr @.str.362, !591, !"<string literal>", i1 false, i1 false}
!593 = !{ptr @ufx_read_edid._entry, !591, !"_entry", i1 false, i1 false}
!594 = !{ptr @ufx_read_edid._entry_ptr, !591, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.364, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/video/fbdev/smscufx.c", i32 1440, i32 3}
!597 = !{ptr @ufx_read_edid._entry.363, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @ufx_read_edid._entry_ptr.365, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @ufx_read_edid._entry.366, !600, !"_entry", i1 false, i1 false}
!600 = !{!"../drivers/video/fbdev/smscufx.c", i32 1444, i32 3}
!601 = !{ptr @ufx_read_edid._entry_ptr.367, !600, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.369, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/video/fbdev/smscufx.c", i32 1447, i32 3}
!604 = !{ptr @ufx_read_edid._entry.368, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @ufx_read_edid._entry_ptr.370, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.372, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/video/fbdev/smscufx.c", i32 1452, i32 4}
!608 = !{ptr @ufx_read_edid._entry.371, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @ufx_read_edid._entry_ptr.373, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.374, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/video/fbdev/smscufx.c", i32 1459, i32 4}
!612 = !{ptr @ufx_read_edid.__UNIQUE_ID_ddebug325, !611, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!613 = !{ptr @.str.375, !611, !"<string literal>", i1 false, i1 false}
!614 = !{ptr @.str.377, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/video/fbdev/smscufx.c", i32 1464, i32 2}
!616 = !{ptr @ufx_read_edid._entry.376, !615, !"_entry", i1 false, i1 false}
!617 = !{ptr @ufx_read_edid._entry_ptr.378, !615, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.379, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/video/fbdev/smscufx.c", i32 1372, i32 2}
!620 = !{ptr @ufx_i2c_configure._entry, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @ufx_i2c_configure._entry_ptr, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.381, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/video/fbdev/smscufx.c", i32 1375, i32 2}
!624 = !{ptr @ufx_i2c_configure._entry.380, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @ufx_i2c_configure._entry_ptr.382, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.384, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/video/fbdev/smscufx.c", i32 1379, i32 2}
!628 = !{ptr @ufx_i2c_configure._entry.383, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @ufx_i2c_configure._entry_ptr.385, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @ufx_i2c_configure._entry.386, !631, !"_entry", i1 false, i1 false}
!631 = !{!"../drivers/video/fbdev/smscufx.c", i32 1382, i32 2}
!632 = !{ptr @ufx_i2c_configure._entry_ptr.387, !631, !"_entry_ptr", i1 false, i1 false}
!633 = !{ptr @.str.388, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/video/fbdev/smscufx.c", i32 1396, i32 3}
!635 = !{ptr @.str.389, !634, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @ufx_i2c_wait_busy._entry, !634, !"_entry", i1 false, i1 false}
!637 = !{ptr @ufx_i2c_wait_busy._entry_ptr, !634, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.391, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/video/fbdev/smscufx.c", i32 1401, i32 5}
!640 = !{ptr @ufx_i2c_wait_busy._entry.390, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @ufx_i2c_wait_busy._entry_ptr.392, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @.str.394, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/video/fbdev/smscufx.c", i32 1413, i32 2}
!644 = !{ptr @ufx_i2c_wait_busy._entry.393, !643, !"_entry", i1 false, i1 false}
!645 = !{ptr @ufx_i2c_wait_busy._entry_ptr.395, !643, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.397, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/video/fbdev/smscufx.c", i32 1415, i32 2}
!648 = !{ptr @ufx_i2c_wait_busy._entry.396, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @ufx_i2c_wait_busy._entry_ptr.398, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.399, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/video/fbdev/smscufx.c", i32 1189, i32 3}
!652 = !{ptr @.str.400, !651, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug320, !651, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!654 = !{ptr @.str.401, !651, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @.str.402, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/video/fbdev/smscufx.c", i32 1195, i32 3}
!657 = !{ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug321, !656, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!658 = !{ptr @.str.403, !656, !"<string literal>", i1 false, i1 false}
!659 = !{ptr @.str.404, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/video/fbdev/smscufx.c", i32 1200, i32 2}
!661 = !{ptr @ufx_is_valid_mode.__UNIQUE_ID_ddebug322, !660, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!662 = !{ptr @.str.405, !660, !"<string literal>", i1 false, i1 false}
!663 = !{ptr @ufx_fix, !664, !"ufx_fix", i1 false, i1 false}
!664 = !{!"../drivers/video/fbdev/smscufx.c", i32 108, i32 33}
!665 = !{ptr @.str.406, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/video/fbdev/smscufx.c", i32 1297, i32 2}
!667 = !{ptr @.str.407, !666, !"<string literal>", i1 false, i1 false}
!668 = !{ptr @ufx_realloc_framebuffer.__UNIQUE_ID_ddebug324, !666, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!669 = !{ptr @.str.408, !666, !"<string literal>", i1 false, i1 false}
!670 = !{ptr @.str.409, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/video/fbdev/smscufx.c", i32 1244, i32 2}
!672 = !{ptr @.str.410, !671, !"<string literal>", i1 false, i1 false}
!673 = !{ptr @ufx_ops_set_par.__UNIQUE_ID_ddebug323, !671, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!674 = !{ptr @.str.411, !671, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @.str.412, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/video/fbdev/smscufx.c", i32 1115, i32 2}
!677 = !{ptr @.str.413, !676, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @ufx_free.__UNIQUE_ID_ddebug317, !676, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!679 = !{ptr @.str.414, !676, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @.str.415, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/video/fbdev/smscufx.c", i32 1816, i32 2}
!682 = !{ptr @.str.416, !681, !"<string literal>", i1 false, i1 false}
!683 = !{ptr @ufx_free_urb_list.__UNIQUE_ID_ddebug342, !681, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!684 = !{ptr @.str.417, !681, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.418, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/video/fbdev/smscufx.c", i32 1746, i32 2}
!687 = !{ptr @.str.419, !686, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @ufx_usb_disconnect.__UNIQUE_ID_ddebug340, !686, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!689 = !{ptr @.str.420, !686, !"<string literal>", i1 false, i1 false}
!690 = !{ptr @id_table, !691, !"id_table", i1 false, i1 false}
!691 = !{!"../drivers/video/fbdev/smscufx.c", i32 122, i32 35}
!692 = !{ptr @__param_str_console, !4, !"__param_str_console", i1 false, i1 false}
!693 = !{ptr @__param_str_fb_defio, !9, !"__param_str_fb_defio", i1 false, i1 false}
!694 = !{ptr @fb_defio, !695, !"fb_defio", i1 false, i1 false}
!695 = !{!"../drivers/video/fbdev/smscufx.c", i32 131, i32 13}
!696 = !{i32 1, !"wchar_size", i32 2}
!697 = !{i32 1, !"min_enum_size", i32 4}
!698 = !{i32 8, !"branch-target-enforcement", i32 0}
!699 = !{i32 8, !"sign-return-address", i32 0}
!700 = !{i32 8, !"sign-return-address-all", i32 0}
!701 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!702 = !{i32 7, !"uwtable", i32 1}
!703 = !{i32 7, !"frame-pointer", i32 2}
!704 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!705 = !{!"auto-init"}
!706 = !{!"branch_weights", i32 1, i32 2000}
!707 = !{i64 2156322838, i64 2156323333, i64 2156322875, i64 2156322931, i64 2156322965, i64 2156322989, i64 2156323030, i64 2156323051, i64 2156323079, i64 2156323113}
!708 = !{i64 2148393948, i64 2148393980, i64 2148394009, i64 2148394043, i64 2148394074, i64 2148394097}
!709 = !{!"branch_weights", i32 2000, i32 1}
!710 = !{i64 2149005795, i64 2149005800, i64 2149005813, i64 2149005857, i64 2149005891, i64 2149005912}
!711 = !{i8 0, i8 2}
!712 = !{i64 2148481973}
!713 = !{i64 2148396413, i64 2148396445, i64 2148396474, i64 2148396508, i64 2148396539, i64 2148396562}
!714 = !{i64 2149358087}
!715 = !{i64 2156056246, i64 2156056740, i64 2156056283, i64 2156056339, i64 2156056373, i64 2156056397, i64 2156056438, i64 2156056459, i64 2156056487, i64 2156056521}
!716 = !{i64 2156059981, i64 2156060475, i64 2156060018, i64 2156060074, i64 2156060108, i64 2156060132, i64 2156060173, i64 2156060194, i64 2156060222, i64 2156060256}
!717 = !{i64 2153568919, i64 2153568944}
!718 = !{i64 2156243136, i64 2156243630, i64 2156243173, i64 2156243229, i64 2156243263, i64 2156243287, i64 2156243328, i64 2156243349, i64 2156243377, i64 2156243411}
!719 = !{i64 2156244790, i64 2156245284, i64 2156244827, i64 2156244883, i64 2156244917, i64 2156244941, i64 2156244982, i64 2156245003, i64 2156245031, i64 2156245065}
!720 = !{i64 2156410133, i64 2156410628, i64 2156410170, i64 2156410226, i64 2156410260, i64 2156410284, i64 2156410325, i64 2156410346, i64 2156410374, i64 2156410408}
!721 = !{i64 2156229621, i64 2156230115, i64 2156229658, i64 2156229714, i64 2156229748, i64 2156229772, i64 2156229813, i64 2156229834, i64 2156229862, i64 2156229896}
!722 = !{i64 2156223382, i64 2156223876, i64 2156223419, i64 2156223475, i64 2156223509, i64 2156223533, i64 2156223574, i64 2156223595, i64 2156223623, i64 2156223657}
!723 = !{i64 2156224988, i64 2156225482, i64 2156225025, i64 2156225081, i64 2156225115, i64 2156225139, i64 2156225180, i64 2156225201, i64 2156225229, i64 2156225263}
!724 = !{i64 2156412980, i64 2156413475, i64 2156413017, i64 2156413073, i64 2156413107, i64 2156413131, i64 2156413172, i64 2156413193, i64 2156413221, i64 2156413255}
