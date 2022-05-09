; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/udlfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/udlfb.c"
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dlfb_data = type { ptr, ptr, %struct.urb_list, ptr, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr, i32, i32, i32, i32, [256 x i32], i32, %struct.mutex, i32, i32, i32, i32, %struct.spinlock, %struct.work_struct, %struct.fb_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.fb_var_screeninfo, %struct.list_head }
%struct.urb_list = type { %struct.list_head, %struct.spinlock, %struct.semaphore, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.urb_node = type { %struct.list_head, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.dlfb_deferred_free = type { %struct.list_head, ptr }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.dloarea = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }

@__initcall__kmod_udlfb__332_1809_dlfb_driver_init6 = internal global ptr @dlfb_driver_init, section ".initcall6.init", align 4
@dlfb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dlfb_usb_probe, ptr @dlfb_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dlfb_driver_exit = internal global ptr @dlfb_driver_exit, section ".exitcall.exit", align 4
@__param_str_console = internal constant [14 x i8] c"udlfb.console\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@console = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_console = internal constant %struct.kernel_param { ptr @__param_str_console, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @console } }, section "__param", align 4
@__UNIQUE_ID_consoletype333 = internal constant [28 x i8] c"udlfb.parmtype=console:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console334 = internal constant [51 x i8] c"udlfb.parm=console:Allow fbcon to open framebuffer\00", section ".modinfo", align 1
@__param_str_fb_defio = internal constant [15 x i8] c"udlfb.fb_defio\00", align 1
@fb_defio = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_fb_defio = internal constant %struct.kernel_param { ptr @__param_str_fb_defio, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @fb_defio } }, section "__param", align 4
@__UNIQUE_ID_fb_defiotype335 = internal constant [29 x i8] c"udlfb.parmtype=fb_defio:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fb_defio336 = internal constant [56 x i8] c"udlfb.parm=fb_defio:Page fault detection of mmap writes\00", section ".modinfo", align 1
@__param_str_shadow = internal constant [13 x i8] c"udlfb.shadow\00", align 1
@shadow = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_shadow = internal constant %struct.kernel_param { ptr @__param_str_shadow, ptr null, ptr @param_ops_bool, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @shadow } }, section "__param", align 4
@__UNIQUE_ID_shadowtype337 = internal constant [27 x i8] c"udlfb.parmtype=shadow:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_shadow338 = internal constant [68 x i8] c"udlfb.parm=shadow:Shadow vid mem. Disable to save mem but lose perf\00", section ".modinfo", align 1
@__param_str_pixel_limit = internal constant [18 x i8] c"udlfb.pixel_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pixel_limit = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pixel_limit = internal constant %struct.kernel_param { ptr @__param_str_pixel_limit, ptr null, ptr @param_ops_int, i16 432, i8 -1, i8 0, %union.anon.76 { ptr @pixel_limit } }, section "__param", align 4
@__UNIQUE_ID_pixel_limittype339 = internal constant [31 x i8] c"udlfb.parmtype=pixel_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pixel_limit340 = internal constant [63 x i8] c"udlfb.parm=pixel_limit:Force limit on max mode (in x*y pixels)\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [127 x i8] c"udlfb.author=Roberto De Ioris <roberto@unbit.it>, Jaya Kumar <jayakumar.lkml@gmail.com>, Bernie Thompson <bernie@plugable.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [56 x i8] c"udlfb.description=DisplayLink kernel framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [37 x i8] c"udlfb.file=drivers/video/fbdev/udlfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [18 x i8] c"udlfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"udlfb\00", [26 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 6121, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to allocate dlfb\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlfb_usb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/udlfb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr = internal global ptr @dlfb_usb_probe._entry, section ".printk_index", align 4
@dlfb_usb_probe.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"console enable=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@dlfb_usb_probe.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 1, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fb_defio enable=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@dlfb_usb_probe.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"shadow enable=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"firmware not recognized, incompatible device?\0A\00", [49 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.11 = internal global ptr @dlfb_usb_probe._entry.9, section ".printk_index", align 4
@dlfb_usb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1682, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DL chip limit of %d overridden to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.15 = internal global ptr @dlfb_usb_probe._entry.12, section ".printk_index", align 4
@dlfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @dlfb_ops_open, ptr @dlfb_ops_release, ptr @fb_sys_read, ptr @dlfb_ops_write, ptr @dlfb_ops_check_var, ptr @dlfb_ops_set_par, ptr @dlfb_ops_setcolreg, ptr null, ptr @dlfb_ops_blank, ptr null, ptr @dlfb_ops_fillrect, ptr @dlfb_ops_copyarea, ptr @dlfb_ops_imageblit, ptr null, ptr null, ptr @dlfb_ops_ioctl, ptr null, ptr @dlfb_ops_mmap, ptr null, ptr @dlfb_ops_destroy, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dlfb_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dlfb->render_mutex\00", [44 x i8] zeroinitializer }, align 32
@dlfb_usb_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dlfb->damage_lock\00", [45 x i8] zeroinitializer }, align 32
@dlfb_usb_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&dlfb->damage_work)\00", [58 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to allocate urb list\0A\00", [35 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.23 = internal global ptr @dlfb_usb_probe._entry.21, section ".printk_index", align 4
@dlfb_usb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1715, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cmap allocation failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.26 = internal global ptr @dlfb_usb_probe._entry.24, section ".printk_index", align 4
@dlfb_usb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unable to find common mode for display and adapter\0A\00", [44 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.29 = internal global ptr @dlfb_usb_probe._entry.27, section ".printk_index", align 4
@dlfb_usb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to register framebuffer: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.32 = internal global ptr @dlfb_usb_probe._entry.30, section ".printk_index", align 4
@fb_device_attrs = internal constant { [5 x %struct.device_attribute], [52 x i8] } { [5 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @metrics_bytes_rendered_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @metrics_bytes_identical_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @metrics_bytes_sent_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @metrics_cpu_kcycles_used_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @metrics_reset_store }], [52 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1749, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create '%s' attribute: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.35 = internal global ptr @dlfb_usb_probe._entry.33, section ".printk_index", align 4
@edid_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.96, i16 438, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 128, ptr null, ptr null, ptr @edid_show, ptr @edid_store, ptr null }, [52 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1755, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.37 = internal global ptr @dlfb_usb_probe._entry.36, section ".printk_index", align 4
@dlfb_usb_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1761, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s is DisplayLink USB device (%dx%d, %dK framebuffer memory)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dlfb_usb_probe._entry_ptr.41 = internal global ptr @dlfb_usb_probe._entry.38, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dlfb_parse_vendor_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1592, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"vendor descriptor length: %d data: %11ph\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dlfb_parse_vendor_descriptor\00", [35 x i8] zeroinitializer }, align 32
@dlfb_parse_vendor_descriptor._entry_ptr = internal global ptr @dlfb_parse_vendor_descriptor._entry, section ".printk_index", align 4
@dlfb_parse_vendor_descriptor._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 1620, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DL chip limited to %d pixel modes\0A\00", [61 x i8] zeroinitializer }, align 32
@dlfb_parse_vendor_descriptor._entry_ptr.46 = internal global ptr @dlfb_parse_vendor_descriptor._entry.44, section ".printk_index", align 4
@dlfb_parse_vendor_descriptor._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 1631, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"vendor descriptor not available (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@dlfb_parse_vendor_descriptor._entry_ptr.49 = internal global ptr @dlfb_parse_vendor_descriptor._entry.47, section ".printk_index", align 4
@dlfb_parse_vendor_descriptor._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.3, i32 1638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unrecognized vendor firmware descriptor\0A\00", [55 x i8] zeroinitializer }, align 32
@dlfb_parse_vendor_descriptor._entry_ptr.52 = internal global ptr @dlfb_parse_vendor_descriptor._entry.50, section ".printk_index", align 4
@dlfb_ops_open.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlfb_ops_open\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"open, user=%d fb_info=%p count=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dlfb_get_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1945, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wait for urb interrupted: %d available: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlfb_get_urb\00", [19 x i8] zeroinitializer }, align 32
@dlfb_get_urb._entry_ptr = internal global ptr @dlfb_get_urb._entry, section ".printk_index", align 4
@dlfb_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1973, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"submit urb error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlfb_submit_urb\00", [16 x i8] zeroinitializer }, align 32
@dlfb_submit_urb._entry_ptr = internal global ptr @dlfb_submit_urb._entry, section ".printk_index", align 4
@dlfb_urb_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlfb_urb_completion\00", [44 x i8] zeroinitializer }, align 32
@dlfb_urb_completion._entry_ptr = internal global ptr @dlfb_urb_completion._entry, section ".printk_index", align 4
@dlfb_ops_release.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlfb_ops_release\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"release, user=%d count=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@dlfb_ops_blank.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlfb_ops_blank\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"blank, mode %d --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dlfb_ops_mmap.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlfb_ops_mmap\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mmap() framebuffer addr:%lu size:%lu\0A\00", [58 x i8] zeroinitializer }, align 32
@pgprot_user = external dso_local local_unnamed_addr global i32, align 4
@dlfb_alloc_urb_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dlfb->urbs.lock\00", [47 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@dlfb_setup_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to get valid EDID from device/display\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlfb_setup_modes\00", [47 x i8] zeroinitializer }, align 32
@dlfb_setup_modes._entry_ptr = internal global ptr @dlfb_setup_modes._entry, section ".printk_index", align 4
@dlfb_setup_modes._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 1333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using previously queried EDID\0A\00", [33 x i8] zeroinitializer }, align 32
@dlfb_setup_modes._entry_ptr.77 = internal global ptr @dlfb_setup_modes._entry.75, section ".printk_index", align 4
@dlfb_setup_modes._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.3, i32 1345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using default/backup EDID\0A\00", [37 x i8] zeroinitializer }, align 32
@dlfb_setup_modes._entry_ptr.80 = internal global ptr @dlfb_setup_modes._entry.78, section ".printk_index", align 4
@dlfb_setup_modes.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.81, i8 1, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Specified mode %dx%d too big\0A\00", [34 x i8] zeroinitializer }, align 32
@vesa_modes = external dso_local constant [0 x %struct.fb_videomode], align 4
@dlfb_setup_modes.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.82, i8 1, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VESA mode %dx%d too big\0A\00", [39 x i8] zeroinitializer }, align 32
@dlfb_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"udlfb\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@dlfb_get_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Read EDID byte %d failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dlfb_get_edid\00", [18 x i8] zeroinitializer }, align 32
@dlfb_get_edid._entry_ptr = internal global ptr @dlfb_get_edid._entry, section ".printk_index", align 4
@__const.dlfb_var_color_format.red = private unnamed_addr constant %struct.fb_bitfield { i32 11, i32 5, i32 0 }, align 4
@__const.dlfb_var_color_format.green = private unnamed_addr constant %struct.fb_bitfield { i32 5, i32 6, i32 0 }, align 4
@__const.dlfb_var_color_format.blue = private unnamed_addr constant %struct.fb_bitfield { i32 0, i32 5, i32 0 }, align 4
@dlfb_select_std_channel.set_def_chn = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"W\CD\DC\A7\1C\88^\15`\FE\C6\97\16=G\F2", [16 x i8] zeroinitializer }, align 32
@dlfb_realloc_framebuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Virtual framebuffer alloc failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dlfb_realloc_framebuffer\00", [39 x i8] zeroinitializer }, align 32
@dlfb_realloc_framebuffer._entry_ptr = internal global ptr @dlfb_realloc_framebuffer._entry, section ".printk_index", align 4
@dlfb_realloc_framebuffer._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 1258, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No shadow/backing buffer allocated\0A\00", [60 x i8] zeroinitializer }, align 32
@dlfb_realloc_framebuffer._entry_ptr.89 = internal global ptr @dlfb_realloc_framebuffer._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"metrics_bytes_rendered\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"metrics_bytes_identical\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metrics_bytes_sent\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"metrics_cpu_kcycles_used\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"metrics_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edid\00", [27 x i8] zeroinitializer }, align 32
@dlfb_usb_disconnect.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.3, ptr @.str.98, i8 1, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlfb_usb_disconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB disconnect starting\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 170, i64 173]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"dlfb_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1802, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 67, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"fb_defio\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 68, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"shadow\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 69, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"pixel_limit\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 70, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1809, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 52, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1658, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1667, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1668, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1669, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1674, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1680, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"dlfb_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1186, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1698, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1700, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1701, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1707, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1715, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1721, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1738, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"fb_device_attrs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1529, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1747, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [10 x i8] c"edid_attr\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1521, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1754, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1757, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1590, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1618, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1630, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1638, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 990, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1943, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1973, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1827, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1043, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1156, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 230, i32 6 }
@___asan_gen_.308 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 214, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 174, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 338, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1882, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 33, i32 31 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 34, i32 28 }
@___asan_gen_.332 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 35, i32 39 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1328, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1333, i32 5 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1345, i32 5 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1358, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1387, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant [9 x i8] c"dlfb_fix\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 30, i32 39 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 858, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"set_def_chn\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1544, i32 18 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1233, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1257, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1530, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1531, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1532, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1533, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1534, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1429, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1522, i32 15 }
@___asan_gen_.415 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.416 = private constant [31 x i8] c"../drivers/video/fbdev/udlfb.c\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 1783, i32 2 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_console334, ptr @__UNIQUE_ID_consoletype333, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_fb_defio336, ptr @__UNIQUE_ID_fb_defiotype335, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_pixel_limit340, ptr @__UNIQUE_ID_pixel_limittype339, ptr @__UNIQUE_ID_shadow338, ptr @__UNIQUE_ID_shadowtype337, ptr @__exitcall_dlfb_driver_exit, ptr @__initcall__kmod_udlfb__332_1809_dlfb_driver_init6, ptr @__param_console, ptr @__param_fb_defio, ptr @__param_pixel_limit, ptr @__param_shadow, ptr @dlfb_driver_exit, ptr @dlfb_get_edid._entry, ptr @dlfb_get_edid._entry_ptr, ptr @dlfb_get_urb._entry, ptr @dlfb_get_urb._entry_ptr, ptr @dlfb_parse_vendor_descriptor._entry, ptr @dlfb_parse_vendor_descriptor._entry.44, ptr @dlfb_parse_vendor_descriptor._entry.47, ptr @dlfb_parse_vendor_descriptor._entry.50, ptr @dlfb_parse_vendor_descriptor._entry_ptr, ptr @dlfb_parse_vendor_descriptor._entry_ptr.46, ptr @dlfb_parse_vendor_descriptor._entry_ptr.49, ptr @dlfb_parse_vendor_descriptor._entry_ptr.52, ptr @dlfb_realloc_framebuffer._entry, ptr @dlfb_realloc_framebuffer._entry.87, ptr @dlfb_realloc_framebuffer._entry_ptr, ptr @dlfb_realloc_framebuffer._entry_ptr.89, ptr @dlfb_setup_modes._entry, ptr @dlfb_setup_modes._entry.75, ptr @dlfb_setup_modes._entry.78, ptr @dlfb_setup_modes._entry_ptr, ptr @dlfb_setup_modes._entry_ptr.77, ptr @dlfb_setup_modes._entry_ptr.80, ptr @dlfb_submit_urb._entry, ptr @dlfb_submit_urb._entry_ptr, ptr @dlfb_urb_completion._entry, ptr @dlfb_urb_completion._entry_ptr, ptr @dlfb_usb_probe._entry, ptr @dlfb_usb_probe._entry.12, ptr @dlfb_usb_probe._entry.21, ptr @dlfb_usb_probe._entry.24, ptr @dlfb_usb_probe._entry.27, ptr @dlfb_usb_probe._entry.30, ptr @dlfb_usb_probe._entry.33, ptr @dlfb_usb_probe._entry.36, ptr @dlfb_usb_probe._entry.38, ptr @dlfb_usb_probe._entry.9, ptr @dlfb_usb_probe._entry_ptr, ptr @dlfb_usb_probe._entry_ptr.11, ptr @dlfb_usb_probe._entry_ptr.15, ptr @dlfb_usb_probe._entry_ptr.23, ptr @dlfb_usb_probe._entry_ptr.26, ptr @dlfb_usb_probe._entry_ptr.29, ptr @dlfb_usb_probe._entry_ptr.32, ptr @dlfb_usb_probe._entry_ptr.35, ptr @dlfb_usb_probe._entry_ptr.37, ptr @dlfb_usb_probe._entry_ptr.41, ptr @dlfb_driver, ptr @console, ptr @fb_defio, ptr @shadow, ptr @pixel_limit, ptr @.str, ptr @id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @dlfb_ops, ptr @dlfb_usb_probe.__key, ptr @.str.16, ptr @dlfb_usb_probe.__key.17, ptr @.str.18, ptr @dlfb_usb_probe.__key.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @fb_device_attrs, ptr @.str.34, ptr @edid_attr, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @dlfb_alloc_urb_list.__key, ptr @.str.70, ptr @sema_init.__key, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @dlfb_fix, ptr @.str.83, ptr @.str.84, ptr @dlfb_select_std_channel.set_def_chn, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_defio to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixel_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_device_attrs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edid_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_usb_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_parse_vendor_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_parse_vendor_descriptor._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_parse_vendor_descriptor._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_parse_vendor_descriptor._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_get_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_urb_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_alloc_urb_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_setup_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_setup_modes._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_setup_modes._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_get_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_select_std_channel.set_def_chn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_realloc_framebuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlfb_realloc_framebuffer._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dlfb_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @dlfb_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %mode.i = alloca %struct.fb_videomode, align 4
  %desc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1668) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %deferred_free = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 28
  %3 = ptrtoint ptr %deferred_free to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %deferred_free, ptr %deferred_free, align 4
  %prev.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %deferred_free, ptr %prev.i, align 8
  %call3 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #14
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_usb_probe, %if.then9)) #14
          to label %do.body15 [label %if.then9], !srcloc !245

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %7 = load i8, ptr @console, align 1, !range !246
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_usb_probe.__UNIQUE_ID_ddebug328, ptr noundef %dev10, ptr noundef nonnull @.str.6, i32 noundef %8) #14
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_usb_probe, %if.then27)) #14
          to label %do.body34 [label %if.then27], !srcloc !245

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %9 = load i8, ptr @fb_defio, align 1, !range !246
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_usb_probe.__UNIQUE_ID_ddebug329, ptr noundef %dev28, ptr noundef nonnull @.str.7, i32 noundef %10) #14
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %do.body15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_usb_probe, %if.then46)) #14
          to label %do.end52 [label %if.then46], !srcloc !245

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  %dev47 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %11 = load i8, ptr @shadow, align 1, !range !246
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_usb_probe.__UNIQUE_ID_ddebug330, ptr noundef %dev47, ptr noundef nonnull @.str.8, i32 noundef %12) #14
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %do.body34
  %sku_pixel_limit = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %sku_pixel_limit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2359296, ptr %sku_pixel_limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 256) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end58, label %if.end.i

if.end.i:                                         ; preds = %do.end52
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %desc.i, align 4
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -128
  %call2.i = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i.i, i8 noundef zeroext 95, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %18 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting.i, align 4
  %extra.i = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extralen.i, align 4
  %call5.i = call i32 @__usb_get_extra_descriptor(ptr noundef %21, i32 noundef %23, i8 noundef zeroext 95, ptr noundef nonnull %desc.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.then3.i.do.end71.i_crit_edge

if.then3.i.do.end71.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end71.i

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i = zext i8 %27 to i32
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %total_len.0.i = phi i32 [ %conv.i, %if.then7.i ], [ %call2.i, %if.end.i.if.end9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %total_len.0.i)
  %cmp10.i = icmp ugt i32 %total_len.0.i, 5
  br i1 %cmp10.i, label %do.end.i, label %if.end9.i.do.end71.i_crit_edge

if.end9.i.do.end71.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end71.i

do.end.i:                                         ; preds = %if.end9.i
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %total_len.0.i, ptr noundef %29) #18
  %30 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv14.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0.i, i32 %conv14.i)
  %cmp15.not.i = icmp eq i32 %total_len.0.i, %conv14.i
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %do.end.i.do.end76.i_crit_edge

do.end.i.do.end76.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76.i

lor.lhs.false.i:                                  ; preds = %do.end.i
  %arrayidx17.i = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %35)
  %cmp19.not.i = icmp eq i8 %35, 95
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false.i.do.end76.i_crit_edge

lor.lhs.false.i.do.end76.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false.i
  %arrayidx22.i = getelementptr i8, ptr %31, i32 2
  %36 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp24.not.i = icmp eq i8 %37, 1
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %lor.lhs.false21.i.do.end76.i_crit_edge

lor.lhs.false21.i.do.end76.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false21.i
  %arrayidx27.i = getelementptr i8, ptr %31, i32 3
  %38 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp29.not.i = icmp eq i8 %39, 0
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %lor.lhs.false26.i.do.end76.i_crit_edge

lor.lhs.false26.i.do.end76.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76.i

lor.lhs.false31.i:                                ; preds = %lor.lhs.false26.i
  %arrayidx32.i = getelementptr i8, ptr %31, i32 4
  %40 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %41 to i32
  %sub.i = add nsw i32 %total_len.0.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv33.i)
  %cmp34.not.i = icmp eq i32 %sub.i, %conv33.i
  br i1 %cmp34.not.i, label %if.end37.i, label %lor.lhs.false31.i.do.end76.i_crit_edge

lor.lhs.false31.i.do.end76.i_crit_edge:           ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76.i

if.end37.i:                                       ; preds = %lor.lhs.false31.i
  %add.ptr.i259 = getelementptr i8, ptr %31, i32 %total_len.0.i
  %add.ptr38.i = getelementptr i8, ptr %31, i32 5
  %42 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr38.i, ptr %desc.i, align 4
  %cmp39103.i = icmp ult ptr %add.ptr38.i, %add.ptr.i259
  br i1 %cmp39103.i, label %if.end37.i.while.body.i_crit_edge, label %if.end37.i.if.end60_crit_edge

if.end37.i.if.end60_crit_edge:                    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.end37.i.while.body.i_crit_edge:                ; preds = %if.end37.i
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %if.end37.i.while.body.i_crit_edge
  %storemerge104.i = phi ptr [ %add.ptr68.i, %sw.epilog.i.while.body.i_crit_edge ], [ %add.ptr38.i, %if.end37.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %storemerge104.i, i32 1
  %43 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %incdec.ptr.i, ptr %desc.i, align 4
  %44 = ptrtoint ptr %storemerge104.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %storemerge104.i, align 1
  %incdec.ptr42.i = getelementptr i8, ptr %storemerge104.i, i32 2
  store ptr %incdec.ptr42.i, ptr %desc.i, align 4
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i, align 1
  %conv44.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv44.i, 8
  %conv45.i = zext i8 %45 to i32
  %or.i = or i32 %shl.i, %conv45.i
  %incdec.ptr47.i = getelementptr i8, ptr %storemerge104.i, i32 3
  store ptr %incdec.ptr47.i, ptr %desc.i, align 4
  %48 = ptrtoint ptr %incdec.ptr42.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %or.i)
  %cond.i = icmp eq i32 %or.i, 512
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr49.i = getelementptr i8, ptr %storemerge104.i, i32 4
  %50 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %incdec.ptr49.i, ptr %desc.i, align 4
  %51 = ptrtoint ptr %incdec.ptr47.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr47.i, align 1
  %conv50.i = zext i8 %52 to i32
  %incdec.ptr51.i = getelementptr i8, ptr %storemerge104.i, i32 5
  store ptr %incdec.ptr51.i, ptr %desc.i, align 4
  %53 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr49.i, align 1
  %conv52.i = zext i8 %54 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 8
  %or54.i = or i32 %shl53.i, %conv50.i
  %incdec.ptr55.i = getelementptr i8, ptr %storemerge104.i, i32 6
  store ptr %incdec.ptr55.i, ptr %desc.i, align 4
  %55 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr51.i, align 1
  %conv56.i = zext i8 %56 to i32
  %shl57.i = shl nuw nsw i32 %conv56.i, 16
  %or58.i = or i32 %or54.i, %shl57.i
  %incdec.ptr59.i = getelementptr i8, ptr %storemerge104.i, i32 7
  store ptr %incdec.ptr59.i, ptr %desc.i, align 4
  %57 = ptrtoint ptr %incdec.ptr55.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr55.i, align 1
  %conv60.i = zext i8 %58 to i32
  %shl61.i = shl nuw i32 %conv60.i, 24
  %or62.i = or i32 %or58.i, %shl61.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.45, i32 noundef %or62.i) #18
  %59 = ptrtoint ptr %sku_pixel_limit to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or62.i, ptr %sku_pixel_limit, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %conv67.i = zext i8 %49 to i32
  %60 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %61, i32 %conv67.i
  store ptr %add.ptr68.i, ptr %desc.i, align 4
  %cmp39.i = icmp ult ptr %add.ptr68.i, %add.ptr.i259
  br i1 %cmp39.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.if.end60_crit_edge

sw.epilog.i.if.end60_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

do.end71.i:                                       ; preds = %if.end9.i.do.end71.i_crit_edge, %if.then3.i.do.end71.i_crit_edge
  %total_len.0102.i = phi i32 [ %total_len.0.i, %if.end9.i.do.end71.i_crit_edge ], [ %call2.i, %if.then3.i.do.end71.i_crit_edge ]
  %dev72.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72.i, ptr noundef nonnull @.str.48, i32 noundef %total_len.0102.i) #18
  br label %if.end60

do.end76.i:                                       ; preds = %lor.lhs.false31.i.do.end76.i_crit_edge, %lor.lhs.false26.i.do.end76.i_crit_edge, %lor.lhs.false21.i.do.end76.i_crit_edge, %lor.lhs.false.i.do.end76.i_crit_edge, %do.end.i.do.end76.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.51) #18
  br label %if.end60

do.end58:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #14
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.10) #18
  br label %error

if.end60:                                         ; preds = %do.end76.i, %do.end71.i, %sw.epilog.i.if.end60_crit_edge, %if.end37.i.if.end60_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #14
  %62 = load i32, ptr @pixel_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool61.not = icmp eq i32 %62, 0
  br i1 %tobool61.not, label %if.end60.if.end69_crit_edge, label %do.end65

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

