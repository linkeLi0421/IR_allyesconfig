; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/metronomefb.c_pt.bc'
source_filename = "../drivers/video/fbdev/metronomefb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.epd_frame = type { i32, i32, [4 x i16], i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.metronome_board = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.metronomefb_par = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.wait_queue_head, i8, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.waveform_hdr = type { [32 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, [2 x i8], [3 x i8], i8 }
%struct.metromem_cmd = type { i16, [31 x i16], i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }

@__initcall__kmod_metronomefb__305_774_metronomefb_driver_init6 = internal global ptr @metronomefb_driver_init, section ".initcall6.init", align 4
@metronomefb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @metronomefb_probe, ptr @metronomefb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_metronomefb_driver_exit = internal global ptr @metronomefb_driver_exit, section ".exitcall.exit", align 4
@__param_str_user_wfm_size = internal constant [26 x i8] c"metronomefb.user_wfm_size\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@user_wfm_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_user_wfm_size = internal constant %struct.kernel_param { ptr @__param_str_user_wfm_size, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @user_wfm_size } }, section "__param", align 4
@__UNIQUE_ID_user_wfm_sizetype306 = internal constant [40 x i8] c"metronomefb.parmtype=user_wfm_size:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_user_wfm_size307 = internal constant [56 x i8] c"metronomefb.parm=user_wfm_size:Set custom waveform size\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [62 x i8] c"metronomefb.description=fbdev driver for Metronome controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [30 x i8] c"metronomefb.author=Jaya Kumar\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"metronomefb.file=drivers/video/fbdev/metronomefb\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [24 x i8] c"metronomefb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"metronomefb\00", [20 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unexpected panel type. Defaulting to 6\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"metronomefb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/metronomefb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr = internal global ptr @metronomefb_probe._entry, section ".printk_index", align 4
@epd_frame_table = internal global { [3 x %struct.epd_frame], [36 x i8] } { [3 x %struct.epd_frame] [%struct.epd_frame { i32 832, i32 622, [4 x i16] [i16 527, i16 810, i16 18, i16 599], i32 47001 }, %struct.epd_frame { i32 1088, i32 791, [4 x i16] [i16 260, i16 799, i16 136, i16 767], i32 46770 }, %struct.epd_frame { i32 1200, i32 842, [4 x i16] [i16 257, i16 782, i16 18, i16 640], i32 46770 }], [36 x i8] zeroinitializer }, align 32
@metronomefb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr @metronomefb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @metronomefb_fillrect, ptr @metronomefb_copyarea, ptr @metronomefb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@metronomefb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"metronomefb\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 5, i16 0, i16 0, i16 0, i32 832, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@metronomefb_var = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 832, i32 622, i32 832, i32 622, i32 0, i32 0, i32 8, i32 1, %struct.fb_bitfield { i32 4, i32 3, i32 0 }, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@metronomefb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&par->waitq\00", [20 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to setup fb\0A\00", [44 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr.9 = internal global ptr @metronomefb_probe._entry.7, section ".printk_index", align 4
@metronomefb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fb access failure\0A\00", [45 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr.12 = internal global ptr @metronomefb_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"metronome.wbf\00", [18 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 683, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get waveform\0A\00", [40 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr.16 = internal global ptr @metronomefb_probe._entry.14, section ".printk_index", align 4
@metronomefb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed processing waveform\0A\00", [36 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr.19 = internal global ptr @metronomefb_probe._entry.17, section ".printk_index", align 4
@metronomefb_defio = internal global { %struct.fb_deferred_io, [48 x i8] } { %struct.fb_deferred_io { i32 100, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @metronomefb_dpy_deferred_io }, [48 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 710, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate colormap\0A\00", [35 x i8] zeroinitializer }, align 32
@metronomefb_probe._entry_ptr.22 = internal global ptr @metronomefb_probe._entry.20, section ".printk_index", align 4
@metronomefb_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"fb%d: Metronome frame buffer device, using %dK of video memory\0A\00", [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@metronome_display_cmd.borderval = internal global { i8, [31 x i8] } zeroinitializer, align 32
@load_waveform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: unexpected size %zd != %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_waveform\00", [18 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr = internal global ptr @load_waveform._entry, section ".printk_index", align 4
@load_waveform._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error: bad fvsn %x\0A\00", [44 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.31 = internal global ptr @load_waveform._entry.29, section ".printk_index", align 4
@load_waveform._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error: bad luts %x\0A\00", [44 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.34 = internal global ptr @load_waveform._entry.32, section ".printk_index", align 4
@load_waveform._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error: bad cksum %x != %x\0A\00", [37 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.37 = internal global ptr @load_waveform._entry.35, section ".printk_index", align 4
@load_waveform._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: unexpected value in padding\0A\00", [60 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.40 = internal global ptr @load_waveform._entry.38, section ".printk_index", align 4
@load_waveform._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error: bad temperature range table cksum %x != %x\0A\00", [45 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.43 = internal global ptr @load_waveform._entry.41, section ".printk_index", align 4
@load_waveform._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error: bad mode table address cksum %x != %x\0A\00", [50 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.46 = internal global ptr @load_waveform._entry.44, section ".printk_index", align 4
@load_waveform._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.3, i32 265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error: bad temperature table address cksum %x != %x\0A\00", [43 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.49 = internal global ptr @load_waveform._entry.47, section ".printk_index", align 4
@load_waveform._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.28, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: bad waveform data cksum %x != %x\0A\00", [55 x i8] zeroinitializer }, align 32
@load_waveform._entry_ptr.52 = internal global ptr @load_waveform._entry.50, section ".printk_index", align 4
@metronomefb_remove.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"metronomefb_remove\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calling release\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 8, i64 97]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"metronomefb_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 767, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"user_wfm_size\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 46, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 771, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 622, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"epd_frame_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 56, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"metronomefb_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 561, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"metronomefb_fix\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 102, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"metronomefb_var\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 113, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 652, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 664, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 671, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 681, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 683, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 691, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"metronomefb_defio\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 569, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 710, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 726, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 230, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 214, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 156, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"borderval\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 313, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 190, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 198, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 202, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 207, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 215, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 240, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 252, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 264, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 299, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [37 x i8] c"../drivers/video/fbdev/metronomefb.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 761, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__UNIQUE_ID_user_wfm_size307, ptr @__UNIQUE_ID_user_wfm_sizetype306, ptr @__exitcall_metronomefb_driver_exit, ptr @__initcall__kmod_metronomefb__305_774_metronomefb_driver_init6, ptr @__param_user_wfm_size, ptr @load_waveform._entry, ptr @load_waveform._entry.29, ptr @load_waveform._entry.32, ptr @load_waveform._entry.35, ptr @load_waveform._entry.38, ptr @load_waveform._entry.41, ptr @load_waveform._entry.44, ptr @load_waveform._entry.47, ptr @load_waveform._entry.50, ptr @load_waveform._entry_ptr, ptr @load_waveform._entry_ptr.31, ptr @load_waveform._entry_ptr.34, ptr @load_waveform._entry_ptr.37, ptr @load_waveform._entry_ptr.40, ptr @load_waveform._entry_ptr.43, ptr @load_waveform._entry_ptr.46, ptr @load_waveform._entry_ptr.49, ptr @load_waveform._entry_ptr.52, ptr @metronomefb_driver_exit, ptr @metronomefb_probe._entry, ptr @metronomefb_probe._entry.10, ptr @metronomefb_probe._entry.14, ptr @metronomefb_probe._entry.17, ptr @metronomefb_probe._entry.20, ptr @metronomefb_probe._entry.7, ptr @metronomefb_probe._entry_ptr, ptr @metronomefb_probe._entry_ptr.12, ptr @metronomefb_probe._entry_ptr.16, ptr @metronomefb_probe._entry_ptr.19, ptr @metronomefb_probe._entry_ptr.22, ptr @metronomefb_probe._entry_ptr.9, ptr @metronomefb_driver, ptr @user_wfm_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @epd_frame_table, ptr @metronomefb_ops, ptr @metronomefb_fix, ptr @metronomefb_var, ptr @metronomefb_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @metronomefb_defio, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @metronome_display_cmd.borderval, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_wfm_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epd_frame_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_defio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronomefb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metronome_display_cmd.borderval to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_waveform._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @metronomefb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @metronomefb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @metronomefb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @metronomefb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metronomefb_probe(ptr noundef %dev) #2 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #8
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !128
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup116_crit_edge, label %if.end

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %4) #8
  br i1 %call, label %if.end4, label %if.end.cleanup116_crit_edge

if.end.cleanup116_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @framebuffer_alloc(i32 noundef 96, ptr noundef %dev2) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.err_crit_edge, label %if.end9

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end9:                                          ; preds = %if.end4
  %get_panel_type = getelementptr inbounds %struct.metronome_board, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %get_panel_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_panel_type, align 4
  %call10 = tail call i32 %6() #8
  %7 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %do.end [
    i32 6, label %if.end9.sw.epilog_crit_edge
    i32 8, label %sw.bb11
    i32 97, label %sw.bb12
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb12, %sw.bb11, %if.end9.sw.epilog_crit_edge
  %epd_dt_index.0 = phi i32 [ 0, %do.end ], [ 2, %sw.bb12 ], [ 1, %sw.bb11 ], [ 0, %if.end9.sw.epilog_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.epd_frame], ptr @epd_frame_table, i32 0, i32 %epd_dt_index.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %fh16 = getelementptr [3 x %struct.epd_frame], ptr @epd_frame_table, i32 0, i32 %epd_dt_index.0, i32 1
  %10 = ptrtoint ptr %fh16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fh16, align 4
  %mul = mul i32 %11, %9
  %add = add i32 %mul, 4096
  %call17 = tail call noalias ptr @vzalloc(i32 noundef %add) #12
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %sw.epilog.err_fb_rel_crit_edge, label %if.end20

sw.epilog.err_fb_rel_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fb_rel

if.end20:                                         ; preds = %sw.epilog
  %12 = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %12, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 20
  %14 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @metronomefb_ops, ptr %fbops, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @metronomefb_fix, i32 0, i32 9), align 4
  store i32 %9, ptr @metronomefb_var, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @metronomefb_var, i32 0, i32 1), align 4
  store i32 %9, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @metronomefb_var, i32 0, i32 2), align 4
  store i32 %11, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @metronomefb_var, i32 0, i32 3), align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %var, ptr @metronomefb_var, i32 160)
  %fix = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %fix, ptr @metronomefb_fix, i32 68)
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %smem_len, align 4
  %par22 = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 30
  %18 = ptrtoint ptr %par22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par22, align 4
  %info23 = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %info23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6, ptr %info23, align 4
  %board24 = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 7
  %21 = ptrtoint ptr %board24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %board24, align 4
  %dt = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %epd_dt_index.0, ptr %dt, align 4
  %waitq = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.6, ptr noundef nonnull @metronomefb_probe.__key) #8
  %div205 = lshr i32 %add, 12
  %call28 = tail call noalias ptr @vmalloc(i32 noundef %div205) #12
  %csum_table = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 4
  %23 = ptrtoint ptr %csum_table to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call28, ptr %csum_table, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end20.err_vfree_crit_edge, label %if.end32

