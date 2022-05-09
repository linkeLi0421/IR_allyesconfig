; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/jl2005bcd.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/jl2005bcd.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.101, i32, i32 }
%union.anon.101 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.102, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.102 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, [6 x i8], ptr, %struct.work_struct, i8, i32, i32 }

@__UNIQUE_ID_author303 = internal constant [61 x i8] c"gspca_jl2005bcd.author=Theodore Kilgore <kilgota@auburn.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_jl2005bcd.description=JL2005B/C/D USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [61 x i8] c"gspca_jl2005bcd.file=drivers/media/usb/gspca/gspca_jl2005bcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [28 x i8] c"gspca_jl2005bcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_jl2005bcd__307_522_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gspca_jl2005bcd\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jl2005bcd\00", [22 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2425, i16 551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr null, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@cif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 808602698, i32 1, i32 176, i32 25344, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 808602698, i32 1, i32 352, i32 101376, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 320, i32 240, i32 808602698, i32 1, i32 320, i32 76800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 808602698, i32 1, i32 640, i32 307200, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@sd_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&sd->work_struct)\00", [60 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@jl2005c_get_firmware_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: Running jl2005c_get_firmware_id\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jl2005c_get_firmware_id\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/gspca/jl2005bcd.c\00", [60 x i8] zeroinitializer }, align 32
@jl2005c_get_firmware_id._entry_ptr = internal global ptr @jl2005c_get_firmware_id._entry, section ".printk_index", align 4
@jl2005c_get_firmware_id._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: response is %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@jl2005c_get_firmware_id._entry_ptr.8 = internal global ptr @jl2005c_get_firmware_id._entry.6, section ".printk_index", align 4
@jl2005c_get_firmware_id._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: firmware ID is %02x%02x%02x%02x%02x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@jl2005c_get_firmware_id._entry_ptr.11 = internal global ptr @jl2005c_get_firmware_id._entry.9, section ".printk_index", align 4
@jl2005c_read_reg.instruction = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\95\00", [30 x i8] zeroinitializer }, align 32
@jl2005c_write2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013command write [%02x] error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jl2005c_write2\00", [17 x i8] zeroinitializer }, align 32
@jl2005c_write2._entry_ptr = internal global ptr @jl2005c_write2._entry, section ".printk_index", align 4
@jl2005c_read1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013read command [0x%02x] error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jl2005c_read1\00", [18 x i8] zeroinitializer }, align 32
@jl2005c_read1._entry_ptr = internal global ptr @jl2005c_read1._entry, section ".printk_index", align 4
@__const.jl2005c_dostream.header_sig = private unnamed_addr constant [2 x i8] c"JL", align 1
@jl2005c_dostream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Couldn't allocate USB buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jl2005c_dostream\00", [47 x i8] zeroinitializer }, align 32
@jl2005c_dostream._entry_ptr = internal global ptr @jl2005c_dostream._entry, section ".printk_index", align 4
@jl2005c_dostream._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Got %d bytes out of %d for header\0A\00", [55 x i8] zeroinitializer }, align 32
@jl2005c_dostream._entry_ptr.20 = internal global ptr @jl2005c_dostream._entry.18, section ".printk_index", align 4
@jl2005c_dostream._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013First block is not the first block\0A\00", [58 x i8] zeroinitializer }, align 32
@jl2005c_dostream._entry_ptr.23 = internal global ptr @jl2005c_dostream._entry.21, section ".printk_index", align 4
@jl2005c_dostream._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.5, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: bytes_left = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@jl2005c_dostream._entry_ptr.26 = internal global ptr @jl2005c_dostream._entry.24, section ".printk_index", align 4
@jl2005c_dostream._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.5, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Got %d bytes out of %d for frame\0A\00", [56 x i8] zeroinitializer }, align 32
@jl2005c_dostream._entry_ptr.29 = internal global ptr @jl2005c_dostream._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jl2005c_start_new_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: frame_brightness is 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jl2005c_start_new_frame\00", [40 x i8] zeroinitializer }, align 32
@jl2005c_start_new_frame._entry_ptr = internal global ptr @jl2005c_start_new_frame._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Start streaming at vga resolution\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Start streaming at qvga resolution\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.36 = internal global ptr @sd_start._entry.34, section ".printk_index", align 4
@sd_start._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.5, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Start streaming at cif resolution\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.39 = internal global ptr @sd_start._entry.37, section ".printk_index", align 4
@sd_start._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.5, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Start streaming at qcif resolution\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.42 = internal global ptr @sd_start._entry.40, section ".printk_index", align 4
@sd_start._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.5, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unknown resolution specified\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.45 = internal global ptr @sd_start._entry.43, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 176, i64 320, i64 352, i64 640]
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 510, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 522, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 511, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 496, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 487, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"cif_mode\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 42, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 55, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 427, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 171, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 174, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 185, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"instruction\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 107, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 83, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 97, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 317, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 337, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 344, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 350, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 367, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 143, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 446, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 450, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 454, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 458, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [39 x i8] c"../drivers/media/usb/gspca/jl2005bcd.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 462, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_jl2005bcd__307_522_sd_driver_init6, ptr @jl2005c_dostream._entry, ptr @jl2005c_dostream._entry.18, ptr @jl2005c_dostream._entry.21, ptr @jl2005c_dostream._entry.24, ptr @jl2005c_dostream._entry.27, ptr @jl2005c_dostream._entry_ptr, ptr @jl2005c_dostream._entry_ptr.20, ptr @jl2005c_dostream._entry_ptr.23, ptr @jl2005c_dostream._entry_ptr.26, ptr @jl2005c_dostream._entry_ptr.29, ptr @jl2005c_get_firmware_id._entry, ptr @jl2005c_get_firmware_id._entry.6, ptr @jl2005c_get_firmware_id._entry.9, ptr @jl2005c_get_firmware_id._entry_ptr, ptr @jl2005c_get_firmware_id._entry_ptr.11, ptr @jl2005c_get_firmware_id._entry_ptr.8, ptr @jl2005c_read1._entry, ptr @jl2005c_read1._entry_ptr, ptr @jl2005c_start_new_frame._entry, ptr @jl2005c_start_new_frame._entry_ptr, ptr @jl2005c_write2._entry, ptr @jl2005c_write2._entry_ptr, ptr @sd_driver_exit, ptr @sd_start._entry, ptr @sd_start._entry.34, ptr @sd_start._entry.37, ptr @sd_start._entry.40, ptr @sd_start._entry.43, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.36, ptr @sd_start._entry_ptr.39, ptr @sd_start._entry_ptr.42, ptr @sd_start._entry_ptr.45, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @cif_mode, ptr @vga_mode, ptr @sd_config.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @jl2005c_read_reg.instruction, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_get_firmware_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_get_firmware_id._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_get_firmware_id._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_read_reg.instruction to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_write2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_read1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_dostream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_dostream._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_dostream._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_dostream._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_dostream._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jl2005c_start_new_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2680, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %bulk_size, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %1 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %bulk, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %do.end.i, label %entry.do.end4.i_crit_edge

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i) #12
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %call5.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 87) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %3 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.i = icmp sgt i32 %3, 0
  br i1 %cmp7.i, label %do.end11.i, label %do.end4.i.do.end20.i_crit_edge