do.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  %dev66 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %63 = ptrtoint ptr %sku_pixel_limit to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sku_pixel_limit, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev66, ptr noundef nonnull @.str.13, i32 noundef %64, i32 noundef %62) #18
  %65 = load i32, ptr @pixel_limit, align 4
  %66 = ptrtoint ptr %sku_pixel_limit to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %sku_pixel_limit, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end65, %if.end60.if.end69_crit_edge
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call7.i.i, align 8
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  %call72 = call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %dev71) #14
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end69.error_crit_edge, label %if.end75

if.end69.error_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end75:                                         ; preds = %if.end69
  %info76 = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %info76 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call72, ptr %info76, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 30
  %70 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %par, align 4
  %pseudo_palette = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 13
  %pseudo_palette77 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 27
  %71 = ptrtoint ptr %pseudo_palette77 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pseudo_palette, ptr %pseudo_palette77, align 4
  %ops = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 22
  %72 = call ptr @memcpy(ptr %ops, ptr @dlfb_ops, i32 92)
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 20
  %73 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ops, ptr %fbops, align 4
  %render_mutex = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 15
  call void @__mutex_init(ptr noundef %render_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @dlfb_usb_probe.__key) #14
  %damage_x.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 16
  %74 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2147483647, ptr %damage_x.i, align 8
  %damage_x2.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 18
  %75 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %damage_x2.i, align 8
  %damage_y.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 17
  %76 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2147483647, ptr %damage_y.i, align 4
  %damage_y2.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 19
  %77 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %damage_y2.i, align 4
  %damage_lock = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 20
  call void @__raw_spin_lock_init(ptr noundef %damage_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @dlfb_usb_probe.__key.17, i16 noundef signext 3) #14
  %damage_work = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 21
  call void @__init_work(ptr noundef %damage_work, i32 noundef 0) #14
  %78 = ptrtoint ptr %damage_work to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -64, ptr %damage_work, align 4
  %lockdep_map = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 21, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @dlfb_usb_probe.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry90 = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 21, i32 1
  %79 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %entry90, ptr %entry90, align 8
  %prev.i261 = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 21, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i261 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %entry90, ptr %prev.i261, align 4
  %func = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 21, i32 2
  %81 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dlfb_damage_work, ptr %func, align 8
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 13
  %82 = ptrtoint ptr %modelist to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %modelist, ptr %modelist, align 4
  %prev.i262 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 13, i32 1
  %83 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %modelist, ptr %prev.i262, align 4
  %urbs.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @dlfb_alloc_urb_list.__key, i16 noundef signext 3) #14
  %size2.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 5
  %prev.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %limit_sem.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %wait_list1.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 2
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 2
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 3
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 4
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 4, i32 2
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 4, i32 3
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 4, i32 4
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 0, i32 4, i32 5
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 2, i32 1
  %count6.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 4
  %available.i = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.then22.i, %if.end75
  %size.addr.0.i = phi i32 [ 65024, %if.end75 ], [ %div1.i, %if.then22.i ]
  %84 = ptrtoint ptr %size2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %size.addr.0.i, ptr %size2.i, align 4
  %85 = ptrtoint ptr %urbs.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %urbs.i, ptr %urbs.i, align 8
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %urbs.i, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %limit_sem.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %limit_sem.i, align 4
  %88 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 8
  %89 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %90 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 8
  %91 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %92 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.71, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 8
  %93 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %94 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %95 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 14)
  %96 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %97 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 8
  call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %98 = ptrtoint ptr %count6.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %count6.i, align 8
  %99 = ptrtoint ptr %available.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %available.i, align 4
  br label %while.body.i265

while.body.i265:                                  ; preds = %list_add_tail.exit.i.while.body.i265_crit_edge, %while.body.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i263 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 16) #17
  %tobool.not.i264 = icmp eq ptr %call7.i.i.i263, null
  br i1 %tobool.not.i264, label %while.body.i265.dlfb_alloc_urb_list.exit_crit_edge, label %if.end.i266

while.body.i265.dlfb_alloc_urb_list.exit_crit_edge: ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_alloc_urb_list.exit

if.end.i266:                                      ; preds = %while.body.i265
  %dlfb12.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i263, i32 0, i32 1
  %101 = ptrtoint ptr %dlfb12.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i, ptr %dlfb12.i, align 8
  %call13.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i263) #14
  br label %dlfb_alloc_urb_list.exit

if.end16.i:                                       ; preds = %if.end.i266
  %urb17.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i263, i32 0, i32 2
  %102 = ptrtoint ptr %urb17.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call13.i, ptr %urb17.i, align 4
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call7.i.i, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 15
  %call18.i = call ptr @usb_alloc_coherent(ptr noundef %104, i32 noundef %size.addr.0.i, i32 noundef 3264, ptr noundef %transfer_dma.i) #14
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end24.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i263) #14
  call void @usb_free_urb(ptr noundef nonnull %call13.i) #14
  %cmp21.i = icmp ugt i32 %size.addr.0.i, 4096
  br i1 %cmp21.i, label %if.then22.i, label %if.then20.i.dlfb_alloc_urb_list.exit_crit_edge

if.then20.i.dlfb_alloc_urb_list.exit_crit_edge:   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_alloc_urb_list.exit

if.then22.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #16
  %div1.i = lshr i32 %size.addr.0.i, 1
  call fastcc void @dlfb_free_urb_list(ptr noundef %call7.i.i) #14
  br label %while.body.preheader.i

if.end24.i:                                       ; preds = %if.end16.i
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call7.i.i, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 8
  %shl.i.i = shl i32 %108, 8
  %or.i267 = or i32 %shl.i.i, -1073709056
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 8
  %109 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 10
  %110 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or.i267, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 14
  %111 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call18.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 19
  %112 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %size.addr.0.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 28
  %113 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @dlfb_urb_completion, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 27
  %114 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i.i263, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call13.i, i32 0, i32 13
  %115 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %transfer_flags.i, align 4
  %or28.i = or i32 %116, 4
  store i32 %or28.i, ptr %transfer_flags.i, align 4
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i263, ptr noundef %118, ptr noundef %urbs.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i.list_add_tail.exit.i_crit_edge

if.end24.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call7.i.i.i263, ptr %prev.i.i, align 4
  %120 = ptrtoint ptr %call7.i.i.i263 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %urbs.i, ptr %call7.i.i.i263, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i263, i32 0, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call7.i.i.i263, ptr %118, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end24.i.list_add_tail.exit.i_crit_edge
  call void @up(ptr noundef %limit_sem.i) #14
  %123 = ptrtoint ptr %count6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count6.i, align 8
  %inc.i = add i32 %124, 1
  store i32 %inc.i, ptr %count6.i, align 8
  %125 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %available.i, align 4
  %inc38.i = add i32 %126, 1
  store i32 %inc38.i, ptr %available.i, align 4
  %mul10.i = mul i32 %inc.i, %size.addr.0.i
  %cmp.i268 = icmp ult i32 %mul10.i, 260096
  br i1 %cmp.i268, label %list_add_tail.exit.i.while.body.i265_crit_edge, label %list_add_tail.exit.i.dlfb_alloc_urb_list.exit_crit_edge

list_add_tail.exit.i.dlfb_alloc_urb_list.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_alloc_urb_list.exit

list_add_tail.exit.i.while.body.i265_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i265

dlfb_alloc_urb_list.exit:                         ; preds = %list_add_tail.exit.i.dlfb_alloc_urb_list.exit_crit_edge, %if.then20.i.dlfb_alloc_urb_list.exit_crit_edge, %if.then15.i, %while.body.i265.dlfb_alloc_urb_list.exit_crit_edge
  %127 = ptrtoint ptr %count6.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %count6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool95.not = icmp eq i32 %128, 0
  br i1 %tobool95.not, label %if.then96, label %if.end101

if.then96:                                        ; preds = %dlfb_alloc_urb_list.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev100 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.22) #18
  br label %error

if.end101:                                        ; preds = %dlfb_alloc_urb_list.exit
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 12
  %call102 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp = icmp slt i32 %call102, 0
  br i1 %cmp, label %do.end107, label %if.end108

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  %device = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 21
  %129 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.25, i32 noundef %call102) #18
  br label %error

if.end108:                                        ; preds = %if.end101
  %call109 = call fastcc i32 @dlfb_setup_modes(ptr noundef nonnull %call7.i.i, ptr noundef %call72, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110.not = icmp eq i32 %call109, 0
  br i1 %cmp110.not, label %if.end117, label %do.end115

do.end115:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  %device116 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 21
  %131 = ptrtoint ptr %device116 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device116, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.28) #18
  br label %error

if.end117:                                        ; preds = %if.end108
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usb_active, i32 noundef 4) #14
  %133 = ptrtoint ptr %usb_active to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile i32 1, ptr %usb_active, align 4
  %call.i = call ptr @kmemdup(ptr noundef nonnull @dlfb_select_std_channel.set_def_chn, i32 noundef 16, i32 noundef 3264) #14
  %tobool.not.i269 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i269, label %if.end117.dlfb_select_std_channel.exit_crit_edge, label %if.end.i272

if.end117.dlfb_select_std_channel.exit_crit_edge: ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_select_std_channel.exit

if.end.i272:                                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  %134 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call7.i.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 8
  %shl.i.i270 = shl i32 %137, 8
  %or.i271 = or i32 %shl.i.i270, -2147483648
  %call3.i = call i32 @usb_control_msg(ptr noundef %135, i32 noundef %or.i271, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext 16, i32 noundef 5000) #14
  call void @kfree(ptr noundef nonnull %call.i) #14
  br label %dlfb_select_std_channel.exit

dlfb_select_std_channel.exit:                     ; preds = %if.end.i272, %if.end117.dlfb_select_std_channel.exit_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode.i) #14
  %138 = call ptr @memset(ptr %mode.i, i32 255, i32 56)
  %bits_per_pixel.i.i = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6, i32 6
  %139 = ptrtoint ptr %bits_per_pixel.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 16, ptr %bits_per_pixel.i.i, align 4
  %red1.i.i = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6, i32 8
  %140 = call ptr @memcpy(ptr %red1.i.i, ptr @__const.dlfb_var_color_format.red, i32 12)
  %green2.i.i = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6, i32 9
  %141 = call ptr @memcpy(ptr %green2.i.i, ptr @__const.dlfb_var_color_format.green, i32 12)
  %blue3.i.i = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6, i32 10
  %142 = call ptr @memcpy(ptr %blue3.i.i, ptr @__const.dlfb_var_color_format.blue, i32 12)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode.i, ptr noundef %var) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode.i) #14
  %call120 = call i32 @dlfb_ops_set_par(ptr noundef %call72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %dlfb_select_std_channel.exit.error_crit_edge

dlfb_select_std_channel.exit.error_crit_edge:     ; preds = %dlfb_select_std_channel.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end123:                                        ; preds = %dlfb_select_std_channel.exit
  %call124 = call i32 @register_framebuffer(ptr noundef %call72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %do.end130, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end123
  %dev135 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 22
  %device142 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 21
  %143 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev135, align 4
  %call136 = call i32 @device_create_file(ptr noundef %144, ptr noundef nonnull @fb_device_attrs) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %for.cond.preheader.for.inc_crit_edge, label %do.end141

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.end130:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %device131 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 21
  %145 = ptrtoint ptr %device131 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device131, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.31, i32 noundef %call124) #18
  br label %error

do.end141:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %147 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.90, i32 noundef %call136) #18
  br label %for.inc

for.inc:                                          ; preds = %do.end141, %for.cond.preheader.for.inc_crit_edge
  %149 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev135, align 4
  %call136.1 = call i32 @device_create_file(ptr noundef %150, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 1)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.1)
  %tobool137.not.1 = icmp eq i32 %call136.1, 0
  br i1 %tobool137.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end141.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

do.end141.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %151 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.91, i32 noundef %call136.1) #18
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end141.1, %for.inc.for.inc.1_crit_edge
  %153 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev135, align 4
  %call136.2 = call i32 @device_create_file(ptr noundef %154, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 2)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.2)
  %tobool137.not.2 = icmp eq i32 %call136.2, 0
  br i1 %tobool137.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end141.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

do.end141.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.92, i32 noundef %call136.2) #18
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end141.2, %for.inc.1.for.inc.2_crit_edge
  %157 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev135, align 4
  %call136.3 = call i32 @device_create_file(ptr noundef %158, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 3)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.3)
  %tobool137.not.3 = icmp eq i32 %call136.3, 0
  br i1 %tobool137.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end141.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

do.end141.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %159 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.93, i32 noundef %call136.3) #18
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end141.3, %for.inc.2.for.inc.3_crit_edge
  %161 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev135, align 4
  %call136.4 = call i32 @device_create_file(ptr noundef %162, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 4)) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136.4)
  %tobool137.not.4 = icmp eq i32 %call136.4, 0
  br i1 %tobool137.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end141.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

do.end141.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %163 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.94, i32 noundef %call136.4) #18
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end141.4, %for.inc.3.for.inc.4_crit_edge
  %165 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev135, align 4
  %call146 = call i32 @device_create_bin_file(ptr noundef %166, ptr noundef nonnull @edid_attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.inc.4.do.end156_crit_edge, label %do.end151

for.inc.4.do.end156_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end156

do.end151:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.96, i32 noundef %call146) #18
  br label %do.end156

do.end156:                                        ; preds = %do.end151, %for.inc.4.do.end156_crit_edge
  %169 = ptrtoint ptr %device142 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %device142, align 4
  %171 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev135, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i273 = icmp eq ptr %174, null
  br i1 %tobool.not.i273, label %if.end.i274, label %do.end156.dev_name.exit_crit_edge

do.end156.dev_name.exit_crit_edge:                ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i274:                                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #16
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %172, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i274, %do.end156.dev_name.exit_crit_edge
  %retval.0.i275 = phi ptr [ %176, %if.end.i274 ], [ %174, %do.end156.dev_name.exit_crit_edge ]
  %177 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 6, i32 1
  %179 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %yres, align 4
  %backing_buffer = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 3
  %181 = ptrtoint ptr %backing_buffer to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %backing_buffer, align 8
  %tobool162.not = icmp ne ptr %182, null
  %smem_len164 = getelementptr inbounds %struct.fb_info, ptr %call72, i32 0, i32 7, i32 2
  %183 = ptrtoint ptr %smem_len164 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %smem_len164, align 4
  %mul = zext i1 %tobool162.not to i32
  %cond = shl i32 %184, %mul
  %shr = lshr i32 %cond, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i275, i32 noundef %178, i32 noundef %180, i32 noundef %shr) #18
  br label %cleanup

error:                                            ; preds = %do.end130, %dlfb_select_std_channel.exit.error_crit_edge, %do.end115, %do.end107, %if.then96, %if.end69.error_crit_edge, %do.end58
  %retval1.0 = phi i32 [ %call102, %do.end107 ], [ %call109, %do.end115 ], [ %call120, %dlfb_select_std_channel.exit.error_crit_edge ], [ %call124, %do.end130 ], [ -12, %if.then96 ], [ -12, %if.end69.error_crit_edge ], [ -12, %do.end58 ]
  %info165 = getelementptr inbounds %struct.dlfb_data, ptr %call7.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %info165 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %info165, align 4
  %tobool166.not = icmp eq ptr %186, null
  br i1 %tobool166.not, label %if.else, label %if.then167

if.then167:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  call void @dlfb_ops_destroy(ptr noundef nonnull %186)
  br label %cleanup

if.else:                                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call7.i.i, align 8
  call void @usb_put_dev(ptr noundef %188) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then167, %dev_name.exit, %do.end
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ -12, %do.end ], [ %retval1.0, %if.else ], [ %retval1.0, %if.then167 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %info1 = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_usb_disconnect.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_usb_disconnect, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_usb_disconnect.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.98) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %virtualized = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %virtualized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %virtualized, align 4
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usb_active, i32 noundef 4) #14
  %5 = ptrtoint ptr %usb_active to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %usb_active, align 4
  tail call fastcc void @dlfb_free_urb_list(ptr noundef %1)
  %dev5 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_file(ptr noundef %7, ptr noundef nonnull @fb_device_attrs) #14
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_file(ptr noundef %9, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 1)) #14
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_file(ptr noundef %11, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 2)) #14
  %12 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_file(ptr noundef %13, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 3)) #14
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_file(ptr noundef %15, ptr noundef getelementptr inbounds ([5 x %struct.device_attribute], ptr @fb_device_attrs, i32 0, i32 4)) #14
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  tail call void @device_remove_bin_file(ptr noundef %17, ptr noundef nonnull @edid_attr) #14
  tail call void @unregister_framebuffer(ptr noundef %3) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_damage_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %damage_lock = getelementptr i8, ptr %w, i32 -44
  tail call void @_raw_spin_lock_irq(ptr noundef %damage_lock) #14
  %damage_x = getelementptr i8, ptr %w, i32 -60
  %0 = ptrtoint ptr %damage_x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %damage_x, align 4
  %damage_x2 = getelementptr i8, ptr %w, i32 -52
  %2 = ptrtoint ptr %damage_x2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %damage_x2, align 4
  %damage_y = getelementptr i8, ptr %w, i32 -56
  %4 = ptrtoint ptr %damage_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %damage_y, align 4
  %damage_y2 = getelementptr i8, ptr %w, i32 -48
  %6 = ptrtoint ptr %damage_y2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %damage_y2, align 4
  store i32 2147483647, ptr %damage_x, align 4
  store i32 0, ptr %damage_x2, align 4
  store i32 2147483647, ptr %damage_y, align 4
  store i32 0, ptr %damage_y2, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %damage_lock) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp2 = icmp sgt i32 %7, %5
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr i8, ptr %w, i32 -1348
  %sub = sub i32 %3, %1
  %sub3 = sub i32 %7, %5
  tail call fastcc void @dlfb_handle_damage(ptr noundef %add.ptr, i32 noundef %1, i32 noundef %5, i32 noundef %sub, i32 noundef %sub3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlfb_setup_modes(ptr nocapture noundef %dlfb, ptr noundef %info, ptr noundef %default_edid, i32 noundef %default_edid_size) unnamed_addr #2 align 64 {
entry:
  %fb_vmode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 21
  %dev1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev.0.in = phi ptr [ %dev1, %if.then ], [ %device, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 128) #17
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.if.end141_crit_edge, label %if.end5

if.end.if.end141_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.end5:                                          ; preds = %if.end
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist) #14
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8
  %4 = call ptr @memset(ptr %monspecs, i32 0, i32 140)
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  br label %while.cond

while.cond:                                       ; preds = %if.end10.while.cond_crit_edge, %if.end5
  %tries.0 = phi i32 [ 3, %if.end5 ], [ %dec, %if.end10.while.cond_crit_edge ]
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0)
  %tobool6.not = icmp eq i32 %tries.0, 0
  br i1 %tobool6.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 2) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %while.body.if.end10_crit_edge, label %for.cond.preheader.i

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.cond.preheader.i:                             ; preds = %while.body
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.02.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dlfb, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %i.0.tr.i = trunc i32 %i.02.i to i16
  %conv.i = shl i16 %i.0.tr.i, 8
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or3.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext %conv.i, i16 noundef zeroext 161, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 5000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 2
  br i1 %cmp5.i, label %dlfb_get_edid.exit, label %if.end9.i

if.end9.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %arrayidx10.i = getelementptr i8, ptr %call7.i, i32 %i.02.i
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx10.i, align 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %dlfb_get_edid.exit.thread229, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

dlfb_get_edid.exit.thread229:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %if.then8

dlfb_get_edid.exit:                               ; preds = %for.body.i
  %13 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dlfb, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.83, i32 noundef %i.02.i, i32 noundef %call4.i) #18
  %dec.i = add nsw i32 %i.02.i, -1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.02.i)
  %cmp = icmp ugt i32 %i.02.i, 128
  br i1 %cmp, label %dlfb_get_edid.exit.if.then8_crit_edge, label %dlfb_get_edid.exit.if.end10_crit_edge

dlfb_get_edid.exit.if.end10_crit_edge:            ; preds = %dlfb_get_edid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

dlfb_get_edid.exit.if.then8_crit_edge:            ; preds = %dlfb_get_edid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %dlfb_get_edid.exit.if.then8_crit_edge, %dlfb_get_edid.exit.thread229
  %i.1.i232 = phi i32 [ 128, %dlfb_get_edid.exit.thread229 ], [ %dec.i, %dlfb_get_edid.exit.if.then8_crit_edge ]
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call7.i, ptr noundef %monspecs) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %dlfb_get_edid.exit.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %retval.0.i219228 = phi i32 [ %i.1.i232, %if.then8 ], [ %dec.i, %dlfb_get_edid.exit.if.end10_crit_edge ], [ 0, %while.body.if.end10_crit_edge ]
  %15 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %modedb_len, align 4
  %cmp12.not = icmp eq i32 %16, 0
  br i1 %cmp12.not, label %if.end10.while.cond_crit_edge, label %if.then13

if.end10.while.cond_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %edid14 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 8
  %17 = ptrtoint ptr %edid14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %edid14, align 4
  %edid_size = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 9
  %18 = ptrtoint ptr %edid_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i219228, ptr %edid_size, align 4
  br label %while.end

while.end:                                        ; preds = %if.then13, %while.cond.while.end_crit_edge
  %19 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp eq i32 %20, 0
  br i1 %cmp18, label %do.end, label %while.end.if.end34_crit_edge

while.end.if.end34_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.end:                                           ; preds = %while.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.73) #18
  %edid20 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 8
  %21 = ptrtoint ptr %edid20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edid20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %do.end.if.end34_crit_edge, label %if.then22

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then22:                                        ; preds = %do.end
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %22, ptr noundef %monspecs) #14
  %23 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27.not = icmp eq i32 %24, 0
  br i1 %cmp27.not, label %if.then22.if.end34_crit_edge, label %do.end31

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

do.end31:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.76) #18
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.then22.if.end34_crit_edge, %do.end.if.end34_crit_edge, %while.end.if.end34_crit_edge
  %25 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp37 = icmp eq i32 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %default_edid_size)
  %cmp39 = icmp ugt i32 %default_edid_size, 127
  %or.cond = and i1 %cmp39, %cmp37
  br i1 %or.cond, label %if.then40, label %if.end34.if.end53_crit_edge

if.end34.if.end53_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then40:                                        ; preds = %if.end34
  tail call void @fb_edid_to_monspecs(ptr noundef %default_edid, ptr noundef %monspecs) #14
  %27 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp44.not = icmp eq i32 %28, 0
  br i1 %cmp44.not, label %if.then40.if.then88_crit_edge, label %if.then45

if.then40.if.then88_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  %29 = call ptr @memcpy(ptr %call7.i, ptr %default_edid, i32 128)
  %edid46 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 8
  %30 = ptrtoint ptr %edid46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %edid46, align 4
  %edid_size47 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 9
  %31 = ptrtoint ptr %edid_size47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %edid_size47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.0, ptr noundef nonnull @.str.79) #18
  %32 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %modedb_len, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.end34.if.end53_crit_edge
  %33 = phi i32 [ %.pr, %if.then45 ], [ %26, %if.end34.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp56.not = icmp eq i32 %33, 0
  br i1 %cmp56.not, label %if.end53.if.then88_crit_edge, label %for.cond.preheader

if.end53.if.then88_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

for.cond.preheader:                               ; preds = %if.end53
  %34 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp60245.not = icmp eq i32 %35, 0
  br i1 %cmp60245.not, label %for.cond.preheader.if.end85_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end85_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %modedb = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 1
  %sku_pixel_limit.i = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 10
  %misc = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 22
  %36 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %modedb, align 4
  %xres.i.peel = getelementptr %struct.fb_videomode, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %xres.i.peel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %xres.i.peel, align 4
  %yres.i.peel = getelementptr %struct.fb_videomode, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %yres.i.peel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %yres.i.peel, align 4
  %mul.i.peel = mul i32 %41, %39
  %42 = ptrtoint ptr %sku_pixel_limit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sku_pixel_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.peel, i32 %43)
  %cmp.i.not.peel = icmp ugt i32 %mul.i.peel, %43
  br i1 %cmp.i.not.peel, label %do.body67.peel, label %if.then64.peel

if.then64.peel:                                   ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #16
  %call66.peel = tail call i32 @fb_add_videomode(ptr noundef %37, ptr noundef %modelist) #14
  br label %for.inc.peel

do.body67.peel:                                   ; preds = %for.body.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_setup_modes.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_setup_modes, %if.then72.peel)) #14
          to label %if.then77.peel [label %if.then72.peel], !srcloc !245

if.then72.peel:                                   ; preds = %do.body67.peel
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %xres.i.peel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xres.i.peel, align 4
  %46 = ptrtoint ptr %yres.i.peel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %yres.i.peel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_setup_modes.__UNIQUE_ID_ddebug326, ptr noundef %dev.0, ptr noundef nonnull @.str.81, i32 noundef %45, i32 noundef %47) #14
  br label %if.then77.peel

if.then77.peel:                                   ; preds = %if.then72.peel, %do.body67.peel
  %48 = ptrtoint ptr %misc to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %misc, align 2
  %50 = and i16 %49, -3
  store i16 %50, ptr %misc, align 2
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then77.peel, %if.then64.peel
  %51 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp60.peel = icmp ugt i32 %52, 1
  br i1 %cmp60.peel, label %for.inc.peel.for.body_crit_edge, label %for.inc.peel.if.end85_crit_edge

for.inc.peel.if.end85_crit_edge:                  ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

for.inc.peel.for.body_crit_edge:                  ; preds = %for.inc.peel
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.inc.peel.for.body_crit_edge
  %i.0246 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.inc.peel.for.body_crit_edge ]
  %53 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %modedb, align 4
  %xres.i = getelementptr %struct.fb_videomode, ptr %54, i32 %i.0246, i32 2
  %55 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr %struct.fb_videomode, ptr %54, i32 %i.0246, i32 3
  %57 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %yres.i, align 4
  %mul.i = mul i32 %58, %56
  %59 = ptrtoint ptr %sku_pixel_limit.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sku_pixel_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %60)
  %cmp.i.not = icmp ugt i32 %mul.i, %60
  br i1 %cmp.i.not, label %do.body67, label %if.then64

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.fb_videomode, ptr %54, i32 %i.0246
  %call66 = tail call i32 @fb_add_videomode(ptr noundef %arrayidx, ptr noundef %modelist) #14
  br label %for.inc