if.end20.err_vfree_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vfree

if.end32:                                         ; preds = %if.end20
  %setup_fb = getelementptr inbounds %struct.metronome_board, ptr %2, i32 0, i32 7
  %24 = ptrtoint ptr %setup_fb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %setup_fb, align 4
  %call33 = tail call i32 %25(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #11
  br label %err_csum_table

if.end40:                                         ; preds = %if.end32
  %metromem_wfm = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %metromem_wfm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %metromem_wfm, align 4
  %tobool41.not = icmp eq ptr %27, null
  br i1 %tobool41.not, label %if.end40.do.end48_crit_edge, label %lor.lhs.false

if.end40.do.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false:                                    ; preds = %if.end40
  %metromem_img = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %metromem_img to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %metromem_img, align 4
  %tobool42.not = icmp eq ptr %29, null
  br i1 %tobool42.not, label %lor.lhs.false.do.end48_crit_edge, label %lor.lhs.false43

lor.lhs.false.do.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %metromem_dma = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 5
  %30 = ptrtoint ptr %metromem_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %metromem_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool44.not = icmp eq i32 %31, 0
  br i1 %tobool44.not, label %lor.lhs.false43.do.end48_crit_edge, label %if.end50

lor.lhs.false43.do.end48_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %lor.lhs.false43.do.end48_crit_edge, %lor.lhs.false.do.end48_crit_edge, %if.end40.do.end48_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11) #11
  br label %err_csum_table

if.end50:                                         ; preds = %lor.lhs.false43
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %smem_start, align 4
  %call54 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.13, ptr noundef %dev2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #11
  br label %err_csum_table

if.end60:                                         ; preds = %if.end50
  %33 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %39 = ptrtoint ptr %metromem_wfm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %metromem_wfm, align 4
  %41 = ptrtoint ptr %info23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info23, align 4
  %dev1.i = getelementptr inbounds %struct.fb_info, ptr %42, i32 0, i32 22
  %43 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1.i, align 4
  %45 = load i32, ptr @user_wfm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.end60.if.end.i_crit_edge, label %if.then.i

if.end60.if.end.i_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dt, align 4
  %wfm_size.i = getelementptr [3 x %struct.epd_frame], ptr @epd_frame_table, i32 0, i32 %47, i32 3
  %48 = ptrtoint ptr %wfm_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %wfm_size.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end60.if.end.i_crit_edge
  %49 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dt, align 4
  %wfm_size4.i = getelementptr [3 x %struct.epd_frame], ptr @epd_frame_table, i32 0, i32 %50, i32 3
  %51 = ptrtoint ptr %wfm_size4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wfm_size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %38)
  %cmp.not.i = icmp eq i32 %52, %38
  br i1 %cmp.not.i, label %if.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %38, i32 noundef %52) #11
  br label %do.end66

if.end9.i:                                        ; preds = %if.end.i
  %fvsn.i = getelementptr %struct.waveform_hdr, ptr %36, i32 0, i32 2
  %53 = ptrtoint ptr %fvsn.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %fvsn.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp10.not.i = icmp eq i8 %54, 1
  br i1 %cmp10.not.i, label %if.end18.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.30, i32 noundef %conv.i) #11
  br label %do.end66

if.end18.i:                                       ; preds = %if.end9.i
  %luts.i = getelementptr %struct.waveform_hdr, ptr %36, i32 0, i32 3
  %55 = ptrtoint ptr %luts.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %luts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp20.not.i = icmp eq i8 %56, 0
  br i1 %cmp20.not.i, label %for.body.i.preheader.i, label %do.end25.i

for.body.i.preheader.i:                           ; preds = %if.end18.i
  %arrayidx.i.i = getelementptr i8, ptr %36, i32 32
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i.1.i = getelementptr i8, ptr %36, i32 33
  %59 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.1.i, align 1
  %arrayidx.i.2.i = getelementptr i8, ptr %36, i32 34
  %61 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.2.i, align 1
  %arrayidx.i.5.i = getelementptr i8, ptr %36, i32 37
  %63 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.5.i, align 1
  %arrayidx.i.6.i = getelementptr i8, ptr %36, i32 38
  %65 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.6.i, align 1
  %arrayidx.i.7.i = getelementptr i8, ptr %36, i32 39
  %67 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.7.i, align 1
  %arrayidx.i.8.i = getelementptr i8, ptr %36, i32 40
  %69 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.8.i, align 1
  %arrayidx.i.9.i = getelementptr i8, ptr %36, i32 41
  %71 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.9.i, align 1
  %arrayidx.i.10.i = getelementptr i8, ptr %36, i32 42
  %73 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.10.i, align 1
  %arrayidx.i.11.i = getelementptr i8, ptr %36, i32 43
  %75 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.11.i, align 1
  %arrayidx.i.12.i = getelementptr i8, ptr %36, i32 44
  %77 = ptrtoint ptr %arrayidx.i.12.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.12.i, align 1
  %arrayidx.i.13.i = getelementptr i8, ptr %36, i32 45
  %79 = ptrtoint ptr %arrayidx.i.13.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.13.i, align 1
  %arrayidx.i.14.i = getelementptr i8, ptr %36, i32 46
  %81 = ptrtoint ptr %arrayidx.i.14.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.14.i, align 1
  %add.i.2.i = add i8 %58, 1
  %add.i.3.i = add i8 %add.i.2.i, %60
  %add.i.4.i = add i8 %add.i.3.i, %62
  %add.i.5.i = add i8 %add.i.4.i, %64
  %add.i.6.i = add i8 %add.i.5.i, %66
  %add.i.7.i = add i8 %add.i.6.i, %68
  %add.i.8.i = add i8 %add.i.7.i, %70
  %add.i.9.i = add i8 %add.i.8.i, %72
  %add.i.10.i = add i8 %add.i.9.i, %74
  %add.i.11.i = add i8 %add.i.10.i, %76
  %add.i.12.i = add i8 %add.i.11.i, %78
  %add.i.13.i = add i8 %add.i.12.i, %80
  %add.i.14.i = add i8 %add.i.13.i, %82
  %wfm_cs.i = getelementptr inbounds %struct.waveform_hdr, ptr %36, i32 0, i32 11
  %83 = ptrtoint ptr %wfm_cs.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wfm_cs.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i.14.i, i8 %84)
  %cmp31.not.i = icmp eq i8 %add.i.14.i, %84
  br i1 %cmp31.not.i, label %if.end40.i, label %do.end36.i

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv19.i = zext i8 %56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.33, i32 noundef %conv19.i) #11
  br label %do.end66

do.end36.i:                                       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv30.i = zext i8 %84 to i32
  %conv29.i = zext i8 %add.i.14.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.36, i32 noundef %conv29.i, i32 noundef %conv30.i) #11
  br label %do.end66

if.end40.i:                                       ; preds = %for.body.i.preheader.i
  %add.i = add i8 %64, 1
  %85 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %add.i, ptr %arrayidx.i.5.i, align 1
  %add44.i = add i8 %66, 1
  %86 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %add44.i, ptr %arrayidx.i.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp49.not.i = icmp eq i8 %74, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp49.not.1.i = icmp eq i8 %76, 0
  %or.cond = select i1 %cmp49.not.i, i1 %cmp49.not.1.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp49.not.2.i = icmp eq i8 %78, 0
  %or.cond211 = select i1 %or.cond, i1 %cmp49.not.2.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp49.not.3.i = icmp eq i8 %80, 0
  %or.cond212 = select i1 %or.cond211, i1 %cmp49.not.3.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp49.not.4.i = icmp eq i8 %82, 0
  %or.cond213 = select i1 %or.cond212, i1 %cmp49.not.4.i, i1 false
  br i1 %or.cond213, label %for.cond.4.i, label %do.end54.i

