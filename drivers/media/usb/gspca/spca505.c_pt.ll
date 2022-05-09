; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/spca505.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/spca505.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [67 x i8] c"gspca_spca505.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_spca505.description=GSPCA/SPCA505 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_spca505.file=drivers/media/usb/gspca/gspca_spca505\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_spca505.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_spca505__307_791_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_spca505\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spca505\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16413, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1843, i16 1072, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [5 x %struct.v4l2_pix_format], [48 x i8] } { [5 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 892351827, i32 1, i32 160, i32 28800, i32 8, i32 4, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 892351827, i32 1, i32 176, i32 38016, i32 8, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 892351827, i32 1, i32 320, i32 115200, i32 8, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 892351827, i32 1, i32 352, i32 152064, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 892351827, i32 1, i32 640, i32 460800, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@spca505b_init_data = internal constant { [52 x [3 x i8]], [36 x i8] } { [52 x [3 x i8]] [[3 x i8] c"\02\00\00", [3 x i8] c"\02\00\01", [3 x i8] c"\02\00\02", [3 x i8] c"\02\00\03", [3 x i8] c"\02\00\04", [3 x i8] c"\02\00\05", [3 x i8] c"\02\00\06", [3 x i8] c"\02\00\07", [3 x i8] c"\02\00\08", [3 x i8] c"\02\00\09", [3 x i8] c"\03\00\00", [3 x i8] c"\03\00\01", [3 x i8] c"\03\00\02", [3 x i8] c"\03\00\03", [3 x i8] c"\03\00\04", [3 x i8] c"\03\00\05", [3 x i8] c"\03\00\06", [3 x i8] c"\04\00\00", [3 x i8] c"\04\00\02", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\04\00\06", [3 x i8] c"\04\00\07", [3 x i8] c"\04\00\08", [3 x i8] c"\04\00\09", [3 x i8] c"\04\00\0A", [3 x i8] c"\04\00\0B", [3 x i8] c"\04\00\0C", [3 x i8] c"\07\00\00", [3 x i8] c"\07\00\03", [3 x i8] c"\08\00\00", [3 x i8] c"\08\00\01", [3 x i8] c"\08\00\02", [3 x i8] c"\06\18\08", [3 x i8] c"\06\FC\09", [3 x i8] c"\06\FC\0A", [3 x i8] c"\06\FC\0B", [3 x i8] c"\06\18\0C", [3 x i8] c"\06\FC\0D", [3 x i8] c"\06\FC\0E", [3 x i8] c"\06\FC\0F", [3 x i8] c"\06\18\10", [3 x i8] c"\06\FE\12", [3 x i8] c"\06\00\11", [3 x i8] c"\06\00\14", [3 x i8] c"\06\00\13", [3 x i8] c"\06(Q", [3 x i8] c"\06\FFS", [3 x i8] c"\02\00\08", [3 x i8] c"\03\00\03", [3 x i8] c"\03\10\03", [3 x i8] zeroinitializer], [36 x i8] zeroinitializer }, align 32
@spca505_init_data = internal constant { [24 x [3 x i8]], [56 x i8] } { [24 x [3 x i8]] [[3 x i8] c"\03 \03", [3 x i8] c"\03\00\03", [3 x i8] c"\03\00\01", [3 x i8] c"\03\01\00", [3 x i8] c"\05\01\10", [3 x i8] c"\05\0F\11", [3 x i8] c"\06\10\08", [3 x i8] c"\06\00\09", [3 x i8] c"\06\00\0A", [3 x i8] c"\06\00\0B", [3 x i8] c"\06\10\0C", [3 x i8] c"\06\00\0D", [3 x i8] c"\06\00\0E", [3 x i8] c"\06\00\0F", [3 x i8] c"\06\10\10", [3 x i8] c"\06\02\11", [3 x i8] c"\06\00\12", [3 x i8] c"\06\04\13", [3 x i8] c"\06\02\14", [3 x i8] c"\06\8AQ", [3 x i8] c"\06@R", [3 x i8] c"\06\B6S", [3 x i8] c"\06=T", [3 x i8] zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: reg write: 0x%02x,0x%02x:0x%02x, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/spca505.c\00", [62 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr = internal global ptr @reg_write._entry, section ".printk_index", align 4
@reg_write._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_spca505: reg write: error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@reg_write._entry_ptr.7 = internal global ptr @reg_write._entry.5, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spca505:739:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_spca505: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start.mode_tb = internal constant { [5 x [3 x i8]], [17 x i8] } { [5 x [3 x i8]] [[3 x i8] c"\00\10\10", [3 x i8] c"\01\1A\1A", [3 x i8] c"\02\1C\1D", [3 x i8] c"\0444", [3 x i8] c"\05@@"], [17 x i8] zeroinitializer }, align 32
@spca505b_open_data_ccd = internal constant { [153 x [3 x i8]], [117 x i8] } { [153 x [3 x i8]] [[3 x i8] c"\03\04\01", [3 x i8] c"\03\00\01", [3 x i8] c"\03\00\00", [3 x i8] c"\03!\00", [3 x i8] c"\03\00\04", [3 x i8] c"\03\00\03", [3 x i8] c"\03\18\03", [3 x i8] c"\03\08\01", [3 x i8] c"\03\1C\03", [3 x i8] c"\03\\\03", [3 x i8] c"\03\\\03", [3 x i8] c"\03\18\01", [3 x i8] c"\04\10\01", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\04 \06", [3 x i8] c"\04 \07", [3 x i8] c"\08\0A\00", [3 x i8] c"\05\00\10", [3 x i8] c"\05\00\11", [3 x i8] c"\05\00\12", [3 x i8] c"\05o\00", [3 x i8] c"\05\01\00", [3 x i8] c"\05\FC\01", [3 x i8] c"\05\00\02", [3 x i8] c"\05\01\03", [3 x i8] c"\05\00\04", [3 x i8] c"\05\03\05", [3 x i8] c"\05\E0\06", [3 x i8] c"\05 \07", [3 x i8] c"\05\A0\08", [3 x i8] c"\05\00\12", [3 x i8] c"\05\02\0F", [3 x i8] c"\05\80\14", [3 x i8] c"\05\01\B0", [3 x i8] c"\05\01\BF", [3 x i8] c"\03\02\06", [3 x i8] c"\05\10F", [3 x i8] c"\05\08J", [3 x i8] c"\06\00\01", [3 x i8] c"\06\10\02", [3 x i8] c"\06d\07", [3 x i8] c"\06\18\08", [3 x i8] c"\06\FC\09", [3 x i8] c"\06\FC\0A", [3 x i8] c"\06\FC\0B", [3 x i8] c"\04\00\01", [3 x i8] c"\06\18\0C", [3 x i8] c"\06\FC\0D", [3 x i8] c"\06\FC\0E", [3 x i8] c"\06\FC\0F", [3 x i8] c"\06\11\10", [3 x i8] c"\06\00\11", [3 x i8] c"\06\FE\12", [3 x i8] c"\06\00\13", [3 x i8] c"\06\00\14", [3 x i8] c"\06\9DQ", [3 x i8] c"\06@R", [3 x i8] c"\06|S", [3 x i8] c"\06@T", [3 x i8] c"\06\02W", [3 x i8] c"\06\03X", [3 x i8] c"\06\15Y", [3 x i8] c"\06\05Z", [3 x i8] c"\06\03V", [3 x i8] c"\06\02?", [3 x i8] c"\06\00@", [3 x i8] c"\069A", [3 x i8] c"\06iB", [3 x i8] c"\06\87C", [3 x i8] c"\06\9ED", [3 x i8] c"\06\B1E", [3 x i8] c"\06\BFF", [3 x i8] c"\06\CCG", [3 x i8] c"\06\D5H", [3 x i8] c"\06\DDI", [3 x i8] c"\06\E3J", [3 x i8] c"\06\E8K", [3 x i8] c"\06\EDL", [3 x i8] c"\06\F2M", [3 x i8] c"\06\F7N", [3 x i8] c"\06\FCO", [3 x i8] c"\06\FFP", [3 x i8] c"\05\01\C0", [3 x i8] c"\05\10\CB", [3 x i8] c"\05@\C1", [3 x i8] c"\05\04\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05@\C1", [3 x i8] c"\05\09\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\C0\C1", [3 x i8] c"\05\09\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05@\C1", [3 x i8] c"\05Y\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\04\00\01", [3 x i8] c"\05\80\C1", [3 x i8] c"\05\EC\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\06\02W", [3 x i8] c"\06\01X", [3 x i8] c"\06\15Y", [3 x i8] c"\06\0AZ", [3 x i8] c"\06\01W", [3 x i8] c"\06\8A\03", [3 x i8] c"\06\0Al", [3 x i8] c"\060\01", [3 x i8] c"\06 \02", [3 x i8] c"\06\00\03", [3 x i8] c"\05\8C%", [3 x i8] c"\06MQ", [3 x i8] c"\06\84S", [3 x i8] c"\06\00W", [3 x i8] c"\06\18\08", [3 x i8] c"\06\FC\09", [3 x i8] c"\06\FC\0A", [3 x i8] c"\06\FC\0B", [3 x i8] c"\06\18\0C", [3 x i8] c"\06\FC\0D", [3 x i8] c"\06\FC\0E", [3 x i8] c"\06\FC\0F", [3 x i8] c"\06\18\10", [3 x i8] c"\05\01\02", [3 x i8] c"\04\00\08", [3 x i8] c"\04\12\09", [3 x i8] c"\04!\0A", [3 x i8] c"\04\10\0B", [3 x i8] c"\04!\0C", [3 x i8] c"\04\1D\00", [3 x i8] c"\04A\01", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\04\10\06", [3 x i8] c"\04\10\07", [3 x i8] c"\04@\06", [3 x i8] c"\04@\07", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\06\1C\17", [3 x i8] c"\06\E2\19", [3 x i8] c"\06\1C\1B", [3 x i8] c"\06\E2\1D", [3 x i8] c"\06_\1F", [3 x i8] c"\062 ", [3 x i8] c"\05\01\00", [3 x i8] c"\05\FC\01", [3 x i8] c"\05\06\C1", [3 x i8] c"\05X\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\00\11", [3 x i8] zeroinitializer], [117 x i8] zeroinitializer }, align 32
@spca505_open_data_ccd = internal constant { [124 x [3 x i8]], [76 x i8] } { [124 x [3 x i8]] [[3 x i8] c"\03\04\01", [3 x i8] c"\03\00\01", [3 x i8] c"\04\10\01", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\04 \06", [3 x i8] c"\04 \07", [3 x i8] c"\08\0A\00", [3 x i8] c"\05\00\10", [3 x i8] c"\05\00\11", [3 x i8] c"\05\00\00", [3 x i8] c"\05\00\01", [3 x i8] c"\05\00\02", [3 x i8] c"\05\00\03", [3 x i8] c"\05\00\04", [3 x i8] c"\05\80\05", [3 x i8] c"\05\E0\06", [3 x i8] c"\05 \07", [3 x i8] c"\05\A0\08", [3 x i8] c"\05\00\12", [3 x i8] c"\05\02\0F", [3 x i8] c"\05\10F", [3 x i8] c"\05\08J", [3 x i8] c"\03\08\03", [3 x i8] c"\03\08\01", [3 x i8] c"\03\0C\03", [3 x i8] c"\03!\00", [3 x i8] c"\06\10\08", [3 x i8] c"\06\00\09", [3 x i8] c"\06\00\0A", [3 x i8] c"\06\00\0B", [3 x i8] c"\06\10\0C", [3 x i8] c"\06\00\0D", [3 x i8] c"\06\00\0E", [3 x i8] c"\06\00\0F", [3 x i8] c"\06\10\10", [3 x i8] c"\06\02\11", [3 x i8] c"\06\00\12", [3 x i8] c"\06\04\13", [3 x i8] c"\06\02\14", [3 x i8] c"\06\8AQ", [3 x i8] c"\06@R", [3 x i8] c"\06\B6S", [3 x i8] c"\06=T", [3 x i8] c"\06?\01", [3 x i8] c"\06\10\02", [3 x i8] c"\06d\07", [3 x i8] c"\06\10\08", [3 x i8] c"\06\00\09", [3 x i8] c"\06\00\0A", [3 x i8] c"\06\00\0B", [3 x i8] c"\06\10\0C", [3 x i8] c"\06\00\0D", [3 x i8] c"\06\00\0E", [3 x i8] c"\06\00\0F", [3 x i8] c"\06\10\10", [3 x i8] c"\06\02\11", [3 x i8] c"\06\00\12", [3 x i8] c"\06\04\13", [3 x i8] c"\06\02\14", [3 x i8] c"\06\8AQ", [3 x i8] c"\06@R", [3 x i8] c"\06\B6S", [3 x i8] c"\06=T", [3 x i8] c"\06`W", [3 x i8] c"\06 X", [3 x i8] c"\06\15Y", [3 x i8] c"\06\05Z", [3 x i8] c"\05\01\C0", [3 x i8] c"\05\10\CB", [3 x i8] c"\05\80\C1", [3 x i8] c"\05\00\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\80\C1", [3 x i8] c"\05\04\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\00\C1", [3 x i8] c"\05\00\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05@\C1", [3 x i8] c"\05\17\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\80\C1", [3 x i8] c"\05\06\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\05\80\C1", [3 x i8] c"\05\04\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\03L\03", [3 x i8] c"\03\18\01", [3 x i8] c"\06pQ", [3 x i8] c"\06\BES", [3 x i8] c"\06qW", [3 x i8] c"\06 X", [3 x i8] c"\06\05Y", [3 x i8] c"\06\15Z", [3 x i8] c"\04\00\08", [3 x i8] c"\04\12\09", [3 x i8] c"\04!\0A", [3 x i8] c"\04\10\0B", [3 x i8] c"\04!\0C", [3 x i8] c"\04\05\00", [3 x i8] c"\04\00\01", [3 x i8] c"\06?\01", [3 x i8] c"\04\00\04", [3 x i8] c"\04\00\05", [3 x i8] c"\04@\06", [3 x i8] c"\04@\07", [3 x i8] c"\06\1C\17", [3 x i8] c"\06\E2\19", [3 x i8] c"\06\1C\1B", [3 x i8] c"\06\E2\1D", [3 x i8] c"\06\AA\1F", [3 x i8] c"\06p ", [3 x i8] c"\05\01\10", [3 x i8] c"\05\00\11", [3 x i8] c"\05\01\00", [3 x i8] c"\05\05\01", [3 x i8] c"\05\00\C1", [3 x i8] c"\05\00\C2", [3 x i8] c"\05\00\CA", [3 x i8] c"\06pQ", [3 x i8] c"\06\BES", [3 x i8] zeroinitializer], [76 x i8] zeroinitializer }, align 32
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: register read failed err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013gspca_spca505: After vector read returns 0x%04x should be 0x0101\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.15 = internal global ptr @sd_start._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 779, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 791, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 780, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 763, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 751, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"spca505b_init_data\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 301, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"spca505_init_data\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 544, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 547, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 739, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 730, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 744, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [8 x i8] c"mode_tb\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 627, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"spca505b_open_data_ccd\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 361, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"spca505_open_data_ccd\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 113, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 643, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [37 x i8] c"../drivers/media/usb/gspca/spca505.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 647, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_spca505__307_791_sd_driver_init6, ptr @reg_write._entry, ptr @reg_write._entry.5, ptr @reg_write._entry_ptr, ptr @reg_write._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.13, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.15, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @spca505b_init_data, ptr @spca505_init_data, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @sd_init_controls._key, ptr @.str.8, ptr @sd_ctrl_ops, ptr @.str.9, ptr @.str.10, ptr @sd_start.mode_tb, ptr @spca505b_open_data_ccd, ptr @spca505_open_data_ccd, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca505b_init_data to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca505_init_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_write._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start.mode_tb to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca505b_open_data_ccd to i32), i32 459, i32 576, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spca505_open_data_ccd to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #5
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %1 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %2 to i8
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %3 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %subtype, align 8
  %conv3 = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp.not = icmp eq i32 %conv3, 0
  %spec.select = select i1 %cmp.not, i8 4, i8 5
  %4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subtype, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cond = select i1 %cmp, ptr @spca505b_init_data, ptr @spca505_init_data
  %call = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.8) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #5
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subtype = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %subtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subtype, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %spca505b_open_data_ccd.spca505_open_data_ccd = select i1 %cmp, ptr @spca505b_open_data_ccd, ptr @spca505_open_data_ccd
  %call2 = tail call fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr noundef nonnull %spca505b_open_data_ccd.spca505_open_data_ccd)
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef %7, i16 noundef zeroext 2, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end, label %reg_read.exit

reg_read.exit:                                    ; preds = %entry
  %8 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  %conv9.i = zext i8 %13 to i32
  %add.i = or i32 %shl.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %add.i)
  %cmp9.not = icmp eq i32 %add.i, 257
  br i1 %cmp9.not, label %reg_read.exit.if.end17_crit_edge, label %do.end14

reg_read.exit.if.end17_crit_edge:                 ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %call3.i) #8
  br label %cleanup

do.end14:                                         ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %add.i) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %reg_read.exit.if.end17_crit_edge
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i62 = shl i32 %17, 8
  %or.i = or i32 %shl.i.i62, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 10, i16 noundef zeroext 22, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp.i63 = icmp sgt i32 %18, 6
  br i1 %cmp.i63, label %do.end.i, label %if.end17.do.end10.i_crit_edge

if.end17.do.end10.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef 6, i32 noundef 22, i32 noundef 10, i32 noundef %call2.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end17.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %reg_write.exit.thread, label %if.end22

reg_write.exit.thread:                            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i) #8
  br label %cleanup

if.end22:                                         ; preds = %do.end10.i
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i65 = shl i32 %22, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %call2.i67 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i66, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 18, i16 noundef zeroext 194, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp.i68 = icmp sgt i32 %23, 6
  br i1 %cmp.i68, label %do.end.i71, label %if.end22.do.end10.i73_crit_edge

if.end22.do.end10.i73_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i73

do.end.i71:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %name.i69 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i69, i32 noundef 5, i32 noundef 194, i32 noundef 18, i32 noundef %call2.i67) #8
  br label %do.end10.i73

do.end10.i73:                                     ; preds = %do.end.i71, %if.end22.do.end10.i73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %cmp11.i72 = icmp slt i32 %call2.i67, 0
  br i1 %cmp11.i72, label %do.end16.i75, label %do.end10.i73.reg_write.exit76_crit_edge

do.end10.i73.reg_write.exit76_crit_edge:          ; preds = %do.end10.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit76

do.end16.i75:                                     ; preds = %do.end10.i73
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i67) #8
  br label %reg_write.exit76

reg_write.exit76:                                 ; preds = %do.end16.i75, %do.end10.i73.reg_write.exit76_crit_edge
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i78 = shl i32 %27, 8
  %or.i79 = or i32 %shl.i.i78, -2147483648
  %call2.i80 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i79, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp.i81 = icmp sgt i32 %28, 6
  br i1 %cmp.i81, label %do.end.i84, label %reg_write.exit76.do.end10.i86_crit_edge

reg_write.exit76.do.end10.i86_crit_edge:          ; preds = %reg_write.exit76
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i86

do.end.i84:                                       ; preds = %reg_write.exit76
  call void @__sanitizer_cov_trace_pc() #7
  %name.i82 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i82, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %call2.i80) #8
  br label %do.end10.i86

do.end10.i86:                                     ; preds = %do.end.i84, %reg_write.exit76.do.end10.i86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i80)
  %cmp11.i85 = icmp slt i32 %call2.i80, 0
  br i1 %cmp11.i85, label %do.end16.i88, label %do.end10.i86.reg_write.exit89_crit_edge

do.end10.i86.reg_write.exit89_crit_edge:          ; preds = %do.end10.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit89

do.end16.i88:                                     ; preds = %do.end10.i86
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i80) #8
  br label %reg_write.exit89

reg_write.exit89:                                 ; preds = %do.end16.i88, %do.end10.i86.reg_write.exit89_crit_edge
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %29 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %31 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %curr_mode, align 1
  %conv25 = zext i8 %32 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %30, i32 %conv25, i32 7
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priv, align 4
  %arrayidx26 = getelementptr [5 x [3 x i8]], ptr @sd_start.mode_tb, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx26, align 1
  %conv28 = zext i8 %36 to i16
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i91 = shl i32 %40, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %call2.i93 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i92, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv28, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp.i94 = icmp sgt i32 %41, 6
  br i1 %cmp.i94, label %do.end.i97, label %reg_write.exit89.do.end10.i99_crit_edge

reg_write.exit89.do.end10.i99_crit_edge:          ; preds = %reg_write.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i99

do.end.i97:                                       ; preds = %reg_write.exit89
  call void @__sanitizer_cov_trace_pc() #7
  %name.i95 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i = zext i8 %36 to i32
  %call8.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i95, i32 noundef 4, i32 noundef 0, i32 noundef %conv7.i, i32 noundef %call2.i93) #8
  br label %do.end10.i99

do.end10.i99:                                     ; preds = %do.end.i97, %reg_write.exit89.do.end10.i99_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i93)
  %cmp11.i98 = icmp slt i32 %call2.i93, 0
  br i1 %cmp11.i98, label %do.end16.i101, label %do.end10.i99.reg_write.exit102_crit_edge

do.end10.i99.reg_write.exit102_crit_edge:         ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit102

do.end16.i101:                                    ; preds = %do.end10.i99
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i93) #8
  br label %reg_write.exit102

reg_write.exit102:                                ; preds = %do.end16.i101, %do.end10.i99.reg_write.exit102_crit_edge
  %arrayidx31 = getelementptr [5 x [3 x i8]], ptr @sd_start.mode_tb, i32 0, i32 %34, i32 1
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %43 to i16
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i104 = shl i32 %47, 8
  %or.i105 = or i32 %shl.i.i104, -2147483648
  %call2.i106 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i105, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv32, i16 noundef zeroext 6, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %48 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %48)
  %cmp.i107 = icmp sgt i32 %48, 6
  br i1 %cmp.i107, label %do.end.i111, label %reg_write.exit102.do.end10.i113_crit_edge

reg_write.exit102.do.end10.i113_crit_edge:        ; preds = %reg_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i113

do.end.i111:                                      ; preds = %reg_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  %name.i108 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i109 = zext i8 %43 to i32
  %call8.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i108, i32 noundef 4, i32 noundef 6, i32 noundef %conv7.i109, i32 noundef %call2.i106) #8
  br label %do.end10.i113

do.end10.i113:                                    ; preds = %do.end.i111, %reg_write.exit102.do.end10.i113_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i106)
  %cmp11.i112 = icmp slt i32 %call2.i106, 0
  br i1 %cmp11.i112, label %do.end16.i115, label %do.end10.i113.reg_write.exit116_crit_edge

do.end10.i113.reg_write.exit116_crit_edge:        ; preds = %do.end10.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit116

do.end16.i115:                                    ; preds = %do.end10.i113
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i106) #8
  br label %reg_write.exit116

reg_write.exit116:                                ; preds = %do.end16.i115, %do.end10.i113.reg_write.exit116_crit_edge
  %arrayidx35 = getelementptr [5 x [3 x i8]], ptr @sd_start.mode_tb, i32 0, i32 %34, i32 2
  %49 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %50 to i16
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i118 = shl i32 %54, 8
  %or.i119 = or i32 %shl.i.i118, -2147483648
  %call2.i120 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i119, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv36, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %55)
  %cmp.i121 = icmp sgt i32 %55, 6
  br i1 %cmp.i121, label %do.end.i125, label %reg_write.exit116.do.end10.i127_crit_edge

reg_write.exit116.do.end10.i127_crit_edge:        ; preds = %reg_write.exit116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i127

do.end.i125:                                      ; preds = %reg_write.exit116
  call void @__sanitizer_cov_trace_pc() #7
  %name.i122 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv7.i123 = zext i8 %50 to i32
  %call8.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i122, i32 noundef 4, i32 noundef 7, i32 noundef %conv7.i123, i32 noundef %call2.i120) #8
  br label %do.end10.i127

do.end10.i127:                                    ; preds = %do.end.i125, %reg_write.exit116.do.end10.i127_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i120)
  %cmp11.i126 = icmp slt i32 %call2.i120, 0
  br i1 %cmp11.i126, label %do.end16.i129, label %do.end10.i127.reg_write.exit130_crit_edge

do.end10.i127.reg_write.exit130_crit_edge:        ; preds = %do.end10.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit130

do.end16.i129:                                    ; preds = %do.end10.i127
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i120) #8
  br label %reg_write.exit130

reg_write.exit130:                                ; preds = %do.end16.i129, %do.end10.i127.reg_write.exit130_crit_edge
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  %shl.i.i132 = shl i32 %59, 8
  %or.i133 = or i32 %shl.i.i132, -2147483648
  %call2.i134 = tail call i32 @usb_control_msg(ptr noundef %57, i32 noundef %or.i133, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %60 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %60)
  %cmp.i135 = icmp sgt i32 %60, 6
  br i1 %cmp.i135, label %do.end.i138, label %reg_write.exit130.do.end10.i140_crit_edge

reg_write.exit130.do.end10.i140_crit_edge:        ; preds = %reg_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i140

do.end.i138:                                      ; preds = %reg_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  %name.i136 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i136, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef %call2.i134) #8
  br label %do.end10.i140

do.end10.i140:                                    ; preds = %do.end.i138, %reg_write.exit130.do.end10.i140_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i134)
  %cmp11.i139 = icmp slt i32 %call2.i134, 0
  br i1 %cmp11.i139, label %do.end16.i142, label %do.end10.i140.cleanup_crit_edge

do.end10.i140.cleanup_crit_edge:                  ; preds = %do.end10.i140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end16.i142:                                    ; preds = %do.end10.i140
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i134) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end16.i142, %do.end10.i140.cleanup_crit_edge, %reg_write.exit.thread, %do.end
  %retval.0 = phi i32 [ %call3.i, %do.end ], [ %call2.i, %reg_write.exit.thread ], [ %call2.i134, %do.end10.i140.cleanup_crit_edge ], [ %call2.i134, %do.end16.i142 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog.sink.split_crit_edge [
    i8 0, label %sw.bb
    i8 -1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink13 = phi i32 [ 10, %sw.bb ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink12 = phi i32 [ -10, %sw.bb ], [ -1, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %add.ptr1 = getelementptr i8, ptr %data, i32 %.sink13
  %sub2 = add i32 %.sink12, %len
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink, ptr noundef %add.ptr1, i32 noundef %sub2) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp.i = icmp sgt i32 %4, 6
  br i1 %cmp.i, label %do.end.i, label %entry.do.end10.i_crit_edge

entry.do.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %call2.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %entry.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end10.i.reg_write.exit_crit_edge

do.end10.i.reg_write.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end16.i, %do.end10.i.reg_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stop0(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 29
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %6 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp.i = icmp sgt i32 %6, 6
  br i1 %cmp.i, label %do.end.i, label %if.end.do.end10.i_crit_edge

if.end.do.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef 3, i32 noundef 3, i32 noundef 32, i32 noundef %call2.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end10.i.reg_write.exit_crit_edge

do.end10.i.reg_write.exit_crit_edge:              ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i) #8
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %do.end16.i, %do.end10.i.reg_write.exit_crit_edge
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i11 = shl i32 %10, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  %call2.i13 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i12, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i14 = icmp sgt i32 %11, 6
  br i1 %cmp.i14, label %do.end.i17, label %reg_write.exit.do.end10.i19_crit_edge

reg_write.exit.do.end10.i19_crit_edge:            ; preds = %reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i19

do.end.i17:                                       ; preds = %reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name.i15 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i15, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef %call2.i13) #8
  br label %do.end10.i19

do.end10.i19:                                     ; preds = %do.end.i17, %reg_write.exit.do.end10.i19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i13)
  %cmp11.i18 = icmp slt i32 %call2.i13, 0
  br i1 %cmp11.i18, label %do.end16.i21, label %do.end10.i19.reg_write.exit22_crit_edge

do.end10.i19.reg_write.exit22_crit_edge:          ; preds = %do.end10.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit22

do.end16.i21:                                     ; preds = %do.end10.i19
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i13) #8
  br label %reg_write.exit22

reg_write.exit22:                                 ; preds = %do.end16.i21, %do.end10.i19.reg_write.exit22_crit_edge
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i24 = shl i32 %15, 8
  %or.i25 = or i32 %shl.i.i24, -2147483648
  %call2.i26 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i25, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %cmp.i27 = icmp sgt i32 %16, 6
  br i1 %cmp.i27, label %do.end.i30, label %reg_write.exit22.do.end10.i32_crit_edge

reg_write.exit22.do.end10.i32_crit_edge:          ; preds = %reg_write.exit22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i32

do.end.i30:                                       ; preds = %reg_write.exit22
  call void @__sanitizer_cov_trace_pc() #7
  %name.i28 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i28, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef %call2.i26) #8
  br label %do.end10.i32

do.end10.i32:                                     ; preds = %do.end.i30, %reg_write.exit22.do.end10.i32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26)
  %cmp11.i31 = icmp slt i32 %call2.i26, 0
  br i1 %cmp11.i31, label %do.end16.i34, label %do.end10.i32.reg_write.exit35_crit_edge

do.end10.i32.reg_write.exit35_crit_edge:          ; preds = %do.end10.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit35

do.end16.i34:                                     ; preds = %do.end10.i32
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i26) #8
  br label %reg_write.exit35

reg_write.exit35:                                 ; preds = %do.end16.i34, %do.end10.i32.reg_write.exit35_crit_edge
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i37 = shl i32 %20, 8
  %or.i38 = or i32 %shl.i.i37, -2147483648
  %call2.i39 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i38, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 16, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp.i40 = icmp sgt i32 %21, 6
  br i1 %cmp.i40, label %do.end.i43, label %reg_write.exit35.do.end10.i45_crit_edge

reg_write.exit35.do.end10.i45_crit_edge:          ; preds = %reg_write.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i45

do.end.i43:                                       ; preds = %reg_write.exit35
  call void @__sanitizer_cov_trace_pc() #7
  %name.i41 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i41, i32 noundef 5, i32 noundef 16, i32 noundef 1, i32 noundef %call2.i39) #8
  br label %do.end10.i45

do.end10.i45:                                     ; preds = %do.end.i43, %reg_write.exit35.do.end10.i45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39)
  %cmp11.i44 = icmp slt i32 %call2.i39, 0
  br i1 %cmp11.i44, label %do.end16.i47, label %do.end10.i45.reg_write.exit48_crit_edge

do.end10.i45.reg_write.exit48_crit_edge:          ; preds = %do.end10.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit48

do.end16.i47:                                     ; preds = %do.end10.i45
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i39) #8
  br label %reg_write.exit48

reg_write.exit48:                                 ; preds = %do.end16.i47, %do.end10.i45.reg_write.exit48_crit_edge
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i50 = shl i32 %25, 8
  %or.i51 = or i32 %shl.i.i50, -2147483648
  %call2.i52 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i51, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 15, i16 noundef zeroext 17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp.i53 = icmp sgt i32 %26, 6
  br i1 %cmp.i53, label %do.end.i56, label %reg_write.exit48.do.end10.i58_crit_edge

reg_write.exit48.do.end10.i58_crit_edge:          ; preds = %reg_write.exit48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i58

do.end.i56:                                       ; preds = %reg_write.exit48
  call void @__sanitizer_cov_trace_pc() #7
  %name.i54 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call8.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i54, i32 noundef 5, i32 noundef 17, i32 noundef 15, i32 noundef %call2.i52) #8
  br label %do.end10.i58

do.end10.i58:                                     ; preds = %do.end.i56, %reg_write.exit48.do.end10.i58_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i52)
  %cmp11.i57 = icmp slt i32 %call2.i52, 0
  br i1 %cmp11.i57, label %do.end16.i60, label %do.end10.i58.return_crit_edge

do.end10.i58.return_crit_edge:                    ; preds = %do.end10.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end16.i60:                                     ; preds = %do.end10.i58
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i52) #8
  br label %return

return:                                           ; preds = %do.end16.i60, %do.end10.i58.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_vector(ptr noundef %gspca_dev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not23 = icmp eq i8 %1, 0
  br i1 %cmp.not23, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body

while.cond:                                       ; preds = %do.end10.i
  %inc = add i32 %i.024, 1
  %arrayidx = getelementptr [3 x i8], ptr %data, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i8 [ %1, %while.body.lr.ph ], [ %3, %while.cond.while.body_crit_edge ]
  %i.024 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.while.body_crit_edge ]
  %arrayidx7 = getelementptr [3 x i8], ptr %data, i32 %i.024, i32 2
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i16
  %arrayidx10 = getelementptr [3 x i8], ptr %data, i32 %i.024, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %8 to i16
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext %4, i8 noundef zeroext 64, i16 noundef zeroext %conv11, i16 noundef zeroext %conv8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i = icmp sgt i32 %13, 6
  br i1 %cmp.i, label %do.end.i, label %while.body.do.end10.i_crit_edge

while.body.do.end10.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i8 %4 to i32
  %conv6.i = zext i8 %6 to i32
  %conv7.i = zext i8 %8 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i, i32 noundef %call2.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %while.body.do.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp11.i = icmp slt i32 %call2.i, 0
  br i1 %cmp11.i, label %reg_write.exit.thread, label %while.cond

reg_write.exit.thread:                            ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %reg_write.exit.thread, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %reg_write.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %6)
  %cond = icmp eq i32 %6, 9963776
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %sub.i = sub i32 255, %8
  %9 = lshr i32 %sub.i, 6
  %conv.i = trunc i32 %9 to i16
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %sw.bb.do.end10.i.i_crit_edge

sw.bb.do.end10.i.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i.i = getelementptr i8, ptr %1, i32 -168
  %conv7.i.i = and i32 %9, 65535
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i.i, i32 noundef 5, i32 noundef 0, i32 noundef %conv7.i.i, i32 noundef %call2.i.i) #8
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %do.end.i.i, %sw.bb.do.end10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp11.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp11.i.i, label %do.end16.i.i, label %do.end10.i.i.reg_write.exit.i_crit_edge

do.end10.i.i.reg_write.exit.i_crit_edge:          ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_write.exit.i

do.end16.i.i:                                     ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i.i) #8
  br label %reg_write.exit.i

reg_write.exit.i:                                 ; preds = %do.end16.i.i, %do.end10.i.i.reg_write.exit.i_crit_edge
  %sub.tr.i = trunc i32 %sub.i to i16
  %conv2.i = shl i16 %sub.tr.i, 2
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i.i7.i = shl i32 %18, 8
  %or.i8.i = or i32 %shl.i.i7.i, -2147483648
  %call2.i9.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i8.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %conv2.i, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %19 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp.i10.i = icmp sgt i32 %19, 6
  br i1 %cmp.i10.i, label %do.end.i14.i, label %reg_write.exit.i.do.end10.i16.i_crit_edge

reg_write.exit.i.do.end10.i16.i_crit_edge:        ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10.i16.i

do.end.i14.i:                                     ; preds = %reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i11.i = getelementptr i8, ptr %1, i32 -168
  %conv7.i12.i = zext i16 %conv2.i to i32
  %call8.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name.i11.i, i32 noundef 5, i32 noundef 1, i32 noundef %conv7.i12.i, i32 noundef %call2.i9.i) #8
  br label %do.end10.i16.i

do.end10.i16.i:                                   ; preds = %do.end.i14.i, %reg_write.exit.i.do.end10.i16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i9.i)
  %cmp11.i15.i = icmp slt i32 %call2.i9.i, 0
  br i1 %cmp11.i15.i, label %do.end16.i18.i, label %do.end10.i16.i.sw.epilog_crit_edge

do.end10.i16.i.sw.epilog_crit_edge:               ; preds = %do.end10.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end16.i18.i:                                   ; preds = %do.end10.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call2.i9.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16.i18.i, %do.end10.i16.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %20 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/spca505.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/spca505.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/spca505.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_spca505__307_791_sd_driver_init6, !8, !"__initcall__kmod_gspca_spca505__307_791_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/spca505.c", i32 791, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/spca505.c", i32 780, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/spca505.c", i32 779, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/spca505.c", i32 751, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/spca505.c", i32 27, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/spca505.c", i32 544, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_write._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_write._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/spca505.c", i32 547, i32 3}
!27 = !{ptr @reg_write._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @reg_write._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @spca505b_init_data, !30, !"spca505b_init_data", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/spca505.c", i32 301, i32 17}
!31 = !{ptr @spca505_init_data, !32, !"spca505_init_data", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/spca505.c", i32 76, i32 17}
!33 = !{ptr @sd_init_controls._key, !34, !"_key", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/spca505.c", i32 739, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/spca505.c", i32 744, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sd_init_controls._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sd_init_controls._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @sd_ctrl_ops, !42, !"sd_ctrl_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/spca505.c", i32 730, i32 35}
!43 = !{ptr @sd_start.mode_tb, !44, !"mode_tb", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/spca505.c", i32 627, i32 12}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/spca505.c", i32 643, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sd_start._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sd_start._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/spca505.c", i32 647, i32 3}
!52 = !{ptr @sd_start._entry.13, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sd_start._entry_ptr.15, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @spca505b_open_data_ccd, !55, !"spca505b_open_data_ccd", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/spca505.c", i32 361, i32 17}
!56 = !{ptr @spca505_open_data_ccd, !57, !"spca505_open_data_ccd", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/spca505.c", i32 113, i32 17}
!58 = !{ptr @device_table, !59, !"device_table", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/spca505.c", i32 763, i32 35}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