do.body67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_setup_modes.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_setup_modes, %if.then72)) #14
          to label %for.inc [label %if.then72], !srcloc !245

if.then72:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xres.i, align 4
  %63 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %yres.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_setup_modes.__UNIQUE_ID_ddebug326, ptr noundef %dev.0, ptr noundef nonnull @.str.81, i32 noundef %62, i32 noundef %64) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then72, %do.body67, %if.then64
  %inc = add nuw i32 %i.0246, 1
  %65 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %modedb_len, align 4
  %cmp60 = icmp ult i32 %inc, %66
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %for.inc.if.end85_crit_edge, !llvm.loop !247

for.inc.if.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end85:                                         ; preds = %for.inc.if.end85_crit_edge, %for.inc.peel.if.end85_crit_edge, %for.cond.preheader.if.end85_crit_edge
  %call84 = tail call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #14
  %cmp86 = icmp eq ptr %call84, null
  br i1 %cmp86, label %if.end85.if.then88_crit_edge, label %if.end85.land.lhs.true_crit_edge

if.end85.land.lhs.true_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end85.if.then88_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then88

if.then88:                                        ; preds = %if.end85.if.then88_crit_edge, %if.end53.if.then88_crit_edge, %if.then40.if.then88_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fb_vmode) #14
  %67 = call ptr @memset(ptr %fb_vmode, i32 0, i32 56)
  %sku_pixel_limit.i223 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 10
  br label %for.body92

for.body92:                                       ; preds = %for.inc119.for.body92_crit_edge, %if.then88
  %i.1249 = phi i32 [ 0, %if.then88 ], [ %inc120, %for.inc119.for.body92_crit_edge ]
  %xres.i220 = getelementptr [0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 %i.1249, i32 2
  %68 = ptrtoint ptr %xres.i220 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xres.i220, align 4
  %yres.i221 = getelementptr [0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 %i.1249, i32 3
  %70 = ptrtoint ptr %yres.i221 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yres.i221, align 4
  %mul.i222 = mul i32 %71, %69
  %72 = ptrtoint ptr %sku_pixel_limit.i223 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sku_pixel_limit.i223, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i222, i32 %73)
  %cmp.i224.not = icmp ugt i32 %mul.i222, %73
  br i1 %cmp.i224.not, label %do.body100, label %if.then96

if.then96:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx93 = getelementptr [0 x %struct.fb_videomode], ptr @vesa_modes, i32 0, i32 %i.1249
  %call98 = tail call i32 @fb_add_videomode(ptr noundef %arrayidx93, ptr noundef %modelist) #14
  br label %for.inc119

do.body100:                                       ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_setup_modes.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_setup_modes, %if.then112)) #14
          to label %for.inc119 [label %if.then112], !srcloc !245

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %xres.i220 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xres.i220, align 4
  %76 = ptrtoint ptr %yres.i221 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %yres.i221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_setup_modes.__UNIQUE_ID_ddebug327, ptr noundef %dev.0, ptr noundef nonnull @.str.82, i32 noundef %75, i32 noundef %77) #14
  br label %for.inc119

for.inc119:                                       ; preds = %if.then112, %do.body100, %if.then96
  %inc120 = add nuw nsw i32 %i.1249, 1
  %exitcond.not = icmp eq i32 %inc120, 43
  br i1 %exitcond.not, label %if.end126, label %for.inc119.for.body92_crit_edge

for.inc119.for.body92_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body92

if.end126:                                        ; preds = %for.inc119
  %xres122 = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 2
  %78 = ptrtoint ptr %xres122 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 800, ptr %xres122, align 4
  %yres123 = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 3
  %79 = ptrtoint ptr %yres123 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 600, ptr %yres123, align 4
  %refresh = getelementptr inbounds %struct.fb_videomode, ptr %fb_vmode, i32 0, i32 1
  %80 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 60, ptr %refresh, align 4
  %call125 = call ptr @fb_find_nearest_mode(ptr noundef nonnull %fb_vmode, ptr noundef %modelist) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fb_vmode) #14
  %cmp127.not = icmp eq ptr %call125, null
  br i1 %cmp127.not, label %if.end126.land.lhs.true136_crit_edge, label %if.end126.land.lhs.true_crit_edge

if.end126.land.lhs.true_crit_edge:                ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end126.land.lhs.true136_crit_edge:             ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true136

land.lhs.true:                                    ; preds = %if.end126.land.lhs.true_crit_edge, %if.end85.land.lhs.true_crit_edge
  %default_vmode.1240 = phi ptr [ %call125, %if.end126.land.lhs.true_crit_edge ], [ %call84, %if.end85.land.lhs.true_crit_edge ]
  %fb_count = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 4
  %81 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp129 = icmp eq i32 %82, 0
  br i1 %cmp129, label %if.then131, label %land.lhs.true.land.lhs.true136_crit_edge

land.lhs.true.land.lhs.true136_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true136

if.then131:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %default_vmode.1240) #14
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %83 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %red1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %84 = call ptr @memcpy(ptr %red1.i, ptr @__const.dlfb_var_color_format.red, i32 12)
  %green2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %85 = call ptr @memcpy(ptr %green2.i, ptr @__const.dlfb_var_color_format.green, i32 12)
  %blue3.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %86 = call ptr @memcpy(ptr %blue3.i, ptr @__const.dlfb_var_color_format.blue, i32 12)
  %fix = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %87 = call ptr @memcpy(ptr %fix, ptr @dlfb_fix, i32 68)
  br label %land.lhs.true136

land.lhs.true136:                                 ; preds = %if.then131, %land.lhs.true.land.lhs.true136_crit_edge, %if.end126.land.lhs.true136_crit_edge
  %result.0 = phi i32 [ 0, %if.then131 ], [ -22, %land.lhs.true.land.lhs.true136_crit_edge ], [ -22, %if.end126.land.lhs.true136_crit_edge ]
  %edid137 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 8
  %88 = ptrtoint ptr %edid137 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %edid137, align 4
  %cmp138.not = icmp eq ptr %89, %call7.i
  br i1 %cmp138.not, label %land.lhs.true136.if.end141_crit_edge, label %if.then140

land.lhs.true136.if.end141_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %land.lhs.true136.if.end141_crit_edge, %if.end.if.end141_crit_edge
  %result.0242 = phi i32 [ %result.0, %if.then140 ], [ %result.0, %land.lhs.true136.if.end141_crit_edge ], [ -12, %if.end.if.end141_crit_edge ]
  %90 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1, align 4
  %tobool143.not = icmp eq ptr %91, null
  br i1 %tobool143.not, label %if.end141.if.end146_crit_edge, label %if.then144

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #16
  %lock145 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock145) #14
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141.if.end146_crit_edge
  ret i32 %result.0242
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  %mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mode) #14
  %0 = call ptr @memset(ptr %mode, i32 255, i32 56)
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %3 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %red1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %red1.i, ptr @__const.dlfb_var_color_format.red, i32 12)
  %green2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %5 = call ptr @memcpy(ptr %green2.i, ptr @__const.dlfb_var_color_format.green, i32 12)
  %blue3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %6 = call ptr @memcpy(ptr %blue3.i, ptr @__const.dlfb_var_color_format.blue, i32 12)
  call void @fb_var_to_videomode(ptr noundef nonnull %mode, ptr noundef %var) #14
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %7 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xres.i, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %9 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres.i, align 4
  %mul.i = mul i32 %10, %8
  %sku_pixel_limit.i = getelementptr inbounds %struct.dlfb_data, ptr %2, i32 0, i32 10
  %11 = ptrtoint ptr %sku_pixel_limit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sku_pixel_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp.i.not = icmp ugt i32 %mul.i, %12
  %. = select i1 %cmp.i.not, i32 -22, i32 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mode) #14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_set_par(ptr nocapture noundef %info) #2 align 64 {
entry:
  %fvs = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %fvs) #14
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %div53 = lshr i32 %5, 3
  %mul = mul i32 %div53, %3
  %6 = call ptr @memcpy(ptr %fvs, ptr %var, i32 160)
  %activate = getelementptr inbounds %struct.fb_var_screeninfo, ptr %fvs, i32 0, i32 13
  %7 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %activate, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %fvs, i32 0, i32 25
  %8 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vmode, align 4
  %and = and i32 %9, -513
  store i32 %and, ptr %vmode, align 4
  %current_mode = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 27
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(160) %current_mode, ptr noundef nonnull dereferenceable(160) %fvs, i32 160) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres, align 4
  %mul4 = mul i32 %11, %mul
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smem_len.i, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.i = add i32 %mul4, 4095
  %and.i = and i32 %add.i, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %13)
  %cmp.i = icmp ugt i32 %and.i, %13
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then.i:                                        ; preds = %if.end
  %call.i = tail call noalias ptr @vmalloc(i32 noundef %and.i) #20
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %dlfb_realloc_framebuffer.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  %17 = call ptr @memset(ptr %call.i, i32 255, i32 %and.i)
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  %20 = call ptr @memcpy(ptr %call.i, ptr %16, i32 %13)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 12) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.end.i.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.then3.i
  %mem1.i.i = getelementptr inbounds %struct.dlfb_deferred_free, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %mem1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %mem1.i.i, align 8
  %deferred_free.i.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %deferred_free.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %deferred_free.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %deferred_free.i.i, ptr noundef %24) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end4.i_crit_edge

if.end.i.i.if.end4.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %deferred_free.i.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %deferred_free.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i, ptr %deferred_free.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end4.i_crit_edge, %if.then3.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %14, align 4
  %30 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %smem_len.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %smem_start.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 264068, ptr %flags.i, align 4
  %34 = load i8, ptr @shadow, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool8.not.i = icmp eq i8 %34, 0
  br i1 %tobool8.not.i, label %if.end4.i.do.end16.i_crit_edge, label %if.end11.i

if.end4.i.do.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i

if.end11.i:                                       ; preds = %if.end4.i
  %call10.i = tail call noalias ptr @vzalloc(i32 noundef %and.i) #20
  %tobool12.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool12.not.i, label %if.end11.i.do.end16.i_crit_edge, label %if.else.i

if.end11.i.do.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.end11.i.do.end16.i_crit_edge, %if.end4.i.do.end16.i_crit_edge
  %dev17.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %35 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.88) #18
  br label %if.end8

if.else.i:                                        ; preds = %if.end11.i
  %backing_buffer.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %backing_buffer.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %backing_buffer.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i47.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 12) #17
  %tobool.not.i48.i = icmp eq ptr %call7.i.i47.i, null
  br i1 %tobool.not.i48.i, label %if.else.i.dlfb_deferred_vfree.exit56.i_crit_edge, label %if.end.i52.i

if.else.i.dlfb_deferred_vfree.exit56.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_deferred_vfree.exit56.i

if.end.i52.i:                                     ; preds = %if.else.i
  %mem1.i49.i = getelementptr inbounds %struct.dlfb_deferred_free, ptr %call7.i.i47.i, i32 0, i32 1
  %40 = ptrtoint ptr %mem1.i49.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %mem1.i49.i, align 8
  %deferred_free.i50.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 28
  %41 = ptrtoint ptr %deferred_free.i50.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %deferred_free.i50.i, align 4
  %call.i.i.i51.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i47.i, ptr noundef %deferred_free.i50.i, ptr noundef %42) #14
  br i1 %call.i.i.i51.i, label %if.end.i.i.i55.i, label %if.end.i52.i.dlfb_deferred_vfree.exit56.i_crit_edge

if.end.i52.i.dlfb_deferred_vfree.exit56.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_deferred_vfree.exit56.i

if.end.i.i.i55.i:                                 ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i53.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i47.i, ptr %prev1.i.i.i53.i, align 4
  %44 = ptrtoint ptr %call7.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %call7.i.i47.i, align 8
  %prev3.i.i.i54.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i47.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %deferred_free.i50.i, ptr %prev3.i.i.i54.i, align 4
  %46 = ptrtoint ptr %deferred_free.i50.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i47.i, ptr %deferred_free.i50.i, align 4
  br label %dlfb_deferred_vfree.exit56.i

dlfb_deferred_vfree.exit56.i:                     ; preds = %if.end.i.i.i55.i, %if.end.i52.i.dlfb_deferred_vfree.exit56.i_crit_edge, %if.else.i.dlfb_deferred_vfree.exit56.i_crit_edge
  %47 = ptrtoint ptr %backing_buffer.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call10.i, ptr %backing_buffer.i, align 4
  br label %if.end8

dlfb_realloc_framebuffer.exit:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.85) #18
  br label %cleanup

if.end8:                                          ; preds = %dlfb_deferred_vfree.exit56.i, %do.end16.i, %if.end.if.end8_crit_edge
  %call10 = tail call fastcc i32 @dlfb_set_video_mode(ptr noundef %1, ptr noundef %var)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %50 = call ptr @memcpy(ptr %current_mode, ptr %fvs, i32 160)
  %line_length15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %51 = ptrtoint ptr %line_length15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul, ptr %line_length15, align 4
  %fb_count = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %if.then16, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  %54 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %14, align 4
  %56 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smem_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp1958.not = icmp ult i32 %57, 2
  br i1 %cmp1958.not, label %if.then16.if.end20_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then16.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then16.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %55, i32 %i.059
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 14310, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.059, 1
  %59 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smem_len.i, align 4
  %div1854 = lshr i32 %60, 1
  %cmp19 = icmp ult i32 %inc, %div1854
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end20:                                         ; preds = %for.body.if.end20_crit_edge, %if.then16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %61 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %var, align 4
  %63 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %yres, align 4
  tail call fastcc void @dlfb_handle_damage(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %62, i32 noundef %64)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end8.cleanup_crit_edge, %dlfb_realloc_framebuffer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %dlfb_realloc_framebuffer.exit ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %fvs) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_ops_destroy(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %damage_work = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 21
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %damage_work) #14
  %render_mutex = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 15
  tail call void @mutex_destroy(ptr noundef %render_mutex) #14
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %modedb = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modedb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fb_destroy_modedb(ptr noundef nonnull %5) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %6 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @vfree(ptr noundef %8) #14
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %modelist) #14
  %deferred_free = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %deferred_free to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %deferred_free, align 4
  %cmp.i.not26 = icmp eq ptr %10, %deferred_free
  br i1 %cmp.i.not26, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end5.while.body_crit_edge
  %11 = phi ptr [ %23, %list_del.exit.while.body_crit_edge ], [ %10, %if.end5.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mem = getelementptr inbounds %struct.dlfb_deferred_free, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  tail call void @vfree(ptr noundef %21) #14
  tail call void @kfree(ptr noundef %11) #14
  %22 = ptrtoint ptr %deferred_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %deferred_free, align 4
  %cmp.i.not = icmp eq ptr %23, %deferred_free
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end5.while.end_crit_edge
  %backing_buffer = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %backing_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %backing_buffer, align 4
  tail call void @vfree(ptr noundef %25) #14
  %edid = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %27) #14
  tail call fastcc void @dlfb_free_urb_list(ptr noundef %1)
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %29) #14
  tail call void @kfree(ptr noundef %1) #14
  tail call void @framebuffer_release(ptr noundef %info) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usb_get_extra_descriptor(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_open(ptr noundef %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %cmp = icmp eq i32 %user, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @console, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %virtualized = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %virtualized to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %virtualized, align 4, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %fb_count = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fb_count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %fb_count, align 4
  %7 = load i8, ptr @fb_defio, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end3.do.body_crit_edge, label %land.lhs.true5

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true5:                                   ; preds = %if.end3
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %8 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fbdefio, align 4
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %if.then7, label %land.lhs.true5.do.body_crit_edge

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then7:                                         ; preds = %land.lhs.true5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 112) #17
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call7.i.i, align 8
  %deferred_io = getelementptr inbounds %struct.fb_deferred_io, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %deferred_io to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dlfb_dpy_deferred_io, ptr %deferred_io, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %13 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %fbdefio, align 4
  tail call void @fb_deferred_io_init(ptr noundef %info) #14
  br label %do.body

do.body:                                          ; preds = %if.end12, %land.lhs.true5.do.body_crit_edge, %if.end3.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_ops_open.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_ops_open, %if.then19)) #14
          to label %cleanup [label %if.then19], !srcloc !245

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fb_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_ops_open.__UNIQUE_ID_ddebug323, ptr noundef %15, ptr noundef nonnull @.str.54, i32 noundef %user, ptr noundef %info, i32 noundef %17) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_release(ptr noundef %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %fb_count = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %fb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %4 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fbdefio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fb_deferred_io_cleanup(ptr noundef %info) #14
  %6 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbdefio, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fbdefio, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_ops_release.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_ops_release, %if.then7)) #14
          to label %do.end [label %if.then7], !srcloc !245

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %fb_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fb_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_ops_release.__UNIQUE_ID_ddebug324, ptr noundef %10, ptr noundef nonnull @.str.62, i32 noundef %user, i32 noundef %12) #14
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %call = tail call i32 @fb_sys_write(ptr noundef %info, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call fastcc void @dlfb_handle_damage(ptr noundef %1, i32 noundef 0, i32 noundef %6, i32 noundef %11, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dlfb_ops_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %regno)
  %cmp.not = icmp ugt i32 %1, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp1 = icmp ult i32 %regno, 16
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @dlfb_ops_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_ops_blank.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_ops_blank, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %blank_mode3 = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %blank_mode3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blank_mode3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_ops_blank.__UNIQUE_ID_ddebug325, ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %5, i32 noundef %blank_mode) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %blank_mode4 = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %blank_mode4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blank_mode4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp ne i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %blank_mode)
  %cmp5.not = icmp eq i32 %blank_mode, 4
  %or.cond = or i1 %cmp5.not, %cmp
  br i1 %or.cond, label %do.end.if.end8_crit_edge, label %if.then6

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call7 = tail call fastcc i32 @dlfb_set_video_mode(ptr noundef %1, ptr noundef %var)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge
  %call9 = tail call fastcc ptr @dlfb_get_urb(ptr noundef %1)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -81, ptr %9, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %9, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %9, i32 3
  %12 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %incdec.ptr1.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %9, i32 4
  %13 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %incdec.ptr2.i.i, align 1
  %switch.tableidx = add i32 %blank_mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 4
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 1
  %switch.offset = or i8 %switch.idx.mult, 1
  %reg.0.i = select i1 %14, i8 %switch.offset, i8 0
  %incdec.ptr.i.i39 = getelementptr i8, ptr %9, i32 5
  %15 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -81, ptr %incdec.ptr3.i.i, align 1
  %incdec.ptr1.i.i40 = getelementptr i8, ptr %9, i32 6
  %16 = ptrtoint ptr %incdec.ptr.i.i39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 32, ptr %incdec.ptr.i.i39, align 1
  %incdec.ptr2.i.i41 = getelementptr i8, ptr %9, i32 7
  %17 = ptrtoint ptr %incdec.ptr1.i.i40 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 31, ptr %incdec.ptr1.i.i40, align 1
  %incdec.ptr3.i.i42 = getelementptr i8, ptr %9, i32 8
  %18 = ptrtoint ptr %incdec.ptr2.i.i41 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %reg.0.i, ptr %incdec.ptr2.i.i41, align 1
  %incdec.ptr.i.i43 = getelementptr i8, ptr %9, i32 9
  %19 = ptrtoint ptr %incdec.ptr3.i.i42 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -81, ptr %incdec.ptr3.i.i42, align 1
  %incdec.ptr1.i.i44 = getelementptr i8, ptr %9, i32 10
  %20 = ptrtoint ptr %incdec.ptr.i.i43 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %incdec.ptr.i.i43, align 1
  %incdec.ptr2.i.i45 = getelementptr i8, ptr %9, i32 11
  %21 = ptrtoint ptr %incdec.ptr1.i.i44 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %incdec.ptr1.i.i44, align 1
  %incdec.ptr3.i.i46 = getelementptr i8, ptr %9, i32 12
  %22 = ptrtoint ptr %incdec.ptr2.i.i45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %incdec.ptr2.i.i45, align 1
  %incdec.ptr.i = getelementptr i8, ptr %9, i32 13
  %23 = ptrtoint ptr %incdec.ptr3.i.i46 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -81, ptr %incdec.ptr3.i.i46, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %9, i32 14
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 106, ptr %incdec.ptr.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %9, i32 15
  %25 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %incdec.ptr1.i, align 1
  %incdec.ptr3.i = getelementptr i8, ptr %9, i32 16
  %26 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %incdec.ptr2.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %9, i32 17
  %27 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %incdec.ptr3.i, align 1
  %incdec.ptr5.i = getelementptr i8, ptr %9, i32 18
  %28 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %incdec.ptr4.i, align 1
  %incdec.ptr6.i = getelementptr i8, ptr %9, i32 19
  %29 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %incdec.ptr5.i, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %9, i32 20
  %30 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %incdec.ptr6.i, align 1
  %incdec.ptr8.i = getelementptr i8, ptr %9, i32 21
  %31 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %incdec.ptr7.i, align 1
  %32 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transfer_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr8.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 2, i32 5
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub.ptr.sub)
  %cmp.i = icmp ult i32 %35, %sub.ptr.sub
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !249

do.body2.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #14, !srcloc !250
  unreachable

do.end7.i:                                        ; preds = %if.end12
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call9, i32 0, i32 19
  %36 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.ptr.sub, ptr %transfer_buffer_length.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call9, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end7.i.dlfb_submit_urb.exit_crit_edge, label %if.then9.i

do.end7.i.dlfb_submit_urb.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_submit_urb.exit

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlfb_urb_completion(ptr noundef nonnull %call9) #14
  %lost_pixels.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i, i32 noundef 4) #14
  %37 = ptrtoint ptr %lost_pixels.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %lost_pixels.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i) #18
  br label %dlfb_submit_urb.exit

dlfb_submit_urb.exit:                             ; preds = %if.then9.i, %do.end7.i.dlfb_submit_urb.exit_crit_edge
  %40 = ptrtoint ptr %blank_mode4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %blank_mode, ptr %blank_mode4, align 4
  br label %cleanup

cleanup:                                          ; preds = %dlfb_submit_urb.exit, %if.end8.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_ops_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #14
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
  %add.i = add i32 %7, %3
  %add1.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.not.i = icmp sgt i32 %add.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp2.not.i = icmp sgt i32 %add1.i, %5
  %or.cond.i = and i1 %cmp.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %do.body3.i, label %entry.dlfb_offload_damage.exit_crit_edge

entry.dlfb_offload_damage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_offload_damage.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %damage_lock.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 20
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %damage_lock.i) #14
  %damage_x.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %damage_x.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3) #14
  %13 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %damage_x.i, align 4
  %damage_x2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %damage_x2.i, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 %15) #14
  %17 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %damage_x2.i, align 4
  %damage_y.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %damage_y.i, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %5) #14
  %21 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %damage_y.i, align 4
  %damage_y2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %damage_y2.i, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %add1.i, i32 %23) #14
  %25 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %damage_y2.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %damage_lock.i, i32 noundef %call5.i) #14
  %damage_work.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %damage_work.i) #14
  br label %dlfb_offload_damage.exit

dlfb_offload_damage.exit:                         ; preds = %do.body3.i, %entry.dlfb_offload_damage.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_ops_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #14
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
  %add.i = add i32 %7, %3
  %add1.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.not.i = icmp sgt i32 %add.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp2.not.i = icmp sgt i32 %add1.i, %5
  %or.cond.i = and i1 %cmp.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %do.body3.i, label %entry.dlfb_offload_damage.exit_crit_edge

entry.dlfb_offload_damage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_offload_damage.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %damage_lock.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 20
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %damage_lock.i) #14
  %damage_x.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %damage_x.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3) #14
  %13 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %damage_x.i, align 4
  %damage_x2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %damage_x2.i, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 %15) #14
  %17 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %damage_x2.i, align 4
  %damage_y.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %damage_y.i, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %5) #14
  %21 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %damage_y.i, align 4
  %damage_y2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %damage_y2.i, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %add1.i, i32 %23) #14
  %25 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %damage_y2.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %damage_lock.i, i32 noundef %call5.i) #14
  %damage_work.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %damage_work.i) #14
  br label %dlfb_offload_damage.exit

dlfb_offload_damage.exit:                         ; preds = %do.body3.i, %entry.dlfb_offload_damage.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_ops_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #14
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
  %add.i = add i32 %7, %3
  %add1.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %3)
  %cmp.not.i = icmp sgt i32 %add.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %5)
  %cmp2.not.i = icmp sgt i32 %add1.i, %5
  %or.cond.i = and i1 %cmp.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %do.body3.i, label %entry.dlfb_offload_damage.exit_crit_edge

entry.dlfb_offload_damage.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_offload_damage.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %damage_lock.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 20
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %damage_lock.i) #14
  %damage_x.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %damage_x.i, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3) #14
  %13 = ptrtoint ptr %damage_x.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %damage_x.i, align 4
  %damage_x2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %damage_x2.i, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 %15) #14
  %17 = ptrtoint ptr %damage_x2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %damage_x2.i, align 4
  %damage_y.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %damage_y.i, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %5) #14
  %21 = ptrtoint ptr %damage_y.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %damage_y.i, align 4
  %damage_y2.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %damage_y2.i, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %add1.i, i32 %23) #14
  %25 = ptrtoint ptr %damage_y2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %damage_y2.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %damage_lock.i, i32 noundef %call5.i) #14
  %damage_work.i = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %damage_work.i) #14
  br label %dlfb_offload_damage.exit