for.cond.4.i:                                     ; preds = %if.end40.i
  %conv57.i = zext i8 %add44.i to i32
  %add58.i = add nuw nsw i32 %conv57.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.i, i32 %38)
  %cmp59.i = icmp ugt i32 %add58.i, %38
  br i1 %cmp59.i, label %for.cond.4.i.do.end66_crit_edge, label %for.body69.preheader.i

for.cond.4.i.do.end66_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

do.end54.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.39) #11
  br label %do.end66

for.body69.preheader.i:                           ; preds = %for.cond.4.i
  %87 = add nuw nsw i32 %conv57.i, 49
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.inc77.i.for.body69.i_crit_edge, %for.body69.preheader.i
  %i.146.i = phi i32 [ %inc78.i, %for.inc77.i.for.body69.i_crit_edge ], [ 48, %for.body69.preheader.i ]
  %arrayidx70.i = getelementptr i8, ptr %36, i32 %i.146.i
  %88 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %89)
  %cmp72.i = icmp ugt i8 %89, 31
  br i1 %cmp72.i, label %if.then74.i, label %for.inc77.i

if.then74.i:                                      ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub75.i = shl i32 %i.146.i, 2
  %phi.bo.i = add i32 %sub75.i, -196
  br label %for.end79.i

for.inc77.i:                                      ; preds = %for.body69.i
  %inc78.i = add nuw nsw i32 %i.146.i, 1
  %exitcond.i = icmp eq i32 %inc78.i, %87
  br i1 %exitcond.i, label %for.inc77.i.for.end79.i_crit_edge, label %for.inc77.i.for.body69.i_crit_edge

for.inc77.i.for.body69.i_crit_edge:               ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body69.i

for.inc77.i.for.end79.i_crit_edge:                ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end79.i

for.end79.i:                                      ; preds = %for.inc77.i.for.end79.i_crit_edge, %if.then74.i
  %trn.0.i = phi i32 [ %phi.bo.i, %if.then74.i ], [ 0, %for.inc77.i.for.end79.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %38)
  %cmp84.not.i = icmp ult i32 %87, %38
  br i1 %cmp84.not.i, label %for.end79.i.for.body.i7.i_crit_edge, label %for.end79.i.do.end66_crit_edge

for.end79.i.do.end66_crit_edge:                   ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

for.end79.i.for.body.i7.i_crit_edge:              ; preds = %for.end79.i
  br label %for.body.i7.i

for.body.i7.i:                                    ; preds = %for.body.i7.i.for.body.i7.i_crit_edge, %for.end79.i.for.body.i7.i_crit_edge
  %i.08.i1.i = phi i32 [ %inc.i5.i, %for.body.i7.i.for.body.i7.i_crit_edge ], [ 48, %for.end79.i.for.body.i7.i_crit_edge ]
  %tmp.07.i2.i = phi i8 [ %add.i4.i, %for.body.i7.i.for.body.i7.i_crit_edge ], [ 0, %for.end79.i.for.body.i7.i_crit_edge ]
  %arrayidx.i3.i = getelementptr i8, ptr %36, i32 %i.08.i1.i
  %90 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i3.i, align 1
  %add.i4.i = add i8 %91, %tmp.07.i2.i
  %inc.i5.i = add nuw nsw i32 %i.08.i1.i, 1
  %exitcond.not.i6.i = icmp eq i32 %inc.i5.i, %87
  br i1 %exitcond.not.i6.i, label %calc_cksum.exit8.i, label %for.body.i7.i.for.body.i7.i_crit_edge

for.body.i7.i.for.body.i7.i_crit_edge:            ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i7.i

calc_cksum.exit8.i:                               ; preds = %for.body.i7.i
  %arrayidx90.i = getelementptr i8, ptr %36, i32 %87
  %92 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx90.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i4.i, i8 %93)
  %cmp92.not.i = icmp eq i8 %add.i4.i, %93
  br i1 %cmp92.not.i, label %if.end101.i, label %do.end97.i

do.end97.i:                                       ; preds = %calc_cksum.exit8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv91.i = zext i8 %93 to i32
  %conv89.i = zext i8 %add.i4.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.42, i32 noundef %conv89.i, i32 noundef %conv91.i) #11
  br label %do.end66

if.end101.i:                                      ; preds = %calc_cksum.exit8.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx.i.i, align 1
  %96 = and i32 %95, -256
  %97 = call i32 @llvm.bswap.i32(i32 %96) #8
  %add106.i = add nuw nsw i32 %97, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.i, i32 %38)
  %cmp107.not.i = icmp ult i32 %add106.i, %38
  br i1 %cmp107.not.i, label %if.end110.i, label %if.end101.i.do.end66_crit_edge

if.end101.i.do.end66_crit_edge:                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end110.i:                                      ; preds = %if.end101.i
  %add105.i = add nuw nsw i32 %97, 12
  %arrayidx.i11.i = getelementptr i8, ptr %36, i32 %add105.i
  %98 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i11.i, align 1
  %inc.i13.i = add nuw nsw i32 %97, 13
  %arrayidx.i11.1.i = getelementptr i8, ptr %36, i32 %inc.i13.i
  %100 = ptrtoint ptr %arrayidx.i11.1.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i11.1.i, align 1
  %add.i12.1.i = add i8 %101, %99
  %inc.i13.1.i = add nuw nsw i32 %97, 14
  %arrayidx.i11.2.i = getelementptr i8, ptr %36, i32 %inc.i13.1.i
  %102 = ptrtoint ptr %arrayidx.i11.2.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i11.2.i, align 1
  %add.i12.2.i = add i8 %add.i12.1.i, %103
  %arrayidx114.i = getelementptr i8, ptr %36, i32 %add106.i
  %104 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx114.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i12.2.i, i8 %105)
  %cmp116.not.i = icmp eq i8 %add.i12.2.i, %105
  br i1 %cmp116.not.i, label %if.end125.i, label %do.end121.i

do.end121.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv115.i = zext i8 %105 to i32
  %conv113.i = zext i8 %add.i12.2.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.45, i32 noundef %conv113.i, i32 noundef %conv115.i) #11
  br label %do.end66

if.end125.i:                                      ; preds = %if.end110.i
  %add.ptr126.i = getelementptr i8, ptr %36, i32 %97
  %add.ptr128.i = getelementptr i8, ptr %add.ptr126.i, i32 12
  %106 = ptrtoint ptr %add.ptr128.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %add.ptr128.i, align 1
  %108 = and i32 %107, -256
  %109 = call i32 @llvm.bswap.i32(i32 %108) #8
  %add132.i = add i32 %109, %trn.0.i
  %add133.i = add i32 %add132.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add133.i, i32 %38)
  %cmp134.not.i = icmp ult i32 %add133.i, %38
  br i1 %cmp134.not.i, label %if.end137.i, label %if.end125.i.do.end66_crit_edge

if.end125.i.do.end66_crit_edge:                   ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end137.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483645, i32 %add132.i)
  %cmp6.i18.i = icmp slt i32 %add132.i, 2147483645
  br i1 %cmp6.i18.i, label %for.body.i25.preheader.i, label %if.end137.i.calc_cksum.exit27.i_crit_edge

if.end137.i.calc_cksum.exit27.i_crit_edge:        ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calc_cksum.exit27.i

for.body.i25.preheader.i:                         ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i21.i = getelementptr i8, ptr %36, i32 %add132.i
  %110 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i21.i, align 1
  %inc.i23.i = add nsw i32 %add132.i, 1
  %arrayidx.i21.1.i = getelementptr i8, ptr %36, i32 %inc.i23.i
  %112 = ptrtoint ptr %arrayidx.i21.1.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i21.1.i, align 1
  %add.i22.1.i = add i8 %113, %111
  %inc.i23.1.i = add nsw i32 %add132.i, 2
  %arrayidx.i21.2.i = getelementptr i8, ptr %36, i32 %inc.i23.1.i
  %114 = ptrtoint ptr %arrayidx.i21.2.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i21.2.i, align 1
  %add.i22.2.i = add i8 %add.i22.1.i, %115
  br label %calc_cksum.exit27.i

calc_cksum.exit27.i:                              ; preds = %for.body.i25.preheader.i, %if.end137.i.calc_cksum.exit27.i_crit_edge
  %tmp.0.lcssa.i26.i = phi i8 [ 0, %if.end137.i.calc_cksum.exit27.i_crit_edge ], [ %add.i22.2.i, %for.body.i25.preheader.i ]
  %arrayidx141.i = getelementptr i8, ptr %36, i32 %add133.i
  %116 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx141.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp.0.lcssa.i26.i, i8 %117)
  %cmp143.not.i = icmp eq i8 %tmp.0.lcssa.i26.i, %117
  br i1 %cmp143.not.i, label %if.end152.i, label %do.end148.i