do.end4.i.do.end20.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20.i

do.end11.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv.i = zext i8 %7 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end11.i, %do.end4.i.do.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp21.i = icmp slt i32 %call5.i, 0
  br i1 %cmp21.i, label %do.end20.i.jl2005c_get_firmware_id.exit_crit_edge, label %for.cond.preheader.i

do.end20.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

for.cond.preheader.i:                             ; preds = %do.end20.i
  %usb_buf33.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %call28.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %for.cond.preheader.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.i

for.cond.preheader.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.i:                                       ; preds = %for.cond.preheader.i
  %8 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf33.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %arrayidx35.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx35.i, align 1
  %call28.1.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %cmp29.1.i = icmp slt i32 %call28.1.i, 0
  br i1 %cmp29.1.i, label %if.end32.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.1.i

if.end32.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.1.i:                                     ; preds = %if.end32.i
  %13 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf33.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %arrayidx35.1.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx35.1.i, align 1
  %call28.2.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %cmp29.2.i = icmp slt i32 %call28.2.i, 0
  br i1 %cmp29.2.i, label %if.end32.1.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.2.i

if.end32.1.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.2.i:                                     ; preds = %if.end32.1.i
  %18 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf33.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %arrayidx35.2.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx35.2.i, align 1
  %call28.3.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3.i)
  %cmp29.3.i = icmp slt i32 %call28.3.i, 0
  br i1 %cmp29.3.i, label %if.end32.2.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.3.i

if.end32.2.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.3.i:                                     ; preds = %if.end32.2.i
  %23 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf33.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %arrayidx35.3.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx35.3.i, align 1
  %call28.4.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.4.i)
  %cmp29.4.i = icmp slt i32 %call28.4.i, 0
  br i1 %cmp29.4.i, label %if.end32.3.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.4.i

if.end32.3.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.4.i:                                     ; preds = %if.end32.3.i
  %28 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf33.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %arrayidx35.4.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %arrayidx35.4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx35.4.i, align 1
  %call28.5.i = tail call fastcc i32 @jl2005c_read_reg(ptr noundef %gspca_dev, i8 noundef zeroext 95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.5.i)
  %cmp29.5.i = icmp slt i32 %call28.5.i, 0
  br i1 %cmp29.5.i, label %if.end32.4.i.jl2005c_get_firmware_id.exit_crit_edge, label %if.end32.5.i

if.end32.4.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

if.end32.5.i:                                     ; preds = %if.end32.4.i
  %33 = ptrtoint ptr %usb_buf33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf33.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %arrayidx35.5.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %arrayidx35.5.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx35.5.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp37.i = icmp sgt i32 %38, 0
  br i1 %cmp37.i, label %do.end42.i, label %if.end32.5.i.jl2005c_get_firmware_id.exit_crit_edge

if.end32.5.i.jl2005c_get_firmware_id.exit_crit_edge: ; preds = %if.end32.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_get_firmware_id.exit

do.end42.i:                                       ; preds = %if.end32.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %name45.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx35.i, align 8
  %conv49.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx35.1.i, align 1
  %conv52.i = zext i8 %42 to i32
  %43 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx35.2.i, align 2
  %conv55.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx35.3.i, align 1
  %conv58.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %arrayidx35.4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx35.4.i, align 4
  %conv61.i = zext i8 %48 to i32
  %conv64.i = zext i8 %36 to i32
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name45.i, i32 noundef %conv49.i, i32 noundef %conv52.i, i32 noundef %conv55.i, i32 noundef %conv58.i, i32 noundef %conv61.i, i32 noundef %conv64.i) #12
  br label %jl2005c_get_firmware_id.exit