dlfb_offload_damage.exit:                         ; preds = %do.body3.i, %entry.dlfb_offload_damage.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %area = alloca %struct.dloarea, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #14
  %2 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup46_crit_edge [
    i32 173, label %if.then1
    i32 170, label %if.then9
  ]

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.then1:                                         ; preds = %if.end
  %5 = inttoptr i32 %arg to ptr
  %edid2 = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %edid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edid2, align 4
  %edid_size = getelementptr inbounds %struct.dlfb_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %edid_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edid_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.i.i = icmp slt i32 %9, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then1
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup46_crit_edge, label %if.then27.i.i, !prof !251

land.rhs16.i.i.cleanup46_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup46

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup46

if.then.i.i.i:                                    ; preds = %if.then1
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %9, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 174) #14
  %call.i.i60 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i60, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %9, i32 -1226833920) #21, !srcloc !252
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %7, i32 noundef %9) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %7, i32 noundef %9) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %9, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %9, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool4.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %cleanup46

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %area) #14
  %11 = getelementptr inbounds %struct.dloarea, ptr %area, i32 0, i32 1
  %12 = getelementptr inbounds %struct.dloarea, ptr %area, i32 0, i32 2
  %13 = getelementptr inbounds %struct.dloarea, ptr %area, i32 0, i32 3
  %14 = inttoptr i32 %arg to ptr
  %15 = call ptr @memset(ptr %area, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.67, i32 noundef 156) #14
  %call.i.i62 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i62, label %if.then9.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then9.if.then11.i.i_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then9
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 24, i32 -1226833920) #21, !srcloc !253
  %asmresult.i.i64 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i64)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i64, 0
  br i1 %cmp.i1.i, label %if.end.i.i66, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !251

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i66:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %area, i32 noundef 24) #14
  %17 = call i32 @llvm.read_register.i32(metadata !235) #14
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !254
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %area, ptr noundef %14, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i66.if.then11.i.i_crit_edge, !prof !251

if.end.i.i66.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i66.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then9.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #14
  br label %cleanup46

if.end13:                                         ; preds = %if.end.i.i66
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %20 = ptrtoint ptr %fbdefio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fbdefio, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6000, ptr %21, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %23 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18 = icmp slt i32 %24, 0
  br i1 %cmp18, label %if.then19, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %area, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %26 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %area, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %28 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp23 = icmp ugt i32 %27, %29
  br i1 %cmp23, label %if.then24, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %area, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21.if.end28_crit_edge
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp29 = icmp slt i32 %32, 0
  br i1 %cmp29, label %if.then30, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %11, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %11, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp35 = icmp ugt i32 %35, %37
  br i1 %cmp35, label %if.then36, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %11, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end32.if.end40_crit_edge
  %39 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %area, align 4
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %11, align 4
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %12, align 4
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %13, align 4
  call fastcc void @dlfb_handle_damage(ptr noundef %1, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #14
  br label %cleanup46

cleanup46:                                        ; preds = %if.end40, %if.then11.i.i, %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup46_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %if.end40 ], [ 0, %if.end.cleanup46_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup46_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlfb_ops_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smem_start, align 4
  %add = add i32 %9, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlfb_ops_mmap.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlfb_ops_mmap, %if.then15)) #14
          to label %do.end [label %if.then15], !srcloc !245

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dlfb_ops_mmap.__UNIQUE_ID_ddebug306, ptr noundef %11, ptr noundef nonnull @.str.69, i32 noundef %add, i32 noundef %sub) #14
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17.not51 = icmp eq i32 %sub, 0
  br i1 %cmp17.not51, label %do.end.cleanup_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %do.end.while.body_crit_edge
  %start.054 = phi i32 [ %add23, %if.end22.while.body_crit_edge ], [ %1, %do.end.while.body_crit_edge ]
  %pos.053 = phi i32 [ %add24, %if.end22.while.body_crit_edge ], [ %add, %do.end.while.body_crit_edge ]
  %size.052 = phi i32 [ %14, %if.end22.while.body_crit_edge ], [ %sub, %do.end.while.body_crit_edge ]
  %12 = inttoptr i32 %pos.053 to ptr
  %call18 = tail call i32 @vmalloc_to_pfn(ptr noundef %12) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_user to i32))
  %13 = load i32, ptr @pgprot_user, align 4
  %or = or i32 %13, 768
  %call19 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %start.054, i32 noundef %call18, i32 noundef 4096, i32 noundef %or) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %while.body
  %add23 = add i32 %start.054, 4096
  %add24 = add i32 %pos.053, 4096
  %14 = tail call i32 @llvm.usub.sat.i32(i32 %size.052, i32 4096)
  %cmp17.not = icmp ult i32 %size.052, 4097
  br i1 %cmp17.not, label %if.end22.cleanup_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -11, %while.body.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_dpy_deferred_io(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pagelist) #2 align 64 {
entry:
  %urb = alloca ptr, align 4
  %cmd = alloca ptr, align 4
  %bytes_sent = alloca i32, align 4
  %bytes_identical = alloca i32, align 4
  %c = alloca i32, align 4
  %c38 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %urb) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_sent) #14
  %4 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_sent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_identical) #14
  %5 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytes_identical, align 4
  %render_mutex = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %render_mutex, i32 noundef 0) #14
  %6 = load i8, ptr @fb_defio, align 1, !range !246
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.unlock_ret_crit_edge, label %if.end

entry.unlock_ret_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end:                                           ; preds = %entry
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #14
  %7 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.unlock_ret_crit_edge, label %if.end4

if.end.unlock_ret_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %9 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %c, align 4, !annotation !257
  %call5 = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cond.false, label %if.end4.cond.end_crit_edge

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.false ], [ 0, %if.end4.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %call7 = call fastcc ptr @dlfb_get_urb(ptr noundef %3)
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %urb, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cond.end.unlock_ret_crit_edge, label %if.end10

cond.end.unlock_ret_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end10:                                         ; preds = %cond.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %cmd, align 4
  %pagelist11 = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %pagelist11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn70 = load ptr, ptr %pagelist11, align 4
  %cmp.not71 = icmp eq ptr %.pn70, %pagelist11
  br i1 %cmp.not71, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %.pn73 = phi ptr [ %.pn70, %for.body.lr.ph ], [ %.pn, %if.end17.for.body_crit_edge ]
  %bytes_rendered.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end17.for.body_crit_edge ]
  %17 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smem_start, align 4
  %19 = inttoptr i32 %18 to ptr
  %index = getelementptr inbounds %struct.anon.3, ptr %.pn73, i32 0, i32 2
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  %shl = shl i32 %21, 12
  %call14 = call fastcc i32 @dlfb_render_hline(ptr noundef %3, ptr noundef nonnull %urb, ptr noundef %19, ptr noundef nonnull %cmd, i32 noundef %shl, i32 noundef 4096, ptr noundef nonnull %bytes_identical, ptr noundef nonnull %bytes_sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end17:                                         ; preds = %for.body
  %add = add i32 %bytes_rendered.072, 4096
  %22 = ptrtoint ptr %.pn73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn73, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist11
  br i1 %cmp.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %if.end10.for.end_crit_edge
  %bytes_rendered.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %add, %if.end17.for.end_crit_edge ]
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd, align 4
  %25 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb, align 4
  %transfer_buffer23 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transfer_buffer23, align 4
  %cmp24 = icmp ugt ptr %24, %28
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr27 = getelementptr i8, ptr %28, i32 %30
  %cmp28 = icmp ult ptr %24, %add.ptr27
  br i1 %cmp28, label %if.then29, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %24, i32 1
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %incdec.ptr, ptr %cmd, align 4
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -81, ptr %24, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then25.if.end30_crit_edge
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %35 = ptrtoint ptr %transfer_buffer23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer23, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size.i = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub.ptr.sub)
  %cmp.i = icmp ult i32 %38, %sub.ptr.sub
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !249

do.body2.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #14, !srcloc !250
  unreachable

do.end7.i:                                        ; preds = %if.end30
  %39 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub, ptr %transfer_buffer_length, align 4
  %call.i = call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end7.i.dlfb_submit_urb.exit_crit_edge, label %if.then9.i

do.end7.i.dlfb_submit_urb.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_submit_urb.exit

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @dlfb_urb_completion(ptr noundef %26) #14
  %lost_pixels.i = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i, i32 noundef 4) #14
  %40 = ptrtoint ptr %lost_pixels.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %lost_pixels.i, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i) #18
  br label %dlfb_submit_urb.exit

dlfb_submit_urb.exit:                             ; preds = %if.then9.i, %do.end7.i.dlfb_submit_urb.exit_crit_edge
  %43 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes_sent, align 4
  %add33 = add i32 %44, %sub.ptr.sub
  store i32 %add33, ptr %bytes_sent, align 4
  br label %error

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @dlfb_urb_completion(ptr noundef %26)
  br label %error

error:                                            ; preds = %if.else, %dlfb_submit_urb.exit, %for.body.error_crit_edge
  %bytes_rendered.069 = phi i32 [ %bytes_rendered.0.lcssa, %dlfb_submit_urb.exit ], [ %bytes_rendered.0.lcssa, %if.else ], [ %bytes_rendered.072, %for.body.error_crit_edge ]
  %45 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bytes_sent, align 4
  %bytes_sent35 = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 25
  %call.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_sent35, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_sent35, i32 1, i32 3, i32 1) #14
  %47 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_sent35, ptr %bytes_sent35, i32 %46, ptr elementtype(i32) %bytes_sent35) #14, !srcloc !258
  %48 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes_identical, align 4
  %bytes_identical36 = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 24
  %call.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_identical36, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_identical36, i32 1, i32 3, i32 1) #14
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_identical36, ptr %bytes_identical36, i32 %49, ptr elementtype(i32) %bytes_identical36) #14, !srcloc !258
  %bytes_rendered37 = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 23
  %call.i.i66 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_rendered37, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_rendered37, i32 1, i32 3, i32 1) #14
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_rendered37, ptr %bytes_rendered37, i32 %bytes_rendered.069, ptr elementtype(i32) %bytes_rendered37) #14, !srcloc !258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c38) #14
  %52 = ptrtoint ptr %c38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %c38, align 4, !annotation !257
  %call40 = call i32 @read_current_timer(ptr noundef nonnull %c38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.false43, label %error.cond.end44_crit_edge

error.cond.end44_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end44

cond.false43:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %c38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %c38, align 4
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %error.cond.end44_crit_edge
  %cond45 = phi i32 [ %54, %cond.false43 ], [ 0, %error.cond.end44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c38) #14
  %sub = sub i32 %cond45, %cond
  %shr = lshr i32 %sub, 10
  %cpu_kcycles_used = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 26
  %call.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %cpu_kcycles_used, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cpu_kcycles_used, i32 1, i32 3, i32 1) #14
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cpu_kcycles_used, ptr %cpu_kcycles_used, i32 %shr, ptr elementtype(i32) %cpu_kcycles_used) #14, !srcloc !258
  br label %unlock_ret

unlock_ret:                                       ; preds = %cond.end44, %cond.end.unlock_ret_crit_edge, %if.end.unlock_ret_crit_edge, %entry.unlock_ret_crit_edge
  call void @mutex_unlock(ptr noundef %render_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_identical) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_sent) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %urb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dlfb_get_urb(ptr noundef %dlfb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %limit_sem = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 2
  %call = tail call i32 @down_timeout(ptr noundef %limit_sem, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lost_pixels = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels, i32 noundef 4) #14
  %0 = ptrtoint ptr %lost_pixels to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %lost_pixels, align 4
  %1 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dlfb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %available = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %available, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call, i32 noundef %4) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %urbs = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2
  %lock = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %5 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %urbs, align 4
  %cmp.i.not = icmp eq ptr %6, %urbs
  br i1 %cmp.i.not, label %do.body11, label %do.end19, !prof !249

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1951, 0\0A.popsection", ""() #14, !srcloc !259
  unreachable

do.end19:                                         ; preds = %if.end
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #14
  br i1 %call.i.i38, label %if.end.i.i, label %do.end19.list_del_init.exit_crit_edge

do.end19.list_del_init.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end19.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  %available23 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %available23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %available23, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %available23, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %urb = getelementptr inbounds %struct.urb_node, ptr %6, i32 0, i32 2
  %17 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urb, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %18, %list_del_init.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlfb_render_hline(ptr noundef %dlfb, ptr nocapture noundef %urb_ptr, ptr noundef %front, ptr nocapture noundef %urb_buf_ptr, i32 noundef %byte_offset, i32 noundef %byte_width, ptr nocapture noundef %ident_ptr, ptr nocapture noundef %sent_ptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %base16 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 11
  %0 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base16, align 4
  %add = add i32 %1, %byte_offset
  %2 = ptrtoint ptr %urb_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_ptr, align 4
  %4 = ptrtoint ptr %urb_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_buf_ptr, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr1 = getelementptr i8, ptr %front, i32 %byte_offset
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %byte_width
  %backing_buffer = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 3
  %10 = ptrtoint ptr %backing_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %backing_buffer, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %11, i32 %byte_offset
  %12 = ptrtoint ptr %add.ptr4 to i32
  %13 = ptrtoint ptr %add.ptr1 to i32
  %sub = sub i32 %12, %13
  %div40.i = lshr i32 %byte_width, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %byte_width)
  %cmp41.not.i = icmp ult i32 %byte_width, 4
  br i1 %cmp41.not.i, label %if.then.for.end.i_crit_edge, label %for.body.preheader.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div40.i, i32 1) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %j.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr4, i32 %j.042.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %add.ptr1, i32 %j.042.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp2.not.i = icmp eq i32 %15, %17
  br i1 %cmp2.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %j.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ %umax.i, %for.inc.i.for.end.i_crit_edge ], [ %j.042.i, %for.body.i.for.end.i_crit_edge ]
  %start.0.i = phi i32 [ %div40.i, %if.then.for.end.i_crit_edge ], [ %div40.i, %for.inc.i.for.end.i_crit_edge ], [ %j.042.i, %for.body.i.for.end.i_crit_edge ]
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.body5.i.for.cond3.i_crit_edge, %for.end.i
  %k.0.in.i = phi i32 [ %div40.i, %for.end.i ], [ %k.0.i, %for.body5.i.for.cond3.i_crit_edge ]
  %k.0.i = add nsw i32 %k.0.in.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.i, i32 %j.0.lcssa.i)
  %cmp4.i = icmp sgt i32 %k.0.i, %j.0.lcssa.i
  br i1 %cmp4.i, label %for.body5.i, label %for.cond3.i.dlfb_trim_hline.exit_crit_edge

for.cond3.i.dlfb_trim_hline.exit_crit_edge:       ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_trim_hline.exit

for.body5.i:                                      ; preds = %for.cond3.i
  %arrayidx6.i = getelementptr i32, ptr %add.ptr4, i32 %k.0.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %add.ptr1, i32 %k.0.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.i, align 4
  %cmp8.not.i = icmp eq i32 %19, %21
  br i1 %cmp8.not.i, label %for.body5.i.for.cond3.i_crit_edge, label %for.body5.i.dlfb_trim_hline.exit_crit_edge

for.body5.i.dlfb_trim_hline.exit_crit_edge:       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_trim_hline.exit

for.body5.i.for.cond3.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond3.i

dlfb_trim_hline.exit:                             ; preds = %for.body5.i.dlfb_trim_hline.exit_crit_edge, %for.cond3.i.dlfb_trim_hline.exit_crit_edge
  %end.0.i = phi i32 [ %div40.i, %for.cond3.i.dlfb_trim_hline.exit_crit_edge ], [ %k.0.in.i, %for.body5.i.dlfb_trim_hline.exit_crit_edge ]
  %sub13.i = add nuw i32 %start.0.i, %div40.i
  %add14.i = sub i32 %sub13.i, %end.0.i
  %arrayidx15.i = getelementptr i32, ptr %add.ptr1, i32 %start.0.i
  %sub16.i = sub i32 %end.0.i, %start.0.i
  %mul.i = shl i32 %sub16.i, 2
  %mul17.i = shl i32 %add14.i, 2
  %22 = ptrtoint ptr %ident_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ident_ptr, align 4
  %add5 = add i32 %mul17.i, %23
  store i32 %add5, ptr %ident_ptr, align 4
  %arrayidx15.i.idx = shl i32 %start.0.i, 2
  %add.ptr6 = getelementptr i8, ptr %arrayidx15.i, i32 %mul.i
  %add7 = add i32 %arrayidx15.i.idx, %add
  br label %if.end

if.end:                                           ; preds = %dlfb_trim_hline.exit, %entry.if.end_crit_edge
  %next_pixel.0 = phi ptr [ %add.ptr1, %entry.if.end_crit_edge ], [ %arrayidx15.i, %dlfb_trim_hline.exit ]
  %dev_addr.0 = phi i32 [ %add, %entry.if.end_crit_edge ], [ %add7, %dlfb_trim_hline.exit ]
  %line_end.0 = phi ptr [ %add.ptr2, %entry.if.end_crit_edge ], [ %add.ptr6, %dlfb_trim_hline.exit ]
  %back_buffer_offset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %sub, %dlfb_trim_hline.exit ]
  %cmp103 = icmp ult ptr %next_pixel.0, %line_end.0
  br i1 %cmp103, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %back_buffer_offset.0)
  %tobool.not.i = icmp eq i32 %back_buffer_offset.0, 0
  %sub.ptr.lhs.cast.i = ptrtoint ptr %line_end.0 to i32
  %size.i = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %cmd_end.0108 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %cmd_end.2, %if.end27.while.body_crit_edge ]
  %urb.0107 = phi ptr [ %3, %while.body.lr.ph ], [ %urb.2, %if.end27.while.body_crit_edge ]
  %cmd.0106 = phi ptr [ %5, %while.body.lr.ph ], [ %cmd.2, %if.end27.while.body_crit_edge ]
  %dev_addr.1105 = phi i32 [ %dev_addr.0, %while.body.lr.ph ], [ %dev_addr.0.lcssa.i8090, %if.end27.while.body_crit_edge ]
  %next_pixel.1104 = phi ptr [ %next_pixel.0, %while.body.lr.ph ], [ %pixel.0.lcssa.i8288, %if.end27.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cmd_end.0108, i32 -11
  %cmp1232.i = icmp ugt ptr %add.ptr.i, %cmd.0106
  br i1 %cmp1232.i, label %while.body.lr.ph.i, label %while.body.if.then128.i_crit_edge

while.body.if.then128.i_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then128.i

while.body.lr.ph.i:                               ; preds = %while.body
  %add.ptr19.i = getelementptr i8, ptr %cmd_end.0108, i32 -1
  %sub.ptr.lhs.cast20.i = ptrtoint ptr %add.ptr19.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pixel.0236.i = phi ptr [ %next_pixel.1104, %while.body.lr.ph.i ], [ %pixel.4.i, %cleanup.i.while.body.i_crit_edge ]
  %dev_addr.0235.i = phi i32 [ %dev_addr.1105, %while.body.lr.ph.i ], [ %dev_addr.1.i, %cleanup.i.while.body.i_crit_edge ]
  %cmd.0234.i = phi ptr [ %cmd.0106, %while.body.lr.ph.i ], [ %cmd.4.i, %cleanup.i.while.body.i_crit_edge ]
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %24 = ptrtoint ptr %pixel.0236.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pixel.0236.i, align 2
  %add.ptr2.i = getelementptr i8, ptr %pixel.0236.i, i32 %back_buffer_offset.0
  %26 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp4.i63 = icmp eq i16 %25, %27
  br i1 %cmp4.i63, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i = getelementptr i16, ptr %pixel.0236.i, i32 1
  %add.i = add i32 %dev_addr.0235.i, 2
  %28 = ptrtoint ptr %ident_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ident_ptr, align 4
  %inc.i64 = add i32 %29, 1
  store i32 %inc.i64, ptr %ident_ptr, align 4
  br label %cleanup.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %incdec.ptr6.i = getelementptr i8, ptr %cmd.0234.i, i32 1
  %30 = ptrtoint ptr %cmd.0234.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -81, ptr %cmd.0234.i, align 1
  %incdec.ptr7.i = getelementptr i8, ptr %cmd.0234.i, i32 2
  %31 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 107, ptr %incdec.ptr6.i, align 1
  %shr.i = lshr i32 %dev_addr.0235.i, 16
  %conv8.i = trunc i32 %shr.i to i8
  %incdec.ptr9.i = getelementptr i8, ptr %cmd.0234.i, i32 3
  %32 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv8.i, ptr %incdec.ptr7.i, align 1
  %shr10.i = lshr i32 %dev_addr.0235.i, 8
  %conv11.i = trunc i32 %shr10.i to i8
  %incdec.ptr12.i = getelementptr i8, ptr %cmd.0234.i, i32 4
  %33 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv11.i, ptr %incdec.ptr9.i, align 1
  %conv13.i = trunc i32 %dev_addr.0235.i to i8
  %incdec.ptr14.i = getelementptr i8, ptr %cmd.0234.i, i32 5
  %34 = ptrtoint ptr %incdec.ptr12.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv13.i, ptr %incdec.ptr12.i, align 1
  %incdec.ptr15.i = getelementptr i8, ptr %cmd.0234.i, i32 6
  %incdec.ptr16.i = getelementptr i8, ptr %cmd.0234.i, i32 7
  %sub.ptr.rhs.cast.i = ptrtoint ptr %pixel.0236.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.ptr.sub.i)
  %cmp17.i = icmp ugt i32 %sub.ptr.sub.i, 512
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %cond.i = select i1 %cmp17.i, i32 256, i32 %sub.ptr.div.i
  %sub.ptr.rhs.cast21.i = ptrtoint ptr %incdec.ptr16.i to i32
  %sub.ptr.sub22.i = sub i32 %sub.ptr.lhs.cast20.i, %sub.ptr.rhs.cast21.i
  %div221.i = lshr i32 %sub.ptr.sub22.i, 1
  %35 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %div221.i) #14
  %add.ptr30.i = getelementptr i16, ptr %pixel.0236.i, i32 %35
  br i1 %tobool.not.i, label %if.end.i.if.end48.i_crit_edge, label %if.end.i.while.cond33.i_crit_edge

if.end.i.while.cond33.i_crit_edge:                ; preds = %if.end.i
  br label %while.cond33.i

if.end.i.if.end48.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

while.cond33.i:                                   ; preds = %land.rhs37.i.while.cond33.i_crit_edge, %if.end.i.while.cond33.i_crit_edge
  %cmd_pixel_end.0.i = phi ptr [ %add.ptr34.i, %land.rhs37.i.while.cond33.i_crit_edge ], [ %add.ptr30.i, %if.end.i.while.cond33.i_crit_edge ]
  %add.ptr34.i = getelementptr i16, ptr %cmd_pixel_end.0.i, i32 -1
  %cmp35.i = icmp ugt ptr %add.ptr34.i, %pixel.0236.i
  br i1 %cmp35.i, label %land.rhs37.i, label %while.cond33.i.if.end48.i_crit_edge

while.cond33.i.if.end48.i_crit_edge:              ; preds = %while.cond33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

land.rhs37.i:                                     ; preds = %while.cond33.i
  %36 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr34.i, align 2
  %add.ptr41.i = getelementptr i8, ptr %add.ptr34.i, i32 %back_buffer_offset.0
  %38 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr41.i, align 2
  %cmp43.i = icmp eq i16 %37, %39
  br i1 %cmp43.i, label %land.rhs37.i.while.cond33.i_crit_edge, label %land.rhs37.i.if.end48.i_crit_edge

land.rhs37.i.if.end48.i_crit_edge:                ; preds = %land.rhs37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

land.rhs37.i.while.cond33.i_crit_edge:            ; preds = %land.rhs37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond33.i

if.end48.i:                                       ; preds = %land.rhs37.i.if.end48.i_crit_edge, %while.cond33.i.if.end48.i_crit_edge, %if.end.i.if.end48.i_crit_edge
  %cmd_pixel_end.1.i = phi ptr [ %add.ptr30.i, %if.end.i.if.end48.i_crit_edge ], [ %cmd_pixel_end.0.i, %while.cond33.i.if.end48.i_crit_edge ], [ %cmd_pixel_end.0.i, %land.rhs37.i.if.end48.i_crit_edge ]
  %cmp50222.i = icmp ult ptr %pixel.0236.i, %cmd_pixel_end.1.i
  br i1 %cmp50222.i, label %if.end48.i.while.body52.i_crit_edge, label %if.end48.i.if.else.i_crit_edge

if.end48.i.if.else.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.end48.i.while.body52.i_crit_edge:              ; preds = %if.end48.i
  br label %while.body52.i

while.body52.i:                                   ; preds = %if.end97.i.while.body52.i_crit_edge, %if.end48.i.while.body52.i_crit_edge
  %pixel.1226.i = phi ptr [ %pixel.3.i, %if.end97.i.while.body52.i_crit_edge ], [ %pixel.0236.i, %if.end48.i.while.body52.i_crit_edge ]
  %raw_pixel_start.0225.i = phi ptr [ %raw_pixel_start.1.i, %if.end97.i.while.body52.i_crit_edge ], [ %pixel.0236.i, %if.end48.i.while.body52.i_crit_edge ]
  %raw_pixels_count_byte.0224.i = phi ptr [ %raw_pixels_count_byte.1.i, %if.end97.i.while.body52.i_crit_edge ], [ %incdec.ptr15.i, %if.end48.i.while.body52.i_crit_edge ]
  %cmd.1223.i = phi ptr [ %cmd.2.i, %if.end97.i.while.body52.i_crit_edge ], [ %incdec.ptr16.i, %if.end48.i.while.body52.i_crit_edge ]
  %40 = ptrtoint ptr %pixel.1226.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %pixel.1226.i, align 2
  %42 = ptrtoint ptr %cmd.1223.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %cmd.1223.i, align 1
  br i1 %tobool.not.i, label %while.body52.i.if.end56.i_crit_edge, label %if.then54.i

while.body52.i.if.end56.i_crit_edge:              ; preds = %while.body52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56.i

if.then54.i:                                      ; preds = %while.body52.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr55.i = getelementptr i8, ptr %pixel.1226.i, i32 %back_buffer_offset.0
  %43 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %41, ptr %add.ptr55.i, align 2
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %while.body52.i.if.end56.i_crit_edge
  %add.ptr57.i = getelementptr i8, ptr %cmd.1223.i, i32 2
  %incdec.ptr58.i = getelementptr i16, ptr %pixel.1226.i, i32 1
  %cmp59.i = icmp ult ptr %incdec.ptr58.i, %cmd_pixel_end.1.i
  br i1 %cmp59.i, label %land.rhs61.i, label %if.end56.i.if.end97.i_crit_edge