do.end148.i:                                      ; preds = %calc_cksum.exit27.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv142.i = zext i8 %117 to i32
  %conv140.i = zext i8 %tmp.0.lcssa.i26.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.48, i32 noundef %conv140.i, i32 noundef %conv142.i) #11
  br label %do.end66

if.end152.i:                                      ; preds = %calc_cksum.exit27.i
  %add.ptr153.i = getelementptr i8, ptr %36, i32 %109
  %add.ptr155.i = getelementptr i8, ptr %add.ptr153.i, i32 %trn.0.i
  %118 = ptrtoint ptr %add.ptr155.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %add.ptr155.i, align 1
  %120 = and i32 %119, -256
  %121 = call i32 @llvm.bswap.i32(i32 %120) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %38)
  %cmp158.not.i = icmp ult i32 %121, %38
  br i1 %cmp158.not.i, label %if.end152.i.while.body.i_crit_edge, label %if.end152.i.do.end66_crit_edge

if.end152.i.do.end66_crit_edge:                   ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end152.i.while.body.i_crit_edge:               ; preds = %if.end152.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end152.i.while.body.i_crit_edge
  %mem_idx.059.i = phi i32 [ %mem_idx.3.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.end152.i.while.body.i_crit_edge ]
  %wfm_idx.058.i = phi i32 [ %wfm_idx.2.i, %cleanup.i.while.body.i_crit_edge ], [ %121, %if.end152.i.while.body.i_crit_edge ]
  %inc164.i = add nuw i32 %wfm_idx.058.i, 1
  %arrayidx165.i = getelementptr i8, ptr %36, i32 %wfm_idx.058.i
  %122 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx165.i, align 1
  %124 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %125)
  %cmp168.i = icmp eq i8 %123, %125
  br i1 %cmp168.i, label %while.cond171.preheader.i, label %if.end184.i

while.cond171.preheader.i:                        ; preds = %while.body.i
  %inc17249.i = add i32 %wfm_idx.058.i, 2
  %arrayidx17350.i = getelementptr i8, ptr %36, i32 %inc164.i
  %126 = ptrtoint ptr %arrayidx17350.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx17350.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %123)
  %cmp177.not51.i = icmp ne i8 %127, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17249.i, i32 %38)
  %cmp17952.i = icmp ult i32 %inc17249.i, %38
  %or.cond53.i = select i1 %cmp177.not51.i, i1 %cmp17952.i, i1 false
  br i1 %or.cond53.i, label %while.cond171.preheader.i.while.body181.i_crit_edge, label %while.cond171.preheader.i.cleanup.i_crit_edge

while.cond171.preheader.i.cleanup.i_crit_edge:    ; preds = %while.cond171.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

while.cond171.preheader.i.while.body181.i_crit_edge: ; preds = %while.cond171.preheader.i
  br label %while.body181.i

while.body181.i:                                  ; preds = %while.body181.i.while.body181.i_crit_edge, %while.cond171.preheader.i.while.body181.i_crit_edge
  %128 = phi i8 [ %131, %while.body181.i.while.body181.i_crit_edge ], [ %127, %while.cond171.preheader.i.while.body181.i_crit_edge ]
  %inc17255.i = phi i32 [ %inc172.i, %while.body181.i.while.body181.i_crit_edge ], [ %inc17249.i, %while.cond171.preheader.i.while.body181.i_crit_edge ]
  %mem_idx.154.i = phi i32 [ %inc182.i, %while.body181.i.while.body181.i_crit_edge ], [ %mem_idx.059.i, %while.cond171.preheader.i.while.body181.i_crit_edge ]
  %inc182.i = add i32 %mem_idx.154.i, 1
  %arrayidx183.i = getelementptr i8, ptr %40, i32 %mem_idx.154.i
  %129 = ptrtoint ptr %arrayidx183.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx183.i, align 1
  %inc172.i = add nuw i32 %inc17255.i, 1
  %arrayidx173.i = getelementptr i8, ptr %36, i32 %inc17255.i
  %130 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx173.i, align 1
  %132 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp177.not.i = icmp ne i8 %131, %133
  call void @__sanitizer_cov_trace_cmp4(i32 %inc172.i, i32 %38)
  %cmp179.i = icmp ult i32 %inc172.i, %38
  %or.cond.i = select i1 %cmp177.not.i, i1 %cmp179.i, i1 false
  br i1 %or.cond.i, label %while.body181.i.while.body181.i_crit_edge, label %while.body181.i.cleanup.i_crit_edge

while.body181.i.cleanup.i_crit_edge:              ; preds = %while.body181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

while.body181.i.while.body181.i_crit_edge:        ; preds = %while.body181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body181.i

if.end184.i:                                      ; preds = %while.body.i
  %134 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %123, i8 %135)
  %cmp187.i = icmp eq i8 %123, %135
  br i1 %cmp187.i, label %if.end184.i.while.end203.i_crit_edge, label %if.end190.i

if.end184.i.while.end203.i_crit_edge:             ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end203.i

if.end190.i:                                      ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx192.i = getelementptr i8, ptr %36, i32 %inc164.i
  %136 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx192.i, align 1
  %conv194.i = zext i8 %137 to i32
  %uglygep.i = getelementptr i8, ptr %40, i32 %mem_idx.059.i
  %138 = add nuw nsw i32 %conv194.i, 1
  %139 = zext i8 %123 to i32
  %140 = call ptr @memset(ptr %uglygep.i, i32 %139, i32 %138)
  %inc191.i = add i32 %wfm_idx.058.i, 2
  %141 = add i32 %138, %mem_idx.059.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end190.i, %while.body181.i.cleanup.i_crit_edge, %while.cond171.preheader.i.cleanup.i_crit_edge
  %wfm_idx.2.i = phi i32 [ %inc17249.i, %while.cond171.preheader.i.cleanup.i_crit_edge ], [ %inc191.i, %if.end190.i ], [ %inc172.i, %while.body181.i.cleanup.i_crit_edge ]
  %mem_idx.3.i = phi i32 [ %mem_idx.059.i, %while.cond171.preheader.i.cleanup.i_crit_edge ], [ %141, %if.end190.i ], [ %inc182.i, %while.body181.i.cleanup.i_crit_edge ]
  %cmp162.i = icmp ult i32 %wfm_idx.2.i, %38
  br i1 %cmp162.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end203.i_crit_edge

cleanup.i.while.end203.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end203.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end203.i:                                   ; preds = %cleanup.i.while.end203.i_crit_edge, %if.end184.i.while.end203.i_crit_edge
  %mem_idx.0.lcssa.i = phi i32 [ %mem_idx.059.i, %if.end184.i.while.end203.i_crit_edge ], [ %mem_idx.3.i, %cleanup.i.while.end203.i_crit_edge ]
  %wfm_idx.3.i = phi i32 [ %inc164.i, %if.end184.i.while.end203.i_crit_edge ], [ %wfm_idx.2.i, %cleanup.i.while.end203.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %wfm_idx.3.i, i32 %38)
  %cmp204.not.i = icmp ult i32 %wfm_idx.3.i, %38
  br i1 %cmp204.not.i, label %if.end207.i, label %while.end203.i.do.end66_crit_edge

while.end203.i.do.end66_crit_edge:                ; preds = %while.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end207.i:                                      ; preds = %while.end203.i
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %wfm_idx.3.i)
  %cmp6.i28.i = icmp slt i32 %121, %wfm_idx.3.i
  br i1 %cmp6.i28.i, label %if.end207.i.for.body.i35.i_crit_edge, label %if.end207.i.calc_cksum.exit37.i_crit_edge

if.end207.i.calc_cksum.exit37.i_crit_edge:        ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calc_cksum.exit37.i

if.end207.i.for.body.i35.i_crit_edge:             ; preds = %if.end207.i
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.body.i35.i.for.body.i35.i_crit_edge, %if.end207.i.for.body.i35.i_crit_edge
  %i.08.i29.i = phi i32 [ %inc.i33.i, %for.body.i35.i.for.body.i35.i_crit_edge ], [ %121, %if.end207.i.for.body.i35.i_crit_edge ]
  %tmp.07.i30.i = phi i8 [ %add.i32.i, %for.body.i35.i.for.body.i35.i_crit_edge ], [ 0, %if.end207.i.for.body.i35.i_crit_edge ]
  %arrayidx.i31.i = getelementptr i8, ptr %36, i32 %i.08.i29.i
  %142 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i31.i, align 1
  %add.i32.i = add i8 %143, %tmp.07.i30.i
  %inc.i33.i = add nuw nsw i32 %i.08.i29.i, 1
  %exitcond.not.i34.i = icmp eq i32 %inc.i33.i, %wfm_idx.3.i
  br i1 %exitcond.not.i34.i, label %for.body.i35.i.calc_cksum.exit37.i_crit_edge, label %for.body.i35.i.for.body.i35.i_crit_edge

for.body.i35.i.for.body.i35.i_crit_edge:          ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i35.i

for.body.i35.i.calc_cksum.exit37.i_crit_edge:     ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %calc_cksum.exit37.i