jl2005c_get_firmware_id.exit:                     ; preds = %do.end42.i, %if.end32.5.i.jl2005c_get_firmware_id.exit_crit_edge, %if.end32.4.i.jl2005c_get_firmware_id.exit_crit_edge, %if.end32.3.i.jl2005c_get_firmware_id.exit_crit_edge, %if.end32.2.i.jl2005c_get_firmware_id.exit_crit_edge, %if.end32.1.i.jl2005c_get_firmware_id.exit_crit_edge, %if.end32.i.jl2005c_get_firmware_id.exit_crit_edge, %for.cond.preheader.i.jl2005c_get_firmware_id.exit_crit_edge, %do.end20.i.jl2005c_get_firmware_id.exit_crit_edge
  %firmware_id = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %49 = ptrtoint ptr %firmware_id to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %firmware_id, align 8
  %51 = and i8 %50, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %51)
  %cmp = icmp eq i8 %51, 64
  %spec.select = select i1 %cmp, ptr @cif_mode, ptr @vga_mode
  %spec.select25 = select i1 %cmp, i32 128, i32 512
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %52 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %spec.select, ptr %cam1, align 4
  %53 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %53, align 4
  %55 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.select25, ptr %55, align 4
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work_struct, i32 noundef 0) #9
  %57 = ptrtoint ptr %work_struct to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %work_struct, align 4
  %lockdep_map = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @sd_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry9 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @jl2005c_dostream, ptr %func, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %cap_mode = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %cap_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cap_mode, align 8
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %3 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixfmt, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end55 [
    i32 640, label %do.body
    i32 320, label %do.body6
    i32 352, label %do.body22
    i32 176, label %do.body38
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %do.end, label %do.body.do.end3_crit_edge

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  tail call void @msleep(i32 noundef 60) #9
  %7 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_buf.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 1280, ptr %8, align 1
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -1073643520
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.i = tail call i32 @usb_bulk_msg(ptr noundef %11, i32 noundef %or.i.i, ptr noundef %14, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end3.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.i

do.end3.jl2005c_write2.exit.thread.i_crit_edge:   ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.i:                                       ; preds = %do.end3
  tail call void @msleep(i32 noundef 60) #9
  %15 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 31744, ptr %16, align 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i.1.i = shl i32 %21, 8
  %or.i.1.i = or i32 %shl.i.i.1.i, -1073643520
  %22 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.1.i = tail call i32 @usb_bulk_msg(ptr noundef %19, i32 noundef %or.i.1.i, ptr noundef %22, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call4.i.1.i, 0
  br i1 %cmp.i.1.i, label %for.cond.i.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.1.i

for.cond.i.jl2005c_write2.exit.thread.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void @msleep(i32 noundef 60) #9
  %23 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 32024, ptr %24, align 1
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i.2.i = shl i32 %29, 8
  %or.i.2.i = or i32 %shl.i.i.2.i, -1073643520
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.2.i = tail call i32 @usb_bulk_msg(ptr noundef %27, i32 noundef %or.i.2.i, ptr noundef %30, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call4.i.2.i, 0
  br i1 %cmp.i.2.i, label %for.cond.1.i.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.2.i

for.cond.1.i.jl2005c_write2.exit.thread.i_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void @msleep(i32 noundef 60) #9
  %31 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 512, ptr %32, align 1
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i.3.i = shl i32 %37, 8
  %or.i.3.i = or i32 %shl.i.i.3.i, -1073643520
  %38 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.3.i = tail call i32 @usb_bulk_msg(ptr noundef %35, i32 noundef %or.i.3.i, ptr noundef %38, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call4.i.3.i, 0
  br i1 %cmp.i.3.i, label %for.cond.2.i.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.3.i

for.cond.2.i.jl2005c_write2.exit.thread.i_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void @msleep(i32 noundef 60) #9
  %39 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_buf.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 256, ptr %40, align 1
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i.i.4.i = shl i32 %45, 8
  %or.i.4.i = or i32 %shl.i.i.4.i, -1073643520
  %46 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.4.i = tail call i32 @usb_bulk_msg(ptr noundef %43, i32 noundef %or.i.4.i, ptr noundef %46, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.4.i)
  %cmp.i.4.i = icmp slt i32 %call4.i.4.i, 0
  br i1 %cmp.i.4.i, label %for.cond.3.i.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.4.i

for.cond.3.i.jl2005c_write2.exit.thread.i_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void @msleep(i32 noundef 60) #9
  %47 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 1106, ptr %48, align 1
  %50 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i.5.i = shl i32 %53, 8
  %or.i.5.i = or i32 %shl.i.i.5.i, -1073643520
  %54 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.5.i = tail call i32 @usb_bulk_msg(ptr noundef %51, i32 noundef %or.i.5.i, ptr noundef %54, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.5.i)
  %cmp.i.5.i = icmp slt i32 %call4.i.5.i, 0
  br i1 %cmp.i.5.i, label %for.cond.4.i.jl2005c_write2.exit.thread.i_crit_edge, label %for.cond.5.i

for.cond.4.i.jl2005c_write2.exit.thread.i_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 60) #9
  br label %sw.epilog

jl2005c_write2.exit.thread.i:                     ; preds = %for.cond.4.i.jl2005c_write2.exit.thread.i_crit_edge, %for.cond.3.i.jl2005c_write2.exit.thread.i_crit_edge, %for.cond.2.i.jl2005c_write2.exit.thread.i_crit_edge, %for.cond.1.i.jl2005c_write2.exit.thread.i_crit_edge, %for.cond.i.jl2005c_write2.exit.thread.i_crit_edge, %do.end3.jl2005c_write2.exit.thread.i_crit_edge
  %call4.i.lcssa.i = phi i32 [ %call4.i.i, %do.end3.jl2005c_write2.exit.thread.i_crit_edge ], [ %call4.i.1.i, %for.cond.i.jl2005c_write2.exit.thread.i_crit_edge ], [ %call4.i.2.i, %for.cond.1.i.jl2005c_write2.exit.thread.i_crit_edge ], [ %call4.i.3.i, %for.cond.2.i.jl2005c_write2.exit.thread.i_crit_edge ], [ %call4.i.4.i, %for.cond.3.i.jl2005c_write2.exit.thread.i_crit_edge ], [ %call4.i.5.i, %for.cond.4.i.jl2005c_write2.exit.thread.i_crit_edge ]
  %55 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_buf.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i.i = zext i8 %58 to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i, i32 noundef %call4.i.lcssa.i) #12
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %59 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp7 = icmp sgt i32 %59, 2
  br i1 %cmp7, label %do.end11, label %do.body6.do.end19_crit_edge

do.body6.do.end19_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %name14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name14) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end11, %do.body6.do.end19_crit_edge
  %usb_buf.i.i70 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i71 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  tail call void @msleep(i32 noundef 60) #9
  %60 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf.i.i70, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 1536, ptr %61, align 1
  %63 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i71, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i.i72 = shl i32 %66, 8
  %or.i.i73 = or i32 %shl.i.i.i72, -1073643520
  %67 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.i74 = tail call i32 @usb_bulk_msg(ptr noundef %64, i32 noundef %or.i.i73, ptr noundef %67, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i74)
  %cmp.i.i75 = icmp slt i32 %call4.i.i74, 0
  br i1 %cmp.i.i75, label %do.end19.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.i80

do.end19.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.i80:                                     ; preds = %do.end19
  tail call void @msleep(i32 noundef 60) #9
  %68 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_buf.i.i70, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 31744, ptr %69, align 1
  %71 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i71, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i.1.i76 = shl i32 %74, 8
  %or.i.1.i77 = or i32 %shl.i.i.1.i76, -1073643520
  %75 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.1.i78 = tail call i32 @usb_bulk_msg(ptr noundef %72, i32 noundef %or.i.1.i77, ptr noundef %75, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1.i78)
  %cmp.i.1.i79 = icmp slt i32 %call4.i.1.i78, 0
  br i1 %cmp.i.1.i79, label %for.cond.i80.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.1.i85

for.cond.i80.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %for.cond.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.1.i85:                                   ; preds = %for.cond.i80
  tail call void @msleep(i32 noundef 60) #9
  %76 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i.i70, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 32026, ptr %77, align 1
  %79 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i.i71, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i.2.i81 = shl i32 %82, 8
  %or.i.2.i82 = or i32 %shl.i.i.2.i81, -1073643520
  %83 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.2.i83 = tail call i32 @usb_bulk_msg(ptr noundef %80, i32 noundef %or.i.2.i82, ptr noundef %83, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2.i83)
  %cmp.i.2.i84 = icmp slt i32 %call4.i.2.i83, 0
  br i1 %cmp.i.2.i84, label %for.cond.1.i85.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.2.i90

for.cond.1.i85.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %for.cond.1.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.2.i90:                                   ; preds = %for.cond.1.i85
  tail call void @msleep(i32 noundef 60) #9
  %84 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i.i70, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 512, ptr %85, align 1
  %87 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i71, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i.i.3.i86 = shl i32 %90, 8
  %or.i.3.i87 = or i32 %shl.i.i.3.i86, -1073643520
  %91 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.3.i88 = tail call i32 @usb_bulk_msg(ptr noundef %88, i32 noundef %or.i.3.i87, ptr noundef %91, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3.i88)
  %cmp.i.3.i89 = icmp slt i32 %call4.i.3.i88, 0
  br i1 %cmp.i.3.i89, label %for.cond.2.i90.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.3.i95

for.cond.2.i90.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %for.cond.2.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.3.i95:                                   ; preds = %for.cond.2.i90
  tail call void @msleep(i32 noundef 60) #9
  %92 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf.i.i70, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 256, ptr %93, align 1
  %95 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i71, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 8
  %shl.i.i.4.i91 = shl i32 %98, 8
  %or.i.4.i92 = or i32 %shl.i.i.4.i91, -1073643520
  %99 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.4.i93 = tail call i32 @usb_bulk_msg(ptr noundef %96, i32 noundef %or.i.4.i92, ptr noundef %99, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.4.i93)
  %cmp.i.4.i94 = icmp slt i32 %call4.i.4.i93, 0
  br i1 %cmp.i.4.i94, label %for.cond.3.i95.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.4.i100

for.cond.3.i95.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %for.cond.3.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.4.i100:                                  ; preds = %for.cond.3.i95
  tail call void @msleep(i32 noundef 60) #9
  %100 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_buf.i.i70, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 1106, ptr %101, align 1
  %103 = ptrtoint ptr %dev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i71, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %shl.i.i.5.i96 = shl i32 %106, 8
  %or.i.5.i97 = or i32 %shl.i.i.5.i96, -1073643520
  %107 = load ptr, ptr %usb_buf.i.i70, align 4
  %call4.i.5.i98 = tail call i32 @usb_bulk_msg(ptr noundef %104, i32 noundef %or.i.5.i97, ptr noundef %107, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.5.i98)
  %cmp.i.5.i99 = icmp slt i32 %call4.i.5.i98, 0
  br i1 %cmp.i.5.i99, label %for.cond.4.i100.jl2005c_write2.exit.thread.i105_crit_edge, label %for.cond.5.i101

for.cond.4.i100.jl2005c_write2.exit.thread.i105_crit_edge: ; preds = %for.cond.4.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i105

for.cond.5.i101:                                  ; preds = %for.cond.4.i100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 60) #9
  br label %sw.epilog

jl2005c_write2.exit.thread.i105:                  ; preds = %for.cond.4.i100.jl2005c_write2.exit.thread.i105_crit_edge, %for.cond.3.i95.jl2005c_write2.exit.thread.i105_crit_edge, %for.cond.2.i90.jl2005c_write2.exit.thread.i105_crit_edge, %for.cond.1.i85.jl2005c_write2.exit.thread.i105_crit_edge, %for.cond.i80.jl2005c_write2.exit.thread.i105_crit_edge, %do.end19.jl2005c_write2.exit.thread.i105_crit_edge
  %call4.i.lcssa.i102 = phi i32 [ %call4.i.i74, %do.end19.jl2005c_write2.exit.thread.i105_crit_edge ], [ %call4.i.1.i78, %for.cond.i80.jl2005c_write2.exit.thread.i105_crit_edge ], [ %call4.i.2.i83, %for.cond.1.i85.jl2005c_write2.exit.thread.i105_crit_edge ], [ %call4.i.3.i88, %for.cond.2.i90.jl2005c_write2.exit.thread.i105_crit_edge ], [ %call4.i.4.i93, %for.cond.3.i95.jl2005c_write2.exit.thread.i105_crit_edge ], [ %call4.i.5.i98, %for.cond.4.i100.jl2005c_write2.exit.thread.i105_crit_edge ]
  %108 = ptrtoint ptr %usb_buf.i.i70 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %usb_buf.i.i70, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 1
  %conv.i.i103 = zext i8 %111 to i32
  %call6.i.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i103, i32 noundef %call4.i.lcssa.i102) #12
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %112 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %cmp23 = icmp sgt i32 %112, 2
  br i1 %cmp23, label %do.end27, label %do.body22.do.end35_crit_edge