if.end56.i.if.end97.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

land.rhs61.i:                                     ; preds = %if.end56.i
  %44 = ptrtoint ptr %incdec.ptr58.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %incdec.ptr58.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %41)
  %cmp64.i = icmp eq i16 %45, %41
  br i1 %cmp64.i, label %if.then69.i, label %land.rhs61.i.if.end97.i_crit_edge, !prof !249

land.rhs61.i.if.end97.i_crit_edge:                ; preds = %land.rhs61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

if.then69.i:                                      ; preds = %land.rhs61.i
  %sub.ptr.lhs.cast70.i = ptrtoint ptr %pixel.1226.i to i32
  %sub.ptr.rhs.cast71.i = ptrtoint ptr %raw_pixel_start.0225.i to i32
  %sub.ptr.sub72.i = sub i32 %sub.ptr.lhs.cast70.i, %sub.ptr.rhs.cast71.i
  %46 = lshr exact i32 %sub.ptr.sub72.i, 1
  %47 = trunc i32 %46 to i8
  %conv75.i = add i8 %47, 1
  %48 = ptrtoint ptr %raw_pixels_count_byte.0224.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv75.i, ptr %raw_pixels_count_byte.0224.i, align 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs83.i.do.body.i_crit_edge, %if.then69.i
  %pixel.2.i = phi ptr [ %incdec.ptr58.i, %if.then69.i ], [ %incdec.ptr80.i, %land.rhs83.i.do.body.i_crit_edge ]
  br i1 %tobool.not.i, label %do.body.i.if.end79.i_crit_edge, label %if.then77.i

do.body.i.if.end79.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79.i

if.then77.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr78.i = getelementptr i8, ptr %pixel.2.i, i32 %back_buffer_offset.0
  %49 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %41, ptr %add.ptr78.i, align 2
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then77.i, %do.body.i.if.end79.i_crit_edge
  %incdec.ptr80.i = getelementptr i16, ptr %pixel.2.i, i32 1
  %cmp81.i = icmp ult ptr %incdec.ptr80.i, %cmd_pixel_end.1.i
  br i1 %cmp81.i, label %land.rhs83.i, label %if.end79.i.do.end.i_crit_edge

if.end79.i.do.end.i_crit_edge:                    ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs83.i:                                     ; preds = %if.end79.i
  %50 = ptrtoint ptr %incdec.ptr80.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr80.i, align 2
  %cmp86.i = icmp eq i16 %51, %41
  br i1 %cmp86.i, label %land.rhs83.i.do.body.i_crit_edge, label %land.rhs83.i.do.end.i_crit_edge

land.rhs83.i.do.end.i_crit_edge:                  ; preds = %land.rhs83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.rhs83.i.do.body.i_crit_edge:                 ; preds = %land.rhs83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %land.rhs83.i.do.end.i_crit_edge, %if.end79.i.do.end.i_crit_edge
  %sub.ptr.lhs.cast89.i = ptrtoint ptr %incdec.ptr80.i to i32
  %sub.ptr.sub91.i = sub i32 %sub.ptr.lhs.cast89.i, %sub.ptr.lhs.cast70.i
  %52 = lshr exact i32 %sub.ptr.sub91.i, 1
  %53 = trunc i32 %52 to i8
  %conv94.i = add i8 %53, -1
  %incdec.ptr95.i = getelementptr i8, ptr %cmd.1223.i, i32 3
  %54 = ptrtoint ptr %add.ptr57.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv94.i, ptr %add.ptr57.i, align 1
  %incdec.ptr96.i = getelementptr i8, ptr %cmd.1223.i, i32 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end.i, %land.rhs61.i.if.end97.i_crit_edge, %if.end56.i.if.end97.i_crit_edge
  %cmd.2.i = phi ptr [ %incdec.ptr96.i, %do.end.i ], [ %add.ptr57.i, %land.rhs61.i.if.end97.i_crit_edge ], [ %add.ptr57.i, %if.end56.i.if.end97.i_crit_edge ]
  %raw_pixels_count_byte.1.i = phi ptr [ %incdec.ptr95.i, %do.end.i ], [ %raw_pixels_count_byte.0224.i, %land.rhs61.i.if.end97.i_crit_edge ], [ %raw_pixels_count_byte.0224.i, %if.end56.i.if.end97.i_crit_edge ]
  %raw_pixel_start.1.i = phi ptr [ %incdec.ptr80.i, %do.end.i ], [ %raw_pixel_start.0225.i, %land.rhs61.i.if.end97.i_crit_edge ], [ %raw_pixel_start.0225.i, %if.end56.i.if.end97.i_crit_edge ]
  %pixel.3.i = phi ptr [ %incdec.ptr80.i, %do.end.i ], [ %incdec.ptr58.i, %land.rhs61.i.if.end97.i_crit_edge ], [ %incdec.ptr58.i, %if.end56.i.if.end97.i_crit_edge ]
  %cmp50.i = icmp ult ptr %pixel.3.i, %cmd_pixel_end.1.i
  br i1 %cmp50.i, label %if.end97.i.while.body52.i_crit_edge, label %while.end98.i

if.end97.i.while.body52.i_crit_edge:              ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body52.i

while.end98.i:                                    ; preds = %if.end97.i
  %cmp99.i = icmp ugt ptr %pixel.3.i, %raw_pixel_start.1.i
  %sub.ptr.lhs.cast102.i = ptrtoint ptr %pixel.3.i to i32
  br i1 %cmp99.i, label %if.then101.i, label %while.end98.i.if.else.i_crit_edge

while.end98.i.if.else.i_crit_edge:                ; preds = %while.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then101.i:                                     ; preds = %while.end98.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.rhs.cast103.i = ptrtoint ptr %raw_pixel_start.1.i to i32
  %sub.ptr.sub104.i = sub i32 %sub.ptr.lhs.cast102.i, %sub.ptr.rhs.cast103.i
  %55 = lshr exact i32 %sub.ptr.sub104.i, 1
  %conv107.i = trunc i32 %55 to i8
  %56 = ptrtoint ptr %raw_pixels_count_byte.1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv107.i, ptr %raw_pixels_count_byte.1.i, align 1
  br label %if.end109.i

if.else.i:                                        ; preds = %while.end98.i.if.else.i_crit_edge, %if.end48.i.if.else.i_crit_edge
  %.pre.i.pre-phi = phi i32 [ %sub.ptr.rhs.cast.i, %if.end48.i.if.else.i_crit_edge ], [ %sub.ptr.lhs.cast102.i, %while.end98.i.if.else.i_crit_edge ]
  %pixel.1.lcssa249.i = phi ptr [ %pixel.0236.i, %if.end48.i.if.else.i_crit_edge ], [ %pixel.3.i, %while.end98.i.if.else.i_crit_edge ]
  %cmd.1.lcssa247.i = phi ptr [ %incdec.ptr16.i, %if.end48.i.if.else.i_crit_edge ], [ %cmd.2.i, %while.end98.i.if.else.i_crit_edge ]
  %incdec.ptr108.i = getelementptr i8, ptr %cmd.1.lcssa247.i, i32 -1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else.i, %if.then101.i
  %pixel.1.lcssa248.i = phi ptr [ %pixel.1.lcssa249.i, %if.else.i ], [ %pixel.3.i, %if.then101.i ]
  %sub.ptr.lhs.cast110.pre-phi.i = phi i32 [ %.pre.i.pre-phi, %if.else.i ], [ %sub.ptr.lhs.cast102.i, %if.then101.i ]
  %cmd.3.i = phi ptr [ %incdec.ptr108.i, %if.else.i ], [ %cmd.2.i, %if.then101.i ]
  %sub.ptr.sub112.i = sub i32 %sub.ptr.lhs.cast110.pre-phi.i, %sub.ptr.rhs.cast.i
  %57 = lshr exact i32 %sub.ptr.sub112.i, 1
  %conv115.i = trunc i32 %57 to i8
  %58 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv115.i, ptr %incdec.ptr14.i, align 1
  %add119.i = add i32 %sub.ptr.sub112.i, %dev_addr.0235.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end109.i, %if.then.i
  %cmd.4.i = phi ptr [ %cmd.0234.i, %if.then.i ], [ %cmd.3.i, %if.end109.i ]
  %dev_addr.1.i = phi i32 [ %add.i, %if.then.i ], [ %add119.i, %if.end109.i ]
  %pixel.4.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %pixel.1.lcssa248.i, %if.end109.i ]
  %cmp.i = icmp ult ptr %pixel.4.i, %line_end.0
  %cmp1.i = icmp ugt ptr %add.ptr.i, %cmd.4.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.while.body.i_crit_edge, label %while.end124.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end124.i:                                   ; preds = %cleanup.i
  br i1 %cmp1.i, label %dlfb_compress_hline.exit, label %while.end124.i.if.then128.i_crit_edge

while.end124.i.if.then128.i_crit_edge:            ; preds = %while.end124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then128.i

if.then128.i:                                     ; preds = %while.end124.i.if.then128.i_crit_edge, %while.body.if.then128.i_crit_edge
  %pixel.0.lcssa.i81 = phi ptr [ %pixel.4.i, %while.end124.i.if.then128.i_crit_edge ], [ %next_pixel.1104, %while.body.if.then128.i_crit_edge ]
  %dev_addr.0.lcssa.i79 = phi i32 [ %dev_addr.1.i, %while.end124.i.if.then128.i_crit_edge ], [ %dev_addr.1105, %while.body.if.then128.i_crit_edge ]
  %cmd.0.lcssa.i78 = phi ptr [ %cmd.4.i, %while.end124.i.if.then128.i_crit_edge ], [ %cmd.0106, %while.body.if.then128.i_crit_edge ]
  %cmp129.i = icmp ult ptr %cmd.0.lcssa.i78, %cmd_end.0108
  br i1 %cmp129.i, label %if.then131.i, label %if.then128.i.if.then11_crit_edge

if.then128.i.if.then11_crit_edge:                 ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

if.then131.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast132.i = ptrtoint ptr %cmd_end.0108 to i32
  %sub.ptr.rhs.cast133.i = ptrtoint ptr %cmd.0.lcssa.i78 to i32
  %sub.ptr.sub134.i = sub i32 %sub.ptr.lhs.cast132.i, %sub.ptr.rhs.cast133.i
  %59 = call ptr @memset(ptr %cmd.0.lcssa.i78, i32 175, i32 %sub.ptr.sub134.i)
  br label %if.then11

dlfb_compress_hline.exit:                         ; preds = %while.end124.i
  %cmp10.not = icmp ult ptr %cmd.4.i, %cmd_end.0108
  br i1 %cmp10.not, label %dlfb_compress_hline.exit.if.end27_crit_edge, label %dlfb_compress_hline.exit.if.then11_crit_edge

dlfb_compress_hline.exit.if.then11_crit_edge:     ; preds = %dlfb_compress_hline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

dlfb_compress_hline.exit.if.end27_crit_edge:      ; preds = %dlfb_compress_hline.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then11:                                        ; preds = %dlfb_compress_hline.exit.if.then11_crit_edge, %if.then131.i, %if.then128.i.if.then11_crit_edge
  %cmd.5.i91 = phi ptr [ %cmd.4.i, %dlfb_compress_hline.exit.if.then11_crit_edge ], [ %cmd_end.0108, %if.then131.i ], [ %cmd_end.0108, %if.then128.i.if.then11_crit_edge ]
  %dev_addr.0.lcssa.i8089 = phi i32 [ %dev_addr.1.i, %dlfb_compress_hline.exit.if.then11_crit_edge ], [ %dev_addr.0.lcssa.i79, %if.then131.i ], [ %dev_addr.0.lcssa.i79, %if.then128.i.if.then11_crit_edge ]
  %pixel.0.lcssa.i8287 = phi ptr [ %pixel.4.i, %dlfb_compress_hline.exit.if.then11_crit_edge ], [ %pixel.0.lcssa.i81, %if.then131.i ], [ %pixel.0.lcssa.i81, %if.then128.i.if.then11_crit_edge ]
  %transfer_buffer12 = getelementptr inbounds %struct.urb, ptr %urb.0107, i32 0, i32 14
  %60 = ptrtoint ptr %transfer_buffer12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transfer_buffer12, align 4
  %sub.ptr.lhs.cast13 = ptrtoint ptr %cmd.5.i91 to i32
  %sub.ptr.rhs.cast14 = ptrtoint ptr %61 to i32
  %sub.ptr.sub15 = sub i32 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %sub.ptr.sub15)
  %cmp.i65 = icmp ult i32 %63, %sub.ptr.sub15
  br i1 %cmp.i65, label %do.body2.i, label %do.end7.i, !prof !249

do.body2.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #14, !srcloc !250
  unreachable

do.end7.i:                                        ; preds = %if.then11
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb.0107, i32 0, i32 19
  %64 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.ptr.sub15, ptr %transfer_buffer_length.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %urb.0107, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end19, label %dlfb_submit_urb.exit

dlfb_submit_urb.exit:                             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlfb_urb_completion(ptr noundef %urb.0107) #14
  %lost_pixels.i = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i, i32 noundef 4) #14
  %65 = ptrtoint ptr %lost_pixels.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 1, ptr %lost_pixels.i, align 4
  %66 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dlfb, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i) #18
  br label %cleanup28

if.end19:                                         ; preds = %do.end7.i
  %68 = ptrtoint ptr %sent_ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sent_ptr, align 4
  %add20 = add i32 %69, %sub.ptr.sub15
  store i32 %add20, ptr %sent_ptr, align 4
  %call21 = tail call fastcc ptr @dlfb_get_urb(ptr noundef %dlfb)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end19.cleanup28_crit_edge, label %cleanup

if.end19.cleanup28_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup28

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %urb_ptr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call21, ptr %urb_ptr, align 4
  %transfer_buffer25 = getelementptr inbounds %struct.urb, ptr %call21, i32 0, i32 14
  %71 = ptrtoint ptr %transfer_buffer25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transfer_buffer25, align 4
  %transfer_buffer_length26 = getelementptr inbounds %struct.urb, ptr %call21, i32 0, i32 19
  %73 = ptrtoint ptr %transfer_buffer_length26 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transfer_buffer_length26, align 4
  %arrayidx = getelementptr i8, ptr %72, i32 %74
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %dlfb_compress_hline.exit.if.end27_crit_edge
  %dev_addr.0.lcssa.i8090 = phi i32 [ %dev_addr.1.i, %dlfb_compress_hline.exit.if.end27_crit_edge ], [ %dev_addr.0.lcssa.i8089, %cleanup ]
  %pixel.0.lcssa.i8288 = phi ptr [ %pixel.4.i, %dlfb_compress_hline.exit.if.end27_crit_edge ], [ %pixel.0.lcssa.i8287, %cleanup ]
  %cmd.2 = phi ptr [ %cmd.4.i, %dlfb_compress_hline.exit.if.end27_crit_edge ], [ %72, %cleanup ]
  %urb.2 = phi ptr [ %urb.0107, %dlfb_compress_hline.exit.if.end27_crit_edge ], [ %call21, %cleanup ]
  %cmd_end.2 = phi ptr [ %cmd_end.0108, %dlfb_compress_hline.exit.if.end27_crit_edge ], [ %arrayidx, %cleanup ]
  %cmp = icmp ult ptr %pixel.0.lcssa.i8288, %line_end.0
  br i1 %cmp, label %if.end27.while.body_crit_edge, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %if.end.while.end_crit_edge
  %cmd.0.lcssa = phi ptr [ %5, %if.end.while.end_crit_edge ], [ %cmd.2, %if.end27.while.end_crit_edge ]
  %75 = ptrtoint ptr %urb_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cmd.0.lcssa, ptr %urb_buf_ptr, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %while.end, %if.end19.cleanup28_crit_edge, %dlfb_submit_urb.exit
  %retval.3 = phi i32 [ 0, %while.end ], [ 1, %dlfb_submit_urb.exit ], [ 1, %if.end19.cleanup28_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlfb_submit_urb(ptr noundef %dlfb, ptr noundef %urb, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp = icmp ult i32 %1, %len
  br i1 %cmp, label %do.body2, label %do.end7, !prof !249

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #14, !srcloc !250
  unreachable

do.end7:                                          ; preds = %entry
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %transfer_buffer_length, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %do.end7.if.end13_crit_edge, label %if.then9

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlfb_urb_completion(ptr noundef %urb)
  %lost_pixels = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels, i32 noundef 4) #14
  %3 = ptrtoint ptr %lost_pixels to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %lost_pixels, align 4
  %4 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlfb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %call) #18
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %do.end7.if.end13_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlfb_urb_completion(ptr nocapture noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dlfb1 = getelementptr inbounds %struct.urb_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dlfb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlfb1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %5, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -104, label %entry.sw.epilog_crit_edge29
    i32 -2, label %entry.sw.epilog_crit_edge30
    i32 -108, label %entry.sw.epilog_crit_edge31
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %5) #18
  %lost_pixels = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels, i32 noundef 4) #14
  %9 = ptrtoint ptr %lost_pixels to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %lost_pixels, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31
  %urbs = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2
  %size = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %transfer_buffer_length, align 4
  %lock = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %prev.i = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %14, ptr noundef %urbs) #14
  br i1 %call.i.i28, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %prev.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %urbs, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %1, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  %available = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %available, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %available, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #14
  %limit_sem = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 2, i32 2
  tail call void @up(ptr noundef %limit_sem) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlfb_handle_damage(ptr noundef %dlfb, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca ptr, align 4
  %bytes_sent = alloca i32, align 4
  %bytes_identical = alloca i32, align 4
  %urb = alloca ptr, align 4
  %c = alloca i32, align 4
  %c48 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_sent) #14
  %0 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_sent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_identical) #14
  %1 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bytes_identical, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %urb) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #14
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %c, align 4, !annotation !257
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #14
  %render_mutex = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 15
  call void @mutex_lock_nested(ptr noundef %render_mutex, i32 noundef 0) #14
  %and = and i32 %x, -4
  %sub1 = and i32 %x, 3
  %add2 = add nuw nsw i32 %sub1, 3
  %add3 = add i32 %add2, %width
  %and4 = and i32 %add3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and4)
  %cmp = icmp slt i32 %and4, 1
  br i1 %cmp, label %cond.end.unlock_ret_crit_edge, label %lor.lhs.false

cond.end.unlock_ret_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

lor.lhs.false:                                    ; preds = %cond.end
  %add5 = add i32 %and4, %and
  %info = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %8)
  %cmp6 = icmp ugt i32 %add5, %8
  br i1 %cmp6, label %lor.lhs.false.unlock_ret_crit_edge, label %lor.lhs.false7

lor.lhs.false.unlock_ret_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %add8 = add i32 %height, %y
  %yres = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %10)
  %cmp11 = icmp ugt i32 %add8, %10
  br i1 %cmp11, label %lor.lhs.false7.unlock_ret_crit_edge, label %if.end

lor.lhs.false7.unlock_ret_crit_edge:              ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end:                                           ; preds = %lor.lhs.false7
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #14
  %11 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %if.end.unlock_ret_crit_edge, label %if.end15

if.end.unlock_ret_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end15:                                         ; preds = %if.end
  %call16 = call fastcc ptr @dlfb_get_urb(ptr noundef %dlfb)
  %13 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %urb, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.unlock_ret_crit_edge, label %if.end19

if.end15.unlock_ret_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock_ret

if.end19:                                         ; preds = %if.end15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call16, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %y)
  %cmp215 = icmp sgt i32 %add8, %y
  br i1 %cmp215, label %for.body.lr.ph, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %mul23 = shl i32 %and, 1
  %mul27 = shl nuw i32 %and4, 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %add8
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ %y, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 7, i32 9
  %19 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line_length, align 4
  %mul = mul i32 %20, %i.06
  %add24 = add i32 %mul, %mul23
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smem_start, align 4
  %23 = inttoptr i32 %22 to ptr
  %call28 = call fastcc i32 @dlfb_render_hline(ptr noundef %dlfb, ptr noundef nonnull %urb, ptr noundef %23, ptr noundef nonnull %cmd, i32 noundef %add24, i32 noundef %mul27, ptr noundef nonnull %bytes_identical, ptr noundef nonnull %bytes_sent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end19.for.end_crit_edge
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd, align 4
  %26 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb, align 4
  %transfer_buffer33 = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer33, align 4
  %cmp34 = icmp ugt ptr %25, %29
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %27, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  %cmp37 = icmp ult ptr %25, %add.ptr
  br i1 %cmp37, label %if.then38, label %if.then35.if.end39_crit_edge

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %25, i32 1
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %incdec.ptr, ptr %cmd, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -81, ptr %25, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then35.if.end39_crit_edge
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd, align 4
  %36 = ptrtoint ptr %transfer_buffer33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transfer_buffer33, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call41 = call fastcc i32 @dlfb_submit_urb(ptr noundef %dlfb, ptr noundef %27, i32 noundef %sub.ptr.sub)
  %38 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes_sent, align 4
  %add42 = add i32 %39, %sub.ptr.sub
  store i32 %add42, ptr %bytes_sent, align 4
  br label %error

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @dlfb_urb_completion(ptr noundef %27)
  br label %error

error:                                            ; preds = %if.else, %if.end39, %for.body.error_crit_edge
  %40 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytes_sent, align 4
  %bytes_sent44 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 25
  %call.i.i1 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_sent44, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_sent44, i32 1, i32 3, i32 1) #14
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_sent44, ptr %bytes_sent44, i32 %41, ptr elementtype(i32) %bytes_sent44) #14, !srcloc !258
  %43 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytes_identical, align 4
  %bytes_identical45 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 24
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_identical45, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_identical45, i32 1, i32 3, i32 1) #14
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_identical45, ptr %bytes_identical45, i32 %44, ptr elementtype(i32) %bytes_identical45) #14, !srcloc !258
  %mul46 = shl i32 %height, 1
  %mul47 = mul i32 %mul46, %and4
  %bytes_rendered = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 23
  %call.i.i3 = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_rendered, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %bytes_rendered, i32 1, i32 3, i32 1) #14
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_rendered, ptr %bytes_rendered, i32 %mul47, ptr elementtype(i32) %bytes_rendered) #14, !srcloc !258
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c48) #14
  %47 = ptrtoint ptr %c48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %c48, align 4, !annotation !257
  %call50 = call i32 @read_current_timer(ptr noundef nonnull %c48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cond.false53, label %error.cond.end54_crit_edge

error.cond.end54_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end54

cond.false53:                                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %c48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c48, align 4
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false53, %error.cond.end54_crit_edge
  %cond55 = phi i32 [ %49, %cond.false53 ], [ 0, %error.cond.end54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c48) #14
  %sub56 = sub i32 %cond55, %cond
  %shr = lshr i32 %sub56, 10
  %cpu_kcycles_used = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 26
  %call.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %cpu_kcycles_used, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %cpu_kcycles_used, i32 1, i32 3, i32 1) #14
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cpu_kcycles_used, ptr %cpu_kcycles_used, i32 %shr, ptr elementtype(i32) %cpu_kcycles_used) #14, !srcloc !258
  br label %unlock_ret