calc_cksum.exit37.i:                              ; preds = %for.body.i35.i.calc_cksum.exit37.i_crit_edge, %if.end207.i.calc_cksum.exit37.i_crit_edge
  %tmp.0.lcssa.i36.i = phi i8 [ 0, %if.end207.i.calc_cksum.exit37.i_crit_edge ], [ %add.i32.i, %for.body.i35.i.calc_cksum.exit37.i_crit_edge ]
  %arrayidx210.i = getelementptr i8, ptr %36, i32 %wfm_idx.3.i
  %144 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx210.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %tmp.0.lcssa.i36.i, i8 %145)
  %cmp212.not.i = icmp eq i8 %tmp.0.lcssa.i36.i, %145
  br i1 %cmp212.not.i, label %if.end68, label %do.end217.i

do.end217.i:                                      ; preds = %calc_cksum.exit37.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv211.i = zext i8 %145 to i32
  %conv209.i = zext i8 %tmp.0.lcssa.i36.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.51, i32 noundef %conv209.i, i32 noundef %conv211.i) #11
  br label %do.end66

do.end66:                                         ; preds = %do.end217.i, %while.end203.i.do.end66_crit_edge, %if.end152.i.do.end66_crit_edge, %do.end148.i, %if.end125.i.do.end66_crit_edge, %do.end121.i, %if.end101.i.do.end66_crit_edge, %do.end97.i, %for.end79.i.do.end66_crit_edge, %do.end54.i, %for.cond.4.i.do.end66_crit_edge, %do.end36.i, %do.end25.i, %do.end15.i, %do.end.i
  %146 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %147) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18) #11
  br label %err_csum_table

if.end68:                                         ; preds = %calc_cksum.exit37.i
  %div.i = sdiv i32 %mem_idx.0.lcssa.i, 64
  %conv222.i = trunc i32 %div.i to i8
  %frame_count.i = getelementptr inbounds %struct.metronomefb_par, ptr %19, i32 0, i32 9
  %148 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv222.i, ptr %frame_count.i, align 4
  %149 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %150) #8
  %setup_irq = getelementptr inbounds %struct.metronome_board, ptr %2, i32 0, i32 6
  %151 = ptrtoint ptr %setup_irq to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %setup_irq, align 4
  %call69 = call i32 %152(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_csum_table_crit_edge

if.end68.err_csum_table_crit_edge:                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_csum_table

if.end72:                                         ; preds = %if.end68
  %call73 = call fastcc i32 @metronome_init_regs(ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.err_free_irq_crit_edge, label %if.end76

if.end72.err_free_irq_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end76:                                         ; preds = %if.end72
  %flags = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 2
  %153 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 4, ptr %flags, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 19
  %154 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @metronomefb_defio, ptr %fbdefio, align 4
  call void @fb_deferred_io_init(ptr noundef nonnull %call6) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12
  %call77 = call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 8, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end82, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end76
  %red = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 2
  %155 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %red, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 4095, ptr %156, align 2
  %158 = load ptr, ptr %red, align 4
  %arrayidx91.1 = getelementptr i16, ptr %158, i32 1
  %159 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 12287, ptr %arrayidx91.1, align 2
  %160 = load ptr, ptr %red, align 4
  %arrayidx91.2 = getelementptr i16, ptr %160, i32 2
  %161 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 20479, ptr %arrayidx91.2, align 2
  %162 = load ptr, ptr %red, align 4
  %arrayidx91.3 = getelementptr i16, ptr %162, i32 3
  %163 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 28671, ptr %arrayidx91.3, align 2
  %164 = load ptr, ptr %red, align 4
  %arrayidx91.4 = getelementptr i16, ptr %164, i32 4
  %165 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -28673, ptr %arrayidx91.4, align 2
  %166 = load ptr, ptr %red, align 4
  %arrayidx91.5 = getelementptr i16, ptr %166, i32 5
  %167 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -20481, ptr %arrayidx91.5, align 2
  %168 = load ptr, ptr %red, align 4
  %arrayidx91.6 = getelementptr i16, ptr %168, i32 6
  %169 = ptrtoint ptr %arrayidx91.6 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -12289, ptr %arrayidx91.6, align 2
  %170 = load ptr, ptr %red, align 4
  %arrayidx91.7 = getelementptr i16, ptr %170, i32 7
  %171 = ptrtoint ptr %arrayidx91.7 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -4097, ptr %arrayidx91.7, align 2
  %green = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 3
  %172 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %green, align 4
  %174 = load ptr, ptr %red, align 4
  %175 = call ptr @memcpy(ptr %173, ptr %174, i32 16)
  %blue = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 4
  %176 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %blue, align 4
  %178 = load ptr, ptr %red, align 4
  %179 = call ptr @memcpy(ptr %177, ptr %178, i32 16)
  %call98 = call i32 @register_framebuffer(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %err_cmap, label %if.end102

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #11
  br label %err_free_irq

if.end102:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %180 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call6, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @metronomefb_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@metronomefb_probe, %if.then108)) #8
          to label %cleanup116 [label %if.then108], !srcloc !129

if.then108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 1
  %181 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %node, align 4
  %shr = ashr i32 %add, 10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @metronomefb_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %182, i32 noundef %shr) #8
  br label %cleanup116

err_cmap:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_cmap, %do.end82, %if.end72.err_free_irq_crit_edge
  %retval1.0 = phi i32 [ %call73, %if.end72.err_free_irq_crit_edge ], [ %call77, %do.end82 ], [ %call98, %err_cmap ]
  %cleanup = getelementptr inbounds %struct.metronome_board, ptr %2, i32 0, i32 3
  %183 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cleanup, align 4
  call void %184(ptr noundef %19) #8
  br label %err_csum_table

err_csum_table:                                   ; preds = %err_free_irq, %if.end68.err_csum_table_crit_edge, %do.end66, %do.end58, %do.end48, %do.end38
  %retval1.1 = phi i32 [ %call33, %do.end38 ], [ %call54, %do.end58 ], [ -22, %do.end66 ], [ %call69, %if.end68.err_csum_table_crit_edge ], [ %retval1.0, %err_free_irq ], [ -22, %do.end48 ]
  %185 = ptrtoint ptr %csum_table to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %csum_table, align 4
  call void @vfree(ptr noundef %186) #8
  br label %err_vfree

err_vfree:                                        ; preds = %err_csum_table, %if.end20.err_vfree_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_csum_table ], [ -12, %if.end20.err_vfree_crit_edge ]
  call void @vfree(ptr noundef nonnull %call17) #8
  br label %err_fb_rel

err_fb_rel:                                       ; preds = %err_vfree, %sw.epilog.err_fb_rel_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %err_vfree ], [ -12, %sw.epilog.err_fb_rel_crit_edge ]
  call void @framebuffer_release(ptr noundef nonnull %call6) #8
  br label %err

err:                                              ; preds = %err_fb_rel, %if.end4.err_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %err_fb_rel ], [ -12, %if.end4.err_crit_edge ]
  %187 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %2, align 4
  call void @module_put(ptr noundef %188) #8
  br label %cleanup116