do.body22.do.end35_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %name30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name30) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end27, %do.body22.do.end35_crit_edge
  %usb_buf.i.i106 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i107 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  tail call void @msleep(i32 noundef 60) #9
  %113 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %usb_buf.i.i106, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 1280, ptr %114, align 1
  %116 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i.i107, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 8
  %shl.i.i.i108 = shl i32 %119, 8
  %or.i.i109 = or i32 %shl.i.i.i108, -1073643520
  %120 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.i110 = tail call i32 @usb_bulk_msg(ptr noundef %117, i32 noundef %or.i.i109, ptr noundef %120, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i110)
  %cmp.i.i111 = icmp slt i32 %call4.i.i110, 0
  br i1 %cmp.i.i111, label %do.end35.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.i116

do.end35.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.i116:                                    ; preds = %do.end35
  tail call void @msleep(i32 noundef 60) #9
  %121 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_buf.i.i106, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 31744, ptr %122, align 1
  %124 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i.i107, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 8
  %shl.i.i.1.i112 = shl i32 %127, 8
  %or.i.1.i113 = or i32 %shl.i.i.1.i112, -1073643520
  %128 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.1.i114 = tail call i32 @usb_bulk_msg(ptr noundef %125, i32 noundef %or.i.1.i113, ptr noundef %128, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1.i114)
  %cmp.i.1.i115 = icmp slt i32 %call4.i.1.i114, 0
  br i1 %cmp.i.1.i115, label %for.cond.i116.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.1.i121

for.cond.i116.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %for.cond.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.1.i121:                                  ; preds = %for.cond.i116
  tail call void @msleep(i32 noundef 60) #9
  %129 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %usb_buf.i.i106, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 32048, ptr %130, align 1
  %132 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i.i107, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  %shl.i.i.2.i117 = shl i32 %135, 8
  %or.i.2.i118 = or i32 %shl.i.i.2.i117, -1073643520
  %136 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.2.i119 = tail call i32 @usb_bulk_msg(ptr noundef %133, i32 noundef %or.i.2.i118, ptr noundef %136, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2.i119)
  %cmp.i.2.i120 = icmp slt i32 %call4.i.2.i119, 0
  br i1 %cmp.i.2.i120, label %for.cond.1.i121.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.2.i126

for.cond.1.i121.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %for.cond.1.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.2.i126:                                  ; preds = %for.cond.1.i121
  tail call void @msleep(i32 noundef 60) #9
  %137 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i.i106, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 512, ptr %138, align 1
  %140 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i.i107, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i.3.i122 = shl i32 %143, 8
  %or.i.3.i123 = or i32 %shl.i.i.3.i122, -1073643520
  %144 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.3.i124 = tail call i32 @usb_bulk_msg(ptr noundef %141, i32 noundef %or.i.3.i123, ptr noundef %144, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3.i124)
  %cmp.i.3.i125 = icmp slt i32 %call4.i.3.i124, 0
  br i1 %cmp.i.3.i125, label %for.cond.2.i126.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.3.i131