unlock_ret:                                       ; preds = %cond.end54, %if.end15.unlock_ret_crit_edge, %if.end.unlock_ret_crit_edge, %lor.lhs.false7.unlock_ret_crit_edge, %lor.lhs.false.unlock_ret_crit_edge, %cond.end.unlock_ret_crit_edge
  call void @mutex_unlock(ptr noundef %render_mutex) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %urb) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_identical) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_sent) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dlfb_set_video_mode(ptr noundef %dlfb, ptr nocapture noundef readonly %var) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_active = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usb_active, i32 noundef 4) #14
  %0 = ptrtoint ptr %usb_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usb_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @dlfb_get_urb(ptr noundef %dlfb)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -81, ptr %3, align 1
  %incdec.ptr1.i.i = getelementptr i8, ptr %3, i32 2
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr2.i.i = getelementptr i8, ptr %3, i32 3
  %6 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %incdec.ptr1.i.i, align 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr2.i.i, align 1
  %incdec.ptr.i.i31 = getelementptr i8, ptr %3, i32 5
  %8 = ptrtoint ptr %incdec.ptr3.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -81, ptr %incdec.ptr3.i.i, align 1
  %incdec.ptr1.i.i32 = getelementptr i8, ptr %3, i32 6
  %9 = ptrtoint ptr %incdec.ptr.i.i31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %incdec.ptr.i.i31, align 1
  %incdec.ptr2.i.i33 = getelementptr i8, ptr %3, i32 7
  %10 = ptrtoint ptr %incdec.ptr1.i.i32 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %incdec.ptr1.i.i32, align 1
  %incdec.ptr3.i.i34 = getelementptr i8, ptr %3, i32 8
  %11 = ptrtoint ptr %incdec.ptr2.i.i33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %incdec.ptr2.i.i33, align 1
  %incdec.ptr.i.i35 = getelementptr i8, ptr %3, i32 9
  %12 = ptrtoint ptr %incdec.ptr3.i.i34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -81, ptr %incdec.ptr3.i.i34, align 1
  %incdec.ptr1.i.i36 = getelementptr i8, ptr %3, i32 10
  %13 = ptrtoint ptr %incdec.ptr.i.i35 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %incdec.ptr.i.i35, align 1
  %incdec.ptr2.i.i37 = getelementptr i8, ptr %3, i32 11
  %14 = ptrtoint ptr %incdec.ptr1.i.i36 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %incdec.ptr1.i.i36, align 1
  %incdec.ptr3.i.i38 = getelementptr i8, ptr %3, i32 12
  %15 = ptrtoint ptr %incdec.ptr2.i.i37 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %incdec.ptr2.i.i37, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %3, i32 13
  %16 = ptrtoint ptr %incdec.ptr3.i.i38 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -81, ptr %incdec.ptr3.i.i38, align 1
  %incdec.ptr1.i2.i = getelementptr i8, ptr %3, i32 14
  %17 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %incdec.ptr.i1.i, align 1
  %incdec.ptr2.i3.i = getelementptr i8, ptr %3, i32 15
  %18 = ptrtoint ptr %incdec.ptr1.i2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 33, ptr %incdec.ptr1.i2.i, align 1
  %incdec.ptr3.i4.i = getelementptr i8, ptr %3, i32 16
  %19 = ptrtoint ptr %incdec.ptr2.i3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %incdec.ptr2.i3.i, align 1
  %incdec.ptr.i5.i = getelementptr i8, ptr %3, i32 17
  %20 = ptrtoint ptr %incdec.ptr3.i4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -81, ptr %incdec.ptr3.i4.i, align 1
  %incdec.ptr1.i6.i = getelementptr i8, ptr %3, i32 18
  %21 = ptrtoint ptr %incdec.ptr.i5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %incdec.ptr.i5.i, align 1
  %incdec.ptr2.i7.i = getelementptr i8, ptr %3, i32 19
  %22 = ptrtoint ptr %incdec.ptr1.i6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 34, ptr %incdec.ptr1.i6.i, align 1
  %incdec.ptr3.i8.i = getelementptr i8, ptr %3, i32 20
  %23 = ptrtoint ptr %incdec.ptr2.i7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr2.i7.i, align 1
  %info = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 1
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %25, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smem_len, align 4
  %shr.i = lshr i32 %27, 16
  %conv.i = trunc i32 %shr.i to i8
  %incdec.ptr.i.i39 = getelementptr i8, ptr %3, i32 21
  %28 = ptrtoint ptr %incdec.ptr3.i8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -81, ptr %incdec.ptr3.i8.i, align 1
  %incdec.ptr1.i.i40 = getelementptr i8, ptr %3, i32 22
  %29 = ptrtoint ptr %incdec.ptr.i.i39 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %incdec.ptr.i.i39, align 1
  %incdec.ptr2.i.i41 = getelementptr i8, ptr %3, i32 23
  %30 = ptrtoint ptr %incdec.ptr1.i.i40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 38, ptr %incdec.ptr1.i.i40, align 1
  %incdec.ptr3.i.i42 = getelementptr i8, ptr %3, i32 24
  %31 = ptrtoint ptr %incdec.ptr2.i.i41 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %incdec.ptr2.i.i41, align 1
  %shr1.i = lshr i32 %27, 8
  %conv2.i = trunc i32 %shr1.i to i8
  %incdec.ptr.i10.i = getelementptr i8, ptr %3, i32 25
  %32 = ptrtoint ptr %incdec.ptr3.i.i42 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -81, ptr %incdec.ptr3.i.i42, align 1
  %incdec.ptr1.i11.i = getelementptr i8, ptr %3, i32 26
  %33 = ptrtoint ptr %incdec.ptr.i10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 32, ptr %incdec.ptr.i10.i, align 1
  %incdec.ptr2.i12.i = getelementptr i8, ptr %3, i32 27
  %34 = ptrtoint ptr %incdec.ptr1.i11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 39, ptr %incdec.ptr1.i11.i, align 1
  %incdec.ptr3.i13.i = getelementptr i8, ptr %3, i32 28
  %35 = ptrtoint ptr %incdec.ptr2.i12.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv2.i, ptr %incdec.ptr2.i12.i, align 1
  %conv4.i = trunc i32 %27 to i8
  %incdec.ptr.i14.i = getelementptr i8, ptr %3, i32 29
  %36 = ptrtoint ptr %incdec.ptr3.i13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -81, ptr %incdec.ptr3.i13.i, align 1
  %incdec.ptr1.i15.i = getelementptr i8, ptr %3, i32 30
  %37 = ptrtoint ptr %incdec.ptr.i14.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %incdec.ptr.i14.i, align 1
  %incdec.ptr2.i16.i = getelementptr i8, ptr %3, i32 31
  %38 = ptrtoint ptr %incdec.ptr1.i15.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 40, ptr %incdec.ptr1.i15.i, align 1
  %incdec.ptr3.i17.i = getelementptr i8, ptr %3, i32 32
  %39 = ptrtoint ptr %incdec.ptr2.i16.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv4.i, ptr %incdec.ptr2.i16.i, align 1
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %40 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %left_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %42 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hsync_len.i, align 4
  %add.i = add i32 %43, %41
  %conv.i43 = trunc i32 %add.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i43)
  %tobool.not12.i.i.i = icmp eq i16 %conv.i43, 0
  br i1 %tobool.not12.i.i.i, label %if.end5.dlfb_set_register_lfsr16.exit.i_crit_edge, label %if.end5.while.body.i.i.i_crit_edge

if.end5.while.body.i.i.i_crit_edge:               ; preds = %if.end5
  br label %while.body.i.i.i

if.end5.dlfb_set_register_lfsr16.exit.i_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end5.while.body.i.i.i_crit_edge
  %lv.014.i.i.i = phi i32 [ %and6.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 65535, %if.end5.while.body.i.i.i_crit_edge ]
  %actual_count.addr.013.i.i.i = phi i16 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %conv.i43, %if.end5.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add i16 %actual_count.addr.013.i.i.i, -1
  %shl.i.i.i = shl nuw nsw i32 %lv.014.i.i.i, 1
  %shr.i.i.i = lshr i32 %lv.014.i.i.i, 15
  %shr1.i.i.i = lshr i32 %lv.014.i.i.i, 4
  %xor.i.i.i = xor i32 %shr.i.i.i, %shr1.i.i.i
  %shr2.i.i.i = lshr i32 %lv.014.i.i.i, 2
  %xor3.i.i.i = xor i32 %xor.i.i.i, %shr2.i.i.i
  %shr4.i.i.i = lshr i32 %lv.014.i.i.i, 1
  %xor5.i.i.i = xor i32 %xor3.i.i.i, %shr4.i.i.i
  %and.i.i.i = and i32 %xor5.i.i.i, 1
  %shl.masked.i.i.i = and i32 %shl.i.i.i, 65534
  %and6.i.i.i = or i32 %and.i.i.i, %shl.masked.i.i.i
  %tobool.not.i.i.i = icmp eq i16 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.loopexit.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

while.end.loopexit.i.i.i:                         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i.i = trunc i32 %and6.i.i.i to i8
  %extract3.i.i = lshr i32 %lv.014.i.i.i, 7
  %extract.t2.i.i = trunc i32 %extract3.i.i to i8
  br label %dlfb_set_register_lfsr16.exit.i

dlfb_set_register_lfsr16.exit.i:                  ; preds = %while.end.loopexit.i.i.i, %if.end5.dlfb_set_register_lfsr16.exit.i_crit_edge
  %lv.0.lcssa.i.off0.i.i = phi i8 [ -1, %if.end5.dlfb_set_register_lfsr16.exit.i_crit_edge ], [ %extract.t.i.i, %while.end.loopexit.i.i.i ]
  %lv.0.lcssa.i.off8.i.i = phi i8 [ -1, %if.end5.dlfb_set_register_lfsr16.exit.i_crit_edge ], [ %extract.t2.i.i, %while.end.loopexit.i.i.i ]
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 33
  %44 = ptrtoint ptr %incdec.ptr3.i17.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -81, ptr %incdec.ptr3.i17.i, align 1
  %incdec.ptr1.i.i.i.i = getelementptr i8, ptr %3, i32 34
  %45 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %incdec.ptr.i.i.i.i, align 1
  %incdec.ptr2.i.i.i.i = getelementptr i8, ptr %3, i32 35
  %46 = ptrtoint ptr %incdec.ptr1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %incdec.ptr1.i.i.i.i, align 1
  %incdec.ptr3.i.i.i.i = getelementptr i8, ptr %3, i32 36
  %47 = ptrtoint ptr %incdec.ptr2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %lv.0.lcssa.i.off8.i.i, ptr %incdec.ptr2.i.i.i.i, align 1
  %incdec.ptr.i9.i.i.i = getelementptr i8, ptr %3, i32 37
  %48 = ptrtoint ptr %incdec.ptr3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -81, ptr %incdec.ptr3.i.i.i.i, align 1
  %incdec.ptr1.i10.i.i.i = getelementptr i8, ptr %3, i32 38
  %49 = ptrtoint ptr %incdec.ptr.i9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 32, ptr %incdec.ptr.i9.i.i.i, align 1
  %incdec.ptr2.i11.i.i.i = getelementptr i8, ptr %3, i32 39
  %50 = ptrtoint ptr %incdec.ptr1.i10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %incdec.ptr1.i10.i.i.i, align 1
  %incdec.ptr3.i12.i.i.i = getelementptr i8, ptr %3, i32 40
  %51 = ptrtoint ptr %incdec.ptr2.i11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %lv.0.lcssa.i.off0.i.i, ptr %incdec.ptr2.i11.i.i.i, align 1
  %52 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var, align 4
  %add2.i = add i32 %53, %add.i
  %conv3.i = trunc i32 %add2.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %tobool.not12.i.i72.i = icmp eq i16 %conv3.i, 0
  br i1 %tobool.not12.i.i72.i, label %dlfb_set_register_lfsr16.exit.i.dlfb_set_register_lfsr16.exit103.i_crit_edge, label %dlfb_set_register_lfsr16.exit.i.while.body.i.i88.i_crit_edge

dlfb_set_register_lfsr16.exit.i.while.body.i.i88.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit.i
  br label %while.body.i.i88.i

dlfb_set_register_lfsr16.exit.i.dlfb_set_register_lfsr16.exit103.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit103.i

while.body.i.i88.i:                               ; preds = %while.body.i.i88.i.while.body.i.i88.i_crit_edge, %dlfb_set_register_lfsr16.exit.i.while.body.i.i88.i_crit_edge
  %lv.014.i.i73.i = phi i32 [ %and6.i.i86.i, %while.body.i.i88.i.while.body.i.i88.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit.i.while.body.i.i88.i_crit_edge ]
  %actual_count.addr.013.i.i74.i = phi i16 [ %dec.i.i75.i, %while.body.i.i88.i.while.body.i.i88.i_crit_edge ], [ %conv3.i, %dlfb_set_register_lfsr16.exit.i.while.body.i.i88.i_crit_edge ]
  %dec.i.i75.i = add i16 %actual_count.addr.013.i.i74.i, -1
  %shl.i.i76.i = shl nuw nsw i32 %lv.014.i.i73.i, 1
  %shr.i.i77.i = lshr i32 %lv.014.i.i73.i, 15
  %shr1.i.i78.i = lshr i32 %lv.014.i.i73.i, 4
  %xor.i.i79.i = xor i32 %shr.i.i77.i, %shr1.i.i78.i
  %shr2.i.i80.i = lshr i32 %lv.014.i.i73.i, 2
  %xor3.i.i81.i = xor i32 %xor.i.i79.i, %shr2.i.i80.i
  %shr4.i.i82.i = lshr i32 %lv.014.i.i73.i, 1
  %xor5.i.i83.i = xor i32 %xor3.i.i81.i, %shr4.i.i82.i
  %and.i.i84.i = and i32 %xor5.i.i83.i, 1
  %shl.masked.i.i85.i = and i32 %shl.i.i76.i, 65534
  %and6.i.i86.i = or i32 %and.i.i84.i, %shl.masked.i.i85.i
  %tobool.not.i.i87.i = icmp eq i16 %dec.i.i75.i, 0
  br i1 %tobool.not.i.i87.i, label %while.end.loopexit.i.i92.i, label %while.body.i.i88.i.while.body.i.i88.i_crit_edge

while.body.i.i88.i.while.body.i.i88.i_crit_edge:  ; preds = %while.body.i.i88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i88.i

while.end.loopexit.i.i92.i:                       ; preds = %while.body.i.i88.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i89.i = trunc i32 %and6.i.i86.i to i8
  %extract3.i90.i = lshr i32 %lv.014.i.i73.i, 7
  %extract.t2.i91.i = trunc i32 %extract3.i90.i to i8
  br label %dlfb_set_register_lfsr16.exit103.i

dlfb_set_register_lfsr16.exit103.i:               ; preds = %while.end.loopexit.i.i92.i, %dlfb_set_register_lfsr16.exit.i.dlfb_set_register_lfsr16.exit103.i_crit_edge
  %lv.0.lcssa.i.off0.i93.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit.i.dlfb_set_register_lfsr16.exit103.i_crit_edge ], [ %extract.t.i89.i, %while.end.loopexit.i.i92.i ]
  %lv.0.lcssa.i.off8.i94.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit.i.dlfb_set_register_lfsr16.exit103.i_crit_edge ], [ %extract.t2.i91.i, %while.end.loopexit.i.i92.i ]
  %incdec.ptr.i.i.i95.i = getelementptr i8, ptr %3, i32 41
  %54 = ptrtoint ptr %incdec.ptr3.i12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -81, ptr %incdec.ptr3.i12.i.i.i, align 1
  %incdec.ptr1.i.i.i96.i = getelementptr i8, ptr %3, i32 42
  %55 = ptrtoint ptr %incdec.ptr.i.i.i95.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %incdec.ptr.i.i.i95.i, align 1
  %incdec.ptr2.i.i.i97.i = getelementptr i8, ptr %3, i32 43
  %56 = ptrtoint ptr %incdec.ptr1.i.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %incdec.ptr1.i.i.i96.i, align 1
  %incdec.ptr3.i.i.i98.i = getelementptr i8, ptr %3, i32 44
  %57 = ptrtoint ptr %incdec.ptr2.i.i.i97.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %lv.0.lcssa.i.off8.i94.i, ptr %incdec.ptr2.i.i.i97.i, align 1
  %incdec.ptr.i9.i.i99.i = getelementptr i8, ptr %3, i32 45
  %58 = ptrtoint ptr %incdec.ptr3.i.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -81, ptr %incdec.ptr3.i.i.i98.i, align 1
  %incdec.ptr1.i10.i.i100.i = getelementptr i8, ptr %3, i32 46
  %59 = ptrtoint ptr %incdec.ptr.i9.i.i99.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 32, ptr %incdec.ptr.i9.i.i99.i, align 1
  %incdec.ptr2.i11.i.i101.i = getelementptr i8, ptr %3, i32 47
  %60 = ptrtoint ptr %incdec.ptr1.i10.i.i100.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %incdec.ptr1.i10.i.i100.i, align 1
  %incdec.ptr3.i12.i.i102.i = getelementptr i8, ptr %3, i32 48
  %61 = ptrtoint ptr %incdec.ptr2.i11.i.i101.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %lv.0.lcssa.i.off0.i93.i, ptr %incdec.ptr2.i11.i.i101.i, align 1
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %62 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %upper_margin.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %64 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vsync_len.i, align 4
  %add5.i = add i32 %65, %63
  %conv6.i = trunc i32 %add5.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6.i)
  %tobool.not12.i.i104.i = icmp eq i16 %conv6.i, 0
  br i1 %tobool.not12.i.i104.i, label %dlfb_set_register_lfsr16.exit103.i.dlfb_set_register_lfsr16.exit135.i_crit_edge, label %dlfb_set_register_lfsr16.exit103.i.while.body.i.i120.i_crit_edge

dlfb_set_register_lfsr16.exit103.i.while.body.i.i120.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit103.i
  br label %while.body.i.i120.i

dlfb_set_register_lfsr16.exit103.i.dlfb_set_register_lfsr16.exit135.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit103.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit135.i

while.body.i.i120.i:                              ; preds = %while.body.i.i120.i.while.body.i.i120.i_crit_edge, %dlfb_set_register_lfsr16.exit103.i.while.body.i.i120.i_crit_edge
  %lv.014.i.i105.i = phi i32 [ %and6.i.i118.i, %while.body.i.i120.i.while.body.i.i120.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit103.i.while.body.i.i120.i_crit_edge ]
  %actual_count.addr.013.i.i106.i = phi i16 [ %dec.i.i107.i, %while.body.i.i120.i.while.body.i.i120.i_crit_edge ], [ %conv6.i, %dlfb_set_register_lfsr16.exit103.i.while.body.i.i120.i_crit_edge ]
  %dec.i.i107.i = add i16 %actual_count.addr.013.i.i106.i, -1
  %shl.i.i108.i = shl nuw nsw i32 %lv.014.i.i105.i, 1
  %shr.i.i109.i = lshr i32 %lv.014.i.i105.i, 15
  %shr1.i.i110.i = lshr i32 %lv.014.i.i105.i, 4
  %xor.i.i111.i = xor i32 %shr.i.i109.i, %shr1.i.i110.i
  %shr2.i.i112.i = lshr i32 %lv.014.i.i105.i, 2
  %xor3.i.i113.i = xor i32 %xor.i.i111.i, %shr2.i.i112.i
  %shr4.i.i114.i = lshr i32 %lv.014.i.i105.i, 1
  %xor5.i.i115.i = xor i32 %xor3.i.i113.i, %shr4.i.i114.i
  %and.i.i116.i = and i32 %xor5.i.i115.i, 1
  %shl.masked.i.i117.i = and i32 %shl.i.i108.i, 65534
  %and6.i.i118.i = or i32 %and.i.i116.i, %shl.masked.i.i117.i
  %tobool.not.i.i119.i = icmp eq i16 %dec.i.i107.i, 0
  br i1 %tobool.not.i.i119.i, label %while.end.loopexit.i.i124.i, label %while.body.i.i120.i.while.body.i.i120.i_crit_edge

while.body.i.i120.i.while.body.i.i120.i_crit_edge: ; preds = %while.body.i.i120.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i120.i

while.end.loopexit.i.i124.i:                      ; preds = %while.body.i.i120.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i121.i = trunc i32 %and6.i.i118.i to i8
  %extract3.i122.i = lshr i32 %lv.014.i.i105.i, 7
  %extract.t2.i123.i = trunc i32 %extract3.i122.i to i8
  br label %dlfb_set_register_lfsr16.exit135.i

dlfb_set_register_lfsr16.exit135.i:               ; preds = %while.end.loopexit.i.i124.i, %dlfb_set_register_lfsr16.exit103.i.dlfb_set_register_lfsr16.exit135.i_crit_edge
  %lv.0.lcssa.i.off0.i125.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit103.i.dlfb_set_register_lfsr16.exit135.i_crit_edge ], [ %extract.t.i121.i, %while.end.loopexit.i.i124.i ]
  %lv.0.lcssa.i.off8.i126.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit103.i.dlfb_set_register_lfsr16.exit135.i_crit_edge ], [ %extract.t2.i123.i, %while.end.loopexit.i.i124.i ]
  %incdec.ptr.i.i.i127.i = getelementptr i8, ptr %3, i32 49
  %66 = ptrtoint ptr %incdec.ptr3.i12.i.i102.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -81, ptr %incdec.ptr3.i12.i.i102.i, align 1
  %incdec.ptr1.i.i.i128.i = getelementptr i8, ptr %3, i32 50
  %67 = ptrtoint ptr %incdec.ptr.i.i.i127.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 32, ptr %incdec.ptr.i.i.i127.i, align 1
  %incdec.ptr2.i.i.i129.i = getelementptr i8, ptr %3, i32 51
  %68 = ptrtoint ptr %incdec.ptr1.i.i.i128.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 5, ptr %incdec.ptr1.i.i.i128.i, align 1
  %incdec.ptr3.i.i.i130.i = getelementptr i8, ptr %3, i32 52
  %69 = ptrtoint ptr %incdec.ptr2.i.i.i129.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %lv.0.lcssa.i.off8.i126.i, ptr %incdec.ptr2.i.i.i129.i, align 1
  %incdec.ptr.i9.i.i131.i = getelementptr i8, ptr %3, i32 53
  %70 = ptrtoint ptr %incdec.ptr3.i.i.i130.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -81, ptr %incdec.ptr3.i.i.i130.i, align 1
  %incdec.ptr1.i10.i.i132.i = getelementptr i8, ptr %3, i32 54
  %71 = ptrtoint ptr %incdec.ptr.i9.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 32, ptr %incdec.ptr.i9.i.i131.i, align 1
  %incdec.ptr2.i11.i.i133.i = getelementptr i8, ptr %3, i32 55
  %72 = ptrtoint ptr %incdec.ptr1.i10.i.i132.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 6, ptr %incdec.ptr1.i10.i.i132.i, align 1
  %incdec.ptr3.i12.i.i134.i = getelementptr i8, ptr %3, i32 56
  %73 = ptrtoint ptr %incdec.ptr2.i11.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %lv.0.lcssa.i.off0.i125.i, ptr %incdec.ptr2.i11.i.i133.i, align 1
  %yres.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %74 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %yres.i, align 4
  %add9.i = add i32 %75, %add5.i
  %conv10.i = trunc i32 %add9.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10.i)
  %tobool.not12.i.i136.i = icmp eq i16 %conv10.i, 0
  br i1 %tobool.not12.i.i136.i, label %dlfb_set_register_lfsr16.exit135.i.dlfb_set_register_lfsr16.exit167.i_crit_edge, label %dlfb_set_register_lfsr16.exit135.i.while.body.i.i152.i_crit_edge

dlfb_set_register_lfsr16.exit135.i.while.body.i.i152.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit135.i
  br label %while.body.i.i152.i

dlfb_set_register_lfsr16.exit135.i.dlfb_set_register_lfsr16.exit167.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit135.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit167.i

while.body.i.i152.i:                              ; preds = %while.body.i.i152.i.while.body.i.i152.i_crit_edge, %dlfb_set_register_lfsr16.exit135.i.while.body.i.i152.i_crit_edge
  %lv.014.i.i137.i = phi i32 [ %and6.i.i150.i, %while.body.i.i152.i.while.body.i.i152.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit135.i.while.body.i.i152.i_crit_edge ]
  %actual_count.addr.013.i.i138.i = phi i16 [ %dec.i.i139.i, %while.body.i.i152.i.while.body.i.i152.i_crit_edge ], [ %conv10.i, %dlfb_set_register_lfsr16.exit135.i.while.body.i.i152.i_crit_edge ]
  %dec.i.i139.i = add i16 %actual_count.addr.013.i.i138.i, -1
  %shl.i.i140.i = shl nuw nsw i32 %lv.014.i.i137.i, 1
  %shr.i.i141.i = lshr i32 %lv.014.i.i137.i, 15
  %shr1.i.i142.i = lshr i32 %lv.014.i.i137.i, 4
  %xor.i.i143.i = xor i32 %shr.i.i141.i, %shr1.i.i142.i
  %shr2.i.i144.i = lshr i32 %lv.014.i.i137.i, 2
  %xor3.i.i145.i = xor i32 %xor.i.i143.i, %shr2.i.i144.i
  %shr4.i.i146.i = lshr i32 %lv.014.i.i137.i, 1
  %xor5.i.i147.i = xor i32 %xor3.i.i145.i, %shr4.i.i146.i
  %and.i.i148.i = and i32 %xor5.i.i147.i, 1
  %shl.masked.i.i149.i = and i32 %shl.i.i140.i, 65534
  %and6.i.i150.i = or i32 %and.i.i148.i, %shl.masked.i.i149.i
  %tobool.not.i.i151.i = icmp eq i16 %dec.i.i139.i, 0
  br i1 %tobool.not.i.i151.i, label %while.end.loopexit.i.i156.i, label %while.body.i.i152.i.while.body.i.i152.i_crit_edge

while.body.i.i152.i.while.body.i.i152.i_crit_edge: ; preds = %while.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i152.i

while.end.loopexit.i.i156.i:                      ; preds = %while.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i153.i = trunc i32 %and6.i.i150.i to i8
  %extract3.i154.i = lshr i32 %lv.014.i.i137.i, 7
  %extract.t2.i155.i = trunc i32 %extract3.i154.i to i8
  br label %dlfb_set_register_lfsr16.exit167.i

dlfb_set_register_lfsr16.exit167.i:               ; preds = %while.end.loopexit.i.i156.i, %dlfb_set_register_lfsr16.exit135.i.dlfb_set_register_lfsr16.exit167.i_crit_edge
  %lv.0.lcssa.i.off0.i157.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit135.i.dlfb_set_register_lfsr16.exit167.i_crit_edge ], [ %extract.t.i153.i, %while.end.loopexit.i.i156.i ]
  %lv.0.lcssa.i.off8.i158.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit135.i.dlfb_set_register_lfsr16.exit167.i_crit_edge ], [ %extract.t2.i155.i, %while.end.loopexit.i.i156.i ]
  %incdec.ptr.i.i.i159.i = getelementptr i8, ptr %3, i32 57
  %76 = ptrtoint ptr %incdec.ptr3.i12.i.i134.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -81, ptr %incdec.ptr3.i12.i.i134.i, align 1
  %incdec.ptr1.i.i.i160.i = getelementptr i8, ptr %3, i32 58
  %77 = ptrtoint ptr %incdec.ptr.i.i.i159.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 32, ptr %incdec.ptr.i.i.i159.i, align 1
  %incdec.ptr2.i.i.i161.i = getelementptr i8, ptr %3, i32 59
  %78 = ptrtoint ptr %incdec.ptr1.i.i.i160.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 7, ptr %incdec.ptr1.i.i.i160.i, align 1
  %incdec.ptr3.i.i.i162.i = getelementptr i8, ptr %3, i32 60
  %79 = ptrtoint ptr %incdec.ptr2.i.i.i161.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %lv.0.lcssa.i.off8.i158.i, ptr %incdec.ptr2.i.i.i161.i, align 1
  %incdec.ptr.i9.i.i163.i = getelementptr i8, ptr %3, i32 61
  %80 = ptrtoint ptr %incdec.ptr3.i.i.i162.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -81, ptr %incdec.ptr3.i.i.i162.i, align 1
  %incdec.ptr1.i10.i.i164.i = getelementptr i8, ptr %3, i32 62
  %81 = ptrtoint ptr %incdec.ptr.i9.i.i163.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 32, ptr %incdec.ptr.i9.i.i163.i, align 1
  %incdec.ptr2.i11.i.i165.i = getelementptr i8, ptr %3, i32 63
  %82 = ptrtoint ptr %incdec.ptr1.i10.i.i164.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 8, ptr %incdec.ptr1.i10.i.i164.i, align 1
  %incdec.ptr3.i12.i.i166.i = getelementptr i8, ptr %3, i32 64
  %83 = ptrtoint ptr %incdec.ptr2.i11.i.i165.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %lv.0.lcssa.i.off0.i157.i, ptr %incdec.ptr2.i11.i.i165.i, align 1
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %84 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %right_margin.i, align 4
  %add13.i = add i32 %85, %add2.i
  %86 = trunc i32 %add13.i to i16
  %conv14.i = add i16 %86, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv14.i)
  %tobool.not12.i.i168.i = icmp eq i16 %conv14.i, 0
  br i1 %tobool.not12.i.i168.i, label %dlfb_set_register_lfsr16.exit167.i.dlfb_set_register_lfsr16.exit199.i_crit_edge, label %dlfb_set_register_lfsr16.exit167.i.while.body.i.i184.i_crit_edge