cleanup116:                                       ; preds = %err, %if.then108, %if.end102, %if.end.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  %retval.0 = phi i32 [ %retval1.4, %err ], [ -22, %entry.cleanup116_crit_edge ], [ -19, %if.end.cleanup116_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metronomefb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  tail call void @fb_deferred_io_cleanup(ptr noundef nonnull %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %board = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %cleanup = getelementptr inbounds %struct.metronome_board, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup, align 4
  tail call void %7(ptr noundef %3) #8
  %csum_table = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %csum_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csum_table, align 4
  tail call void @vfree(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @vfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %16) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @metronomefb_remove.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@metronomefb_remove, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !129

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @metronomefb_remove.__UNIQUE_ID_ddebug304, ptr noundef %dev8, ptr noundef nonnull @.str.54) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @metronome_init_regs(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.metronomefb_par, ptr %par, i32 0, i32 7
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %setup_io = getelementptr inbounds %struct.metronome_board, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %setup_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup_io, align 4
  %call = tail call i32 %3(ptr noundef %par) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4660, ptr %5, align 2
  %7 = load ptr, ptr %par, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %arrayidx.i = getelementptr %struct.metromem_cmd, ptr %7, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1024, ptr %arrayidx.i, align 2
  %11 = load ptr, ptr %par, align 4
  %arrayidx6.i = getelementptr %struct.metromem_cmd, ptr %11, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx6.i, align 2
  %add.i = add i16 %13, %9
  %arrayidx.1.i = getelementptr %struct.metromem_cmd, ptr %11, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1024, ptr %arrayidx.1.i, align 2
  %15 = load ptr, ptr %par, align 4
  %arrayidx6.1.i = getelementptr %struct.metromem_cmd, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx6.1.i, align 2
  %add.1.i = add i16 %add.i, %17
  %arrayidx.2.i = getelementptr %struct.metromem_cmd, ptr %15, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1024, ptr %arrayidx.2.i, align 2
  %19 = load ptr, ptr %par, align 4
  %arrayidx6.2.i = getelementptr %struct.metromem_cmd, ptr %19, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx6.2.i, align 2
  %add.2.i = add i16 %add.1.i, %21
  %arrayidx11.i = getelementptr %struct.metromem_cmd, ptr %19, i32 0, i32 1, i32 3
  %22 = call ptr @memset(ptr %arrayidx11.i, i32 0, i32 56)
  %23 = load ptr, ptr %par, align 4
  %csum.i = getelementptr inbounds %struct.metromem_cmd, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %csum.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add.2.i, ptr %csum.i, align 2
  tail call void @msleep(i32 noundef 1) #8
  %25 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board, align 4
  %set_rst.i = getelementptr inbounds %struct.metronome_board, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %set_rst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_rst.i, align 4
  tail call void %28(ptr noundef %par, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 1) #8
  %29 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board, align 4
  %set_stdby.i = getelementptr inbounds %struct.metronome_board, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %set_stdby.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_stdby.i, align 4
  tail call void %32(ptr noundef %par, i32 noundef 1) #8
  %33 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %board, align 4
  %met_wait_event.i = getelementptr inbounds %struct.metronome_board, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %met_wait_event.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %met_wait_event.i, align 4
  %call.i = tail call i32 %36(ptr noundef %par) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %37 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %par, align 4
  %args.i = getelementptr inbounds %struct.metromem_cmd, ptr %38, i32 0, i32 1
  %dt.i = getelementptr inbounds %struct.metronomefb_par, ptr %par, i32 0, i32 11
  %39 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dt.i, align 4
  %config.i = getelementptr [3 x %struct.epd_frame], ptr @epd_frame_table, i32 0, i32 %40, i32 2
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %config.i, align 4
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %args.i, align 2
  %44 = load ptr, ptr %par, align 4
  %arrayidx4.i = getelementptr %struct.metromem_cmd, ptr %44, i32 0, i32 1, i32 4
  %45 = call ptr @memset(ptr %arrayidx4.i, i32 0, i32 54)
  %46 = load ptr, ptr %par, align 4
  %csum.i20 = getelementptr inbounds %struct.metromem_cmd, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %csum.i20 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -13296, ptr %csum.i20, align 2
  %48 = load ptr, ptr %par, align 4
  %args7.i = getelementptr inbounds %struct.metromem_cmd, ptr %48, i32 0, i32 1
  %incdec.ptr.i.i = getelementptr %struct.metromem_cmd, ptr %48, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %args7.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %args7.i, align 2
  %incdec.ptr.i.1.i = getelementptr %struct.metromem_cmd, ptr %48, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %incdec.ptr.i.i, align 2
  %add.i.1.i = add i16 %52, %50
  %incdec.ptr.i.2.i = getelementptr %struct.metromem_cmd, ptr %48, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %incdec.ptr.i.1.i, align 2
  %add.i.2.i = add i16 %add.i.1.i, %54
  %55 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %incdec.ptr.i.2.i, align 2
  %add.i.3.i = add i16 %add.i.2.i, %56
  %csum10.i = getelementptr inbounds %struct.metromem_cmd, ptr %48, i32 0, i32 2
  %57 = ptrtoint ptr %csum10.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %csum10.i, align 2
  %add.i21 = add i16 %add.i.3.i, %58
  store i16 %add.i21, ptr %csum10.i, align 2
  %59 = load ptr, ptr %par, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -13296, ptr %59, align 2
  %61 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %board, align 4
  %met_wait_event.i23 = getelementptr inbounds %struct.metronome_board, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %met_wait_event.i23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %met_wait_event.i23, align 4
  %call14.i = tail call i32 %64(ptr noundef %par) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool6.not = icmp eq i32 %call14.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %par, align 4
  %args.i24 = getelementptr inbounds %struct.metromem_cmd, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %args.i24 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %args.i24, align 2
  %68 = load ptr, ptr %par, align 4
  %args2.i = getelementptr inbounds %struct.metromem_cmd, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %args2.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %args2.i, align 2
  %add.i25 = add i16 %70, -13280
  %add.ptr.i = getelementptr %struct.metromem_cmd, ptr %68, i32 0, i32 1, i32 1
  %71 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 62)
  %72 = load ptr, ptr %par, align 4
  %csum.i26 = getelementptr inbounds %struct.metromem_cmd, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %csum.i26 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add.i25, ptr %csum.i26, align 2
  %74 = load ptr, ptr %par, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -13280, ptr %74, align 2
  %76 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board, align 4
  %met_wait_event.i28 = getelementptr inbounds %struct.metronome_board, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %met_wait_event.i28 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %met_wait_event.i28, align 4
  %call.i29 = tail call i32 %79(ptr noundef %par) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call14.i, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metronomefb_write(ptr nocapture noundef readonly %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %3 to i32
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3 = icmp ult i32 %7, %conv
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %count)
  %cmp7 = icmp ult i32 %7, %count
  %spec.store.select = select i1 %cmp7, i32 -27, i32 -28
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %count)
  %err.0 = select i1 %cmp7, i32 -27, i32 0
  %add = add i32 %8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp11 = icmp ugt i32 %add, %7
  %sub = sub i32 %7, %conv
  %count.addr.1 = select i1 %cmp11, i32 %sub, i32 %8
  %err.1 = select i1 %cmp11, i32 %spec.store.select, i32 %err.0
  %9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %cmp9.i.i = icmp slt i32 %count.addr.1, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end6
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.end24_crit_edge, label %if.then27.i.i, !prof !130

land.rhs16.i.i.if.end24_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %if.end24

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.1, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.1, i32 -1226833920) #13, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !130

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count.addr.1) #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !132
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.addr.1) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count.addr.1, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count.addr.1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %copy_from_user.exit, label %if.then11.i.i, !prof !130

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %count.addr.1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.end24

copy_from_user.exit:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool20.not = icmp eq i32 %err.1, 0
  br i1 %tobool20.not, label %if.then21, label %copy_from_user.exit.if.end24_crit_edge

copy_from_user.exit.if.end24_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i32 %count.addr.1 to i64
  %17 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ppos, align 8
  %add23 = add i64 %18, %conv22
  store i64 %add23, ptr %ppos, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %copy_from_user.exit.if.end24_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.end24_crit_edge
  %tobool20.not56 = phi i1 [ true, %if.then21 ], [ false, %copy_from_user.exit.if.end24_crit_edge ], [ false, %land.rhs16.i.i.if.end24_crit_edge ], [ false, %if.then27.i.i ], [ false, %if.then11.i.i ]
  %19 = phi i32 [ 0, %if.then21 ], [ %err.1, %copy_from_user.exit.if.end24_crit_edge ], [ -14, %land.rhs16.i.i.if.end24_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i ]
  %info.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info.i, align 4
  %22 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 25
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smem_len.i, align 4
  %metromem_img.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %metromem_img.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %metromem_img.i, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %24, i32 %26)
  %30 = load ptr, ptr %metromem_img.i, align 4
  %div.i = sdiv i32 %26, 2
  %.off.i = add i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %31 = icmp ult i32 %.off.i, 3
  br i1 %31, label %if.end24.metronomefb_dpy_update.exit_crit_edge, label %if.end24.while.body.i.i_crit_edge

if.end24.while.body.i.i_crit_edge:                ; preds = %if.end24
  br label %while.body.i.i

if.end24.metronomefb_dpy_update.exit_crit_edge:   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end24.while.body.i.i_crit_edge
  %tmp.07.i.i = phi i16 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end24.while.body.i.i_crit_edge ]
  %length.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i, %if.end24.while.body.i.i_crit_edge ]
  %start.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %30, %if.end24.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %length.addr.06.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %start.addr.05.i.i, i32 1
  %32 = ptrtoint ptr %start.addr.05.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %start.addr.05.i.i, align 2
  %add.i.i = add i16 %33, %tmp.07.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.metronomefb_dpy_update.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

metronomefb_dpy_update.exit:                      ; preds = %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, %if.end24.metronomefb_dpy_update.exit_crit_edge
  %tmp.0.lcssa.i.i = phi i16 [ 0, %if.end24.metronomefb_dpy_update.exit_crit_edge ], [ %add.i.i, %while.body.i.i.metronomefb_dpy_update.exit_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %30, i32 %div.i
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %tmp.0.lcssa.i.i, ptr %add.ptr.i, align 2
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13248, i16 %38)
  %cmp.i.i48 = icmp eq i16 %38, -13248
  %..i.i = select i1 %cmp.i.i48, i16 -13247, i16 -13248
  %39 = load i8, ptr @metronome_display_cmd.borderval, align 1
  %inc.i.i = add i8 %39, 1
  store i8 %inc.i.i, ptr @metronome_display_cmd.borderval, align 1
  %40 = shl i8 %39, 4
  %41 = and i8 %40, 48
  %42 = or i8 %41, 8
  %or.i.i = zext i8 %42 to i16
  %frame_count.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %frame_count.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %frame_count.i.i, align 4
  %conv4.i.i = zext i8 %44 to i16
  %sub.i.i49 = shl nuw i16 %conv4.i.i, 8
  %shl5.i.i = add i16 %sub.i.i49, -256
  %or6.i.i = or i16 %shl5.i.i, %or.i.i
  %args.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %or6.i.i, ptr %args.i.i, align 2
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %args10.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %args10.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %args10.i.i, align 2
  %add.i13.i = add i16 %49, %..i.i
  %add.ptr.i.i50 = getelementptr %struct.metromem_cmd, ptr %47, i32 0, i32 1, i32 1
  %50 = call ptr @memset(ptr %add.ptr.i.i50, i32 0, i32 62)
  %51 = load ptr, ptr %1, align 4
  %csum.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %add.i13.i, ptr %csum.i.i, align 2
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %..i.i, ptr %53, align 2
  %board.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board.i.i, align 4
  %met_wait_event_intr.i.i = getelementptr inbounds %struct.metronome_board, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %met_wait_event_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %met_wait_event_intr.i.i, align 4
  %call.i.i51 = tail call i32 %58(ptr noundef %1) #8
  %count.addr.1.err.2 = select i1 %tobool20.not56, i32 %count.addr.1, i32 %19
  br label %cleanup