for.cond.2.i126.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %for.cond.2.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.3.i131:                                  ; preds = %for.cond.2.i126
  tail call void @msleep(i32 noundef 60) #9
  %145 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %usb_buf.i.i106, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 256, ptr %146, align 1
  %148 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i.i107, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 8
  %shl.i.i.4.i127 = shl i32 %151, 8
  %or.i.4.i128 = or i32 %shl.i.i.4.i127, -1073643520
  %152 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.4.i129 = tail call i32 @usb_bulk_msg(ptr noundef %149, i32 noundef %or.i.4.i128, ptr noundef %152, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.4.i129)
  %cmp.i.4.i130 = icmp slt i32 %call4.i.4.i129, 0
  br i1 %cmp.i.4.i130, label %for.cond.3.i131.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.4.i136

for.cond.3.i131.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %for.cond.3.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.4.i136:                                  ; preds = %for.cond.3.i131
  tail call void @msleep(i32 noundef 60) #9
  %153 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %usb_buf.i.i106, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_storeN_noabort(i32 %155, i32 2)
  store i16 1090, ptr %154, align 1
  %156 = ptrtoint ptr %dev.i.i107 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i.i107, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 8
  %shl.i.i.5.i132 = shl i32 %159, 8
  %or.i.5.i133 = or i32 %shl.i.i.5.i132, -1073643520
  %160 = load ptr, ptr %usb_buf.i.i106, align 4
  %call4.i.5.i134 = tail call i32 @usb_bulk_msg(ptr noundef %157, i32 noundef %or.i.5.i133, ptr noundef %160, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.5.i134)
  %cmp.i.5.i135 = icmp slt i32 %call4.i.5.i134, 0
  br i1 %cmp.i.5.i135, label %for.cond.4.i136.jl2005c_write2.exit.thread.i141_crit_edge, label %for.cond.5.i137

for.cond.4.i136.jl2005c_write2.exit.thread.i141_crit_edge: ; preds = %for.cond.4.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i141

for.cond.5.i137:                                  ; preds = %for.cond.4.i136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 60) #9
  br label %sw.epilog

jl2005c_write2.exit.thread.i141:                  ; preds = %for.cond.4.i136.jl2005c_write2.exit.thread.i141_crit_edge, %for.cond.3.i131.jl2005c_write2.exit.thread.i141_crit_edge, %for.cond.2.i126.jl2005c_write2.exit.thread.i141_crit_edge, %for.cond.1.i121.jl2005c_write2.exit.thread.i141_crit_edge, %for.cond.i116.jl2005c_write2.exit.thread.i141_crit_edge, %do.end35.jl2005c_write2.exit.thread.i141_crit_edge
  %call4.i.lcssa.i138 = phi i32 [ %call4.i.i110, %do.end35.jl2005c_write2.exit.thread.i141_crit_edge ], [ %call4.i.1.i114, %for.cond.i116.jl2005c_write2.exit.thread.i141_crit_edge ], [ %call4.i.2.i119, %for.cond.1.i121.jl2005c_write2.exit.thread.i141_crit_edge ], [ %call4.i.3.i124, %for.cond.2.i126.jl2005c_write2.exit.thread.i141_crit_edge ], [ %call4.i.4.i129, %for.cond.3.i131.jl2005c_write2.exit.thread.i141_crit_edge ], [ %call4.i.5.i134, %for.cond.4.i136.jl2005c_write2.exit.thread.i141_crit_edge ]
  %161 = ptrtoint ptr %usb_buf.i.i106 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %usb_buf.i.i106, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 1
  %conv.i.i139 = zext i8 %164 to i32
  %call6.i.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i139, i32 noundef %call4.i.lcssa.i138) #12
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %165 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %165)
  %cmp39 = icmp sgt i32 %165, 2
  br i1 %cmp39, label %do.end43, label %do.body38.do.end51_crit_edge

do.body38.do.end51_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.end43:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name46) #12
  br label %do.end51

do.end51:                                         ; preds = %do.end43, %do.body38.do.end51_crit_edge
  %usb_buf.i.i142 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i143 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  tail call void @msleep(i32 noundef 60) #9
  %166 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %usb_buf.i.i142, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 1536, ptr %167, align 1
  %169 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i.i143, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 8
  %shl.i.i.i144 = shl i32 %172, 8
  %or.i.i145 = or i32 %shl.i.i.i144, -1073643520
  %173 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.i146 = tail call i32 @usb_bulk_msg(ptr noundef %170, i32 noundef %or.i.i145, ptr noundef %173, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i146)
  %cmp.i.i147 = icmp slt i32 %call4.i.i146, 0
  br i1 %cmp.i.i147, label %do.end51.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.i152

do.end51.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.i152:                                    ; preds = %do.end51
  tail call void @msleep(i32 noundef 60) #9
  %174 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %usb_buf.i.i142, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 31744, ptr %175, align 1
  %177 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i143, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %178, align 8
  %shl.i.i.1.i148 = shl i32 %180, 8
  %or.i.1.i149 = or i32 %shl.i.i.1.i148, -1073643520
  %181 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.1.i150 = tail call i32 @usb_bulk_msg(ptr noundef %178, i32 noundef %or.i.1.i149, ptr noundef %181, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1.i150)
  %cmp.i.1.i151 = icmp slt i32 %call4.i.1.i150, 0
  br i1 %cmp.i.1.i151, label %for.cond.i152.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.1.i157

for.cond.i152.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %for.cond.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.1.i157:                                  ; preds = %for.cond.i152
  tail call void @msleep(i32 noundef 60) #9
  %182 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %usb_buf.i.i142, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 2)
  store i16 32050, ptr %183, align 1
  %185 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i143, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %186, align 8
  %shl.i.i.2.i153 = shl i32 %188, 8
  %or.i.2.i154 = or i32 %shl.i.i.2.i153, -1073643520
  %189 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.2.i155 = tail call i32 @usb_bulk_msg(ptr noundef %186, i32 noundef %or.i.2.i154, ptr noundef %189, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2.i155)
  %cmp.i.2.i156 = icmp slt i32 %call4.i.2.i155, 0
  br i1 %cmp.i.2.i156, label %for.cond.1.i157.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.2.i162

for.cond.1.i157.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %for.cond.1.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.2.i162:                                  ; preds = %for.cond.1.i157
  tail call void @msleep(i32 noundef 60) #9
  %190 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %usb_buf.i.i142, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_storeN_noabort(i32 %192, i32 2)
  store i16 512, ptr %191, align 1
  %193 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i.i143, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 8
  %shl.i.i.3.i158 = shl i32 %196, 8
  %or.i.3.i159 = or i32 %shl.i.i.3.i158, -1073643520
  %197 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.3.i160 = tail call i32 @usb_bulk_msg(ptr noundef %194, i32 noundef %or.i.3.i159, ptr noundef %197, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3.i160)
  %cmp.i.3.i161 = icmp slt i32 %call4.i.3.i160, 0
  br i1 %cmp.i.3.i161, label %for.cond.2.i162.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.3.i167