dlfb_set_register_lfsr16.exit167.i.while.body.i.i184.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit167.i
  br label %while.body.i.i184.i

dlfb_set_register_lfsr16.exit167.i.dlfb_set_register_lfsr16.exit199.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit167.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit199.i

while.body.i.i184.i:                              ; preds = %while.body.i.i184.i.while.body.i.i184.i_crit_edge, %dlfb_set_register_lfsr16.exit167.i.while.body.i.i184.i_crit_edge
  %lv.014.i.i169.i = phi i32 [ %and6.i.i182.i, %while.body.i.i184.i.while.body.i.i184.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit167.i.while.body.i.i184.i_crit_edge ]
  %actual_count.addr.013.i.i170.i = phi i16 [ %dec.i.i171.i, %while.body.i.i184.i.while.body.i.i184.i_crit_edge ], [ %conv14.i, %dlfb_set_register_lfsr16.exit167.i.while.body.i.i184.i_crit_edge ]
  %dec.i.i171.i = add i16 %actual_count.addr.013.i.i170.i, -1
  %shl.i.i172.i = shl nuw nsw i32 %lv.014.i.i169.i, 1
  %shr.i.i173.i = lshr i32 %lv.014.i.i169.i, 15
  %shr1.i.i174.i = lshr i32 %lv.014.i.i169.i, 4
  %xor.i.i175.i = xor i32 %shr.i.i173.i, %shr1.i.i174.i
  %shr2.i.i176.i = lshr i32 %lv.014.i.i169.i, 2
  %xor3.i.i177.i = xor i32 %xor.i.i175.i, %shr2.i.i176.i
  %shr4.i.i178.i = lshr i32 %lv.014.i.i169.i, 1
  %xor5.i.i179.i = xor i32 %xor3.i.i177.i, %shr4.i.i178.i
  %and.i.i180.i = and i32 %xor5.i.i179.i, 1
  %shl.masked.i.i181.i = and i32 %shl.i.i172.i, 65534
  %and6.i.i182.i = or i32 %and.i.i180.i, %shl.masked.i.i181.i
  %tobool.not.i.i183.i = icmp eq i16 %dec.i.i171.i, 0
  br i1 %tobool.not.i.i183.i, label %while.end.loopexit.i.i188.i, label %while.body.i.i184.i.while.body.i.i184.i_crit_edge

while.body.i.i184.i.while.body.i.i184.i_crit_edge: ; preds = %while.body.i.i184.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i184.i

while.end.loopexit.i.i188.i:                      ; preds = %while.body.i.i184.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i185.i = trunc i32 %and6.i.i182.i to i8
  %extract3.i186.i = lshr i32 %lv.014.i.i169.i, 7
  %extract.t2.i187.i = trunc i32 %extract3.i186.i to i8
  br label %dlfb_set_register_lfsr16.exit199.i

dlfb_set_register_lfsr16.exit199.i:               ; preds = %while.end.loopexit.i.i188.i, %dlfb_set_register_lfsr16.exit167.i.dlfb_set_register_lfsr16.exit199.i_crit_edge
  %lv.0.lcssa.i.off0.i189.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit167.i.dlfb_set_register_lfsr16.exit199.i_crit_edge ], [ %extract.t.i185.i, %while.end.loopexit.i.i188.i ]
  %lv.0.lcssa.i.off8.i190.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit167.i.dlfb_set_register_lfsr16.exit199.i_crit_edge ], [ %extract.t2.i187.i, %while.end.loopexit.i.i188.i ]
  %incdec.ptr.i.i.i191.i = getelementptr i8, ptr %3, i32 65
  %87 = ptrtoint ptr %incdec.ptr3.i12.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -81, ptr %incdec.ptr3.i12.i.i166.i, align 1
  %incdec.ptr1.i.i.i192.i = getelementptr i8, ptr %3, i32 66
  %88 = ptrtoint ptr %incdec.ptr.i.i.i191.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 32, ptr %incdec.ptr.i.i.i191.i, align 1
  %incdec.ptr2.i.i.i193.i = getelementptr i8, ptr %3, i32 67
  %89 = ptrtoint ptr %incdec.ptr1.i.i.i192.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 9, ptr %incdec.ptr1.i.i.i192.i, align 1
  %incdec.ptr3.i.i.i194.i = getelementptr i8, ptr %3, i32 68
  %90 = ptrtoint ptr %incdec.ptr2.i.i.i193.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %lv.0.lcssa.i.off8.i190.i, ptr %incdec.ptr2.i.i.i193.i, align 1
  %incdec.ptr.i9.i.i195.i = getelementptr i8, ptr %3, i32 69
  %91 = ptrtoint ptr %incdec.ptr3.i.i.i194.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -81, ptr %incdec.ptr3.i.i.i194.i, align 1
  %incdec.ptr1.i10.i.i196.i = getelementptr i8, ptr %3, i32 70
  %92 = ptrtoint ptr %incdec.ptr.i9.i.i195.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 32, ptr %incdec.ptr.i9.i.i195.i, align 1
  %incdec.ptr2.i11.i.i197.i = getelementptr i8, ptr %3, i32 71
  %93 = ptrtoint ptr %incdec.ptr1.i10.i.i196.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 10, ptr %incdec.ptr1.i10.i.i196.i, align 1
  %94 = ptrtoint ptr %incdec.ptr2.i11.i.i197.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %lv.0.lcssa.i.off0.i189.i, ptr %incdec.ptr2.i11.i.i197.i, align 1
  %incdec.ptr3.i12.i.i198.i = getelementptr i8, ptr %3, i32 72
  %incdec.ptr.i.i.i222.i = getelementptr i8, ptr %3, i32 73
  %95 = ptrtoint ptr %incdec.ptr3.i12.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -81, ptr %incdec.ptr3.i12.i.i198.i, align 1
  %incdec.ptr1.i.i.i223.i = getelementptr i8, ptr %3, i32 74
  %96 = ptrtoint ptr %incdec.ptr.i.i.i222.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 32, ptr %incdec.ptr.i.i.i222.i, align 1
  %incdec.ptr2.i.i.i224.i = getelementptr i8, ptr %3, i32 75
  %97 = ptrtoint ptr %incdec.ptr1.i.i.i223.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 11, ptr %incdec.ptr1.i.i.i223.i, align 1
  %incdec.ptr3.i.i.i225.i = getelementptr i8, ptr %3, i32 76
  %98 = ptrtoint ptr %incdec.ptr2.i.i.i224.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %incdec.ptr2.i.i.i224.i, align 1
  %incdec.ptr.i9.i.i226.i = getelementptr i8, ptr %3, i32 77
  %99 = ptrtoint ptr %incdec.ptr3.i.i.i225.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -81, ptr %incdec.ptr3.i.i.i225.i, align 1
  %incdec.ptr1.i10.i.i227.i = getelementptr i8, ptr %3, i32 78
  %100 = ptrtoint ptr %incdec.ptr.i9.i.i226.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 32, ptr %incdec.ptr.i9.i.i226.i, align 1
  %incdec.ptr2.i11.i.i228.i = getelementptr i8, ptr %3, i32 79
  %101 = ptrtoint ptr %incdec.ptr1.i10.i.i227.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 12, ptr %incdec.ptr1.i10.i.i227.i, align 1
  %incdec.ptr3.i12.i.i229.i = getelementptr i8, ptr %3, i32 80
  %102 = ptrtoint ptr %incdec.ptr2.i11.i.i228.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -2, ptr %incdec.ptr2.i11.i.i228.i, align 1
  %103 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hsync_len.i, align 4
  %105 = trunc i32 %104 to i16
  %conv19.i = add i16 %105, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv19.i)
  %tobool.not12.i.i231.i = icmp eq i16 %conv19.i, 0
  br i1 %tobool.not12.i.i231.i, label %dlfb_set_register_lfsr16.exit199.i.dlfb_set_register_lfsr16.exit262.i_crit_edge, label %dlfb_set_register_lfsr16.exit199.i.while.body.i.i247.i_crit_edge

dlfb_set_register_lfsr16.exit199.i.while.body.i.i247.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit199.i
  br label %while.body.i.i247.i

dlfb_set_register_lfsr16.exit199.i.dlfb_set_register_lfsr16.exit262.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit199.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit262.i

while.body.i.i247.i:                              ; preds = %while.body.i.i247.i.while.body.i.i247.i_crit_edge, %dlfb_set_register_lfsr16.exit199.i.while.body.i.i247.i_crit_edge
  %lv.014.i.i232.i = phi i32 [ %and6.i.i245.i, %while.body.i.i247.i.while.body.i.i247.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit199.i.while.body.i.i247.i_crit_edge ]
  %actual_count.addr.013.i.i233.i = phi i16 [ %dec.i.i234.i, %while.body.i.i247.i.while.body.i.i247.i_crit_edge ], [ %conv19.i, %dlfb_set_register_lfsr16.exit199.i.while.body.i.i247.i_crit_edge ]
  %dec.i.i234.i = add i16 %actual_count.addr.013.i.i233.i, -1
  %shl.i.i235.i = shl nuw nsw i32 %lv.014.i.i232.i, 1
  %shr.i.i236.i = lshr i32 %lv.014.i.i232.i, 15
  %shr1.i.i237.i = lshr i32 %lv.014.i.i232.i, 4
  %xor.i.i238.i = xor i32 %shr.i.i236.i, %shr1.i.i237.i
  %shr2.i.i239.i = lshr i32 %lv.014.i.i232.i, 2
  %xor3.i.i240.i = xor i32 %xor.i.i238.i, %shr2.i.i239.i
  %shr4.i.i241.i = lshr i32 %lv.014.i.i232.i, 1
  %xor5.i.i242.i = xor i32 %xor3.i.i240.i, %shr4.i.i241.i
  %and.i.i243.i = and i32 %xor5.i.i242.i, 1
  %shl.masked.i.i244.i = and i32 %shl.i.i235.i, 65534
  %and6.i.i245.i = or i32 %and.i.i243.i, %shl.masked.i.i244.i
  %tobool.not.i.i246.i = icmp eq i16 %dec.i.i234.i, 0
  br i1 %tobool.not.i.i246.i, label %while.end.loopexit.i.i251.i, label %while.body.i.i247.i.while.body.i.i247.i_crit_edge

while.body.i.i247.i.while.body.i.i247.i_crit_edge: ; preds = %while.body.i.i247.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i247.i

while.end.loopexit.i.i251.i:                      ; preds = %while.body.i.i247.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i248.i = trunc i32 %and6.i.i245.i to i8
  %extract3.i249.i = lshr i32 %lv.014.i.i232.i, 7
  %extract.t2.i250.i = trunc i32 %extract3.i249.i to i8
  br label %dlfb_set_register_lfsr16.exit262.i

dlfb_set_register_lfsr16.exit262.i:               ; preds = %while.end.loopexit.i.i251.i, %dlfb_set_register_lfsr16.exit199.i.dlfb_set_register_lfsr16.exit262.i_crit_edge
  %lv.0.lcssa.i.off0.i252.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit199.i.dlfb_set_register_lfsr16.exit262.i_crit_edge ], [ %extract.t.i248.i, %while.end.loopexit.i.i251.i ]
  %lv.0.lcssa.i.off8.i253.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit199.i.dlfb_set_register_lfsr16.exit262.i_crit_edge ], [ %extract.t2.i250.i, %while.end.loopexit.i.i251.i ]
  %incdec.ptr.i.i.i254.i = getelementptr i8, ptr %3, i32 81
  %106 = ptrtoint ptr %incdec.ptr3.i12.i.i229.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -81, ptr %incdec.ptr3.i12.i.i229.i, align 1
  %incdec.ptr1.i.i.i255.i = getelementptr i8, ptr %3, i32 82
  %107 = ptrtoint ptr %incdec.ptr.i.i.i254.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 32, ptr %incdec.ptr.i.i.i254.i, align 1
  %incdec.ptr2.i.i.i256.i = getelementptr i8, ptr %3, i32 83
  %108 = ptrtoint ptr %incdec.ptr1.i.i.i255.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 13, ptr %incdec.ptr1.i.i.i255.i, align 1
  %incdec.ptr3.i.i.i257.i = getelementptr i8, ptr %3, i32 84
  %109 = ptrtoint ptr %incdec.ptr2.i.i.i256.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %lv.0.lcssa.i.off8.i253.i, ptr %incdec.ptr2.i.i.i256.i, align 1
  %incdec.ptr.i9.i.i258.i = getelementptr i8, ptr %3, i32 85
  %110 = ptrtoint ptr %incdec.ptr3.i.i.i257.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -81, ptr %incdec.ptr3.i.i.i257.i, align 1
  %incdec.ptr1.i10.i.i259.i = getelementptr i8, ptr %3, i32 86
  %111 = ptrtoint ptr %incdec.ptr.i9.i.i258.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 32, ptr %incdec.ptr.i9.i.i258.i, align 1
  %incdec.ptr2.i11.i.i260.i = getelementptr i8, ptr %3, i32 87
  %112 = ptrtoint ptr %incdec.ptr1.i10.i.i259.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 14, ptr %incdec.ptr1.i10.i.i259.i, align 1
  %incdec.ptr3.i12.i.i261.i = getelementptr i8, ptr %3, i32 88
  %113 = ptrtoint ptr %incdec.ptr2.i11.i.i260.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %lv.0.lcssa.i.off0.i252.i, ptr %incdec.ptr2.i11.i.i260.i, align 1
  %114 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %var, align 4
  %116 = lshr i32 %115, 8
  %conv1.i.i = trunc i32 %116 to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %3, i32 89
  %117 = ptrtoint ptr %incdec.ptr3.i12.i.i261.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -81, ptr %incdec.ptr3.i12.i.i261.i, align 1
  %incdec.ptr1.i.i.i = getelementptr i8, ptr %3, i32 90
  %118 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 32, ptr %incdec.ptr.i.i.i, align 1
  %incdec.ptr2.i.i.i = getelementptr i8, ptr %3, i32 91
  %119 = ptrtoint ptr %incdec.ptr1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 15, ptr %incdec.ptr1.i.i.i, align 1
  %incdec.ptr3.i.i.i = getelementptr i8, ptr %3, i32 92
  %120 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv1.i.i, ptr %incdec.ptr2.i.i.i, align 1
  %conv4.i.i = trunc i32 %115 to i8
  %incdec.ptr.i9.i.i = getelementptr i8, ptr %3, i32 93
  %121 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -81, ptr %incdec.ptr3.i.i.i, align 1
  %incdec.ptr1.i10.i.i = getelementptr i8, ptr %3, i32 94
  %122 = ptrtoint ptr %incdec.ptr.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 32, ptr %incdec.ptr.i9.i.i, align 1
  %incdec.ptr2.i11.i.i = getelementptr i8, ptr %3, i32 95
  %123 = ptrtoint ptr %incdec.ptr1.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 16, ptr %incdec.ptr1.i10.i.i, align 1
  %incdec.ptr3.i12.i.i = getelementptr i8, ptr %3, i32 96
  %124 = ptrtoint ptr %incdec.ptr2.i11.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv4.i.i, ptr %incdec.ptr2.i11.i.i, align 1
  %125 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %yres.i, align 4
  %127 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %upper_margin.i, align 4
  %add26.i = add i32 %128, %126
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %129 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %lower_margin.i, align 4
  %add27.i = add i32 %add26.i, %130
  %131 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vsync_len.i, align 4
  %add29.i = add i32 %add27.i, %132
  %conv30.i = trunc i32 %add29.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv30.i)
  %tobool.not12.i.i263.i = icmp eq i16 %conv30.i, 0
  br i1 %tobool.not12.i.i263.i, label %dlfb_set_register_lfsr16.exit262.i.dlfb_set_register_lfsr16.exit294.i_crit_edge, label %dlfb_set_register_lfsr16.exit262.i.while.body.i.i279.i_crit_edge

dlfb_set_register_lfsr16.exit262.i.while.body.i.i279.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit262.i
  br label %while.body.i.i279.i

dlfb_set_register_lfsr16.exit262.i.dlfb_set_register_lfsr16.exit294.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit262.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_register_lfsr16.exit294.i

while.body.i.i279.i:                              ; preds = %while.body.i.i279.i.while.body.i.i279.i_crit_edge, %dlfb_set_register_lfsr16.exit262.i.while.body.i.i279.i_crit_edge
  %lv.014.i.i264.i = phi i32 [ %and6.i.i277.i, %while.body.i.i279.i.while.body.i.i279.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit262.i.while.body.i.i279.i_crit_edge ]
  %actual_count.addr.013.i.i265.i = phi i16 [ %dec.i.i266.i, %while.body.i.i279.i.while.body.i.i279.i_crit_edge ], [ %conv30.i, %dlfb_set_register_lfsr16.exit262.i.while.body.i.i279.i_crit_edge ]
  %dec.i.i266.i = add i16 %actual_count.addr.013.i.i265.i, -1
  %shl.i.i267.i = shl nuw nsw i32 %lv.014.i.i264.i, 1
  %shr.i.i268.i = lshr i32 %lv.014.i.i264.i, 15
  %shr1.i.i269.i = lshr i32 %lv.014.i.i264.i, 4
  %xor.i.i270.i = xor i32 %shr.i.i268.i, %shr1.i.i269.i
  %shr2.i.i271.i = lshr i32 %lv.014.i.i264.i, 2
  %xor3.i.i272.i = xor i32 %xor.i.i270.i, %shr2.i.i271.i
  %shr4.i.i273.i = lshr i32 %lv.014.i.i264.i, 1
  %xor5.i.i274.i = xor i32 %xor3.i.i272.i, %shr4.i.i273.i
  %and.i.i275.i = and i32 %xor5.i.i274.i, 1
  %shl.masked.i.i276.i = and i32 %shl.i.i267.i, 65534
  %and6.i.i277.i = or i32 %and.i.i275.i, %shl.masked.i.i276.i
  %tobool.not.i.i278.i = icmp eq i16 %dec.i.i266.i, 0
  br i1 %tobool.not.i.i278.i, label %while.end.loopexit.i.i283.i, label %while.body.i.i279.i.while.body.i.i279.i_crit_edge

while.body.i.i279.i.while.body.i.i279.i_crit_edge: ; preds = %while.body.i.i279.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i279.i

while.end.loopexit.i.i283.i:                      ; preds = %while.body.i.i279.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i280.i = trunc i32 %and6.i.i277.i to i8
  %extract3.i281.i = lshr i32 %lv.014.i.i264.i, 7
  %extract.t2.i282.i = trunc i32 %extract3.i281.i to i8
  br label %dlfb_set_register_lfsr16.exit294.i

dlfb_set_register_lfsr16.exit294.i:               ; preds = %while.end.loopexit.i.i283.i, %dlfb_set_register_lfsr16.exit262.i.dlfb_set_register_lfsr16.exit294.i_crit_edge
  %lv.0.lcssa.i.off0.i284.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit262.i.dlfb_set_register_lfsr16.exit294.i_crit_edge ], [ %extract.t.i280.i, %while.end.loopexit.i.i283.i ]
  %lv.0.lcssa.i.off8.i285.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit262.i.dlfb_set_register_lfsr16.exit294.i_crit_edge ], [ %extract.t2.i282.i, %while.end.loopexit.i.i283.i ]
  %incdec.ptr.i.i.i286.i = getelementptr i8, ptr %3, i32 97
  %133 = ptrtoint ptr %incdec.ptr3.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -81, ptr %incdec.ptr3.i12.i.i, align 1
  %incdec.ptr1.i.i.i287.i = getelementptr i8, ptr %3, i32 98
  %134 = ptrtoint ptr %incdec.ptr.i.i.i286.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 32, ptr %incdec.ptr.i.i.i286.i, align 1
  %incdec.ptr2.i.i.i288.i = getelementptr i8, ptr %3, i32 99
  %135 = ptrtoint ptr %incdec.ptr1.i.i.i287.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 17, ptr %incdec.ptr1.i.i.i287.i, align 1
  %incdec.ptr3.i.i.i289.i = getelementptr i8, ptr %3, i32 100
  %136 = ptrtoint ptr %incdec.ptr2.i.i.i288.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %lv.0.lcssa.i.off8.i285.i, ptr %incdec.ptr2.i.i.i288.i, align 1
  %incdec.ptr.i9.i.i290.i = getelementptr i8, ptr %3, i32 101
  %137 = ptrtoint ptr %incdec.ptr3.i.i.i289.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -81, ptr %incdec.ptr3.i.i.i289.i, align 1
  %incdec.ptr1.i10.i.i291.i = getelementptr i8, ptr %3, i32 102
  %138 = ptrtoint ptr %incdec.ptr.i9.i.i290.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 32, ptr %incdec.ptr.i9.i.i290.i, align 1
  %incdec.ptr2.i11.i.i292.i = getelementptr i8, ptr %3, i32 103
  %139 = ptrtoint ptr %incdec.ptr1.i10.i.i291.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 18, ptr %incdec.ptr1.i10.i.i291.i, align 1
  %incdec.ptr3.i12.i.i293.i = getelementptr i8, ptr %3, i32 104
  %140 = ptrtoint ptr %incdec.ptr2.i11.i.i292.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %lv.0.lcssa.i.off0.i284.i, ptr %incdec.ptr2.i11.i.i292.i, align 1
  %incdec.ptr.i.i.i297.i = getelementptr i8, ptr %3, i32 105
  %141 = ptrtoint ptr %incdec.ptr3.i12.i.i293.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -81, ptr %incdec.ptr3.i12.i.i293.i, align 1
  %incdec.ptr1.i.i.i298.i = getelementptr i8, ptr %3, i32 106
  %142 = ptrtoint ptr %incdec.ptr.i.i.i297.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 32, ptr %incdec.ptr.i.i.i297.i, align 1
  %incdec.ptr2.i.i.i299.i = getelementptr i8, ptr %3, i32 107
  %143 = ptrtoint ptr %incdec.ptr1.i.i.i298.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 19, ptr %incdec.ptr1.i.i.i298.i, align 1
  %incdec.ptr3.i.i.i300.i = getelementptr i8, ptr %3, i32 108
  %144 = ptrtoint ptr %incdec.ptr2.i.i.i299.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -1, ptr %incdec.ptr2.i.i.i299.i, align 1
  %incdec.ptr.i9.i.i301.i = getelementptr i8, ptr %3, i32 109
  %145 = ptrtoint ptr %incdec.ptr3.i.i.i300.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -81, ptr %incdec.ptr3.i.i.i300.i, align 1
  %incdec.ptr1.i10.i.i302.i = getelementptr i8, ptr %3, i32 110
  %146 = ptrtoint ptr %incdec.ptr.i9.i.i301.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 32, ptr %incdec.ptr.i9.i.i301.i, align 1
  %incdec.ptr2.i11.i.i303.i = getelementptr i8, ptr %3, i32 111
  %147 = ptrtoint ptr %incdec.ptr1.i10.i.i302.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 20, ptr %incdec.ptr1.i10.i.i302.i, align 1
  %148 = ptrtoint ptr %incdec.ptr2.i11.i.i303.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -1, ptr %incdec.ptr2.i11.i.i303.i, align 1
  %149 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vsync_len.i, align 4
  %conv34.i = trunc i32 %150 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv34.i)
  %tobool.not12.i.i305.i = icmp eq i16 %conv34.i, 0
  br i1 %tobool.not12.i.i305.i, label %dlfb_set_register_lfsr16.exit294.i.dlfb_set_vid_cmds.exit_crit_edge, label %dlfb_set_register_lfsr16.exit294.i.while.body.i.i321.i_crit_edge

dlfb_set_register_lfsr16.exit294.i.while.body.i.i321.i_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit294.i
  br label %while.body.i.i321.i

dlfb_set_register_lfsr16.exit294.i.dlfb_set_vid_cmds.exit_crit_edge: ; preds = %dlfb_set_register_lfsr16.exit294.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_set_vid_cmds.exit

while.body.i.i321.i:                              ; preds = %while.body.i.i321.i.while.body.i.i321.i_crit_edge, %dlfb_set_register_lfsr16.exit294.i.while.body.i.i321.i_crit_edge
  %lv.014.i.i306.i = phi i32 [ %and6.i.i319.i, %while.body.i.i321.i.while.body.i.i321.i_crit_edge ], [ 65535, %dlfb_set_register_lfsr16.exit294.i.while.body.i.i321.i_crit_edge ]
  %actual_count.addr.013.i.i307.i = phi i16 [ %dec.i.i308.i, %while.body.i.i321.i.while.body.i.i321.i_crit_edge ], [ %conv34.i, %dlfb_set_register_lfsr16.exit294.i.while.body.i.i321.i_crit_edge ]
  %dec.i.i308.i = add i16 %actual_count.addr.013.i.i307.i, -1
  %shl.i.i309.i = shl nuw nsw i32 %lv.014.i.i306.i, 1
  %shr.i.i310.i = lshr i32 %lv.014.i.i306.i, 15
  %shr1.i.i311.i = lshr i32 %lv.014.i.i306.i, 4
  %xor.i.i312.i = xor i32 %shr.i.i310.i, %shr1.i.i311.i
  %shr2.i.i313.i = lshr i32 %lv.014.i.i306.i, 2
  %xor3.i.i314.i = xor i32 %xor.i.i312.i, %shr2.i.i313.i
  %shr4.i.i315.i = lshr i32 %lv.014.i.i306.i, 1
  %xor5.i.i316.i = xor i32 %xor3.i.i314.i, %shr4.i.i315.i
  %and.i.i317.i = and i32 %xor5.i.i316.i, 1
  %shl.masked.i.i318.i = and i32 %shl.i.i309.i, 65534
  %and6.i.i319.i = or i32 %and.i.i317.i, %shl.masked.i.i318.i
  %tobool.not.i.i320.i = icmp eq i16 %dec.i.i308.i, 0
  br i1 %tobool.not.i.i320.i, label %while.end.loopexit.i.i325.i, label %while.body.i.i321.i.while.body.i.i321.i_crit_edge