cleanup:                                          ; preds = %metronomefb_dpy_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1.err.2, %metronomefb_dpy_update.exit ], [ -1, %entry.cleanup_crit_edge ], [ -27, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metronomefb_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #8
  %info.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_len.i, align 4
  %metromem_img.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %metromem_img.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %metromem_img.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %6, i32 %8)
  %12 = load ptr, ptr %metromem_img.i, align 4
  %div.i = sdiv i32 %8, 2
  %.off.i = add i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %13 = icmp ult i32 %.off.i, 3
  br i1 %13, label %entry.metronomefb_dpy_update.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.metronomefb_dpy_update.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %tmp.07.i.i = phi i16 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %length.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i, %entry.while.body.i.i_crit_edge ]
  %start.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %12, %entry.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %length.addr.06.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %start.addr.05.i.i, i32 1
  %14 = ptrtoint ptr %start.addr.05.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start.addr.05.i.i, align 2
  %add.i.i = add i16 %15, %tmp.07.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.metronomefb_dpy_update.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

metronomefb_dpy_update.exit:                      ; preds = %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, %entry.metronomefb_dpy_update.exit_crit_edge
  %tmp.0.lcssa.i.i = phi i16 [ 0, %entry.metronomefb_dpy_update.exit_crit_edge ], [ %add.i.i, %while.body.i.i.metronomefb_dpy_update.exit_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %12, i32 %div.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %tmp.0.lcssa.i.i, ptr %add.ptr.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13248, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -13248
  %..i.i = select i1 %cmp.i.i, i16 -13247, i16 -13248
  %21 = load i8, ptr @metronome_display_cmd.borderval, align 1
  %inc.i.i = add i8 %21, 1
  store i8 %inc.i.i, ptr @metronome_display_cmd.borderval, align 1
  %22 = shl i8 %21, 4
  %23 = and i8 %22, 48
  %24 = or i8 %23, 8
  %or.i.i = zext i8 %24 to i16
  %frame_count.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %frame_count.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frame_count.i.i, align 4
  %conv4.i.i = zext i8 %26 to i16
  %sub.i.i = shl nuw i16 %conv4.i.i, 8
  %shl5.i.i = add i16 %sub.i.i, -256
  %or6.i.i = or i16 %shl5.i.i, %or.i.i
  %args.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or6.i.i, ptr %args.i.i, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %args10.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %args10.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %args10.i.i, align 2
  %add.i13.i = add i16 %31, %..i.i
  %add.ptr.i.i = getelementptr %struct.metromem_cmd, ptr %29, i32 0, i32 1, i32 1
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 62)
  %33 = load ptr, ptr %1, align 4
  %csum.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add.i13.i, ptr %csum.i.i, align 2
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %..i.i, ptr %35, align 2
  %board.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board.i.i, align 4
  %met_wait_event_intr.i.i = getelementptr inbounds %struct.metronome_board, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %met_wait_event_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %met_wait_event_intr.i.i, align 4
  %call.i.i = tail call i32 %40(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metronomefb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #8
  %info.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_len.i, align 4
  %metromem_img.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %metromem_img.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %metromem_img.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %6, i32 %8)
  %12 = load ptr, ptr %metromem_img.i, align 4
  %div.i = sdiv i32 %8, 2
  %.off.i = add i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %13 = icmp ult i32 %.off.i, 3
  br i1 %13, label %entry.metronomefb_dpy_update.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.metronomefb_dpy_update.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %tmp.07.i.i = phi i16 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %length.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i, %entry.while.body.i.i_crit_edge ]
  %start.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %12, %entry.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %length.addr.06.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %start.addr.05.i.i, i32 1
  %14 = ptrtoint ptr %start.addr.05.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start.addr.05.i.i, align 2
  %add.i.i = add i16 %15, %tmp.07.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.metronomefb_dpy_update.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

metronomefb_dpy_update.exit:                      ; preds = %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, %entry.metronomefb_dpy_update.exit_crit_edge
  %tmp.0.lcssa.i.i = phi i16 [ 0, %entry.metronomefb_dpy_update.exit_crit_edge ], [ %add.i.i, %while.body.i.i.metronomefb_dpy_update.exit_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %12, i32 %div.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %tmp.0.lcssa.i.i, ptr %add.ptr.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13248, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -13248
  %..i.i = select i1 %cmp.i.i, i16 -13247, i16 -13248
  %21 = load i8, ptr @metronome_display_cmd.borderval, align 1
  %inc.i.i = add i8 %21, 1
  store i8 %inc.i.i, ptr @metronome_display_cmd.borderval, align 1
  %22 = shl i8 %21, 4
  %23 = and i8 %22, 48
  %24 = or i8 %23, 8
  %or.i.i = zext i8 %24 to i16
  %frame_count.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %frame_count.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frame_count.i.i, align 4
  %conv4.i.i = zext i8 %26 to i16
  %sub.i.i = shl nuw i16 %conv4.i.i, 8
  %shl5.i.i = add i16 %sub.i.i, -256
  %or6.i.i = or i16 %shl5.i.i, %or.i.i
  %args.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or6.i.i, ptr %args.i.i, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %args10.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %args10.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %args10.i.i, align 2
  %add.i13.i = add i16 %31, %..i.i
  %add.ptr.i.i = getelementptr %struct.metromem_cmd, ptr %29, i32 0, i32 1, i32 1
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 62)
  %33 = load ptr, ptr %1, align 4
  %csum.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add.i13.i, ptr %csum.i.i, align 2
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %..i.i, ptr %35, align 2
  %board.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board.i.i, align 4
  %met_wait_event_intr.i.i = getelementptr inbounds %struct.metronome_board, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %met_wait_event_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %met_wait_event_intr.i.i, align 4
  %call.i.i = tail call i32 %40(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metronomefb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #8
  %info.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_len.i, align 4
  %metromem_img.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %metromem_img.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %metromem_img.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %6, i32 %8)
  %12 = load ptr, ptr %metromem_img.i, align 4
  %div.i = sdiv i32 %8, 2
  %.off.i = add i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %13 = icmp ult i32 %.off.i, 3
  br i1 %13, label %entry.metronomefb_dpy_update.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.metronomefb_dpy_update.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %tmp.07.i.i = phi i16 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %length.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i, %entry.while.body.i.i_crit_edge ]
  %start.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %12, %entry.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %length.addr.06.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %start.addr.05.i.i, i32 1
  %14 = ptrtoint ptr %start.addr.05.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start.addr.05.i.i, align 2
  %add.i.i = add i16 %15, %tmp.07.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.metronomefb_dpy_update.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %metronomefb_dpy_update.exit