for.cond.2.i162.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %for.cond.2.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.3.i167:                                  ; preds = %for.cond.2.i162
  tail call void @msleep(i32 noundef 60) #9
  %198 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %usb_buf.i.i142, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_storeN_noabort(i32 %200, i32 2)
  store i16 256, ptr %199, align 1
  %201 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i.i143, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %202, align 8
  %shl.i.i.4.i163 = shl i32 %204, 8
  %or.i.4.i164 = or i32 %shl.i.i.4.i163, -1073643520
  %205 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.4.i165 = tail call i32 @usb_bulk_msg(ptr noundef %202, i32 noundef %or.i.4.i164, ptr noundef %205, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.4.i165)
  %cmp.i.4.i166 = icmp slt i32 %call4.i.4.i165, 0
  br i1 %cmp.i.4.i166, label %for.cond.3.i167.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.4.i172

for.cond.3.i167.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %for.cond.3.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.4.i172:                                  ; preds = %for.cond.3.i167
  tail call void @msleep(i32 noundef 60) #9
  %206 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %usb_buf.i.i142, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_storeN_noabort(i32 %208, i32 2)
  store i16 1090, ptr %207, align 1
  %209 = ptrtoint ptr %dev.i.i143 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i.i143, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %210, align 8
  %shl.i.i.5.i168 = shl i32 %212, 8
  %or.i.5.i169 = or i32 %shl.i.i.5.i168, -1073643520
  %213 = load ptr, ptr %usb_buf.i.i142, align 4
  %call4.i.5.i170 = tail call i32 @usb_bulk_msg(ptr noundef %210, i32 noundef %or.i.5.i169, ptr noundef %213, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.5.i170)
  %cmp.i.5.i171 = icmp slt i32 %call4.i.5.i170, 0
  br i1 %cmp.i.5.i171, label %for.cond.4.i172.jl2005c_write2.exit.thread.i177_crit_edge, label %for.cond.5.i173

for.cond.4.i172.jl2005c_write2.exit.thread.i177_crit_edge: ; preds = %for.cond.4.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_write2.exit.thread.i177

for.cond.5.i173:                                  ; preds = %for.cond.4.i172
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 60) #9
  br label %sw.epilog

jl2005c_write2.exit.thread.i177:                  ; preds = %for.cond.4.i172.jl2005c_write2.exit.thread.i177_crit_edge, %for.cond.3.i167.jl2005c_write2.exit.thread.i177_crit_edge, %for.cond.2.i162.jl2005c_write2.exit.thread.i177_crit_edge, %for.cond.1.i157.jl2005c_write2.exit.thread.i177_crit_edge, %for.cond.i152.jl2005c_write2.exit.thread.i177_crit_edge, %do.end51.jl2005c_write2.exit.thread.i177_crit_edge
  %call4.i.lcssa.i174 = phi i32 [ %call4.i.i146, %do.end51.jl2005c_write2.exit.thread.i177_crit_edge ], [ %call4.i.1.i150, %for.cond.i152.jl2005c_write2.exit.thread.i177_crit_edge ], [ %call4.i.2.i155, %for.cond.1.i157.jl2005c_write2.exit.thread.i177_crit_edge ], [ %call4.i.3.i160, %for.cond.2.i162.jl2005c_write2.exit.thread.i177_crit_edge ], [ %call4.i.4.i165, %for.cond.3.i167.jl2005c_write2.exit.thread.i177_crit_edge ], [ %call4.i.5.i170, %for.cond.4.i172.jl2005c_write2.exit.thread.i177_crit_edge ]
  %214 = ptrtoint ptr %usb_buf.i.i142 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %usb_buf.i.i142, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %215, align 1
  %conv.i.i175 = zext i8 %217 to i32
  %call6.i.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i175, i32 noundef %call4.i.lcssa.i174) #12
  br label %sw.epilog

do.end55:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %cleanup

sw.epilog:                                        ; preds = %jl2005c_write2.exit.thread.i177, %for.cond.5.i173, %jl2005c_write2.exit.thread.i141, %for.cond.5.i137, %jl2005c_write2.exit.thread.i105, %for.cond.5.i101, %jl2005c_write2.exit.thread.i, %for.cond.5.i
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %218 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %218, ptr noundef %work_struct) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end55
  %retval.0 = phi i32 [ -1, %do.end55 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_lock = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %usb_lock) #9
  %work_struct = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %call = tail call zeroext i1 @flush_work(ptr noundef %work_struct) #9
  tail call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jl2005c_dostream(ptr noundef %work) #2 align 64 {
entry:
  %act_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2620
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #9
  %0 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %act_len, align 4, !annotation !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %present = getelementptr i8, ptr %work, i32 -29
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not175 = icmp eq i8 %3, 0
  br i1 %tobool4.not175, label %while.cond.preheader.quit_stream_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.quit_stream_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %streaming = getelementptr i8, ptr %work, i32 -798
  %frozen = getelementptr i8, ptr %work, i32 -30
  %usb_lock = getelementptr i8, ptr %work, i32 -128
  %usb_buf.i.i = getelementptr i8, ptr %work, i32 -832
  %dev.i.i = getelementptr i8, ptr %work, i32 -1136
  %name.i = getelementptr i8, ptr %work, i32 -1204
  %arrayidx = getelementptr i8, ptr %call7.i, i32 7
  %block_size = getelementptr i8, ptr %work, i32 48
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %quit_stream

land.rhs:                                         ; preds = %while.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %bytes_left.0177 = phi i32 [ 0, %land.rhs.lr.ph ], [ %bytes_left.2.lcssa.ph, %while.end.land.rhs_crit_edge ]
  %header_read.0176 = phi i32 [ 0, %land.rhs.lr.ph ], [ %header_read.2.lcssa.ph, %while.end.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %streaming, align 2, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.rhs.quit_stream_crit_edge, label %while.body

land.rhs.quit_stream_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %while.body.quit_stream_crit_edge

while.body.quit_stream_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

if.end8:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %header_read.0176)
  %tobool9.not = icmp eq i32 %header_read.0176, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end60_crit_edge

if.end8.if.end60_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then10:                                        ; preds = %if.end8
  call void @mutex_lock_nested(ptr noundef %usb_lock, i32 noundef 0) #9
  %8 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 32513, ptr %9, align 1
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -1073643520
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i.i = call i32 @usb_bulk_msg(ptr noundef %12, i32 noundef %or.i.i, ptr noundef %15, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %jl2005c_write2.exit.thread.i, label %if.then10.while.body.i_crit_edge

if.then10.while.body.i_crit_edge:                 ; preds = %if.then10
  br label %while.body.i

jl2005c_write2.exit.thread.i:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %conv.i.i = zext i8 %19 to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i, i32 noundef %call4.i.i) #12
  br label %jl2005c_start_new_frame.exit.thread