while.body.i.i321.i.while.body.i.i321.i_crit_edge: ; preds = %while.body.i.i321.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i321.i

while.end.loopexit.i.i325.i:                      ; preds = %while.body.i.i321.i
  call void @__sanitizer_cov_trace_pc() #16
  %extract.t.i322.i = trunc i32 %and6.i.i319.i to i8
  %extract3.i323.i = lshr i32 %lv.014.i.i306.i, 7
  %extract.t2.i324.i = trunc i32 %extract3.i323.i to i8
  br label %dlfb_set_vid_cmds.exit

dlfb_set_vid_cmds.exit:                           ; preds = %while.end.loopexit.i.i325.i, %dlfb_set_register_lfsr16.exit294.i.dlfb_set_vid_cmds.exit_crit_edge
  %lv.0.lcssa.i.off0.i326.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit294.i.dlfb_set_vid_cmds.exit_crit_edge ], [ %extract.t.i322.i, %while.end.loopexit.i.i325.i ]
  %lv.0.lcssa.i.off8.i327.i = phi i8 [ -1, %dlfb_set_register_lfsr16.exit294.i.dlfb_set_vid_cmds.exit_crit_edge ], [ %extract.t2.i324.i, %while.end.loopexit.i.i325.i ]
  %incdec.ptr3.i12.i.i304.i = getelementptr i8, ptr %3, i32 112
  %incdec.ptr.i.i.i328.i = getelementptr i8, ptr %3, i32 113
  %151 = ptrtoint ptr %incdec.ptr3.i12.i.i304.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -81, ptr %incdec.ptr3.i12.i.i304.i, align 1
  %incdec.ptr1.i.i.i329.i = getelementptr i8, ptr %3, i32 114
  %152 = ptrtoint ptr %incdec.ptr.i.i.i328.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 32, ptr %incdec.ptr.i.i.i328.i, align 1
  %incdec.ptr2.i.i.i330.i = getelementptr i8, ptr %3, i32 115
  %153 = ptrtoint ptr %incdec.ptr1.i.i.i329.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 21, ptr %incdec.ptr1.i.i.i329.i, align 1
  %incdec.ptr3.i.i.i331.i = getelementptr i8, ptr %3, i32 116
  %154 = ptrtoint ptr %incdec.ptr2.i.i.i330.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %lv.0.lcssa.i.off8.i327.i, ptr %incdec.ptr2.i.i.i330.i, align 1
  %incdec.ptr.i9.i.i332.i = getelementptr i8, ptr %3, i32 117
  %155 = ptrtoint ptr %incdec.ptr3.i.i.i331.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -81, ptr %incdec.ptr3.i.i.i331.i, align 1
  %incdec.ptr1.i10.i.i333.i = getelementptr i8, ptr %3, i32 118
  %156 = ptrtoint ptr %incdec.ptr.i9.i.i332.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 32, ptr %incdec.ptr.i9.i.i332.i, align 1
  %incdec.ptr2.i11.i.i334.i = getelementptr i8, ptr %3, i32 119
  %157 = ptrtoint ptr %incdec.ptr1.i10.i.i333.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 22, ptr %incdec.ptr1.i10.i.i333.i, align 1
  %incdec.ptr3.i12.i.i335.i = getelementptr i8, ptr %3, i32 120
  %158 = ptrtoint ptr %incdec.ptr2.i11.i.i334.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %lv.0.lcssa.i.off0.i326.i, ptr %incdec.ptr2.i11.i.i334.i, align 1
  %159 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %yres.i, align 4
  %161 = lshr i32 %160, 8
  %conv1.i337.i = trunc i32 %161 to i8
  %incdec.ptr.i.i338.i = getelementptr i8, ptr %3, i32 121
  %162 = ptrtoint ptr %incdec.ptr3.i12.i.i335.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -81, ptr %incdec.ptr3.i12.i.i335.i, align 1
  %incdec.ptr1.i.i339.i = getelementptr i8, ptr %3, i32 122
  %163 = ptrtoint ptr %incdec.ptr.i.i338.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 32, ptr %incdec.ptr.i.i338.i, align 1
  %incdec.ptr2.i.i340.i = getelementptr i8, ptr %3, i32 123
  %164 = ptrtoint ptr %incdec.ptr1.i.i339.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 23, ptr %incdec.ptr1.i.i339.i, align 1
  %incdec.ptr3.i.i341.i = getelementptr i8, ptr %3, i32 124
  %165 = ptrtoint ptr %incdec.ptr2.i.i340.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv1.i337.i, ptr %incdec.ptr2.i.i340.i, align 1
  %conv4.i342.i = trunc i32 %160 to i8
  %incdec.ptr.i9.i343.i = getelementptr i8, ptr %3, i32 125
  %166 = ptrtoint ptr %incdec.ptr3.i.i341.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -81, ptr %incdec.ptr3.i.i341.i, align 1
  %incdec.ptr1.i10.i344.i = getelementptr i8, ptr %3, i32 126
  %167 = ptrtoint ptr %incdec.ptr.i9.i343.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 32, ptr %incdec.ptr.i9.i343.i, align 1
  %incdec.ptr2.i11.i345.i = getelementptr i8, ptr %3, i32 127
  %168 = ptrtoint ptr %incdec.ptr1.i10.i344.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 24, ptr %incdec.ptr1.i10.i344.i, align 1
  %incdec.ptr3.i12.i346.i = getelementptr i8, ptr %3, i32 128
  %169 = ptrtoint ptr %incdec.ptr2.i11.i345.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv4.i342.i, ptr %incdec.ptr2.i11.i345.i, align 1
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %170 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pixclock.i, align 4
  %div.i = udiv i32 200000000, %171
  %conv.i.i = trunc i32 %div.i to i8
  %incdec.ptr.i.i347.i = getelementptr i8, ptr %3, i32 129
  %172 = ptrtoint ptr %incdec.ptr3.i12.i346.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -81, ptr %incdec.ptr3.i12.i346.i, align 1
  %incdec.ptr1.i.i348.i = getelementptr i8, ptr %3, i32 130
  %173 = ptrtoint ptr %incdec.ptr.i.i347.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 32, ptr %incdec.ptr.i.i347.i, align 1
  %incdec.ptr2.i.i349.i = getelementptr i8, ptr %3, i32 131
  %174 = ptrtoint ptr %incdec.ptr1.i.i348.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 27, ptr %incdec.ptr1.i.i348.i, align 1
  %incdec.ptr3.i.i350.i = getelementptr i8, ptr %3, i32 132
  %175 = ptrtoint ptr %incdec.ptr2.i.i349.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv.i.i, ptr %incdec.ptr2.i.i349.i, align 1
  %176 = lshr i32 %div.i, 8
  %conv4.i351.i = trunc i32 %176 to i8
  %incdec.ptr.i1.i.i = getelementptr i8, ptr %3, i32 133
  %177 = ptrtoint ptr %incdec.ptr3.i.i350.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -81, ptr %incdec.ptr3.i.i350.i, align 1
  %incdec.ptr1.i2.i.i = getelementptr i8, ptr %3, i32 134
  %178 = ptrtoint ptr %incdec.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 32, ptr %incdec.ptr.i1.i.i, align 1
  %incdec.ptr2.i3.i.i = getelementptr i8, ptr %3, i32 135
  %179 = ptrtoint ptr %incdec.ptr1.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 28, ptr %incdec.ptr1.i2.i.i, align 1
  %incdec.ptr3.i4.i.i = getelementptr i8, ptr %3, i32 136
  %180 = ptrtoint ptr %incdec.ptr2.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv4.i351.i, ptr %incdec.ptr2.i3.i.i, align 1
  %incdec.ptr.i.i44 = getelementptr i8, ptr %3, i32 137
  %181 = ptrtoint ptr %incdec.ptr3.i4.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -81, ptr %incdec.ptr3.i4.i.i, align 1
  %incdec.ptr1.i.i45 = getelementptr i8, ptr %3, i32 138
  %182 = ptrtoint ptr %incdec.ptr.i.i44 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 32, ptr %incdec.ptr.i.i44, align 1
  %incdec.ptr2.i.i46 = getelementptr i8, ptr %3, i32 139
  %183 = ptrtoint ptr %incdec.ptr1.i.i45 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 31, ptr %incdec.ptr1.i.i45, align 1
  %incdec.ptr3.i.i47 = getelementptr i8, ptr %3, i32 140
  %184 = ptrtoint ptr %incdec.ptr2.i.i46 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %incdec.ptr2.i.i46, align 1
  %incdec.ptr.i.i48 = getelementptr i8, ptr %3, i32 141
  %185 = ptrtoint ptr %incdec.ptr3.i.i47 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 -81, ptr %incdec.ptr3.i.i47, align 1
  %incdec.ptr1.i.i49 = getelementptr i8, ptr %3, i32 142
  %186 = ptrtoint ptr %incdec.ptr.i.i48 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 32, ptr %incdec.ptr.i.i48, align 1
  %incdec.ptr2.i.i50 = getelementptr i8, ptr %3, i32 143
  %187 = ptrtoint ptr %incdec.ptr1.i.i49 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %incdec.ptr1.i.i49, align 1
  %188 = ptrtoint ptr %incdec.ptr2.i.i50 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -1, ptr %incdec.ptr2.i.i50, align 1
  %size.i = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 5
  %189 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %190)
  %cmp.i = icmp ult i32 %190, 144
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !249

do.body2.i:                                       ; preds = %dlfb_set_vid_cmds.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/video/fbdev/udlfb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1966, 0\0A.popsection", ""() #14, !srcloc !250
  unreachable

do.end7.i:                                        ; preds = %dlfb_set_vid_cmds.exit
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %191 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 144, ptr %transfer_buffer_length.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %do.end7.i.dlfb_submit_urb.exit_crit_edge, label %if.then9.i

do.end7.i.dlfb_submit_urb.exit_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlfb_submit_urb.exit

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dlfb_urb_completion(ptr noundef nonnull %call2) #14
  %lost_pixels.i = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lost_pixels.i, i32 noundef 4) #14
  %192 = ptrtoint ptr %lost_pixels.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile i32 1, ptr %lost_pixels.i, align 4
  %193 = ptrtoint ptr %dlfb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dlfb, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %194, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.57, i32 noundef %call.i) #18
  br label %dlfb_submit_urb.exit

dlfb_submit_urb.exit:                             ; preds = %if.then9.i, %do.end7.i.dlfb_submit_urb.exit_crit_edge
  %blank_mode = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 14
  %195 = ptrtoint ptr %blank_mode to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %blank_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %dlfb_submit_urb.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %dlfb_submit_urb.exit ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_to_pfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlfb_free_urb_list(ptr noundef %dlfb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2
  %count1 = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not22 = icmp eq i32 %1, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %limit_sem = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 2
  %lock = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 1
  %size = getelementptr inbounds %struct.dlfb_data, ptr %dlfb, i32 0, i32 2, i32 5
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %count.023 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %list_del_init.exit.while.body_crit_edge ]
  %dec = add i32 %count.023, -1
  tail call void @down(ptr noundef %limit_sem) #14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %2 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urbs, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
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

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  %urb7 = getelementptr inbounds %struct.urb_node, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb7, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
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
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %21) #14
  tail call void @usb_free_urb(ptr noundef %13) #14
  tail call void @kfree(ptr noundef %3) #14
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %22 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %count1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_nearest_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_bytes_rendered_show(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %fbdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %bytes_rendered = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_rendered, i32 noundef 4) #14
  %4 = ptrtoint ptr %bytes_rendered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bytes_rendered, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_bytes_identical_show(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %fbdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %bytes_identical = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_identical, i32 noundef 4) #14
  %4 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bytes_identical, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_bytes_sent_show(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %fbdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %bytes_sent = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_sent, i32 noundef 4) #14
  %4 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bytes_sent, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_cpu_kcycles_used_show(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %fbdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %cpu_kcycles_used = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cpu_kcycles_used, i32 noundef 4) #14
  %4 = ptrtoint ptr %cpu_kcycles_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cpu_kcycles_used, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_reset_store(ptr nocapture noundef readonly %fbdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %fbdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %bytes_rendered = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes_rendered, i32 noundef 4) #14
  %4 = ptrtoint ptr %bytes_rendered to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %bytes_rendered, align 4
  %bytes_identical = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 24
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes_identical, i32 noundef 4) #14
  %5 = ptrtoint ptr %bytes_identical to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %bytes_identical, align 4
  %bytes_sent = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 25
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bytes_sent, i32 noundef 4) #14
  %6 = ptrtoint ptr %bytes_sent to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %bytes_sent, align 4
  %cpu_kcycles_used = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 26
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cpu_kcycles_used, i32 noundef 4) #14
  %7 = ptrtoint ptr %cpu_kcycles_used to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %cpu_kcycles_used, align 4
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @edid_show(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %edid = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %edid_size = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %edid_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %edid_size, align 4
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp2.not = icmp sle i64 %conv, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %count)
  %cmp5 = icmp ult i32 %7, %count
  %or.cond = or i1 %cmp5, %cmp2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv9 = zext i32 %count to i64
  %add = add i64 %conv9, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp12 = icmp sgt i64 %add, %conv
  %8 = trunc i64 %off to i32
  %conv17 = sub i32 %7, %8
  %count.addr.0 = select i1 %cmp12, i32 %conv17, i32 %count
  %9 = call ptr @memcpy(ptr %buf, ptr %5, i32 %count.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edid_store(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr noundef %src, i64 noundef %src_off, i32 noundef %src_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %src_size)
  %cmp.not = icmp eq i32 %src_size, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %src_off)
  %cmp2.not = icmp eq i64 %src_off, 0
  %or.cond = and i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @dlfb_setup_modes(ptr noundef %3, ptr noundef %1, ptr noundef %src, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %edid = getelementptr inbounds %struct.dlfb_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edid, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(128) %src, ptr noundef nonnull dereferenceable(128) %5, i32 128) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 @dlfb_ops_set_par(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %.call13 = select i1 %tobool14.not, i32 128, i32 %call13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %.call13, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !151, !153, !154, !155, !157, !158, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !187, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !234}
!llvm.named.register.sp = !{!235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @__initcall__kmod_udlfb__332_1809_dlfb_driver_init6, !1, !"__initcall__kmod_udlfb__332_1809_dlfb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/udlfb.c", i32 1809, i32 1}
!2 = !{ptr @__exitcall_dlfb_driver_exit, !1, !"__exitcall_dlfb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_console, !4, !"__param_console", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/udlfb.c", i32 1978, i32 1}
!5 = !{ptr @__UNIQUE_ID_consoletype333, !4, !"__UNIQUE_ID_consoletype333", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_console334, !7, !"__UNIQUE_ID_console334", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/udlfb.c", i32 1979, i32 1}
!8 = !{ptr @__param_fb_defio, !9, !"__param_fb_defio", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/udlfb.c", i32 1981, i32 1}
!10 = !{ptr @__UNIQUE_ID_fb_defiotype335, !9, !"__UNIQUE_ID_fb_defiotype335", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_fb_defio336, !12, !"__UNIQUE_ID_fb_defio336", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/udlfb.c", i32 1982, i32 1}
!13 = !{ptr @__param_shadow, !14, !"__param_shadow", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/udlfb.c", i32 1984, i32 1}
!15 = !{ptr @__UNIQUE_ID_shadowtype337, !14, !"__UNIQUE_ID_shadowtype337", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_shadow338, !17, !"__UNIQUE_ID_shadow338", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/udlfb.c", i32 1985, i32 1}
!18 = !{ptr @__param_pixel_limit, !19, !"__param_pixel_limit", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/udlfb.c", i32 1987, i32 1}
!20 = !{ptr @__UNIQUE_ID_pixel_limittype339, !19, !"__UNIQUE_ID_pixel_limittype339", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_pixel_limit340, !22, !"__UNIQUE_ID_pixel_limit340", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/udlfb.c", i32 1988, i32 1}
!23 = !{ptr @__UNIQUE_ID_author341, !24, !"__UNIQUE_ID_author341", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/udlfb.c", i32 1990, i32 1}
!25 = !{ptr @__UNIQUE_ID_description342, !26, !"__UNIQUE_ID_description342", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/udlfb.c", i32 1993, i32 1}
!27 = !{ptr @__UNIQUE_ID_file343, !28, !"__UNIQUE_ID_file343", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/udlfb.c", i32 1994, i32 1}
!29 = !{ptr @__UNIQUE_ID_license344, !28, !"__UNIQUE_ID_license344", i1 false, i1 false}
!30 = !{ptr @pixel_limit, !31, !"pixel_limit", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/udlfb.c", i32 70, i32 12}
!32 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dlfb_driver, !34, !"dlfb_driver", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/udlfb.c", i32 1802, i32 26}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/udlfb.c", i32 1658, i32 3}
!37 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dlfb_usb_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @dlfb_usb_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/udlfb.c", i32 1667, i32 2}
!45 = !{ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug328, !44, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/udlfb.c", i32 1668, i32 2}
!48 = !{ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug329, !47, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/udlfb.c", i32 1669, i32 2}
!51 = !{ptr @dlfb_usb_probe.__UNIQUE_ID_ddebug330, !50, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/udlfb.c", i32 1674, i32 3}
!54 = !{ptr @dlfb_usb_probe._entry.9, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dlfb_usb_probe._entry_ptr.11, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/udlfb.c", i32 1680, i32 3}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dlfb_usb_probe._entry.12, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dlfb_usb_probe._entry_ptr.15, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @dlfb_usb_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/udlfb.c", i32 1698, i32 2}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @dlfb_usb_probe.__key.17, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/udlfb.c", i32 1700, i32 2}
!66 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dlfb_usb_probe.__key.19, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/udlfb.c", i32 1701, i32 2}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/udlfb.c", i32 1707, i32 3}
!72 = !{ptr @dlfb_usb_probe._entry.21, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dlfb_usb_probe._entry_ptr.23, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/udlfb.c", i32 1715, i32 3}
!76 = !{ptr @dlfb_usb_probe._entry.24, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dlfb_usb_probe._entry_ptr.26, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/udlfb.c", i32 1721, i32 3}
!80 = !{ptr @dlfb_usb_probe._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @dlfb_usb_probe._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/udlfb.c", i32 1738, i32 3}
!84 = !{ptr @dlfb_usb_probe._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @dlfb_usb_probe._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/udlfb.c", i32 1747, i32 4}
!88 = !{ptr @dlfb_usb_probe._entry.33, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @dlfb_usb_probe._entry_ptr.35, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dlfb_usb_probe._entry.36, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/video/fbdev/udlfb.c", i32 1754, i32 3}
!92 = !{ptr @dlfb_usb_probe._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/udlfb.c", i32 1757, i32 2}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dlfb_usb_probe._entry.38, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @dlfb_usb_probe._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/udlfb.c", i32 1590, i32 3}
!100 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dlfb_parse_vendor_descriptor._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dlfb_parse_vendor_descriptor._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/udlfb.c", i32 1618, i32 5}
!105 = !{ptr @dlfb_parse_vendor_descriptor._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @dlfb_parse_vendor_descriptor._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/udlfb.c", i32 1630, i32 3}
!109 = !{ptr @dlfb_parse_vendor_descriptor._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @dlfb_parse_vendor_descriptor._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/udlfb.c", i32 1638, i32 2}
!113 = !{ptr @dlfb_parse_vendor_descriptor._entry.50, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @dlfb_parse_vendor_descriptor._entry_ptr.52, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @dlfb_ops, !116, !"dlfb_ops", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/udlfb.c", i32 1186, i32 28}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/udlfb.c", i32 990, i32 2}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dlfb_ops_open.__UNIQUE_ID_ddebug323, !118, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/udlfb.c", i32 1943, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dlfb_get_urb._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dlfb_get_urb._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/udlfb.c", i32 1973, i32 3}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dlfb_submit_urb._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @dlfb_submit_urb._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/video/fbdev/udlfb.c", i32 1827, i32 3}
!133 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dlfb_urb_completion._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dlfb_urb_completion._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/udlfb.c", i32 1043, i32 2}
!138 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @dlfb_ops_release.__UNIQUE_ID_ddebug324, !137, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/udlfb.c", i32 1156, i32 2}
!142 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @dlfb_ops_blank.__UNIQUE_ID_ddebug325, !141, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/udlfb.c", i32 338, i32 2}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dlfb_ops_mmap.__UNIQUE_ID_ddebug306, !152, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!155 = !{ptr @dlfb_alloc_urb_list.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/video/fbdev/udlfb.c", i32 1882, i32 2}
!157 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sema_init.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/udlfb.c", i32 1328, i32 3}
!166 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @dlfb_setup_modes._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @dlfb_setup_modes._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/udlfb.c", i32 1333, i32 5}
!171 = !{ptr @dlfb_setup_modes._entry.75, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @dlfb_setup_modes._entry_ptr.77, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/video/fbdev/udlfb.c", i32 1345, i32 5}
!175 = !{ptr @dlfb_setup_modes._entry.78, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @dlfb_setup_modes._entry_ptr.80, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/video/fbdev/udlfb.c", i32 1358, i32 5}
!179 = !{ptr @dlfb_setup_modes.__UNIQUE_ID_ddebug326, !178, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/udlfb.c", i32 1387, i32 5}
!182 = !{ptr @dlfb_setup_modes.__UNIQUE_ID_ddebug327, !181, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!183 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/video/fbdev/udlfb.c", i32 858, i32 4}
!185 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @dlfb_get_edid._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @dlfb_get_edid._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @dlfb_fix, !189, !"dlfb_fix", i1 false, i1 false}
!189 = !{!"../drivers/video/fbdev/udlfb.c", i32 30, i32 39}
!190 = !{ptr @dlfb_select_std_channel.set_def_chn, !191, !"set_def_chn", i1 false, i1 false}
!191 = !{!"../drivers/video/fbdev/udlfb.c", i32 1544, i32 18}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/video/fbdev/udlfb.c", i32 1233, i32 4}
!194 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @dlfb_realloc_framebuffer._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @dlfb_realloc_framebuffer._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.88, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/udlfb.c", i32 1257, i32 4}
!199 = !{ptr @dlfb_realloc_framebuffer._entry.87, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dlfb_realloc_framebuffer._entry_ptr.89, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/udlfb.c", i32 1530, i32 2}
!203 = !{ptr @.str.91, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/udlfb.c", i32 1531, i32 2}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/udlfb.c", i32 1532, i32 2}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/video/fbdev/udlfb.c", i32 1533, i32 2}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/udlfb.c", i32 1534, i32 2}
!211 = !{ptr @fb_device_attrs, !212, !"fb_device_attrs", i1 false, i1 false}
!212 = !{!"../drivers/video/fbdev/udlfb.c", i32 1529, i32 38}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/udlfb.c", i32 1429, i32 34}
!215 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/udlfb.c", i32 1522, i32 15}
!217 = !{ptr @edid_attr, !218, !"edid_attr", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/udlfb.c", i32 1521, i32 35}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/video/fbdev/udlfb.c", i32 1783, i32 2}
!221 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @dlfb_usb_disconnect.__UNIQUE_ID_ddebug331, !220, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!223 = !{ptr @id_table, !224, !"id_table", i1 false, i1 false}
!224 = !{!"../drivers/video/fbdev/udlfb.c", i32 52, i32 35}
!225 = !{ptr @__param_str_console, !4, !"__param_str_console", i1 false, i1 false}
!226 = !{ptr @console, !227, !"console", i1 false, i1 false}
!227 = !{!"../drivers/video/fbdev/udlfb.c", i32 67, i32 13}
!228 = !{ptr @__param_str_fb_defio, !9, !"__param_str_fb_defio", i1 false, i1 false}
!229 = !{ptr @fb_defio, !230, !"fb_defio", i1 false, i1 false}
!230 = !{!"../drivers/video/fbdev/udlfb.c", i32 68, i32 13}
!231 = !{ptr @__param_str_shadow, !14, !"__param_str_shadow", i1 false, i1 false}
!232 = !{ptr @shadow, !233, !"shadow", i1 false, i1 false}
!233 = !{!"../drivers/video/fbdev/udlfb.c", i32 69, i32 13}
!234 = !{ptr @__param_str_pixel_limit, !19, !"__param_str_pixel_limit", i1 false, i1 false}
!235 = !{!"sp"}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i64 2149004078, i64 2149004083, i64 2149004096, i64 2149004140, i64 2149004174, i64 2149004195}
!246 = !{i8 0, i8 2}
!247 = distinct !{!247, !248}
!248 = !{!"llvm.loop.peeled.count", i32 1}
!249 = !{!"branch_weights", i32 1, i32 2000}
!250 = !{i64 2156169615, i64 2156170108, i64 2156169652, i64 2156169708, i64 2156169742, i64 2156169766, i64 2156169807, i64 2156169828, i64 2156169856, i64 2156169890}
!251 = !{!"branch_weights", i32 2000, i32 1}
!252 = !{i64 2153566962, i64 2153566987}
!253 = !{i64 2153566281, i64 2153566306}
!254 = !{i64 6061836}
!255 = !{i64 6062033}
!256 = !{i64 2153547266}
!257 = !{!"auto-init"}
!258 = !{i64 2148390701, i64 2148390727, i64 2148390756, i64 2148390790, i64 2148390821, i64 2148390844}
!259 = !{i64 2156166772, i64 2156167265, i64 2156166809, i64 2156166865, i64 2156166899, i64 2156166923, i64 2156166964, i64 2156166985, i64 2156167013, i64 2156167047}