metronomefb_dpy_update.exit:                      ; preds = %while.body.i.i.metronomefb_dpy_update.exit_crit_edge, %entry.metronomefb_dpy_update.exit_crit_edge
  %tmp.0.lcssa.i.i = phi i16 [ 0, %entry.metronomefb_dpy_update.exit_crit_edge ], [ %add.i.i, %while.body.i.i.metronomefb_dpy_update.exit_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %12, i32 %div.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %tmp.0.lcssa.i.i, ptr %add.ptr.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13248, i16 %20)
  %cmp.i.i = icmp eq i16 %20, -13248
  %..i.i = select i1 %cmp.i.i, i16 -13247, i16 -13248
  %21 = load i8, ptr @metronome_display_cmd.borderval, align 1
  %inc.i.i = add i8 %21, 1
  store i8 %inc.i.i, ptr @metronome_display_cmd.borderval, align 1
  %22 = shl i8 %21, 4
  %23 = and i8 %22, 48
  %24 = or i8 %23, 8
  %or.i.i = zext i8 %24 to i16
  %frame_count.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %frame_count.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frame_count.i.i, align 4
  %conv4.i.i = zext i8 %26 to i16
  %sub.i.i = shl nuw i16 %conv4.i.i, 8
  %shl5.i.i = add i16 %sub.i.i, -256
  %or6.i.i = or i16 %shl5.i.i, %or.i.i
  %args.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or6.i.i, ptr %args.i.i, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %args10.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %args10.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %args10.i.i, align 2
  %add.i13.i = add i16 %31, %..i.i
  %add.ptr.i.i = getelementptr %struct.metromem_cmd, ptr %29, i32 0, i32 1, i32 1
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 62)
  %33 = load ptr, ptr %1, align 4
  %csum.i.i = getelementptr inbounds %struct.metromem_cmd, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add.i13.i, ptr %csum.i.i, align 2
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %..i.i, ptr %35, align 2
  %board.i.i = getelementptr inbounds %struct.metronomefb_par, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board.i.i, align 4
  %met_wait_event_intr.i.i = getelementptr inbounds %struct.metronome_board, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %met_wait_event_intr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %met_wait_event_intr.i.i, align 4
  %call.i.i = tail call i32 %40(ptr noundef %1) #8
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @metronomefb_dpy_deferred_io(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pagelist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %par2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par2, align 4
  %pagelist3 = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pagelist3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn34 = load ptr, ptr %pagelist3, align 4
  %cmp.not35 = icmp eq ptr %.pn34, %pagelist3
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %info.i = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 6
  %metromem_img.i = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 2
  %csum_table = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 4
  %metromem_img_csum = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %metronomefb_dpy_update_page.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn36 = phi ptr [ %.pn34, %for.body.lr.ph ], [ %.pn, %metronomefb_dpy_update_page.exit.for.body_crit_edge ]
  %index = getelementptr inbounds %struct.anon.3, ptr %.pn36, i32 0, i32 2
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %shl = shl i32 %6, 12
  %7 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.i, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl
  %12 = ptrtoint ptr %metromem_img.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %metromem_img.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %shl
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %csum.017.i = phi i16 [ 0, %for.body ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i, i32 %i.016.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %shl.i = shl i16 %15, 5
  %and.i = and i16 %shl.i, -7968
  %add.ptr3.i = getelementptr i16, ptr %add.ptr1.i, i32 %i.016.i
  %16 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %and.i, ptr %add.ptr3.i, align 2
  %add.i = add i16 %and.i, %csum.017.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %metronomefb_dpy_update_page.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

metronomefb_dpy_update_page.exit:                 ; preds = %for.body.i
  %17 = ptrtoint ptr %csum_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csum_table, align 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %arrayidx = getelementptr i16, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %metromem_img_csum to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %metromem_img_csum, align 4
  %idx.neg = sub nsw i32 0, %conv
  %add.ptr6 = getelementptr i16, ptr %24, i32 %idx.neg
  store ptr %add.ptr6, ptr %metromem_img_csum, align 4
  %25 = load i32, ptr %index, align 4
  %arrayidx9 = getelementptr i16, ptr %18, i32 %25
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add.i, ptr %arrayidx9, align 2
  %conv10 = zext i16 %add.i to i32
  %27 = load ptr, ptr %metromem_img_csum, align 4
  %add.ptr12 = getelementptr i16, ptr %27, i32 %conv10
  store ptr %add.ptr12, ptr %metromem_img_csum, align 4
  %28 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist3
  br i1 %cmp.not, label %metronomefb_dpy_update_page.exit.for.end_crit_edge, label %metronomefb_dpy_update_page.exit.for.body_crit_edge

metronomefb_dpy_update_page.exit.for.body_crit_edge: ; preds = %metronomefb_dpy_update_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

metronomefb_dpy_update_page.exit.for.end_crit_edge: ; preds = %metronomefb_dpy_update_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %metronomefb_dpy_update_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13248, i16 %32)
  %cmp.i = icmp eq i16 %32, -13248
  %..i = select i1 %cmp.i, i16 -13247, i16 -13248
  %33 = load i8, ptr @metronome_display_cmd.borderval, align 1
  %inc.i31 = add i8 %33, 1
  store i8 %inc.i31, ptr @metronome_display_cmd.borderval, align 1
  %34 = shl i8 %33, 4
  %35 = and i8 %34, 48
  %36 = or i8 %35, 8
  %or.i = zext i8 %36 to i16
  %frame_count.i = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %frame_count.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %frame_count.i, align 4
  %conv4.i = zext i8 %38 to i16
  %sub.i = shl nuw i16 %conv4.i, 8
  %shl5.i = add i16 %sub.i, -256
  %or6.i = or i16 %shl5.i, %or.i
  %args.i = getelementptr inbounds %struct.metromem_cmd, ptr %30, i32 0, i32 1
  %39 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or6.i, ptr %args.i, align 2
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %args10.i = getelementptr inbounds %struct.metromem_cmd, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %args10.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %args10.i, align 2
  %add.i32 = add i16 %43, %..i
  %add.ptr.i33 = getelementptr %struct.metromem_cmd, ptr %41, i32 0, i32 1, i32 1
  %44 = call ptr @memset(ptr %add.ptr.i33, i32 0, i32 62)
  %45 = load ptr, ptr %3, align 4
  %csum.i = getelementptr inbounds %struct.metromem_cmd, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %csum.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %add.i32, ptr %csum.i, align 2
  %47 = load ptr, ptr %3, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %..i, ptr %47, align 2
  %board.i = getelementptr inbounds %struct.metronomefb_par, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %board.i, align 4
  %met_wait_event_intr.i = getelementptr inbounds %struct.metronome_board, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %met_wait_event_intr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %met_wait_event_intr.i, align 4
  %call.i = tail call i32 %52(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_metronomefb__305_774_metronomefb_driver_init6, !1, !"__initcall__kmod_metronomefb__305_774_metronomefb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/metronomefb.c", i32 774, i32 1}
!2 = !{ptr @__exitcall_metronomefb_driver_exit, !1, !"__exitcall_metronomefb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_user_wfm_size, !4, !"__param_user_wfm_size", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/metronomefb.c", i32 776, i32 1}
!5 = !{ptr @__UNIQUE_ID_user_wfm_sizetype306, !4, !"__UNIQUE_ID_user_wfm_sizetype306", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_user_wfm_size307, !7, !"__UNIQUE_ID_user_wfm_size307", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/metronomefb.c", i32 777, i32 1}
!8 = !{ptr @__UNIQUE_ID_description308, !9, !"__UNIQUE_ID_description308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/metronomefb.c", i32 779, i32 1}
!10 = !{ptr @__UNIQUE_ID_author309, !11, !"__UNIQUE_ID_author309", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/metronomefb.c", i32 780, i32 1}
!12 = !{ptr @__UNIQUE_ID_file310, !13, !"__UNIQUE_ID_file310", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/metronomefb.c", i32 781, i32 1}
!14 = !{ptr @__UNIQUE_ID_license311, !13, !"__UNIQUE_ID_license311", i1 false, i1 false}
!15 = !{ptr @user_wfm_size, !16, !"user_wfm_size", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/metronomefb.c", i32 46, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/metronomefb.c", i32 771, i32 11}
!19 = !{ptr @metronomefb_driver, !20, !"metronomefb_driver", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/metronomefb.c", i32 767, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/metronomefb.c", i32 622, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @metronomefb_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @metronomefb_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @metronomefb_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/metronomefb.c", i32 652, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/metronomefb.c", i32 664, i32 3}
!34 = !{ptr @metronomefb_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @metronomefb_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/metronomefb.c", i32 671, i32 3}
!38 = !{ptr @metronomefb_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @metronomefb_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/metronomefb.c", i32 681, i32 39}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/metronomefb.c", i32 683, i32 3}
!44 = !{ptr @metronomefb_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @metronomefb_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/metronomefb.c", i32 691, i32 3}
!48 = !{ptr @metronomefb_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @metronomefb_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/metronomefb.c", i32 710, i32 3}
!52 = !{ptr @metronomefb_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @metronomefb_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/metronomefb.c", i32 726, i32 2}
!56 = !{ptr @metronomefb_probe.__UNIQUE_ID_ddebug303, !55, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!57 = !{ptr @epd_frame_table, !58, !"epd_frame_table", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/metronomefb.c", i32 56, i32 25}
!59 = !{ptr @metronomefb_ops, !60, !"metronomefb_ops", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/metronomefb.c", i32 561, i32 28}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!68 = !{ptr @metronome_display_cmd.borderval, !69, !"borderval", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/metronomefb.c", i32 313, i32 12}
!70 = !{ptr @metronomefb_fix, !71, !"metronomefb_fix", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/metronomefb.c", i32 102, i32 33}
!72 = !{ptr @metronomefb_var, !73, !"metronomefb_var", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/metronomefb.c", i32 113, i32 33}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/metronomefb.c", i32 190, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @load_waveform._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @load_waveform._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/metronomefb.c", i32 198, i32 3}
!81 = !{ptr @load_waveform._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @load_waveform._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/metronomefb.c", i32 202, i32 3}
!85 = !{ptr @load_waveform._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @load_waveform._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/metronomefb.c", i32 207, i32 3}
!89 = !{ptr @load_waveform._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @load_waveform._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/metronomefb.c", i32 215, i32 4}
!93 = !{ptr @load_waveform._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @load_waveform._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/metronomefb.c", i32 240, i32 3}
!97 = !{ptr @load_waveform._entry.41, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @load_waveform._entry_ptr.43, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/metronomefb.c", i32 252, i32 3}
!101 = !{ptr @load_waveform._entry.44, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @load_waveform._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/metronomefb.c", i32 264, i32 3}
!105 = !{ptr @load_waveform._entry.47, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @load_waveform._entry_ptr.49, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/metronomefb.c", i32 299, i32 3}
!109 = !{ptr @load_waveform._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @load_waveform._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @metronomefb_defio, !112, !"metronomefb_defio", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/metronomefb.c", i32 569, i32 30}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/metronomefb.c", i32 761, i32 3}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @metronomefb_remove.__UNIQUE_ID_ddebug304, !114, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!117 = !{ptr @__param_str_user_wfm_size, !4, !"__param_str_user_wfm_size", i1 false, i1 false}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i64 2148970023, i64 2148970028, i64 2148970041, i64 2148970085, i64 2148970119, i64 2148970140}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2152979592, i64 2152979617}
!132 = !{i64 5475147}
!133 = !{i64 5475344}
!134 = !{i64 2152960577}