while.cond.i:                                     ; preds = %if.end6.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.038.i)
  %cmp2.i = icmp ult i32 %i.038.i, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %or.cond.i = select i1 %cmp2.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.then10.while.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %if.then10.while.body.i_crit_edge ]
  %call3.i = call fastcc i32 @jl2005c_read_reg(ptr noundef %add.ptr, i8 noundef zeroext 126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %while.body.i.jl2005c_start_new_frame.exit.thread_crit_edge, label %if.end6.i

while.body.i.jl2005c_start_new_frame.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_start_new_frame.exit.thread

if.end6.i:                                        ; preds = %while.body.i
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %call7.i153 = call fastcc i32 @jl2005c_read_reg(ptr noundef %add.ptr, i8 noundef zeroext 125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i153)
  %cmp8.i = icmp slt i32 %call7.i153, 0
  br i1 %cmp8.i, label %if.end6.i.jl2005c_start_new_frame.exit.thread_crit_edge, label %while.cond.i

if.end6.i.jl2005c_start_new_frame.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_start_new_frame.exit.thread

do.body.i:                                        ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp12.i = icmp sgt i32 %24, 3
  br i1 %cmp12.i, label %do.end.i, label %do.body.i.if.end14_crit_edge

do.body.i.if.end14_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv18.i = zext i8 %28 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i, i32 noundef %conv18.i) #12
  br label %if.end14

jl2005c_start_new_frame.exit.thread:              ; preds = %if.end6.i.jl2005c_start_new_frame.exit.thread_crit_edge, %while.body.i.jl2005c_start_new_frame.exit.thread_crit_edge, %jl2005c_write2.exit.thread.i
  call void @mutex_unlock(ptr noundef %usb_lock) #9
  br label %quit_stream

if.end14:                                         ; preds = %do.end.i, %do.body.i.if.end14_crit_edge
  call void @mutex_unlock(ptr noundef %usb_lock) #9
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i = shl i32 %32, 8
  %or18 = or i32 %shl.i, -1069481856
  %call19 = call i32 @usb_bulk_msg(ptr noundef %30, i32 noundef %or18, ptr noundef nonnull %call7.i, i32 noundef 512, ptr noundef nonnull %act_len, i32 noundef 1000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %33 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp21 = icmp sgt i32 %33, 4
  br i1 %cmp21, label %do.end25, label %if.end14.do.end30_crit_edge

if.end14.do.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %act_len, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %35, i32 noundef 512) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %if.end14.do.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp31 = icmp slt i32 %call19, 0
  br i1 %cmp31, label %do.end30.quit_stream_crit_edge, label %lor.lhs.false

do.end30.quit_stream_crit_edge:                   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

lor.lhs.false:                                    ; preds = %do.end30
  %36 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %37)
  %cmp32 = icmp slt i32 %37, 512
  br i1 %cmp32, label %lor.lhs.false.quit_stream_crit_edge, label %if.end34

lor.lhs.false.quit_stream_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

if.end34:                                         ; preds = %lor.lhs.false
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) @__const.jl2005c_dostream.header_sig, ptr noundef nonnull dereferenceable(2) %call7.i, i32 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp37.not = icmp eq i32 %bcmp, 0
  br i1 %cmp37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %quit_stream

if.end44:                                         ; preds = %if.end34
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %39 to i32
  %40 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %block_size, align 4
  %mul = mul i32 %41, %conv
  %sub = sub i32 %mul, %37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp46 = icmp sgt i32 %42, 4
  br i1 %cmp46, label %do.end51, label %if.end44.do.end59_crit_edge

if.end44.do.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %sub) #12
  br label %do.end59

do.end59:                                         ; preds = %do.end51, %if.end44.do.end59_crit_edge
  %43 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %act_len, align 4
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %call7.i, i32 noundef %44) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %if.end8.if.end60_crit_edge
  %bytes_left.1 = phi i32 [ %bytes_left.0177, %if.end8.if.end60_crit_edge ], [ %sub, %do.end59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_left.1)
  %cmp62168 = icmp sgt i32 %bytes_left.1, 0
  br i1 %cmp62168, label %if.end60.land.rhs64_crit_edge, label %if.end60.while.end_crit_edge

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end60.land.rhs64_crit_edge:                    ; preds = %if.end60
  br label %land.rhs64

land.rhs64:                                       ; preds = %do.end99.land.rhs64_crit_edge, %if.end60.land.rhs64_crit_edge
  %bytes_left.2170 = phi i32 [ %sub100, %do.end99.land.rhs64_crit_edge ], [ %bytes_left.1, %if.end60.land.rhs64_crit_edge ]
  %header_read.2169 = phi i32 [ %.header_read.2, %do.end99.land.rhs64_crit_edge ], [ 1, %if.end60.land.rhs64_crit_edge ]
  %45 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %present, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool66.not = icmp eq i8 %46, 0
  br i1 %tobool66.not, label %land.rhs64.quit_stream_crit_edge, label %while.body69

land.rhs64.quit_stream_crit_edge:                 ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

while.body69:                                     ; preds = %land.rhs64
  %47 = call i32 @llvm.umin.i32(i32 %bytes_left.2170, i32 512)
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %shl.i154 = shl i32 %51, 8
  %or76 = or i32 %shl.i154, -1069481856
  %call77 = call i32 @usb_bulk_msg(ptr noundef %49, i32 noundef %or76, ptr noundef nonnull %call7.i, i32 noundef %47, ptr noundef nonnull %act_len, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %while.body69.quit_stream_crit_edge, label %lor.lhs.false80

while.body69.quit_stream_crit_edge:               ; preds = %while.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

lor.lhs.false80:                                  ; preds = %while.body69
  %52 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %act_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %47)
  %cmp81 = icmp slt i32 %53, %47
  br i1 %cmp81, label %lor.lhs.false80.quit_stream_crit_edge, label %do.body85

lor.lhs.false80.quit_stream_crit_edge:            ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

do.body85:                                        ; preds = %lor.lhs.false80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %54 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp86 = icmp sgt i32 %54, 4
  br i1 %cmp86, label %do.end91, label %do.body85.do.end99_crit_edge

do.body85.do.end99_crit_edge:                     ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, i32 noundef %47, i32 noundef %bytes_left.2170) #12
  br label %do.end99

do.end99:                                         ; preds = %do.end91, %do.body85.do.end99_crit_edge
  %sub100 = sub nsw i32 %bytes_left.2170, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub100)
  %cmp101 = icmp eq i32 %sub100, 0
  %. = select i1 %cmp101, i32 3, i32 2
  %.header_read.2 = select i1 %cmp101, i32 0, i32 %header_read.2169
  call void @gspca_frame_add(ptr noundef %add.ptr, i32 noundef %., ptr noundef nonnull %call7.i, i32 noundef %47) #9
  %cmp62 = icmp sgt i32 %sub100, 0
  br i1 %cmp62, label %do.end99.land.rhs64_crit_edge, label %do.end99.while.end_crit_edge

do.end99.while.end_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end99.land.rhs64_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs64

while.end:                                        ; preds = %do.end99.while.end_crit_edge, %if.end60.while.end_crit_edge
  %header_read.2.lcssa.ph = phi i32 [ 1, %if.end60.while.end_crit_edge ], [ %.header_read.2, %do.end99.while.end_crit_edge ]
  %bytes_left.2.lcssa.ph = phi i32 [ %bytes_left.1, %if.end60.while.end_crit_edge ], [ %sub100, %do.end99.while.end_crit_edge ]
  %55 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %present, align 1
  %tobool4.not = icmp eq i8 %.pr, 0
  br i1 %tobool4.not, label %while.end.quit_stream_crit_edge, label %while.end.land.rhs_crit_edge

while.end.land.rhs_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end.quit_stream_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %quit_stream

quit_stream:                                      ; preds = %while.end.quit_stream_crit_edge, %lor.lhs.false80.quit_stream_crit_edge, %while.body69.quit_stream_crit_edge, %land.rhs64.quit_stream_crit_edge, %do.end41, %lor.lhs.false.quit_stream_crit_edge, %do.end30.quit_stream_crit_edge, %jl2005c_start_new_frame.exit.thread, %while.body.quit_stream_crit_edge, %land.rhs.quit_stream_crit_edge, %do.end, %while.cond.preheader.quit_stream_crit_edge
  %present106 = getelementptr i8, ptr %work, i32 -29
  %56 = ptrtoint ptr %present106 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %present106, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool107.not = icmp eq i8 %57, 0
  br i1 %tobool107.not, label %quit_stream.if.end112_crit_edge, label %if.then108

quit_stream.if.end112_crit_edge:                  ; preds = %quit_stream
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then108:                                       ; preds = %quit_stream
  %usb_lock109 = getelementptr i8, ptr %work, i32 -128
  call void @mutex_lock_nested(ptr noundef %usb_lock109, i32 noundef 0) #9
  %usb_buf.i.i.i = getelementptr i8, ptr %work, i32 -832
  %58 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 1792, ptr %59, align 1
  %dev.i.i.i = getelementptr i8, ptr %work, i32 -1136
  %61 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i.i.i = shl i32 %64, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -1073643520
  %65 = load ptr, ptr %usb_buf.i.i.i, align 4
  %call4.i.i.i = call i32 @usb_bulk_msg(ptr noundef %62, i32 noundef %or.i.i.i, ptr noundef %65, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then108.jl2005c_stop.exit_crit_edge

if.then108.jl2005c_stop.exit_crit_edge:           ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %jl2005c_stop.exit

do.end.i.i.i:                                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %usb_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv.i.i.i = zext i8 %69 to i32
  %call6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i.i.i, i32 noundef %call4.i.i.i) #12
  br label %jl2005c_stop.exit

jl2005c_stop.exit:                                ; preds = %do.end.i.i.i, %if.then108.jl2005c_stop.exit_crit_edge
  call void @mutex_unlock(ptr noundef %usb_lock109) #9
  br label %if.end112

if.end112:                                        ; preds = %jl2005c_stop.exit, %quit_stream.if.end112_crit_edge
  call void @kfree(ptr noundef %call7.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jl2005c_read_reg(ptr nocapture noundef readonly %gspca_dev, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 %reg, ptr getelementptr inbounds ([2 x i8], ptr @jl2005c_read_reg.instruction, i32 0, i32 1), align 1
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf.i, align 4
  %2 = load i16, ptr @jl2005c_read_reg.instruction, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %1, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -1073643520
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call4.i = tail call i32 @usb_bulk_msg(ptr noundef %5, i32 noundef %or.i, ptr noundef %8, i32 noundef 2, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %jl2005c_write2.exit.thread, label %if.end

jl2005c_write2.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i, i32 noundef %call4.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i7 = shl i32 %16, 8
  %or3.i = or i32 %shl.i.i7, -1069416320
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call4.i9 = tail call i32 @usb_bulk_msg(ptr noundef %14, i32 noundef %or3.i, ptr noundef %18, i32 noundef 1, ptr noundef null, i32 noundef 500) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9)
  %cmp.i10 = icmp slt i32 %call4.i9, 0
  br i1 %cmp.i10, label %do.end.i13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i13:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_buf.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv.i11 = zext i8 %22 to i32
  %call6.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv.i11, i32 noundef %call4.i9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i13, %if.end.cleanup_crit_edge, %jl2005c_write2.exit.thread
  %retval.0 = phi i32 [ %call4.i, %jl2005c_write2.exit.thread ], [ %call4.i9, %if.end.cleanup_crit_edge ], [ %call4.i9, %do.end.i13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 17, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_jl2005bcd__307_522_sd_driver_init6, !8, !"__initcall__kmod_gspca_jl2005bcd__307_522_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 522, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 511, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 510, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 487, i32 29}
!17 = !{ptr @sd_config.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 427, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 171, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jl2005c_get_firmware_id._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @jl2005c_get_firmware_id._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 174, i32 2}
!28 = !{ptr @jl2005c_get_firmware_id._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @jl2005c_get_firmware_id._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 185, i32 2}
!32 = !{ptr @jl2005c_get_firmware_id._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @jl2005c_get_firmware_id._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @jl2005c_read_reg.instruction, !35, !"instruction", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 107, i32 12}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 83, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @jl2005c_write2._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @jl2005c_write2._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 97, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @jl2005c_read1._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @jl2005c_read1._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @cif_mode, !47, !"cif_mode", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 42, i32 37}
!48 = !{ptr @vga_mode, !49, !"vga_mode", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 55, i32 37}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 317, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @jl2005c_dostream._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @jl2005c_dostream._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 337, i32 4}
!57 = !{ptr @jl2005c_dostream._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @jl2005c_dostream._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 344, i32 5}
!61 = !{ptr @jl2005c_dostream._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @jl2005c_dostream._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 350, i32 4}
!65 = !{ptr @jl2005c_dostream._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @jl2005c_dostream._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 367, i32 4}
!69 = !{ptr @jl2005c_dostream._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @jl2005c_dostream._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"instruction", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 125, i32 12}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 143, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @jl2005c_start_new_frame._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @jl2005c_start_new_frame._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 446, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sd_start._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @sd_start._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 450, i32 3}
!85 = !{ptr @sd_start._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sd_start._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 454, i32 3}
!89 = !{ptr @sd_start._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sd_start._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 458, i32 3}
!93 = !{ptr @sd_start._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @sd_start._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 462, i32 3}
!97 = !{ptr @sd_start._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sd_start._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"instruction", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 200, i32 12}
!101 = distinct !{null, !102, !"instruction", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 223, i32 12}
!103 = distinct !{null, !104, !"instruction", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 246, i32 12}
!105 = distinct !{null, !106, !"instruction", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 269, i32 12}
!107 = !{ptr @device_table, !108, !"device_table", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/jl2005bcd.c", i32 496, i32 35}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i8 0, i8 2}
