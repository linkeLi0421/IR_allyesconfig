; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/conex.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/conex.c"
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
%struct.sd = type { %struct.gspca_dev, ptr, ptr, ptr, [556 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [65 x i8] c"gspca_conex.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [57 x i8] c"gspca_conex.description=GSPCA USB Conexant Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_conex.file=drivers/media/usb/gspca/gspca_conex\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_conex.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_conex__307_953_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_conex\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"conex\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1394, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr null, ptr @sd_stop0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [4 x %struct.v4l2_pix_format], [32 x i8] } { [4 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 1195724874, i32 1, i32 176, i32 10094, i32 7, i32 3, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 1195724874, i32 1, i32 352, i32 38606, i32 7, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@cx_sensor_init = internal constant { [5 x [4 x i8]], [44 x i8] } { [5 x [4 x i8]] [[4 x i8] c"\88\11\01\01", [4 x i8] c"\88\12p\01", [4 x i8] c"\88\0F\00\01", [4 x i8] c"\88\05\01\01", [4 x i8] zeroinitializer], [44 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_r: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/conex.c\00", [32 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@reg_r._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: reg read [%02x] -> %02x ..\0A\00", [62 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr.7 = internal global ptr @reg_r._entry.5, section ".printk_index", align 4
@cx11646_initsize.reg12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\08\05\07\04$", [27 x i8] zeroinitializer }, align 32
@cx_inits_640 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"~~\80\02\E0\01\01\01\00\02\01\02\100\01\01eE\F7R,\DF\B9\810\00\00\00\04\00\00\00\E2\FF\F1\FF\C2\FF\BC\FF\F6\FF{\FF\01\02C\02w\03\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@cx_inits_352 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c".|`\01 \01\05\03\00\06\03\06\1B\10\05;0%\18%\080\03%;0%\1B\10\05\00\00\E3\FF\F1\FF\C2\FF\BC\FF\F5\FFk\FF\EE\01C\02\E4\03\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@cx_inits_320 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\7F\7F@\01\F0\00\02\01\00\01\01\01\10\00\02\01eE\FAL,\DF\B9\810\00\00\00\04\00\00\00\E2\FF\F1\FF\C2\FF\BC\FF\F5\FFm\FF\F6\01C\02\D3\03\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@cx_inits_176 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"3\81\B0\00\90\00\0A\03\00\03\03\03\1B\050\03e\15\18%\03%\080;%\10\00\04\00\00\00\DC\FF\EE\FF\C5\FF\BF\FF\F7\FF\88\FFf\02(\02\1E\03\00\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: reg_w: buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@reg_w._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: reg write [%02x] = %02x..\0A\00", [63 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr.12 = internal global ptr @reg_w._entry.10, section ".printk_index", align 4
@cx11646_fw1 = internal constant { [65 x [3 x i8]], [61 x i8] } { [65 x [3 x i8]] [[3 x i8] c"\00\02\00", [3 x i8] c"\01C\00", [3 x i8] c"\02\A7\00", [3 x i8] c"\03\8B\01", [3 x i8] c"\04\E9\02", [3 x i8] c"\05\08\04", [3 x i8] c"\06\08\05", [3 x i8] c"\07\07\06", [3 x i8] c"\08\E7\06", [3 x i8] c"\09\C6\07", [3 x i8] c"\0A\86\08", [3 x i8] c"\0BF\09", [3 x i8] c"\0C\05\0A", [3 x i8] c"\0D\A5\0A", [3 x i8] c"\0EE\0B", [3 x i8] c"\0F\E5\0B", [3 x i8] c"\10\85\0C", [3 x i8] c"\11%\0D", [3 x i8] c"\12\C4\0D", [3 x i8] c"\13E\0E", [3 x i8] c"\14\E4\0E", [3 x i8] c"\15d\0F", [3 x i8] c"\16\E4\0F", [3 x i8] c"\17d\10", [3 x i8] c"\18\E4\10", [3 x i8] c"\19d\11", [3 x i8] c"\1A\E4\11", [3 x i8] c"\1Bd\12", [3 x i8] c"\1C\E3\12", [3 x i8] c"\1DD\13", [3 x i8] c"\1E\C3\13", [3 x i8] c"\1F$\14", [3 x i8] c" \A3\14", [3 x i8] c"!\04\15", [3 x i8] c"\22\83\15", [3 x i8] c"#\E3\15", [3 x i8] c"$C\16", [3 x i8] c"%\A4\16", [3 x i8] c"&#\17", [3 x i8] c"'\83\17", [3 x i8] c"(\E3\17", [3 x i8] c")C\18", [3 x i8] c"*\A3\18", [3 x i8] c"+\03\19", [3 x i8] c",c\19", [3 x i8] c"-\C3\19", [3 x i8] c".\22\1A", [3 x i8] c"/c\1A", [3 x i8] c"0\C3\1A", [3 x i8] c"1#\1B", [3 x i8] c"2\83\1B", [3 x i8] c"3\E2\1B", [3 x i8] c"4#\1C", [3 x i8] c"5\83\1C", [3 x i8] c"6\E2\1C", [3 x i8] c"7#\1D", [3 x i8] c"8\83\1D", [3 x i8] c"9\E2\1D", [3 x i8] c":#\1E", [3 x i8] c";\82\1E", [3 x i8] c"<\C3\1E", [3 x i8] c"=\22\1F", [3 x i8] c">c\1F", [3 x i8] c"?\C1\1F", [3 x i8] zeroinitializer], [61 x i8] zeroinitializer }, align 32
@cxsensor = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\88\12p\01\88\0D\02\01\88\0F\00\01\88\03q\01\88\04\00\01\88\02\10\01\88\00\D4\01\88\01\01\01\88\0B\00\01\88\0A\0A\01\88\00\08\01\88\01\00\01\88\05\01\01\A1\18\00\01\00", [39 x i8] zeroinitializer }, align 32
@reg7b = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\FF\00\FF\00\FF", [26 x i8] zeroinitializer }, align 32
@cx_jpeg_init = internal constant { [79 x [8 x i8]], [136 x i8] } { [79 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\15", [8 x i8] c"\0F\10\12\10\0D\15\12\11", [8 x i8] c"\12\18\16\15\19 5\22", [8 x i8] c" \1D\1D A.1&", [8 x i8] c"5MCQOKCJ", [8 x i8] c"IU_ygUZs", [8 x i8] c"[IJj\90ks}", [8 x i8] c"\81\88\89\88Rf\95\A0", [8 x i8] c"\94\84\9Ey\85\88\83\01", [8 x i8] c"\15\0F\10\12\10\0D\15\12", [8 x i8] c"\11\12\18\16\15\19 5", [8 x i8] c"\22 \1D\1D A.1", [8 x i8] c"&5MCQOKC", [8 x i8] c"JIU_ygUZ", [8 x i8] c"s[IJj\90ks", [8 x i8] c"}\81\88\89\88Rf\95", [8 x i8] c"\A0\94\84\9Ey\85\88\83", [8 x i8] c"\FF\C4\01\A2\00\00\01\05", [8 x i8] c"\01\01\01\01\01\01\00\00", [8 x i8] c"\00\00\00\00\00\00\01\02", [8 x i8] c"\03\04\05\06\07\08\09\0A", [8 x i8] c"\0B\01\00\03\01\01\01\01", [8 x i8] c"\01\01\01\01\01\00\00\00", [8 x i8] c"\00\00\00\01\02\03\04\05", [8 x i8] c"\06\07\08\09\0A\0B\10\00", [8 x i8] c"\02\01\03\03\02\04\03\05", [8 x i8] c"\05\04\04\00\00\01}\01", [8 x i8] c"\02\03\00\04\11\05\12!", [8 x i8] c"1A\06\13Qa\07\22", [8 x i8] c"q\142\81\91\A1\08#", [8 x i8] c"B\B1\C1\15R\D1\F0$", [8 x i8] c"3br\82\09\0A\16\17", [8 x i8] c"\18\19\1A%&'()", [8 x i8] c"*456789:", [8 x i8] c"CDEFGHIJ", [8 x i8] c"STUVWXYZ", [8 x i8] c"cdefghij", [8 x i8] c"stuvwxyz", [8 x i8] c"\83\84\85\86\87\88\89\8A", [8 x i8] c"\92\93\94\95\96\97\98\99", [8 x i8] c"\9A\A2\A3\A4\A5\A6\A7\A8", [8 x i8] c"\A9\AA\B2\B3\B4\B5\B6\B7", [8 x i8] c"\B8\B9\BA\C2\C3\C4\C5\C6", [8 x i8] c"\C7\C8\C9\CA\D2\D3\D4\D5", [8 x i8] c"\D6\D7\D8\D9\DA\E1\E2\E3", [8 x i8] c"\E4\E5\E6\E7\E8\E9\EA\F1", [8 x i8] c"\F2\F3\F4\F5\F6\F7\F8\F9", [8 x i8] c"\FA\11\00\02\01\02\04\04", [8 x i8] c"\03\04\07\05\04\04\00\01", [8 x i8] c"\02w\00\01\02\03\11\04", [8 x i8] c"\05!1\06\12AQ\07", [8 x i8] c"aq\13\222\81\08\14", [8 x i8] c"B\91\A1\B1\C1\09#3", [8 x i8] c"R\F0\15br\D1\0A\16", [8 x i8] c"$4\E1%\F1\17\18\19", [8 x i8] c"\1A&'()*56", [8 x i8] c"789:CDEF", [8 x i8] c"GHIJSTUV", [8 x i8] c"WXYZcdef", [8 x i8] c"ghijstuv", [8 x i8] c"wxyz\82\83\84\85", [8 x i8] c"\86\87\88\89\8A\92\93\94", [8 x i8] c"\95\96\97\98\99\9A\A2\A3", [8 x i8] c"\A4\A5\A6\A7\A8\A9\AA\B2", [8 x i8] c"\B3\B4\B5\B6\B7\B8\B9\BA", [8 x i8] c"\C2\C3\C4\C5\C6\C7\C8\C9", [8 x i8] c"\CA\D2\D3\D4\D5\D6\D7\D8", [8 x i8] c"\D9\DA\E2\E3\E4\E5\E6\E7", [8 x i8] c"\E8\E9\EA\F2\F3\F4\F5\F6", [8 x i8] c"\F7\F8\F9\FA\FF \00\1F", [8 x i8] c"\02\0C\00\00\0A\00\00\00", [8 x i8] c"\00\00\11\00\11\22\00\22", [8 x i8] c"\22\11\22\22\1133\11", [8 x i8] c"Df\22Uf\FF\DD\00", [8 x i8] c"\04\00\14\FF\C0\00\11\08", [8 x i8] c"\00\F0\01@\03\00!\00", [8 x i8] c"\01\11\01\02\11\01\FF\DA", [8 x i8] c"\00\0C\03\00\00\01\11\02", [8 x i8] c"\11\00?\00\FF\D9\00\00"], [136 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"conex:901:(hdl)->_lock\00", [41 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_conex: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@jpeg_head = internal constant { [556 x i8], [148 x i8] } { [556 x i8] c"\FF\D8\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [148 x i8] zeroinitializer }, align 32
@cxjpeg_640 = internal constant { [27 x [8 x i8]], [40 x i8] } { [27 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\10", [8 x i8] c"\0B\0C\0E\0C\0A\10\0E\0D", [8 x i8] c"\0E\12\11\10\13\18(\1A", [8 x i8] c"\18\16\16\181#%\1D", [8 x i8] c"(:3=<938", [8 x i8] c"7@H\\N@DW", [8 x i8] c"E78PmQW_", [8 x i8] c"bghg>Mqy", [8 x i8] c"pdx\\egc\01", [8 x i8] c"\10\0B\0C\0E\0C\0A\10\0E", [8 x i8] c"\0D\0E\12\11\10\13\18(", [8 x i8] c"\1A\18\16\16\181#%", [8 x i8] c"\1D(:3=<93", [8 x i8] c"87@H\\N@D", [8 x i8] c"WE78PmQW", [8 x i8] c"_bghg>Mq", [8 x i8] c"ypdx\\egc", [8 x i8] c"\FF \00\1F\00\83\00\00", [8 x i8] c"\0A\00\00\00\00\00\11\00", [8 x i8] c"\11\22\00\22\22\11\22\22", [8 x i8] c"\1133\11Df\22U", [8 x i8] c"f\FF\DD\00\04\00(\FF", [8 x i8] c"\C0\00\11\08\01\E0\02\80", [8 x i8] c"\03\00!\00\01\11\01\02", [8 x i8] c"\11\01\FF\DA\00\0C\03\00", [8 x i8] c"\00\01\11\02\11\00?\00", [8 x i8] c"\FF\D9\00\00\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@cxjpeg_352 = internal constant { [27 x [8 x i8]], [40 x i8] } { [27 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\0D", [8 x i8] c"\09\09\0B\09\08\0D\0B\0A", [8 x i8] c"\0B\0E\0D\0D\0F\13\1F\14", [8 x i8] c"\13\11\11\13&\1B\1D\17", [8 x i8] c"\1F-(0/-(,", [8 x i8] c"+28H=25D", [8 x i8] c"6+,?U?DJ", [8 x i8] c"MPQP0<X_", [8 x i8] c"XN^HOPM\01", [8 x i8] c"\0D\09\09\0B\09\08\0D\0B", [8 x i8] c"\0A\0B\0E\0D\0D\0F\13\1F", [8 x i8] c"\14\13\11\11\13&\1B\1D", [8 x i8] c"\17\1F-(0/-(", [8 x i8] c",+28H=25", [8 x i8] c"D6+,?U?D", [8 x i8] c"JMPQP0<X", [8 x i8] c"_XN^HOPM", [8 x i8] c"\FF \00\1F\01\83\00\00", [8 x i8] c"\0A\00\00\00\00\00\11\00", [8 x i8] c"\11\22\00\22\22\11\22\22", [8 x i8] c"\1133\11Df\22U", [8 x i8] c"f\FF\DD\00\04\00\16\FF", [8 x i8] c"\C0\00\11\08\01 \01`", [8 x i8] c"\03\00!\00\01\11\01\02", [8 x i8] c"\11\01\FF\DA\00\0C\03\00", [8 x i8] c"\00\01\11\02\11\00?\00", [8 x i8] c"\FF\D9\00\00\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@cxjpeg_320 = internal constant { [27 x [8 x i8]], [40 x i8] } { [27 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\05", [8 x i8] c"\03\04\04\04\03\05\04\04", [8 x i8] c"\04\05\05\05\06\07\0C\08", [8 x i8] c"\07\07\07\07\0F\0B\0B\09", [8 x i8] c"\0C\11\0F\12\12\11\0F\11", [8 x i8] c"\11\13\16\1C\17\13\14\1A", [8 x i8] c"\15\11\11\18!\18\1A\1D", [8 x i8] c"\1D\1F\1F\1F\13\17\22$", [8 x i8] c"\22\1E$\1C\1E\1F\1E\01", [8 x i8] c"\05\03\04\04\04\03\05\04", [8 x i8] c"\04\04\05\05\05\06\07\0C", [8 x i8] c"\08\07\07\07\07\0F\0B\0B", [8 x i8] c"\09\0C\11\0F\12\12\11\0F", [8 x i8] c"\11\11\13\16\1C\17\13\14", [8 x i8] c"\1A\15\11\11\18!\18\1A", [8 x i8] c"\1D\1D\1F\1F\1F\13\17\22", [8 x i8] c"$\22\1E$\1C\1E\1F\1E", [8 x i8] c"\FF \00\1F\02\0C\00\00", [8 x i8] c"\0A\00\00\00\00\00\11\00", [8 x i8] c"\11\22\00\22\22\11\22\22", [8 x i8] c"\1133\11Df\22U", [8 x i8] c"f\FF\DD\00\04\00\14\FF", [8 x i8] c"\C0\00\11\08\00\F0\01@", [8 x i8] c"\03\00!\00\01\11\01\02", [8 x i8] c"\11\01\FF\DA\00\0C\03\00", [8 x i8] c"\00\01\11\02\11\00?\00", [8 x i8] c"\FF\D9\00\00\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@cxjpeg_176 = internal constant { [27 x [8 x i8]], [40 x i8] } { [27 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\0D", [8 x i8] c"\09\09\0B\09\08\0D\0B\0A", [8 x i8] c"\0B\0E\0D\0D\0F\13\1F\14", [8 x i8] c"\13\11\11\13&\1B\1D\17", [8 x i8] c"\1F-(0/-(,", [8 x i8] c"+28H=25D", [8 x i8] c"6+,?U?DJ", [8 x i8] c"MPQP0<X_", [8 x i8] c"XN^HOPM\01", [8 x i8] c"\0D\09\09\0B\09\08\0D\0B", [8 x i8] c"\0A\0B\0E\0D\0D\0F\13\1F", [8 x i8] c"\14\13\11\11\13&\1B\1D", [8 x i8] c"\17\1F-(0/-(", [8 x i8] c",+28H=25", [8 x i8] c"D6+,?U?D", [8 x i8] c"JMPQP0<X", [8 x i8] c"_XN^HOPM", [8 x i8] c"\FF \00\1F\03\A1\00\00", [8 x i8] c"\0A\00\00\00\00\00\11\00", [8 x i8] c"\11\22\00\22\22\11\22\22", [8 x i8] c"\1133\11Df\22U", [8 x i8] c"f\FF\DD\00\04\00\0B\FF", [8 x i8] c"\C0\00\11\08\00\90\00\B0", [8 x i8] c"\03\00!\00\01\11\01\02", [8 x i8] c"\11\01\FF\DA\00\0C\03\00", [8 x i8] c"\00\01\11\02\11\00?\00", [8 x i8] c"\FF\D9\00\00\00\00\00\00"], [40 x i8] zeroinitializer }, align 32
@cx11646_jpeg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Damned Errors sending jpeg Table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx11646_jpeg\00", [19 x i8] zeroinitializer }, align 32
@cx11646_jpeg._entry_ptr = internal global ptr @cx11646_jpeg._entry, section ".printk_index", align 4
@cxjpeg_qtable = internal constant { [18 x [8 x i8]], [48 x i8] } { [18 x [8 x i8]] [[8 x i8] c"\FF\D8\FF\DB\00\84\00\08", [8 x i8] c"\06\06\07\06\05\08\07\07", [8 x i8] c"\07\09\09\08\0A\0C\14\0A", [8 x i8] c"\0C\0B\0B\0C\19\12\13\0F", [8 x i8] c"\14\1D\1A\1F\1E\1D\1A\1C", [8 x i8] c"\1C $.' \22,", [8 x i8] c"#\1C\1C(7),0", [8 x i8] c"1444\1F'9=", [8 x i8] c"82<.342\01", [8 x i8] c"\09\09\09\0C\0B\0C\18\0A", [8 x i8] c"\0A\182!\1C!22", [8 x i8] c"22222222", [8 x i8] c"22222222", [8 x i8] c"22222222", [8 x i8] c"22222222", [8 x i8] c"22222222", [8 x i8] c"22222222", [8 x i8] c"\FF\D9\00\00\00\00\00\00"], [48 x i8] zeroinitializer }, align 32
@reg12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A\05\07\04\19", [27 x i8] zeroinitializer }, align 32
@switch.table.cx11646_initsize = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @cx_inits_640, ptr @cx_inits_352, ptr @cx_inits_320, ptr @cx_inits_176], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963777, i64 9963778]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 941, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 953, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 942, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 927, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 916, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 33, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"cx_sensor_init\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 118, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 64, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 75, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 316, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"cx_inits_640\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 303, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"cx_inits_352\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 294, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"cx_inits_320\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 285, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"cx_inits_176\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 276, i32 19 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 103, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 106, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"cx11646_fw1\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 126, i32 19 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"cxsensor\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 205, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"reg7b\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 229, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"cx_jpeg_init\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 360, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 901, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 891, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 909, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"jpeg_head\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [34 x i8] c"../drivers/media/usb/gspca/jpeg.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 19, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"cxjpeg_640\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 443, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"cxjpeg_352\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 472, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"cxjpeg_320\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 501, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"cxjpeg_176\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 530, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 678, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"cxjpeg_qtable\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 560, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"reg12\00", align 1
@___asan_gen_.148 = private constant [35 x i8] c"../drivers/media/usb/gspca/conex.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 601, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [30 x i8] c"switch.table.cx11646_initsize\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_conex__307_953_sd_driver_init6, ptr @cx11646_jpeg._entry, ptr @cx11646_jpeg._entry_ptr, ptr @reg_r._entry, ptr @reg_r._entry.5, ptr @reg_r._entry_ptr, ptr @reg_r._entry_ptr.7, ptr @reg_w._entry, ptr @reg_w._entry.10, ptr @reg_w._entry_ptr, ptr @reg_w._entry_ptr.12, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @cx_sensor_init, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @cx11646_initsize.reg12, ptr @cx_inits_640, ptr @cx_inits_352, ptr @cx_inits_320, ptr @cx_inits_176, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @cx11646_fw1, ptr @cxsensor, ptr @reg7b, ptr @cx_jpeg_init, ptr @sd_init_controls._key, ptr @.str.13, ptr @sd_ctrl_ops, ptr @.str.14, ptr @.str.15, ptr @jpeg_head, ptr @cxjpeg_640, ptr @cxjpeg_352, ptr @cxjpeg_320, ptr @cxjpeg_176, ptr @.str.16, ptr @.str.17, ptr @cxjpeg_qtable, ptr @reg12, ptr @switch.table.cx11646_initsize], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_sensor_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx11646_initsize.reg12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_inits_640 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_inits_352 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_inits_320 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_inits_176 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx11646_fw1 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxsensor to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg7b to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx_jpeg_init to i32), i32 632, i32 768, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_head to i32), i32 556, i32 704, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxjpeg_640 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxjpeg_352 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxjpeg_320 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxjpeg_176 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx11646_jpeg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxjpeg_qtable to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx11646_initsize to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 3176, ptr noundef null) #5
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  %8 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i.i, align 4
  %10 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %11, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 8
  %shl.i.i27.i = shl i32 %14, 8
  %or.i28.i = or i32 %shl.i.i27.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i29.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i28.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  %16 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i.i, align 4
  %18 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %19, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %shl.i.i32.i = shl i32 %22, 8
  %or.i33.i = or i32 %shl.i.i32.i, -2147483648
  %23 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i34.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i33.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 82, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #5
  %24 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i.i, align 4
  %26 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 47, ptr %27, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 8
  %shl.i.i37.i = shl i32 %30, 8
  %or.i38.i = or i32 %shl.i.i37.i, -2147483648
  %31 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i39.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i38.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 155, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 500) #5
  %32 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i.i, align 4
  %34 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 16, ptr %35, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %33, align 8
  %shl.i.i42.i = shl i32 %38, 8
  %or.i43.i = or i32 %shl.i.i42.i, -2147483648
  %39 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i44.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i43.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 156, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #5
  %40 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i46.i = shl i32 %43, 8
  %or4.i.i = or i32 %shl.i.i46.i, -2147483520
  %44 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or4.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 152, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %46 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp7.i.i = icmp sgt i32 %46, 5
  br i1 %cmp7.i.i, label %do.end12.i.i, label %entry.reg_r.exit.i_crit_edge

entry.reg_r.exit.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end12.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv19.i.i = zext i8 %50 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i.i, i32 noundef 152, i32 noundef %conv19.i.i) #8
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end12.i.i, %entry.reg_r.exit.i_crit_edge
  %51 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i.i, align 4
  %53 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 64, ptr %54, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %52, align 8
  %shl.i.i50.i = shl i32 %57, 8
  %or.i51.i = or i32 %shl.i.i50.i, -2147483648
  %58 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i52.i = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i51.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 152, ptr noundef %58, i16 noundef zeroext 1, i32 noundef 500) #5
  %59 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev1.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i54.i = shl i32 %62, 8
  %or4.i55.i = or i32 %shl.i.i54.i, -2147483520
  %63 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i57.i = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or4.i55.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 153, ptr noundef %64, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %65 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %cmp7.i58.i = icmp sgt i32 %65, 5
  br i1 %cmp7.i58.i, label %do.end12.i62.i, label %reg_r.exit.i.reg_r.exit63.i_crit_edge

reg_r.exit.i.reg_r.exit63.i_crit_edge:            ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit63.i

do.end12.i62.i:                                   ; preds = %reg_r.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i59.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %66 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %conv19.i60.i = zext i8 %69 to i32
  %call20.i61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i59.i, i32 noundef 153, i32 noundef %conv19.i60.i) #8
  br label %reg_r.exit63.i

reg_r.exit63.i:                                   ; preds = %do.end12.i62.i, %reg_r.exit.i.reg_r.exit63.i_crit_edge
  %70 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev1.i.i, align 4
  %72 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %usb_buf.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 7, ptr %73, align 1
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %71, align 8
  %shl.i.i66.i = shl i32 %76, 8
  %or.i67.i = or i32 %shl.i.i66.i, -2147483648
  %77 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i68.i = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i67.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 153, ptr noundef %77, i16 noundef zeroext 1, i32 noundef 500) #5
  %78 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev1.i.i, align 4
  %80 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 64, ptr %81, align 1
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %79, align 8
  %shl.i.i71.i = shl i32 %84, 8
  %or.i72.i = or i32 %shl.i.i71.i, -2147483648
  %85 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i73.i = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or.i72.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 57, ptr noundef %85, i16 noundef zeroext 1, i32 noundef 500) #5
  %86 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1.i.i, align 4
  %88 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_buf.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %89, align 1
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %87, align 8
  %shl.i.i76.i = shl i32 %92, 8
  %or.i77.i = or i32 %shl.i.i76.i, -2147483648
  %93 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i78.i = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or.i77.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 60, ptr noundef %93, i16 noundef zeroext 1, i32 noundef 500) #5
  %94 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i.i, align 4
  %96 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %usb_buf.i.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 31, ptr %97, align 1
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %95, align 8
  %shl.i.i81.i = shl i32 %100, 8
  %or.i82.i = or i32 %shl.i.i81.i, -2147483648
  %101 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i83.i = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or.i82.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 63, ptr noundef %101, i16 noundef zeroext 1, i32 noundef 500) #5
  %102 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev1.i.i, align 4
  %104 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %usb_buf.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 64, ptr %105, align 1
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %103, align 8
  %shl.i.i86.i = shl i32 %108, 8
  %or.i87.i = or i32 %shl.i.i86.i, -2147483648
  %109 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i88.i = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or.i87.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 61, ptr noundef %109, i16 noundef zeroext 1, i32 noundef 500) #5
  %110 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %shl.i.i90.i = shl i32 %113, 8
  %or4.i91.i = or i32 %shl.i.i90.i, -2147483520
  %114 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i93.i = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or4.i91.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 153, ptr noundef %115, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %116 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %116)
  %cmp7.i94.i = icmp sgt i32 %116, 5
  br i1 %cmp7.i94.i, label %do.end12.i98.i, label %reg_r.exit63.i.reg_r.exit99.i_crit_edge

reg_r.exit63.i.reg_r.exit99.i_crit_edge:          ; preds = %reg_r.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit99.i

do.end12.i98.i:                                   ; preds = %reg_r.exit63.i
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i95.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %117 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usb_buf.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 1
  %conv19.i96.i = zext i8 %120 to i32
  %call20.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i95.i, i32 noundef 153, i32 noundef %conv19.i96.i) #8
  br label %reg_r.exit99.i

reg_r.exit99.i:                                   ; preds = %do.end12.i98.i, %reg_r.exit63.i.reg_r.exit99.i_crit_edge
  %name15.i111.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %reg_r.exit99.i
  %121 = phi i8 [ -120, %reg_r.exit99.i ], [ %161, %if.end.i.while.body.i_crit_edge ]
  %i.0137.i = phi i32 [ 0, %reg_r.exit99.i ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %122 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev1.i.i, align 4
  %124 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb_buf.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %121, ptr %125, align 1
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %123, align 8
  %shl.i.i102.i = shl i32 %128, 8
  %or.i103.i = or i32 %shl.i.i102.i, -2147483648
  %129 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i104.i = tail call i32 @usb_control_msg(ptr noundef %123, i32 noundef %or.i103.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %129, i16 noundef zeroext 1, i32 noundef 500) #5
  %130 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1.i.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i106.i = shl i32 %133, 8
  %or4.i107.i = or i32 %shl.i.i106.i, -2147483520
  %134 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i109.i = tail call i32 @usb_control_msg(ptr noundef %131, i32 noundef %or4.i107.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %135, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %136 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %136)
  %cmp7.i110.i = icmp sgt i32 %136, 5
  br i1 %cmp7.i110.i, label %do.end12.i114.i, label %while.body.i.reg_r.exit115.i_crit_edge

while.body.i.reg_r.exit115.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit115.i

do.end12.i114.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %usb_buf.i.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 1
  %conv19.i112.i = zext i8 %140 to i32
  %call20.i113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i111.i, i32 noundef 232, i32 noundef %conv19.i112.i) #8
  br label %reg_r.exit115.i

reg_r.exit115.i:                                  ; preds = %do.end12.i114.i, %while.body.i.reg_r.exit115.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0137.i)
  %cmp.i = icmp eq i32 %i.0137.i, 1
  br i1 %cmp.i, label %if.then.i, label %reg_r.exit115.i.if.end.i_crit_edge

reg_r.exit115.i.if.end.i_crit_edge:               ; preds = %reg_r.exit115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %reg_r.exit115.i
  %141 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev1.i.i, align 4
  %143 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %144, align 1
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %142, align 8
  %shl.i.i118.i = shl i32 %147, 8
  %or.i119.i = or i32 %shl.i.i118.i, -2147483648
  %148 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i120.i = tail call i32 @usb_control_msg(ptr noundef %142, i32 noundef %or.i119.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 237, ptr noundef %148, i16 noundef zeroext 1, i32 noundef 500) #5
  %149 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev1.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 8
  %shl.i.i122.i = shl i32 %152, 8
  %or4.i123.i = or i32 %shl.i.i122.i, -2147483520
  %153 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i125.i = tail call i32 @usb_control_msg(ptr noundef %150, i32 noundef %or4.i123.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 237, ptr noundef %154, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %155 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %155)
  %cmp7.i126.i = icmp sgt i32 %155, 5
  br i1 %cmp7.i126.i, label %do.end12.i130.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end12.i130.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %156 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %usb_buf.i.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 1
  %conv19.i128.i = zext i8 %159 to i32
  %call20.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i111.i, i32 noundef 237, i32 noundef %conv19.i128.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end12.i130.i, %if.then.i.if.end.i_crit_edge, %reg_r.exit115.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0137.i, 1
  %arrayidx.i = getelementptr [5 x [4 x i8]], ptr @cx_sensor_init, i32 0, i32 %inc.i
  %160 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i, align 1
  %exitcond.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.i, label %cx11646_init1.exit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cx11646_init1.exit:                               ; preds = %if.end.i
  %162 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev1.i.i, align 4
  %164 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %usb_buf.i.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %165, align 1
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %163, align 8
  %shl.i.i134.i = shl i32 %168, 8
  %or.i135.i = or i32 %shl.i.i134.i, -2147483648
  %169 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i136.i = tail call i32 @usb_control_msg(ptr noundef %163, i32 noundef %or.i135.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 195, ptr noundef %169, i16 noundef zeroext 1, i32 noundef 500) #5
  tail call fastcc void @cx11646_initsize(ptr noundef %gspca_dev)
  tail call fastcc void @cx11646_fw(ptr noundef %gspca_dev)
  tail call fastcc void @cx_sensor(ptr noundef %gspca_dev)
  %170 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev1.i.i, align 4
  %172 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %usb_buf.i.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %173, align 1
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %171, align 8
  %shl.i.i.i7 = shl i32 %176, 8
  %or.i.i8 = or i32 %shl.i.i.i7, -2147483648
  %177 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i9 = tail call i32 @usb_control_msg(ptr noundef %171, i32 noundef %or.i.i8, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %177, i16 noundef zeroext 1, i32 noundef 500) #5
  %178 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev1.i.i, align 4
  %180 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %usb_buf.i.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %181, align 1
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %179, align 8
  %shl.i.i13.i = shl i32 %184, 8
  %or.i14.i = or i32 %shl.i.i13.i, -2147483648
  %185 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i15.i = tail call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or.i14.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 195, ptr noundef %185, i16 noundef zeroext 1, i32 noundef 500) #5
  %186 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev1.i.i, align 4
  %188 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %usb_buf.i.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %189, align 1
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %187, align 8
  %shl.i.i18.i = shl i32 %192, 8
  %or.i19.i = or i32 %shl.i.i18.i, -2147483648
  %193 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i20.i = tail call i32 @usb_control_msg(ptr noundef %187, i32 noundef %or.i19.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %193, i16 noundef zeroext 1, i32 noundef 500) #5
  %194 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev1.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 8
  %shl.i.i22.i = shl i32 %197, 8
  %or4.i.i10 = or i32 %shl.i.i22.i, -2147483520
  %198 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i.i11 = tail call i32 @usb_control_msg(ptr noundef %195, i32 noundef %or4.i.i10, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %199, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %200 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %200)
  %cmp7.i.i12 = icmp sgt i32 %200, 5
  br i1 %cmp7.i.i12, label %do.end12.i.i16, label %cx11646_init1.exit.for.body.i.preheader_crit_edge

cx11646_init1.exit.for.body.i.preheader_crit_edge: ; preds = %cx11646_init1.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

do.end12.i.i16:                                   ; preds = %cx11646_init1.exit
  call void @__sanitizer_cov_trace_pc() #7
  %201 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %usb_buf.i.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 1
  %conv19.i.i14 = zext i8 %204 to i32
  %call20.i.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i111.i, i32 noundef 1, i32 noundef %conv19.i.i14) #8
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end12.i.i16, %cx11646_init1.exit.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %reg_w.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %length.045.i = phi i32 [ %spec.select.i, %reg_w.exit.i.for.body.i_crit_edge ], [ 8, %for.body.i.preheader ]
  %i.044.i = phi i32 [ %inc.i19, %reg_w.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %i.044.i)
  %cmp1.i = icmp eq i32 %i.044.i, 78
  %spec.select.i = select i1 %cmp1.i, i32 6, i32 %length.045.i
  %arrayidx.i18 = getelementptr [79 x [8 x i8]], ptr @cx_jpeg_init, i32 0, i32 %i.044.i
  %conv.i = trunc i32 %spec.select.i to i16
  %205 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %207 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %207)
  %cmp4.i.i = icmp sgt i32 %207, 6
  br i1 %cmp4.i.i, label %do.end9.i.i, label %for.body.i.reg_w.exit.i_crit_edge

for.body.i.reg_w.exit.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit.i

do.end9.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %208 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i18, align 1
  %conv15.i.i = zext i8 %209 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i111.i, i32 noundef 8, i32 noundef %conv15.i.i) #8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end9.i.i, %for.body.i.reg_w.exit.i_crit_edge
  %conv.i.i = and i32 %spec.select.i, 65535
  %210 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %usb_buf.i.i, align 4
  %212 = call ptr @memcpy(ptr %211, ptr %arrayidx.i18, i32 %conv.i.i)
  %213 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %206, align 8
  %shl.i.i26.i = shl i32 %214, 8
  %or.i27.i = or i32 %shl.i.i26.i, -2147483648
  %215 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i.i = tail call i32 @usb_control_msg(ptr noundef %206, i32 noundef %or.i27.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %215, i16 noundef zeroext %conv.i, i32 noundef 500) #5
  %inc.i19 = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i19, 79
  br i1 %exitcond.not.i, label %for.end.i, label %reg_w.exit.i.for.body.i_crit_edge

reg_w.exit.i.for.body.i_crit_edge:                ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %reg_w.exit.i
  %216 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev1.i.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 8
  %shl.i.i29.i = shl i32 %219, 8
  %or4.i30.i = or i32 %shl.i.i29.i, -2147483520
  %220 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i32.i = tail call i32 @usb_control_msg(ptr noundef %217, i32 noundef %or4.i30.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %221, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %222 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %222)
  %cmp7.i33.i = icmp sgt i32 %222, 5
  br i1 %cmp7.i33.i, label %do.end12.i37.i, label %for.end.i.cx11646_jpegInit.exit_crit_edge

for.end.i.cx11646_jpegInit.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx11646_jpegInit.exit

do.end12.i37.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %223 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %usb_buf.i.i, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %224, align 1
  %conv19.i35.i = zext i8 %226 to i32
  %call20.i36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i111.i, i32 noundef 2, i32 noundef %conv19.i35.i) #8
  br label %cx11646_jpegInit.exit

cx11646_jpegInit.exit:                            ; preds = %do.end12.i37.i, %for.end.i.cx11646_jpegInit.exit_crit_edge
  %227 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev1.i.i, align 4
  %229 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %usb_buf.i.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 20, ptr %230, align 1
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %228, align 8
  %shl.i.i41.i = shl i32 %233, 8
  %or.i42.i = or i32 %shl.i.i41.i, -2147483648
  %234 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i43.i = tail call i32 @usb_control_msg(ptr noundef %228, i32 noundef %or.i42.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 85, ptr noundef %234, i16 noundef zeroext 1, i32 noundef 500) #5
  ret i32 0
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.13) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 212) #5
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %brightness, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 10, i64 noundef 31, i64 noundef 1, i64 noundef 12) #5
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %2 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %contrast, align 4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 7, i64 noundef 1, i64 noundef 3) #5
  %sat = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %sat to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %sat, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %0 = call ptr @memcpy(ptr %jpeg_hdr, ptr @jpeg_head, i32 556)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.01.i, 7
  %arrayidx.i = getelementptr [556 x i8], ptr @jpeg_head, i32 0, i32 %add.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i16
  %mul6.i = mul nuw nsw i16 %conv.i, 100
  %add7.i = add nuw nsw i16 %mul6.i, 50
  %div8.i = udiv i16 %add7.i, 100
  %conv9.i = trunc i16 %div8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %jpeg_hdr, i32 %add.i
  %3 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %add12.i = add nuw nsw i32 %i.01.i, 72
  %arrayidx13.i = getelementptr [556 x i8], ptr @jpeg_head, i32 0, i32 %add12.i
  %4 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %5 to i16
  %mul15.i = mul nuw nsw i16 %conv14.i, 100
  %add16.i = add nuw nsw i16 %mul15.i, 50
  %div17.i = udiv i16 %add16.i, 100
  %conv18.i = trunc i16 %div17.i to i8
  %arrayidx20.i = getelementptr i8, ptr %jpeg_hdr, i32 %add12.i
  %6 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %jpeg_set_qual.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

jpeg_set_qual.exit:                               ; preds = %for.body.i
  tail call fastcc void @cx11646_initsize(ptr noundef %gspca_dev)
  tail call fastcc void @cx11646_fw(ptr noundef %gspca_dev)
  tail call fastcc void @cx_sensor(ptr noundef %gspca_dev)
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %9 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %10, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %14, i16 noundef zeroext 1, i32 noundef 500) #5
  %15 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i.i, align 4
  %17 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %18, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 8
  %shl.i.i152.i = shl i32 %21, 8
  %or.i153.i = or i32 %shl.i.i152.i, -2147483648
  %22 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i154.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or.i153.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 195, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #5
  %23 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i.i, align 4
  %25 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %26, align 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 8
  %shl.i.i157.i = shl i32 %29, 8
  %or.i158.i = or i32 %shl.i.i157.i, -2147483648
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i159.i = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i158.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %30, i16 noundef zeroext 1, i32 noundef 500) #5
  %31 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i161.i = shl i32 %34, 8
  %or4.i.i = or i32 %shl.i.i161.i, -2147483520
  %35 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or4.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp7.i.i = icmp sgt i32 %37, 5
  br i1 %cmp7.i.i, label %do.end12.i.i, label %jpeg_set_qual.exit.reg_r.exit.i_crit_edge

jpeg_set_qual.exit.reg_r.exit.i_crit_edge:        ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit.i

do.end12.i.i:                                     ; preds = %jpeg_set_qual.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv19.i.i = zext i8 %41 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i.i, i32 noundef 1, i32 noundef %conv19.i.i) #8
  br label %reg_r.exit.i

reg_r.exit.i:                                     ; preds = %do.end12.i.i, %jpeg_set_qual.exit.reg_r.exit.i_crit_edge
  %cam.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %42 = ptrtoint ptr %cam.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cam.i, align 4
  %curr_mode.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %44 = ptrtoint ptr %curr_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %curr_mode.i, align 1
  %idxprom.i = zext i8 %45 to i32
  %priv.i = getelementptr %struct.v4l2_pix_format, ptr %43, i32 %idxprom.i, i32 7
  %46 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %priv.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %47, label %for.cond18.preheader.i [
    i32 0, label %for.cond.preheader.i
    i32 1, label %for.cond4.preheader.i
    i32 3, label %for.cond33.preheader.i
  ]

for.cond33.preheader.i:                           ; preds = %reg_r.exit.i
  %name12.i193.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body36.i

for.cond4.preheader.i:                            ; preds = %reg_r.exit.i
  %name12.i169.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body7.i

for.cond.preheader.i:                             ; preds = %reg_r.exit.i
  %name12.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body.i12

for.cond18.preheader.i:                           ; preds = %reg_r.exit.i
  %name12.i181.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body21.i

for.body.i12:                                     ; preds = %reg_w.exit.i.for.body.i12_crit_edge, %for.cond.preheader.i
  %i.0527.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i13, %reg_w.exit.i.for.body.i12_crit_edge ]
  %length.0526.i = phi i32 [ 8, %for.cond.preheader.i ], [ %spec.select.i, %reg_w.exit.i.for.body.i12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.0527.i)
  %cmp1.i = icmp eq i32 %i.0527.i, 26
  %spec.select.i = select i1 %cmp1.i, i32 2, i32 %length.0526.i
  %arrayidx2.i = getelementptr [27 x [8 x i8]], ptr @cxjpeg_640, i32 0, i32 %i.0527.i
  %conv.i11 = trunc i32 %spec.select.i to i16
  %49 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %51 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp4.i.i = icmp sgt i32 %51, 6
  br i1 %cmp4.i.i, label %do.end9.i.i, label %for.body.i12.reg_w.exit.i_crit_edge

for.body.i12.reg_w.exit.i_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit.i

do.end9.i.i:                                      ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx2.i, align 1
  %conv15.i.i = zext i8 %53 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i.i, i32 noundef 8, i32 noundef %conv15.i.i) #8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end9.i.i, %for.body.i12.reg_w.exit.i_crit_edge
  %conv.i.i = and i32 %spec.select.i, 65535
  %54 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i.i, align 4
  %56 = call ptr @memcpy(ptr %55, ptr %arrayidx2.i, i32 %conv.i.i)
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %50, align 8
  %shl.i.i165.i = shl i32 %58, 8
  %or.i166.i = or i32 %shl.i.i165.i, -2147483648
  %59 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i166.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %59, i16 noundef zeroext %conv.i11, i32 noundef 500) #5
  %inc.i13 = add nuw nsw i32 %i.0527.i, 1
  %exitcond536.not.i = icmp eq i32 %inc.i13, 27
  br i1 %exitcond536.not.i, label %reg_w.exit.i.sw.epilog.i_crit_edge, label %reg_w.exit.i.for.body.i12_crit_edge

reg_w.exit.i.for.body.i12_crit_edge:              ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i12

reg_w.exit.i.sw.epilog.i_crit_edge:               ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body7.i:                                      ; preds = %reg_w.exit178.i.for.body7.i_crit_edge, %for.cond4.preheader.i
  %i.1525.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %inc16.i, %reg_w.exit178.i.for.body7.i_crit_edge ]
  %length.2524.i = phi i32 [ 8, %for.cond4.preheader.i ], [ %spec.select146.i, %reg_w.exit178.i.for.body7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.1525.i)
  %cmp8.i = icmp eq i32 %i.1525.i, 26
  %spec.select146.i = select i1 %cmp8.i, i32 2, i32 %length.2524.i
  %arrayidx12.i = getelementptr [27 x [8 x i8]], ptr @cxjpeg_352, i32 0, i32 %i.1525.i
  %conv14.i14 = trunc i32 %spec.select146.i to i16
  %60 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp4.i168.i = icmp sgt i32 %62, 6
  br i1 %cmp4.i168.i, label %do.end9.i172.i, label %for.body7.i.reg_w.exit178.i_crit_edge

for.body7.i.reg_w.exit178.i_crit_edge:            ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit178.i

do.end9.i172.i:                                   ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx12.i, align 1
  %conv15.i170.i = zext i8 %64 to i32
  %call16.i171.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i169.i, i32 noundef 8, i32 noundef %conv15.i170.i) #8
  br label %reg_w.exit178.i

reg_w.exit178.i:                                  ; preds = %do.end9.i172.i, %for.body7.i.reg_w.exit178.i_crit_edge
  %conv.i173.i = and i32 %spec.select146.i, 65535
  %65 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf.i.i, align 4
  %67 = call ptr @memcpy(ptr %66, ptr %arrayidx12.i, i32 %conv.i173.i)
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %61, align 8
  %shl.i.i175.i = shl i32 %69, 8
  %or.i176.i = or i32 %shl.i.i175.i, -2147483648
  %70 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i177.i = tail call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or.i176.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %70, i16 noundef zeroext %conv14.i14, i32 noundef 500) #5
  %inc16.i = add nuw nsw i32 %i.1525.i, 1
  %exitcond535.not.i = icmp eq i32 %inc16.i, 27
  br i1 %exitcond535.not.i, label %reg_w.exit178.i.sw.epilog.i_crit_edge, label %reg_w.exit178.i.for.body7.i_crit_edge

reg_w.exit178.i.for.body7.i_crit_edge:            ; preds = %reg_w.exit178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.i

reg_w.exit178.i.sw.epilog.i_crit_edge:            ; preds = %reg_w.exit178.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body21.i:                                     ; preds = %reg_w.exit190.i.for.body21.i_crit_edge, %for.cond18.preheader.i
  %i.2529.i = phi i32 [ 0, %for.cond18.preheader.i ], [ %inc30.i, %reg_w.exit190.i.for.body21.i_crit_edge ]
  %length.4528.i = phi i32 [ 8, %for.cond18.preheader.i ], [ %spec.select147.i, %reg_w.exit190.i.for.body21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.2529.i)
  %cmp22.i = icmp eq i32 %i.2529.i, 26
  %spec.select147.i = select i1 %cmp22.i, i32 2, i32 %length.4528.i
  %arrayidx26.i = getelementptr [27 x [8 x i8]], ptr @cxjpeg_320, i32 0, i32 %i.2529.i
  %conv28.i = trunc i32 %spec.select147.i to i16
  %71 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %73 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %cmp4.i180.i = icmp sgt i32 %73, 6
  br i1 %cmp4.i180.i, label %do.end9.i184.i, label %for.body21.i.reg_w.exit190.i_crit_edge

for.body21.i.reg_w.exit190.i_crit_edge:           ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit190.i

do.end9.i184.i:                                   ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx26.i, align 1
  %conv15.i182.i = zext i8 %75 to i32
  %call16.i183.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i181.i, i32 noundef 8, i32 noundef %conv15.i182.i) #8
  br label %reg_w.exit190.i

reg_w.exit190.i:                                  ; preds = %do.end9.i184.i, %for.body21.i.reg_w.exit190.i_crit_edge
  %conv.i185.i = and i32 %spec.select147.i, 65535
  %76 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %usb_buf.i.i, align 4
  %78 = call ptr @memcpy(ptr %77, ptr %arrayidx26.i, i32 %conv.i185.i)
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %72, align 8
  %shl.i.i187.i = shl i32 %80, 8
  %or.i188.i = or i32 %shl.i.i187.i, -2147483648
  %81 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i189.i = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i188.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %81, i16 noundef zeroext %conv28.i, i32 noundef 500) #5
  %inc30.i = add nuw nsw i32 %i.2529.i, 1
  %exitcond537.not.i = icmp eq i32 %inc30.i, 27
  br i1 %exitcond537.not.i, label %reg_w.exit190.i.sw.epilog.i_crit_edge, label %reg_w.exit190.i.for.body21.i_crit_edge

reg_w.exit190.i.for.body21.i_crit_edge:           ; preds = %reg_w.exit190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body21.i

reg_w.exit190.i.sw.epilog.i_crit_edge:            ; preds = %reg_w.exit190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

for.body36.i:                                     ; preds = %reg_w.exit202.i.for.body36.i_crit_edge, %for.cond33.preheader.i
  %i.3523.i = phi i32 [ 0, %for.cond33.preheader.i ], [ %inc45.i, %reg_w.exit202.i.for.body36.i_crit_edge ]
  %length.6522.i = phi i32 [ 8, %for.cond33.preheader.i ], [ %spec.select148.i, %reg_w.exit202.i.for.body36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.3523.i)
  %cmp37.i = icmp eq i32 %i.3523.i, 26
  %spec.select148.i = select i1 %cmp37.i, i32 2, i32 %length.6522.i
  %arrayidx41.i = getelementptr [27 x [8 x i8]], ptr @cxjpeg_176, i32 0, i32 %i.3523.i
  %conv43.i = trunc i32 %spec.select148.i to i16
  %82 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %84 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %84)
  %cmp4.i192.i = icmp sgt i32 %84, 6
  br i1 %cmp4.i192.i, label %do.end9.i196.i, label %for.body36.i.reg_w.exit202.i_crit_edge

for.body36.i.reg_w.exit202.i_crit_edge:           ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit202.i

do.end9.i196.i:                                   ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx41.i, align 1
  %conv15.i194.i = zext i8 %86 to i32
  %call16.i195.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i193.i, i32 noundef 8, i32 noundef %conv15.i194.i) #8
  br label %reg_w.exit202.i

reg_w.exit202.i:                                  ; preds = %do.end9.i196.i, %for.body36.i.reg_w.exit202.i_crit_edge
  %conv.i197.i = and i32 %spec.select148.i, 65535
  %87 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %usb_buf.i.i, align 4
  %89 = call ptr @memcpy(ptr %88, ptr %arrayidx41.i, i32 %conv.i197.i)
  %90 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %83, align 8
  %shl.i.i199.i = shl i32 %91, 8
  %or.i200.i = or i32 %shl.i.i199.i, -2147483648
  %92 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i201.i = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i200.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %92, i16 noundef zeroext %conv43.i, i32 noundef 500) #5
  %inc45.i = add nuw nsw i32 %i.3523.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc45.i, 27
  br i1 %exitcond.not.i15, label %reg_w.exit202.i.sw.epilog.i_crit_edge, label %reg_w.exit202.i.for.body36.i_crit_edge

reg_w.exit202.i.for.body36.i_crit_edge:           ; preds = %reg_w.exit202.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body36.i

reg_w.exit202.i.sw.epilog.i_crit_edge:            ; preds = %reg_w.exit202.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %reg_w.exit202.i.sw.epilog.i_crit_edge, %reg_w.exit190.i.sw.epilog.i_crit_edge, %reg_w.exit178.i.sw.epilog.i_crit_edge, %reg_w.exit.i.sw.epilog.i_crit_edge
  %Reg55.0.i = phi i8 [ 20, %reg_w.exit190.i.sw.epilog.i_crit_edge ], [ 40, %reg_w.exit.i.sw.epilog.i_crit_edge ], [ 22, %reg_w.exit178.i.sw.epilog.i_crit_edge ], [ 11, %reg_w.exit202.i.sw.epilog.i_crit_edge ]
  %93 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 8
  %shl.i.i204.i = shl i32 %96, 8
  %or4.i205.i = or i32 %shl.i.i204.i, -2147483520
  %97 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i207.i = tail call i32 @usb_control_msg(ptr noundef %94, i32 noundef %or4.i205.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %98, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %99 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %99)
  %cmp7.i208.i = icmp sgt i32 %99, 5
  br i1 %cmp7.i208.i, label %do.end12.i212.i, label %sw.epilog.i.reg_r.exit213.i_crit_edge

sw.epilog.i.reg_r.exit213.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit213.i

do.end12.i212.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i209.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %100 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_buf.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv19.i210.i = zext i8 %103 to i32
  %call20.i211.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i209.i, i32 noundef 2, i32 noundef %conv19.i210.i) #8
  br label %reg_r.exit213.i

reg_r.exit213.i:                                  ; preds = %do.end12.i212.i, %sw.epilog.i.reg_r.exit213.i_crit_edge
  %104 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1.i.i, align 4
  %106 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_buf.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %Reg55.0.i, ptr %107, align 1
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %105, align 8
  %shl.i.i216.i = shl i32 %110, 8
  %or.i217.i = or i32 %shl.i.i216.i, -2147483648
  %111 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i218.i = tail call i32 @usb_control_msg(ptr noundef %105, i32 noundef %or.i217.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 85, ptr noundef %111, i16 noundef zeroext 1, i32 noundef 500) #5
  %112 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev1.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 8
  %shl.i.i220.i = shl i32 %115, 8
  %or4.i221.i = or i32 %shl.i.i220.i, -2147483520
  %116 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i223.i = tail call i32 @usb_control_msg(ptr noundef %113, i32 noundef %or4.i221.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %117, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %118 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %118)
  %cmp7.i224.i = icmp sgt i32 %118, 5
  br i1 %cmp7.i224.i, label %reg_r.exit229.i, label %reg_r.exit229.thread.i

reg_r.exit229.thread.i:                           ; preds = %reg_r.exit213.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev1.i.i, align 4
  br label %reg_w.exit239.i

reg_r.exit229.i:                                  ; preds = %reg_r.exit213.i
  %name15.i225.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %121 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_buf.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 1
  %conv19.i226.i = zext i8 %124 to i32
  %call20.i227.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i225.i, i32 noundef 2, i32 noundef %conv19.i226.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr.i = load i32, ptr @gspca_debug, align 4
  %125 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr.i)
  %cmp4.i231.i = icmp sgt i32 %.pr.i, 6
  br i1 %cmp4.i231.i, label %do.end9.i234.i, label %reg_r.exit229.i.reg_w.exit239.i_crit_edge

reg_r.exit229.i.reg_w.exit239.i_crit_edge:        ; preds = %reg_r.exit229.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit239.i

do.end9.i234.i:                                   ; preds = %reg_r.exit229.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i233.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i225.i, i32 noundef 16, i32 noundef 177) #8
  br label %reg_w.exit239.i

reg_w.exit239.i:                                  ; preds = %do.end9.i234.i, %reg_r.exit229.i.reg_w.exit239.i_crit_edge, %reg_r.exit229.thread.i
  %127 = phi ptr [ %120, %reg_r.exit229.thread.i ], [ %126, %reg_r.exit229.i.reg_w.exit239.i_crit_edge ], [ %126, %do.end9.i234.i ]
  %128 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %usb_buf.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 -20047, ptr %129, align 1
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %127, align 8
  %shl.i.i236.i = shl i32 %132, 8
  %or.i237.i = or i32 %shl.i.i236.i, -2147483648
  %133 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i238.i = tail call i32 @usb_control_msg(ptr noundef %127, i32 noundef %or.i237.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %133, i16 noundef zeroext 2, i32 noundef 500) #5
  %134 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev1.i.i, align 4
  %136 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %usb_buf.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %137, align 1
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %135, align 8
  %shl.i.i242.i = shl i32 %140, 8
  %or.i243.i = or i32 %shl.i.i242.i, -2147483648
  %141 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i244.i = tail call i32 @usb_control_msg(ptr noundef %135, i32 noundef %or.i243.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef %141, i16 noundef zeroext 1, i32 noundef 500) #5
  %142 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev1.i.i, align 4
  %144 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usb_buf.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %145, align 1
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %143, align 8
  %shl.i.i247.i = shl i32 %148, 8
  %or.i248.i = or i32 %shl.i.i247.i, -2147483648
  %149 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i249.i = tail call i32 @usb_control_msg(ptr noundef %143, i32 noundef %or.i248.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef %149, i16 noundef zeroext 1, i32 noundef 500) #5
  %150 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev1.i.i, align 4
  %152 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %usb_buf.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -108, ptr %153, align 1
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %151, align 8
  %shl.i.i252.i = shl i32 %156, 8
  %or.i253.i = or i32 %shl.i.i252.i, -2147483648
  %157 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i254.i = tail call i32 @usb_control_msg(ptr noundef %151, i32 noundef %or.i253.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %157, i16 noundef zeroext 1, i32 noundef 500) #5
  %158 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev1.i.i, align 4
  %160 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %usb_buf.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -64, ptr %161, align 1
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %159, align 8
  %shl.i.i257.i = shl i32 %164, 8
  %or.i258.i = or i32 %shl.i.i257.i, -2147483648
  %165 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i259.i = tail call i32 @usb_control_msg(ptr noundef %159, i32 noundef %or.i258.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %165, i16 noundef zeroext 1, i32 noundef 500) #5
  %166 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev1.i.i, align 4
  %168 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %usb_buf.i.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -31, ptr %169, align 1
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %167, align 8
  %shl.i.i262.i = shl i32 %172, 8
  %or.i263.i = or i32 %shl.i.i262.i, -2147483648
  %173 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i264.i = tail call i32 @usb_control_msg(ptr noundef %167, i32 noundef %or.i263.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 252, ptr noundef %173, i16 noundef zeroext 1, i32 noundef 500) #5
  %174 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev1.i.i, align 4
  %176 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %usb_buf.i.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %177, align 1
  %179 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %175, align 8
  %shl.i.i267.i = shl i32 %180, 8
  %or.i268.i = or i32 %shl.i.i267.i, -2147483648
  %181 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i269.i = tail call i32 @usb_control_msg(ptr noundef %175, i32 noundef %or.i268.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %181, i16 noundef zeroext 1, i32 noundef 500) #5
  %name15.i276.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end52.i.do.body.i_crit_edge, %reg_w.exit239.i
  %retry.0.i = phi i32 [ 50, %reg_w.exit239.i ], [ %dec.i, %if.end52.i.do.body.i_crit_edge ]
  %182 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev1.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 8
  %shl.i.i271.i = shl i32 %185, 8
  %or4.i272.i = or i32 %shl.i.i271.i, -2147483520
  %186 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i274.i = tail call i32 @usb_control_msg(ptr noundef %183, i32 noundef %or4.i272.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %187, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %188 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %188)
  %cmp7.i275.i = icmp sgt i32 %188, 5
  br i1 %cmp7.i275.i, label %do.end12.i279.i, label %do.body.i.reg_r.exit280.i_crit_edge

do.body.i.reg_r.exit280.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit280.i

do.end12.i279.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %189 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_buf.i.i, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %190, align 1
  %conv19.i277.i = zext i8 %192 to i32
  %call20.i278.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 2, i32 noundef %conv19.i277.i) #8
  br label %reg_r.exit280.i

reg_r.exit280.i:                                  ; preds = %do.end12.i279.i, %do.body.i.reg_r.exit280.i_crit_edge
  %193 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %usb_buf.i.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp49.i = icmp eq i8 %196, 0
  br i1 %cmp49.i, label %reg_r.exit280.i.if.end60.i_crit_edge, label %if.end52.i

reg_r.exit280.i.if.end60.i_crit_edge:             ; preds = %reg_r.exit280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

if.end52.i:                                       ; preds = %reg_r.exit280.i
  %197 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev1.i.i, align 4
  %199 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %194, align 1
  %200 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %198, align 8
  %shl.i.i283.i = shl i32 %201, 8
  %or.i284.i = or i32 %shl.i.i283.i, -2147483648
  %202 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i285.i = tail call i32 @usb_control_msg(ptr noundef %198, i32 noundef %or.i284.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %203, i16 noundef zeroext 1, i32 noundef 500) #5
  %dec.i = add nsw i32 %retry.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end58.i, label %if.end52.i.do.body.i_crit_edge

if.end52.i.do.body.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end58.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name15.i276.i) #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end58.i, %reg_r.exit280.i.if.end60.i_crit_edge
  %204 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev1.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 8
  %shl.i.i287.i = shl i32 %207, 8
  %or4.i288.i = or i32 %shl.i.i287.i, -2147483520
  %208 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i290.i = tail call i32 @usb_control_msg(ptr noundef %205, i32 noundef %or4.i288.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %209, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %210 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %210)
  %cmp7.i291.i = icmp sgt i32 %210, 5
  br i1 %cmp7.i291.i, label %do.end12.i295.i, label %if.end60.i.for.body64.i.preheader_crit_edge

if.end60.i.for.body64.i.preheader_crit_edge:      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body64.i.preheader

do.end12.i295.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %usb_buf.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %212, align 1
  %conv19.i293.i = zext i8 %214 to i32
  %call20.i294.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 1, i32 noundef %conv19.i293.i) #8
  br label %for.body64.i.preheader

for.body64.i.preheader:                           ; preds = %do.end12.i295.i, %if.end60.i.for.body64.i.preheader_crit_edge
  br label %for.body64.i

for.body64.i:                                     ; preds = %reg_w.exit308.i.for.body64.i_crit_edge, %for.body64.i.preheader
  %i.4531.i = phi i32 [ %inc73.i, %reg_w.exit308.i.for.body64.i_crit_edge ], [ 0, %for.body64.i.preheader ]
  %length.8530.i = phi i32 [ %spec.select149.i, %reg_w.exit308.i.for.body64.i_crit_edge ], [ 8, %for.body64.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.4531.i)
  %cmp65.i = icmp eq i32 %i.4531.i, 17
  %spec.select149.i = select i1 %cmp65.i, i32 2, i32 %length.8530.i
  %arrayidx69.i = getelementptr [18 x [8 x i8]], ptr @cxjpeg_qtable, i32 0, i32 %i.4531.i
  %conv71.i = trunc i32 %spec.select149.i to i16
  %215 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %217 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %217)
  %cmp4.i298.i = icmp sgt i32 %217, 6
  br i1 %cmp4.i298.i, label %do.end9.i302.i, label %for.body64.i.reg_w.exit308.i_crit_edge

for.body64.i.reg_w.exit308.i_crit_edge:           ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit308.i

do.end9.i302.i:                                   ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  %218 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx69.i, align 1
  %conv15.i300.i = zext i8 %219 to i32
  %call16.i301.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 8, i32 noundef %conv15.i300.i) #8
  br label %reg_w.exit308.i

reg_w.exit308.i:                                  ; preds = %do.end9.i302.i, %for.body64.i.reg_w.exit308.i_crit_edge
  %conv.i303.i = and i32 %spec.select149.i, 65535
  %220 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %usb_buf.i.i, align 4
  %222 = call ptr @memcpy(ptr %221, ptr %arrayidx69.i, i32 %conv.i303.i)
  %223 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %216, align 8
  %shl.i.i305.i = shl i32 %224, 8
  %or.i306.i = or i32 %shl.i.i305.i, -2147483648
  %225 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i307.i = tail call i32 @usb_control_msg(ptr noundef %216, i32 noundef %or.i306.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %225, i16 noundef zeroext %conv71.i, i32 noundef 500) #5
  %inc73.i = add nuw nsw i32 %i.4531.i, 1
  %exitcond538.not.i = icmp eq i32 %inc73.i, 18
  br i1 %exitcond538.not.i, label %for.end74.i, label %reg_w.exit308.i.for.body64.i_crit_edge

reg_w.exit308.i.for.body64.i_crit_edge:           ; preds = %reg_w.exit308.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body64.i

for.end74.i:                                      ; preds = %reg_w.exit308.i
  %226 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev1.i.i, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %227, align 8
  %shl.i.i310.i = shl i32 %229, 8
  %or4.i311.i = or i32 %shl.i.i310.i, -2147483520
  %230 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i313.i = tail call i32 @usb_control_msg(ptr noundef %227, i32 noundef %or4.i311.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %231, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %232 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %232)
  %cmp7.i314.i = icmp sgt i32 %232, 5
  br i1 %cmp7.i314.i, label %do.end12.i318.i, label %for.end74.i.reg_r.exit319.i_crit_edge

for.end74.i.reg_r.exit319.i_crit_edge:            ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit319.i

do.end12.i318.i:                                  ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  %233 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %usb_buf.i.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %234, align 1
  %conv19.i316.i = zext i8 %236 to i32
  %call20.i317.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 2, i32 noundef %conv19.i316.i) #8
  br label %reg_r.exit319.i

reg_r.exit319.i:                                  ; preds = %do.end12.i318.i, %for.end74.i.reg_r.exit319.i_crit_edge
  %237 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev1.i.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 8
  %shl.i.i321.i = shl i32 %240, 8
  %or4.i322.i = or i32 %shl.i.i321.i, -2147483520
  %241 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i324.i = tail call i32 @usb_control_msg(ptr noundef %238, i32 noundef %or4.i322.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %242, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %243 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %243)
  %cmp7.i325.i = icmp sgt i32 %243, 5
  br i1 %cmp7.i325.i, label %do.end12.i329.i, label %reg_r.exit319.i.reg_r.exit330.i_crit_edge

reg_r.exit319.i.reg_r.exit330.i_crit_edge:        ; preds = %reg_r.exit319.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit330.i

do.end12.i329.i:                                  ; preds = %reg_r.exit319.i
  call void @__sanitizer_cov_trace_pc() #7
  %244 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %usb_buf.i.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %245, align 1
  %conv19.i327.i = zext i8 %247 to i32
  %call20.i328.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 83, i32 noundef %conv19.i327.i) #8
  br label %reg_r.exit330.i

reg_r.exit330.i:                                  ; preds = %do.end12.i329.i, %reg_r.exit319.i.reg_r.exit330.i_crit_edge
  %248 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev1.i.i, align 4
  %250 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %usb_buf.i.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 2, ptr %251, align 1
  %253 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %249, align 8
  %shl.i.i333.i = shl i32 %254, 8
  %or.i334.i = or i32 %shl.i.i333.i, -2147483648
  %255 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i335.i = tail call i32 @usb_control_msg(ptr noundef %249, i32 noundef %or.i334.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef %255, i16 noundef zeroext 1, i32 noundef 500) #5
  %256 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev1.i.i, align 4
  %258 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %usb_buf.i.i, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 1, ptr %259, align 1
  %261 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %257, align 8
  %shl.i.i338.i = shl i32 %262, 8
  %or.i339.i = or i32 %shl.i.i338.i, -2147483648
  %263 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i340.i = tail call i32 @usb_control_msg(ptr noundef %257, i32 noundef %or.i339.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 84, ptr noundef %263, i16 noundef zeroext 1, i32 noundef 500) #5
  %264 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev1.i.i, align 4
  %266 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %usb_buf.i.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 -108, ptr %267, align 1
  %269 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %265, align 8
  %shl.i.i343.i = shl i32 %270, 8
  %or.i344.i = or i32 %shl.i.i343.i, -2147483648
  %271 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i345.i = tail call i32 @usb_control_msg(ptr noundef %265, i32 noundef %or.i344.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %271, i16 noundef zeroext 1, i32 noundef 500) #5
  %272 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev1.i.i, align 4
  %274 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %usb_buf.i.i, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 -64, ptr %275, align 1
  %277 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %273, align 8
  %shl.i.i348.i = shl i32 %278, 8
  %or.i349.i = or i32 %shl.i.i348.i, -2147483648
  %279 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i350.i = tail call i32 @usb_control_msg(ptr noundef %273, i32 noundef %or.i349.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %279, i16 noundef zeroext 1, i32 noundef 500) #5
  %280 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev1.i.i, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %281, align 8
  %shl.i.i352.i = shl i32 %283, 8
  %or4.i353.i = or i32 %shl.i.i352.i, -2147483520
  %284 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i355.i = tail call i32 @usb_control_msg(ptr noundef %281, i32 noundef %or4.i353.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef %285, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %286 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %286)
  %cmp7.i356.i = icmp sgt i32 %286, 5
  br i1 %cmp7.i356.i, label %do.end12.i360.i, label %reg_r.exit330.i.reg_r.exit361.i_crit_edge

reg_r.exit330.i.reg_r.exit361.i_crit_edge:        ; preds = %reg_r.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit361.i

do.end12.i360.i:                                  ; preds = %reg_r.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  %287 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %usb_buf.i.i, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %288, align 1
  %conv19.i358.i = zext i8 %290 to i32
  %call20.i359.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 56, i32 noundef %conv19.i358.i) #8
  br label %reg_r.exit361.i

reg_r.exit361.i:                                  ; preds = %do.end12.i360.i, %reg_r.exit330.i.reg_r.exit361.i_crit_edge
  %291 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev1.i.i, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %292, align 8
  %shl.i.i363.i = shl i32 %294, 8
  %or4.i364.i = or i32 %shl.i.i363.i, -2147483520
  %295 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i366.i = tail call i32 @usb_control_msg(ptr noundef %292, i32 noundef %or4.i364.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 56, ptr noundef %296, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %297 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %297)
  %cmp7.i367.i = icmp sgt i32 %297, 5
  br i1 %cmp7.i367.i, label %do.end12.i371.i, label %reg_r.exit361.i.reg_r.exit372.i_crit_edge

reg_r.exit361.i.reg_r.exit372.i_crit_edge:        ; preds = %reg_r.exit361.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit372.i

do.end12.i371.i:                                  ; preds = %reg_r.exit361.i
  call void @__sanitizer_cov_trace_pc() #7
  %298 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %usb_buf.i.i, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %299, align 1
  %conv19.i369.i = zext i8 %301 to i32
  %call20.i370.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 56, i32 noundef %conv19.i369.i) #8
  br label %reg_r.exit372.i

reg_r.exit372.i:                                  ; preds = %do.end12.i371.i, %reg_r.exit361.i.reg_r.exit372.i_crit_edge
  %302 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev1.i.i, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 8
  %shl.i.i374.i = shl i32 %305, 8
  %or4.i375.i = or i32 %shl.i.i374.i, -2147483520
  %306 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i377.i = tail call i32 @usb_control_msg(ptr noundef %303, i32 noundef %or4.i375.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 31, ptr noundef %307, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %308 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %308)
  %cmp7.i378.i = icmp sgt i32 %308, 5
  br i1 %cmp7.i378.i, label %reg_r.exit383.i, label %reg_r.exit383.thread.i

reg_r.exit383.thread.i:                           ; preds = %reg_r.exit372.i
  call void @__sanitizer_cov_trace_pc() #7
  %309 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev1.i.i, align 4
  br label %reg_w.exit393.i

reg_r.exit383.i:                                  ; preds = %reg_r.exit372.i
  %311 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %usb_buf.i.i, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 1
  %conv19.i380.i = zext i8 %314 to i32
  %call20.i381.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 31, i32 noundef %conv19.i380.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr511.i = load i32, ptr @gspca_debug, align 4
  %315 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr511.i)
  %cmp4.i385.i = icmp sgt i32 %.pr511.i, 6
  br i1 %cmp4.i385.i, label %do.end9.i388.i, label %reg_r.exit383.i.reg_w.exit393.i_crit_edge

reg_r.exit383.i.reg_w.exit393.i_crit_edge:        ; preds = %reg_r.exit383.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit393.i

do.end9.i388.i:                                   ; preds = %reg_r.exit383.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i387.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 18, i32 noundef 10) #8
  br label %reg_w.exit393.i

reg_w.exit393.i:                                  ; preds = %do.end9.i388.i, %reg_r.exit383.i.reg_w.exit393.i_crit_edge, %reg_r.exit383.thread.i
  %317 = phi ptr [ %310, %reg_r.exit383.thread.i ], [ %316, %reg_r.exit383.i.reg_w.exit393.i_crit_edge ], [ %316, %do.end9.i388.i ]
  %318 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %usb_buf.i.i, align 4
  %320 = call ptr @memcpy(ptr %319, ptr @reg12, i32 5)
  %321 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %317, align 8
  %shl.i.i390.i = shl i32 %322, 8
  %or.i391.i = or i32 %shl.i.i390.i, -2147483648
  %323 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i392.i = tail call i32 @usb_control_msg(ptr noundef %317, i32 noundef %or.i391.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %323, i16 noundef zeroext 5, i32 noundef 500) #5
  %324 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %326 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %326)
  %cmp4.i395.i = icmp sgt i32 %326, 6
  br i1 %cmp4.i395.i, label %do.end9.i398.i, label %reg_w.exit393.i.reg_w.exit403.i_crit_edge

reg_w.exit393.i.reg_w.exit403.i_crit_edge:        ; preds = %reg_w.exit393.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit403.i

do.end9.i398.i:                                   ; preds = %reg_w.exit393.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i397.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit403.i

reg_w.exit403.i:                                  ; preds = %do.end9.i398.i, %reg_w.exit393.i.reg_w.exit403.i_crit_edge
  %327 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %usb_buf.i.i, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_storeN_noabort(i32 %329, i32 8)
  store i64 -8646678181509529343, ptr %328, align 1
  %330 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %325, align 8
  %shl.i.i400.i = shl i32 %331, 8
  %or.i401.i = or i32 %shl.i.i400.i, -2147483648
  %332 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i402.i = tail call i32 @usb_control_msg(ptr noundef %325, i32 noundef %or.i401.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %332, i16 noundef zeroext 8, i32 noundef 500) #5
  %333 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev1.i.i, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %334, align 8
  %shl.i.i405.i = shl i32 %336, 8
  %or4.i406.i = or i32 %shl.i.i405.i, -2147483520
  %337 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i408.i = tail call i32 @usb_control_msg(ptr noundef %334, i32 noundef %or4.i406.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %338, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %339 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %339)
  %cmp7.i409.i = icmp sgt i32 %339, 5
  br i1 %cmp7.i409.i, label %reg_r.exit414.i, label %reg_r.exit414.thread.i

reg_r.exit414.thread.i:                           ; preds = %reg_w.exit403.i
  call void @__sanitizer_cov_trace_pc() #7
  %340 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev1.i.i, align 4
  br label %reg_w.exit424.i

reg_r.exit414.i:                                  ; preds = %reg_w.exit403.i
  %342 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %usb_buf.i.i, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %343, align 1
  %conv19.i411.i = zext i8 %345 to i32
  %call20.i412.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 232, i32 noundef %conv19.i411.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr513.i = load i32, ptr @gspca_debug, align 4
  %346 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr513.i)
  %cmp4.i416.i = icmp sgt i32 %.pr513.i, 6
  br i1 %cmp4.i416.i, label %do.end9.i419.i, label %reg_r.exit414.i.reg_w.exit424.i_crit_edge

reg_r.exit414.i.reg_w.exit424.i_crit_edge:        ; preds = %reg_r.exit414.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit424.i

do.end9.i419.i:                                   ; preds = %reg_r.exit414.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i418.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit424.i

reg_w.exit424.i:                                  ; preds = %do.end9.i419.i, %reg_r.exit414.i.reg_w.exit424.i_crit_edge, %reg_r.exit414.thread.i
  %348 = phi ptr [ %341, %reg_r.exit414.thread.i ], [ %347, %reg_r.exit414.i.reg_w.exit424.i_crit_edge ], [ %347, %do.end9.i419.i ]
  %349 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %usb_buf.i.i, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_storeN_noabort(i32 %351, i32 4)
  store i32 -2012607487, ptr %350, align 1
  %352 = ptrtoint ptr %348 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %348, align 8
  %shl.i.i421.i = shl i32 %353, 8
  %or.i422.i = or i32 %shl.i.i421.i, -2147483648
  %354 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i423.i = tail call i32 @usb_control_msg(ptr noundef %348, i32 noundef %or.i422.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %354, i16 noundef zeroext 4, i32 noundef 500) #5
  %355 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev1.i.i, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %356, align 8
  %shl.i.i426.i = shl i32 %358, 8
  %or4.i427.i = or i32 %shl.i.i426.i, -2147483520
  %359 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i429.i = tail call i32 @usb_control_msg(ptr noundef %356, i32 noundef %or4.i427.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %360, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %361 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %361)
  %cmp7.i430.i = icmp sgt i32 %361, 5
  br i1 %cmp7.i430.i, label %do.end12.i434.i, label %reg_w.exit424.i.reg_r.exit435.i_crit_edge

reg_w.exit424.i.reg_r.exit435.i_crit_edge:        ; preds = %reg_w.exit424.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit435.i

do.end12.i434.i:                                  ; preds = %reg_w.exit424.i
  call void @__sanitizer_cov_trace_pc() #7
  %362 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %usb_buf.i.i, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %363, align 1
  %conv19.i432.i = zext i8 %365 to i32
  %call20.i433.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 232, i32 noundef %conv19.i432.i) #8
  br label %reg_r.exit435.i

reg_r.exit435.i:                                  ; preds = %do.end12.i434.i, %reg_w.exit424.i.reg_r.exit435.i_crit_edge
  %366 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev1.i.i, align 4
  %368 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %usb_buf.i.i, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 1, ptr %369, align 1
  %371 = ptrtoint ptr %367 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %367, align 8
  %shl.i.i438.i = shl i32 %372, 8
  %or.i439.i = or i32 %shl.i.i438.i, -2147483648
  %373 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i440.i = tail call i32 @usb_control_msg(ptr noundef %367, i32 noundef %or.i439.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 154, ptr noundef %373, i16 noundef zeroext 1, i32 noundef 500) #5
  %374 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %376 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %376)
  %cmp4.i442.i = icmp sgt i32 %376, 6
  br i1 %cmp4.i442.i, label %do.end9.i445.i, label %reg_r.exit435.i.reg_w.exit450.i_crit_edge

reg_r.exit435.i.reg_w.exit450.i_crit_edge:        ; preds = %reg_r.exit435.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit450.i

do.end9.i445.i:                                   ; preds = %reg_r.exit435.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i444.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit450.i

reg_w.exit450.i:                                  ; preds = %do.end9.i445.i, %reg_r.exit435.i.reg_w.exit450.i_crit_edge
  %377 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %usb_buf.i.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_storeN_noabort(i32 %379, i32 4)
  store i32 -2012540415, ptr %378, align 1
  %380 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %375, align 8
  %shl.i.i447.i = shl i32 %381, 8
  %or.i448.i = or i32 %shl.i.i447.i, -2147483648
  %382 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i449.i = tail call i32 @usb_control_msg(ptr noundef %375, i32 noundef %or.i448.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %382, i16 noundef zeroext 4, i32 noundef 500) #5
  %383 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dev1.i.i, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %384, align 8
  %shl.i.i452.i = shl i32 %386, 8
  %or4.i453.i = or i32 %shl.i.i452.i, -2147483520
  %387 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i455.i = tail call i32 @usb_control_msg(ptr noundef %384, i32 noundef %or4.i453.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %388, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %389 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %389)
  %cmp7.i456.i = icmp sgt i32 %389, 5
  br i1 %cmp7.i456.i, label %reg_r.exit461.i, label %reg_r.exit461.thread.i

reg_r.exit461.thread.i:                           ; preds = %reg_w.exit450.i
  call void @__sanitizer_cov_trace_pc() #7
  %390 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dev1.i.i, align 4
  br label %reg_w.exit471.i

reg_r.exit461.i:                                  ; preds = %reg_w.exit450.i
  %392 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %usb_buf.i.i, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %393, align 1
  %conv19.i458.i = zext i8 %395 to i32
  %call20.i459.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 232, i32 noundef %conv19.i458.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr515.i = load i32, ptr @gspca_debug, align 4
  %396 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr515.i)
  %cmp4.i463.i = icmp sgt i32 %.pr515.i, 6
  br i1 %cmp4.i463.i, label %do.end9.i466.i, label %reg_r.exit461.i.reg_w.exit471.i_crit_edge

reg_r.exit461.i.reg_w.exit471.i_crit_edge:        ; preds = %reg_r.exit461.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit471.i

do.end9.i466.i:                                   ; preds = %reg_r.exit461.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i465.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit471.i

reg_w.exit471.i:                                  ; preds = %do.end9.i466.i, %reg_r.exit461.i.reg_w.exit471.i_crit_edge, %reg_r.exit461.thread.i
  %398 = phi ptr [ %391, %reg_r.exit461.thread.i ], [ %397, %reg_r.exit461.i.reg_w.exit471.i_crit_edge ], [ %397, %do.end9.i466.i ]
  %399 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %usb_buf.i.i, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_storeN_noabort(i32 %401, i32 4)
  store i32 -2012937983, ptr %400, align 1
  %402 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %398, align 8
  %shl.i.i468.i = shl i32 %403, 8
  %or.i469.i = or i32 %shl.i.i468.i, -2147483648
  %404 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i470.i = tail call i32 @usb_control_msg(ptr noundef %398, i32 noundef %or.i469.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %404, i16 noundef zeroext 4, i32 noundef 500) #5
  %405 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dev1.i.i, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %406, align 8
  %shl.i.i473.i = shl i32 %408, 8
  %or4.i474.i = or i32 %shl.i.i473.i, -2147483520
  %409 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i476.i = tail call i32 @usb_control_msg(ptr noundef %406, i32 noundef %or4.i474.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %410, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %411 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %411)
  %cmp7.i477.i = icmp sgt i32 %411, 5
  br i1 %cmp7.i477.i, label %reg_r.exit482.i, label %reg_r.exit482.thread.i

reg_r.exit482.thread.i:                           ; preds = %reg_w.exit471.i
  call void @__sanitizer_cov_trace_pc() #7
  %412 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev1.i.i, align 4
  br label %reg_w.exit492.i

reg_r.exit482.i:                                  ; preds = %reg_w.exit471.i
  %414 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %usb_buf.i.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %415, align 1
  %conv19.i479.i = zext i8 %417 to i32
  %call20.i480.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i276.i, i32 noundef 232, i32 noundef %conv19.i479.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr517.i = load i32, ptr @gspca_debug, align 4
  %418 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr517.i)
  %cmp4.i484.i = icmp sgt i32 %.pr517.i, 6
  br i1 %cmp4.i484.i, label %do.end9.i487.i, label %reg_r.exit482.i.reg_w.exit492.i_crit_edge

reg_r.exit482.i.reg_w.exit492.i_crit_edge:        ; preds = %reg_r.exit482.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit492.i

do.end9.i487.i:                                   ; preds = %reg_r.exit482.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i486.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 81, i32 noundef 119) #8
  br label %reg_w.exit492.i

reg_w.exit492.i:                                  ; preds = %do.end9.i487.i, %reg_r.exit482.i.reg_w.exit492.i_crit_edge, %reg_r.exit482.thread.i
  %420 = phi ptr [ %413, %reg_r.exit482.thread.i ], [ %419, %reg_r.exit482.i.reg_w.exit492.i_crit_edge ], [ %419, %do.end9.i487.i ]
  %421 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %usb_buf.i.i, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_storeN_noabort(i32 %423, i32 2)
  store i16 30467, ptr %422, align 1
  %424 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %420, align 8
  %shl.i.i489.i = shl i32 %425, 8
  %or.i490.i = or i32 %shl.i.i489.i, -2147483648
  %426 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i491.i = tail call i32 @usb_control_msg(ptr noundef %420, i32 noundef %or.i490.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %426, i16 noundef zeroext 2, i32 noundef 500) #5
  %427 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %429 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %429)
  %cmp4.i494.i = icmp sgt i32 %429, 6
  br i1 %cmp4.i494.i, label %do.end9.i497.i, label %reg_w.exit492.i.cx11646_jpeg.exit_crit_edge

reg_w.exit492.i.cx11646_jpeg.exit_crit_edge:      ; preds = %reg_w.exit492.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx11646_jpeg.exit

do.end9.i497.i:                                   ; preds = %reg_w.exit492.i
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i496.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i276.i, i32 noundef 16, i32 noundef 177) #8
  br label %cx11646_jpeg.exit

cx11646_jpeg.exit:                                ; preds = %do.end9.i497.i, %reg_w.exit492.i.cx11646_jpeg.exit_crit_edge
  %430 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %usb_buf.i.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_storeN_noabort(i32 %432, i32 2)
  store i16 -20047, ptr %431, align 1
  %433 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %428, align 8
  %shl.i.i499.i = shl i32 %434, 8
  %or.i500.i = or i32 %shl.i.i499.i, -2147483648
  %435 = load ptr, ptr %usb_buf.i.i, align 4
  %call23.i501.i = tail call i32 @usb_control_msg(ptr noundef %428, i32 noundef %or.i500.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %435, i16 noundef zeroext 2, i32 noundef 500) #5
  %436 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev1.i.i, align 4
  %438 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %usb_buf.i.i, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 3, ptr %439, align 1
  %441 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %437, align 8
  %shl.i.i505.i = shl i32 %442, 8
  %or.i506.i = or i32 %shl.i.i505.i, -2147483648
  %443 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i507.i = tail call i32 @usb_control_msg(ptr noundef %437, i32 noundef %or.i506.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef %443, i16 noundef zeroext 1, i32 noundef 500) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %3)
  %cmp4 = icmp eq i8 %3, -40
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  %jpeg_hdr = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %jpeg_hdr, i32 noundef 556) #5
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add i32 %len, -2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %data, %land.lhs.true.if.end_crit_edge ], [ %data, %entry.if.end_crit_edge ]
  %len.addr.0 = phi i32 [ %sub, %if.then ], [ %len, %land.lhs.true.if.end_crit_edge ], [ %len, %entry.if.end_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #5
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
  %1 = load i8, ptr %present, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #5
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i16 = shl i32 %13, 8
  %or4.i = or i32 %shl.i.i16, -2147483520
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %16 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp7.i = icmp sgt i32 %16, 5
  br i1 %cmp7.i, label %do.end12.i, label %if.end.reg_r.exit_crit_edge

if.end.reg_r.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv19.i = zext i8 %20 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i, i32 noundef 2, i32 noundef %conv19.i) #8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %if.end.reg_r.exit_crit_edge
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %usb_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %24, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %22, align 8
  %shl.i.i20 = shl i32 %27, 8
  %or.i21 = or i32 %shl.i.i20, -2147483648
  %28 = load ptr, ptr %usb_buf.i, align 4
  %call3.i22 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i21, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #5
  %name15.i29 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.cond

while.cond:                                       ; preds = %reg_r.exit33.while.cond_crit_edge, %reg_r.exit
  %retry.0 = phi i32 [ 50, %reg_r.exit ], [ %dec, %reg_r.exit33.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool1.not = icmp eq i32 %retry.0, 0
  br i1 %tobool1.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %retry.0, -1
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i24 = shl i32 %32, 8
  %or4.i25 = or i32 %shl.i.i24, -2147483520
  %33 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i, align 4
  %call5.i27 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or4.i25, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 83, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp7.i28 = icmp sgt i32 %35, 5
  br i1 %cmp7.i28, label %do.end12.i32, label %while.body.reg_r.exit33_crit_edge

while.body.reg_r.exit33_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit33

do.end12.i32:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  %conv19.i30 = zext i8 %39 to i32
  %call20.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i29, i32 noundef 83, i32 noundef %conv19.i30) #8
  br label %reg_r.exit33

reg_r.exit33:                                     ; preds = %do.end12.i32, %while.body.reg_r.exit33_crit_edge
  %40 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_buf.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %cmp = icmp eq i8 %43, 0
  br i1 %cmp, label %reg_r.exit33.while.end_crit_edge, label %reg_r.exit33.while.cond_crit_edge

reg_r.exit33.while.cond_crit_edge:                ; preds = %reg_r.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

reg_r.exit33.while.end_crit_edge:                 ; preds = %reg_r.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %reg_r.exit33.while.end_crit_edge, %while.cond.while.end_crit_edge
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %47, align 1
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 8
  %shl.i.i36 = shl i32 %50, 8
  %or.i37 = or i32 %shl.i.i36, -2147483648
  %51 = load ptr, ptr %usb_buf.i, align 4
  %call3.i38 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i37, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #5
  %52 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i40 = shl i32 %55, 8
  %or4.i41 = or i32 %shl.i.i40, -2147483520
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %call5.i43 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or4.i41, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %57, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %58 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp7.i44 = icmp sgt i32 %58, 5
  br i1 %cmp7.i44, label %do.end12.i48, label %while.end.reg_r.exit49_crit_edge

while.end.reg_r.exit49_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit49

do.end12.i48:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb_buf.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv19.i46 = zext i8 %62 to i32
  %call20.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i29, i32 noundef 2, i32 noundef %conv19.i46) #8
  br label %reg_r.exit49

reg_r.exit49:                                     ; preds = %do.end12.i48, %while.end.reg_r.exit49_crit_edge
  %63 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1.i, align 4
  %65 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %66, align 1
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %64, align 8
  %shl.i.i52 = shl i32 %69, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %70 = load ptr, ptr %usb_buf.i, align 4
  %call3.i54 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i53, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #5
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i56 = shl i32 %74, 8
  %or4.i57 = or i32 %shl.i.i56, -2147483520
  %75 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb_buf.i, align 4
  %call5.i59 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or4.i57, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 51, ptr noundef %76, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp7.i60 = icmp sgt i32 %77, 5
  br i1 %cmp7.i60, label %do.end12.i64, label %reg_r.exit49.reg_r.exit65_crit_edge

reg_r.exit49.reg_r.exit65_crit_edge:              ; preds = %reg_r.exit49
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit65

do.end12.i64:                                     ; preds = %reg_r.exit49
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 1
  %conv19.i62 = zext i8 %81 to i32
  %call20.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i29, i32 noundef 51, i32 noundef %conv19.i62) #8
  br label %reg_r.exit65

reg_r.exit65:                                     ; preds = %do.end12.i64, %reg_r.exit49.reg_r.exit65_crit_edge
  %82 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i, align 4
  %84 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -32, ptr %85, align 1
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %83, align 8
  %shl.i.i68 = shl i32 %88, 8
  %or.i69 = or i32 %shl.i.i68, -2147483648
  %89 = load ptr, ptr %usb_buf.i, align 4
  %call3.i70 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i69, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 252, ptr noundef %89, i16 noundef zeroext 1, i32 noundef 500) #5
  br label %cleanup

cleanup:                                          ; preds = %reg_r.exit65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx11646_initsize(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %conv, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cx11646_initsize, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cxinit.0 = phi ptr [ %switch.load, %switch.lookup ], [ @cx_inits_320, %entry.sw.epilog_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 154, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %19, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %shl.i.i38 = shl i32 %22, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %23 = load ptr, ptr %usb_buf.i, align 4
  %call3.i40 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i39, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #5
  %24 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp4.i = icmp sgt i32 %26, 6
  br i1 %cmp4.i, label %do.end9.i, label %sw.epilog.reg_w.exit_crit_edge

sw.epilog.reg_w.exit_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end9.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 18, i32 noundef 8) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %sw.epilog.reg_w.exit_crit_edge
  %27 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i, align 4
  %29 = call ptr @memcpy(ptr %28, ptr @cx11646_initsize.reg12, i32 5)
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 8
  %shl.i.i43 = shl i32 %31, 8
  %or.i44 = or i32 %shl.i.i43, -2147483648
  %32 = load ptr, ptr %usb_buf.i, align 4
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i44, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %32, i16 noundef zeroext 5, i32 noundef 500) #5
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %35 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp4.i46 = icmp sgt i32 %35, 6
  br i1 %cmp4.i46, label %do.end9.i49, label %reg_w.exit.reg_w.exit54_crit_edge

reg_w.exit.reg_w.exit54_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit54

do.end9.i49:                                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i47, i32 noundef 23, i32 noundef 10) #8
  br label %reg_w.exit54

reg_w.exit54:                                     ; preds = %do.end9.i49, %reg_w.exit.reg_w.exit54_crit_edge
  %36 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 720842026739865346, ptr %37, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %34, align 8
  %shl.i.i51 = shl i32 %40, 8
  %or.i52 = or i32 %shl.i.i51, -2147483648
  %41 = load ptr, ptr %usb_buf.i, align 4
  %call23.i53 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i52, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 23, ptr noundef %41, i16 noundef zeroext 8, i32 noundef 500) #5
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  %44 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %45, align 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %43, align 8
  %shl.i.i57 = shl i32 %48, 8
  %or.i58 = or i32 %shl.i.i57, -2147483648
  %49 = load ptr, ptr %usb_buf.i, align 4
  %call3.i59 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i58, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 192, ptr noundef %49, i16 noundef zeroext 1, i32 noundef 500) #5
  %50 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev1.i, align 4
  %52 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %53, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %51, align 8
  %shl.i.i62 = shl i32 %56, 8
  %or.i63 = or i32 %shl.i.i62, -2147483648
  %57 = load ptr, ptr %usb_buf.i, align 4
  %call3.i64 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i63, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 193, ptr noundef %57, i16 noundef zeroext 1, i32 noundef 500) #5
  %58 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i, align 4
  %60 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %61, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %59, align 8
  %shl.i.i67 = shl i32 %64, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %65 = load ptr, ptr %usb_buf.i, align 4
  %call3.i69 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i68, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 194, ptr noundef %65, i16 noundef zeroext 1, i32 noundef 500) #5
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %68 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %68)
  %cmp4.i71 = icmp sgt i32 %68, 6
  br i1 %cmp4.i71, label %do.end9.i74, label %reg_w.exit54.reg_w.exit79_crit_edge

reg_w.exit54.reg_w.exit79_crit_edge:              ; preds = %reg_w.exit54
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit79

do.end9.i74:                                      ; preds = %reg_w.exit54
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i72 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %cxinit.0 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cxinit.0, align 1
  %conv15.i = zext i8 %70 to i32
  %call16.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i72, i32 noundef 97, i32 noundef %conv15.i) #8
  br label %reg_w.exit79

reg_w.exit79:                                     ; preds = %do.end9.i74, %reg_w.exit54.reg_w.exit79_crit_edge
  %71 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i, align 4
  %73 = ptrtoint ptr %cxinit.0 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %cxinit.0, align 1
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %72, align 1
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %67, align 8
  %shl.i.i76 = shl i32 %77, 8
  %or.i77 = or i32 %shl.i.i76, -2147483648
  %78 = load ptr, ptr %usb_buf.i, align 4
  %call23.i78 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i77, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 97, ptr noundef %78, i16 noundef zeroext 8, i32 noundef 500) #5
  %add.ptr = getelementptr i8, ptr %cxinit.0, i32 8
  %79 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %81 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %81)
  %cmp4.i81 = icmp sgt i32 %81, 6
  br i1 %cmp4.i81, label %do.end9.i85, label %reg_w.exit79.reg_w.exit90_crit_edge

reg_w.exit79.reg_w.exit90_crit_edge:              ; preds = %reg_w.exit79
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit90

do.end9.i85:                                      ; preds = %reg_w.exit79
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i82 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr, align 1
  %conv15.i83 = zext i8 %83 to i32
  %call16.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i82, i32 noundef 202, i32 noundef %conv15.i83) #8
  br label %reg_w.exit90

reg_w.exit90:                                     ; preds = %do.end9.i85, %reg_w.exit79.reg_w.exit90_crit_edge
  %84 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %usb_buf.i, align 4
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %add.ptr, align 1
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %85, align 1
  %89 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %80, align 8
  %shl.i.i87 = shl i32 %90, 8
  %or.i88 = or i32 %shl.i.i87, -2147483648
  %91 = load ptr, ptr %usb_buf.i, align 4
  %call23.i89 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or.i88, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 202, ptr noundef %91, i16 noundef zeroext 8, i32 noundef 500) #5
  %add.ptr3 = getelementptr i8, ptr %cxinit.0, i32 16
  %92 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %94 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %94)
  %cmp4.i92 = icmp sgt i32 %94, 6
  br i1 %cmp4.i92, label %do.end9.i96, label %reg_w.exit90.reg_w.exit101_crit_edge

reg_w.exit90.reg_w.exit101_crit_edge:             ; preds = %reg_w.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit101

do.end9.i96:                                      ; preds = %reg_w.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i93 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %95 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr3, align 1
  %conv15.i94 = zext i8 %96 to i32
  %call16.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i93, i32 noundef 210, i32 noundef %conv15.i94) #8
  br label %reg_w.exit101

reg_w.exit101:                                    ; preds = %do.end9.i96, %reg_w.exit90.reg_w.exit101_crit_edge
  %97 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %usb_buf.i, align 4
  %99 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 8)
  %100 = load i64, ptr %add.ptr3, align 1
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %100, ptr %98, align 1
  %102 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %93, align 8
  %shl.i.i98 = shl i32 %103, 8
  %or.i99 = or i32 %shl.i.i98, -2147483648
  %104 = load ptr, ptr %usb_buf.i, align 4
  %call23.i100 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or.i99, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 210, ptr noundef %104, i16 noundef zeroext 8, i32 noundef 500) #5
  %add.ptr4 = getelementptr i8, ptr %cxinit.0, i32 24
  %105 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %107 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %107)
  %cmp4.i103 = icmp sgt i32 %107, 6
  br i1 %cmp4.i103, label %do.end9.i107, label %reg_w.exit101.reg_w.exit112_crit_edge

reg_w.exit101.reg_w.exit112_crit_edge:            ; preds = %reg_w.exit101
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit112

do.end9.i107:                                     ; preds = %reg_w.exit101
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i104 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %108 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %add.ptr4, align 1
  %conv15.i105 = zext i8 %109 to i32
  %call16.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i104, i32 noundef 218, i32 noundef %conv15.i105) #8
  br label %reg_w.exit112

reg_w.exit112:                                    ; preds = %do.end9.i107, %reg_w.exit101.reg_w.exit112_crit_edge
  %110 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_buf.i, align 4
  %112 = call ptr @memcpy(ptr %111, ptr %add.ptr4, i32 6)
  %113 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %106, align 8
  %shl.i.i109 = shl i32 %114, 8
  %or.i110 = or i32 %shl.i.i109, -2147483648
  %115 = load ptr, ptr %usb_buf.i, align 4
  %call23.i111 = tail call i32 @usb_control_msg(ptr noundef %106, i32 noundef %or.i110, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 218, ptr noundef %115, i16 noundef zeroext 6, i32 noundef 500) #5
  %add.ptr5 = getelementptr i8, ptr %cxinit.0, i32 32
  %116 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %118 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118)
  %cmp4.i114 = icmp sgt i32 %118, 6
  br i1 %cmp4.i114, label %do.end9.i118, label %reg_w.exit112.reg_w.exit123_crit_edge

reg_w.exit112.reg_w.exit123_crit_edge:            ; preds = %reg_w.exit112
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit123

do.end9.i118:                                     ; preds = %reg_w.exit112
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i115 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %119 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %add.ptr5, align 1
  %conv15.i116 = zext i8 %120 to i32
  %call16.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i115, i32 noundef 65, i32 noundef %conv15.i116) #8
  br label %reg_w.exit123

reg_w.exit123:                                    ; preds = %do.end9.i118, %reg_w.exit112.reg_w.exit123_crit_edge
  %121 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %usb_buf.i, align 4
  %123 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %add.ptr5, align 1
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 %124, ptr %122, align 1
  %126 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %117, align 8
  %shl.i.i120 = shl i32 %127, 8
  %or.i121 = or i32 %shl.i.i120, -2147483648
  %128 = load ptr, ptr %usb_buf.i, align 4
  %call23.i122 = tail call i32 @usb_control_msg(ptr noundef %117, i32 noundef %or.i121, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 65, ptr noundef %128, i16 noundef zeroext 8, i32 noundef 500) #5
  %add.ptr6 = getelementptr i8, ptr %cxinit.0, i32 40
  %129 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %131 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %131)
  %cmp4.i125 = icmp sgt i32 %131, 6
  br i1 %cmp4.i125, label %do.end9.i129, label %reg_w.exit123.reg_w.exit134_crit_edge

reg_w.exit123.reg_w.exit134_crit_edge:            ; preds = %reg_w.exit123
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit134

do.end9.i129:                                     ; preds = %reg_w.exit123
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i126 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %132 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %add.ptr6, align 1
  %conv15.i127 = zext i8 %133 to i32
  %call16.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i126, i32 noundef 73, i32 noundef %conv15.i127) #8
  br label %reg_w.exit134

reg_w.exit134:                                    ; preds = %do.end9.i129, %reg_w.exit123.reg_w.exit134_crit_edge
  %134 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %usb_buf.i, align 4
  %136 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %add.ptr6, align 1
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 %137, ptr %135, align 1
  %139 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %130, align 8
  %shl.i.i131 = shl i32 %140, 8
  %or.i132 = or i32 %shl.i.i131, -2147483648
  %141 = load ptr, ptr %usb_buf.i, align 4
  %call23.i133 = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or.i132, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 73, ptr noundef %141, i16 noundef zeroext 8, i32 noundef 500) #5
  %add.ptr7 = getelementptr i8, ptr %cxinit.0, i32 48
  %142 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %144 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %144)
  %cmp4.i136 = icmp sgt i32 %144, 6
  br i1 %cmp4.i136, label %do.end9.i140, label %reg_w.exit134.reg_w.exit145_crit_edge

reg_w.exit134.reg_w.exit145_crit_edge:            ; preds = %reg_w.exit134
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit145

do.end9.i140:                                     ; preds = %reg_w.exit134
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i137 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %145 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %add.ptr7, align 1
  %conv15.i138 = zext i8 %146 to i32
  %call16.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i137, i32 noundef 81, i32 noundef %conv15.i138) #8
  br label %reg_w.exit145

reg_w.exit145:                                    ; preds = %do.end9.i140, %reg_w.exit134.reg_w.exit145_crit_edge
  %147 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %usb_buf.i, align 4
  %149 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 2)
  %150 = load i16, ptr %add.ptr7, align 1
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 2)
  store i16 %150, ptr %148, align 1
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %143, align 8
  %shl.i.i142 = shl i32 %153, 8
  %or.i143 = or i32 %shl.i.i142, -2147483648
  %154 = load ptr, ptr %usb_buf.i, align 4
  %call23.i144 = tail call i32 @usb_control_msg(ptr noundef %143, i32 noundef %or.i143, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %154, i16 noundef zeroext 2, i32 noundef 500) #5
  %155 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev1.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  %shl.i.i147 = shl i32 %158, 8
  %or4.i = or i32 %shl.i.i147, -2147483520
  %159 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %156, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %160, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %161 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %161)
  %cmp7.i = icmp sgt i32 %161, 5
  br i1 %cmp7.i, label %do.end12.i, label %reg_w.exit145.reg_r.exit_crit_edge

reg_w.exit145.reg_r.exit_crit_edge:               ; preds = %reg_w.exit145
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit

do.end12.i:                                       ; preds = %reg_w.exit145
  call void @__sanitizer_cov_trace_pc() #7
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %162 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %usb_buf.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 1
  %conv19.i = zext i8 %165 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i, i32 noundef 16, i32 noundef %conv19.i) #8
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end12.i, %reg_w.exit145.reg_r.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx11646_fw(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %3, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body

while.body:                                       ; preds = %reg_w.exit.while.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %reg_w.exit.while.body_crit_edge ]
  %arrayidx = getelementptr [65 x [3 x i8]], ptr @cx11646_fw1, i32 0, i32 %i.016
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp4.i = icmp sgt i32 %10, 6
  br i1 %cmp4.i, label %do.end9.i, label %while.body.reg_w.exit_crit_edge

while.body.reg_w.exit_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end9.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv15.i = zext i8 %12 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 107, i32 noundef %conv15.i) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %while.body.reg_w.exit_crit_edge
  %13 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %arrayidx, i32 3)
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 8
  %shl.i.i9 = shl i32 %17, 8
  %or.i10 = or i32 %shl.i.i9, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i10, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 107, ptr noundef %18, i16 noundef zeroext 3, i32 noundef 500) #5
  %inc = add nuw nsw i32 %i.016, 1
  %tobool.not = icmp eq i32 %inc, 64
  br i1 %tobool.not, label %while.end, label %reg_w.exit.while.body_crit_edge

reg_w.exit.while.body_crit_edge:                  ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %22, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 8
  %shl.i.i13 = shl i32 %25, 8
  %or.i14 = or i32 %shl.i.i13, -2147483648
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call3.i15 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i14, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 106, ptr noundef %26, i16 noundef zeroext 1, i32 noundef 500) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx_sensor(ptr noundef %gspca_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp4.i = icmp sgt i32 %2, 6
  br i1 %cmp4.i, label %do.end9.i, label %entry.reg_w.exit_crit_edge

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 32, i32 noundef 16) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %entry.reg_w.exit_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 1171640801000663039, ptr %4, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %8 = load ptr, ptr %usb_buf.i, align 4
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef %8, i16 noundef zeroext 8, i32 noundef 500) #5
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp4.i44 = icmp sgt i32 %11, 6
  br i1 %cmp4.i44, label %do.end9.i47, label %reg_w.exit.reg_w.exit52_crit_edge

reg_w.exit.reg_w.exit52_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit52

do.end9.i47:                                      ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i45 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i45, i32 noundef 40, i32 noundef 135) #8
  br label %reg_w.exit52

reg_w.exit52:                                     ; preds = %do.end9.i47, %reg_w.exit.reg_w.exit52_crit_edge
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 -8718820442103616769, ptr %13, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 8
  %shl.i.i49 = shl i32 %16, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call23.i51 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i50, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef %17, i16 noundef zeroext 8, i32 noundef 500) #5
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %20)
  %cmp4.i54 = icmp sgt i32 %20, 6
  br i1 %cmp4.i54, label %do.end9.i57, label %reg_w.exit52.reg_w.exit62_crit_edge

reg_w.exit52.reg_w.exit62_crit_edge:              ; preds = %reg_w.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit62

do.end9.i57:                                      ; preds = %reg_w.exit52
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i55 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i55, i32 noundef 16, i32 noundef 177) #8
  br label %reg_w.exit62

reg_w.exit62:                                     ; preds = %do.end9.i57, %reg_w.exit52.reg_w.exit62_crit_edge
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 -20047, ptr %22, align 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %shl.i.i59 = shl i32 %25, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call23.i61 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i60, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %26, i16 noundef zeroext 2, i32 noundef 500) #5
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 4
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %30, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %28, align 8
  %shl.i.i65 = shl i32 %33, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %34 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i66, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 146, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #5
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %35 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %37 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %38 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %36, i32 %conv, i32 7
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %priv, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %reg_w.exit62
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %44 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp4.i68 = icmp sgt i32 %44, 6
  br i1 %cmp4.i68, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %reg_w.exit62
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %47 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %cmp4.i78 = icmp sgt i32 %47, 6
  br i1 %cmp4.i78, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %reg_w.exit62
  %48 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %cmp4.i88 = icmp sgt i32 %50, 6
  br i1 %cmp4.i88, label %sw.default.sw.epilog.sink.split_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %reg_w.exit62
  %51 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %53 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %53)
  %cmp4.i98 = icmp sgt i32 %53, 6
  br i1 %cmp4.i98, label %sw.bb2.sw.epilog.sink.split_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2.sw.epilog.sink.split_crit_edge, %sw.default.sw.epilog.sink.split_crit_edge, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 4, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 2, %sw.default.sw.epilog.sink.split_crit_edge ], [ 2, %sw.bb2.sw.epilog.sink.split_crit_edge ]
  %.sink178.ph = phi i32 [ 135793182, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 67896591, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 34013961, %sw.default.sw.epilog.sink.split_crit_edge ], [ 34013961, %sw.bb2.sw.epilog.sink.split_crit_edge ]
  %.sink177.ph = phi ptr [ %43, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %46, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ %49, %sw.default.sw.epilog.sink.split_crit_edge ], [ %52, %sw.bb2.sw.epilog.sink.split_crit_edge ]
  %name12.i99 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i99, i32 noundef 113, i32 noundef %.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb2.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink178 = phi i32 [ 135793182, %sw.bb.sw.epilog_crit_edge ], [ 67896591, %sw.bb1.sw.epilog_crit_edge ], [ 34013961, %sw.default.sw.epilog_crit_edge ], [ 34013961, %sw.bb2.sw.epilog_crit_edge ], [ %.sink178.ph, %sw.epilog.sink.split ]
  %.sink177 = phi ptr [ %43, %sw.bb.sw.epilog_crit_edge ], [ %46, %sw.bb1.sw.epilog_crit_edge ], [ %49, %sw.default.sw.epilog_crit_edge ], [ %52, %sw.bb2.sw.epilog_crit_edge ], [ %.sink177.ph, %sw.epilog.sink.split ]
  %54 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %.sink178, ptr %55, align 1
  %57 = ptrtoint ptr %.sink177 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %.sink177, align 8
  %shl.i.i103 = shl i32 %58, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %59 = load ptr, ptr %usb_buf.i, align 4
  %call23.i105 = tail call i32 @usb_control_msg(ptr noundef %.sink177, i32 noundef %or.i104, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 113, ptr noundef %59, i16 noundef zeroext 4, i32 noundef 500) #5
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %62 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp4.i108 = icmp sgt i32 %62, 6
  br i1 %cmp4.i108, label %do.end9.i111, label %sw.epilog.reg_w.exit116_crit_edge

sw.epilog.reg_w.exit116_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit116

do.end9.i111:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i109 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i109, i32 noundef 123, i32 noundef 0) #8
  br label %reg_w.exit116

reg_w.exit116:                                    ; preds = %do.end9.i111, %sw.epilog.reg_w.exit116_crit_edge
  %63 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i, align 4
  %65 = call ptr @memcpy(ptr %64, ptr @reg7b, i32 6)
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 8
  %shl.i.i113 = shl i32 %67, 8
  %or.i114 = or i32 %shl.i.i113, -2147483648
  %68 = load ptr, ptr %usb_buf.i, align 4
  %call23.i115 = tail call i32 @usb_control_msg(ptr noundef %61, i32 noundef %or.i114, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 123, ptr noundef %68, i16 noundef zeroext 6, i32 noundef 500) #5
  %69 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev1.i, align 4
  %71 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %72, align 1
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %70, align 8
  %shl.i.i119 = shl i32 %75, 8
  %or.i120 = or i32 %shl.i.i119, -2147483648
  %76 = load ptr, ptr %usb_buf.i, align 4
  %call3.i121 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i120, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 248, ptr noundef %76, i16 noundef zeroext 1, i32 noundef 500) #5
  %77 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %79 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp4.i123 = icmp sgt i32 %79, 6
  br i1 %cmp4.i123, label %do.end9.i126, label %reg_w.exit116.reg_w.exit131_crit_edge

reg_w.exit116.reg_w.exit131_crit_edge:            ; preds = %reg_w.exit116
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit131

do.end9.i126:                                     ; preds = %reg_w.exit116
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i124 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i124, i32 noundef 16, i32 noundef 177) #8
  br label %reg_w.exit131

reg_w.exit131:                                    ; preds = %do.end9.i126, %reg_w.exit116.reg_w.exit131_crit_edge
  %80 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 -20047, ptr %81, align 1
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %78, align 8
  %shl.i.i128 = shl i32 %84, 8
  %or.i129 = or i32 %shl.i.i128, -2147483648
  %85 = load ptr, ptr %usb_buf.i, align 4
  %call23.i130 = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i129, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %85, i16 noundef zeroext 2, i32 noundef 500) #5
  %86 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1.i, align 4
  %88 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb_buf.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 65, ptr %89, align 1
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %87, align 8
  %shl.i.i134 = shl i32 %92, 8
  %or.i135 = or i32 %shl.i.i134, -2147483648
  %93 = load ptr, ptr %usb_buf.i, align 4
  %call3.i136 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or.i135, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 152, ptr noundef %93, i16 noundef zeroext 1, i32 noundef 500) #5
  %name12.i139 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %reg_w.exit131
  %ptsensor.0173 = phi ptr [ @cxsensor, %reg_w.exit131 ], [ %add.ptr, %if.end17.for.body_crit_edge ]
  %i.0172 = phi i32 [ 0, %reg_w.exit131 ], [ %inc, %if.end17.for.body_crit_edge ]
  %94 = zext i32 %i.0172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %i.0172, label %if.else [
    i32 3, label %for.body.if.end_crit_edge
    i32 5, label %for.body.if.end_crit_edge182
    i32 8, label %for.body.if.end_crit_edge183
  ]

for.body.if.end_crit_edge183:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.if.end_crit_edge182:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.body.if.end_crit_edge182, %for.body.if.end_crit_edge183
  %cmp12 = phi i1 [ true, %if.else ], [ false, %for.body.if.end_crit_edge ], [ false, %for.body.if.end_crit_edge182 ], [ false, %for.body.if.end_crit_edge183 ]
  %length.0 = phi i32 [ 4, %if.else ], [ 8, %for.body.if.end_crit_edge ], [ 8, %for.body.if.end_crit_edge182 ], [ 8, %for.body.if.end_crit_edge183 ]
  %conv11 = trunc i32 %length.0 to i16
  %95 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %97 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %97)
  %cmp4.i138 = icmp sgt i32 %97, 6
  br i1 %cmp4.i138, label %do.end9.i141, label %if.end.reg_w.exit146_crit_edge

if.end.reg_w.exit146_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit146

do.end9.i141:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %ptsensor.0173 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ptsensor.0173, align 1
  %conv15.i = zext i8 %99 to i32
  %call16.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i139, i32 noundef 229, i32 noundef %conv15.i) #8
  br label %reg_w.exit146

reg_w.exit146:                                    ; preds = %do.end9.i141, %if.end.reg_w.exit146_crit_edge
  %100 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %usb_buf.i, align 4
  %102 = call ptr @memcpy(ptr %101, ptr %ptsensor.0173, i32 %length.0)
  %103 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %96, align 8
  %shl.i.i143 = shl i32 %104, 8
  %or.i144 = or i32 %shl.i.i143, -2147483648
  %105 = load ptr, ptr %usb_buf.i, align 4
  %call23.i145 = tail call i32 @usb_control_msg(ptr noundef %96, i32 noundef %or.i144, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %105, i16 noundef zeroext %conv11, i32 noundef 500) #5
  %106 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev1.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %shl.i.i148 = shl i32 %109, 8
  %or4.i = or i32 %shl.i.i148, -2147483520
  %110 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %usb_buf.i, align 4
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %reg_w.exit146
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %107, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %111, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %112 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %112)
  %cmp7.i = icmp sgt i32 %112, 5
  br i1 %cmp7.i, label %if.then14.if.end17.sink.split_crit_edge, label %if.then14.if.end17_crit_edge

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14.if.end17.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.sink.split

if.else15:                                        ; preds = %reg_w.exit146
  %call5.i154 = tail call i32 @usb_control_msg(ptr noundef %107, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %111, i16 noundef zeroext %conv11, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %113 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %113)
  %cmp7.i155 = icmp sgt i32 %113, 5
  br i1 %cmp7.i155, label %if.else15.if.end17.sink.split_crit_edge, label %if.else15.if.end17_crit_edge

if.else15.if.end17_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else15.if.end17.sink.split_crit_edge:          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else15.if.end17.sink.split_crit_edge, %if.then14.if.end17.sink.split_crit_edge
  %114 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb_buf.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv19.i157 = zext i8 %117 to i32
  %call20.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name12.i139, i32 noundef 232, i32 noundef %conv19.i157) #8
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else15.if.end17_crit_edge, %if.then14.if.end17_crit_edge
  %add.ptr = getelementptr i8, ptr %ptsensor.0173, i32 %length.0
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end17
  %118 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev1.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i162 = shl i32 %121, 8
  %or4.i163 = or i32 %shl.i.i162, -2147483520
  %122 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_buf.i, align 4
  %call5.i165 = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or4.i163, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 231, ptr noundef %123, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %124 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %124)
  %cmp7.i166 = icmp sgt i32 %124, 5
  br i1 %cmp7.i166, label %do.end12.i170, label %for.end.reg_r.exit171_crit_edge

for.end.reg_r.exit171_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_r.exit171

do.end12.i170:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %usb_buf.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 1
  %conv19.i168 = zext i8 %128 to i32
  %call20.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name12.i139, i32 noundef 231, i32 noundef %conv19.i168) #8
  br label %reg_r.exit171

reg_r.exit171:                                    ; preds = %do.end12.i170, %for.end.reg_r.exit171_crit_edge
  ret void
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
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !124
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
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb2
    i32 9963778, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %sat = getelementptr i8, ptr %1, i32 1032
  %10 = ptrtoint ptr %sat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sat, align 8
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur, align 8
  tail call fastcc void @setbrightness(ptr noundef %add.ptr, i32 noundef %9, i32 noundef %13)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val3, align 4
  %sat4 = getelementptr i8, ptr %1, i32 1032
  %16 = ptrtoint ptr %sat4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sat4, align 8
  %cur5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %cur5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur5, align 8
  tail call fastcc void @setcontrast(ptr noundef %add.ptr, i32 noundef %15, i32 noundef %19)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %brightness = getelementptr i8, ptr %1, i32 1024
  %20 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %brightness, align 8
  %cur8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %cur8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur8, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val10, align 4
  tail call fastcc void @setbrightness(ptr noundef %add.ptr, i32 noundef %23, i32 noundef %25)
  %contrast = getelementptr i8, ptr %1, i32 1028
  %26 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %contrast, align 4
  %cur11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %cur11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur11, align 8
  %30 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val10, align 4
  tail call fastcc void @setcontrast(ptr noundef %add.ptr, i32 noundef %29, i32 noundef %31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %32 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setbrightness(ptr noundef %gspca_dev, i32 noundef %val, i32 noundef %sat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i8
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp4.i = icmp sgt i32 %2, 6
  br i1 %cmp4.i, label %do.end9.i, label %entry.reg_w.exit_crit_edge

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %entry.reg_w.exit_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -120, ptr %4, align 1
  %regE5cbx.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 1
  %6 = ptrtoint ptr %regE5cbx.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %regE5cbx.sroa.5.0..sroa_idx, align 1
  %regE5cbx.sroa.560.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 2
  %7 = ptrtoint ptr %regE5cbx.sroa.560.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %regE5cbx.sroa.560.0..sroa_idx, align 1
  %regE5cbx.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 3
  %8 = ptrtoint ptr %regE5cbx.sroa.6.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 5)
  store i40 6576734465, ptr %regE5cbx.sroa.6.0..sroa_idx, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %11, i16 noundef zeroext 8, i32 noundef 500) #5
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i12 = shl i32 %15, 8
  %or4.i = or i32 %shl.i.i12, -2147483520
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %17, i16 noundef zeroext 8, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp7.i = icmp sgt i32 %18, 5
  br i1 %cmp7.i, label %reg_r.exit, label %reg_r.exit.thread

reg_r.exit.thread:                                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  br label %reg_w.exit23

reg_r.exit:                                       ; preds = %reg_w.exit
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv19.i = zext i8 %24 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i, i32 noundef 232, i32 noundef %conv19.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr)
  %cmp4.i15 = icmp sgt i32 %.pr, 6
  br i1 %cmp4.i15, label %do.end9.i18, label %reg_r.exit.reg_w.exit23_crit_edge

reg_r.exit.reg_w.exit23_crit_edge:                ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit23

do.end9.i18:                                      ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit23

reg_w.exit23:                                     ; preds = %do.end9.i18, %reg_r.exit.reg_w.exit23_crit_edge, %reg_r.exit.thread
  %27 = phi ptr [ %20, %reg_r.exit.thread ], [ %26, %reg_r.exit.reg_w.exit23_crit_edge ], [ %26, %do.end9.i18 ]
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 -2012937983, ptr %29, align 1
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 8
  %shl.i.i20 = shl i32 %32, 8
  %or.i21 = or i32 %shl.i.i20, -2147483648
  %33 = load ptr, ptr %usb_buf.i, align 4
  %call23.i22 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i21, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %33, i16 noundef zeroext 4, i32 noundef 500) #5
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i25 = shl i32 %37, 8
  %or4.i26 = or i32 %shl.i.i25, -2147483520
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %call5.i28 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or4.i26, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %39, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %40 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp7.i29 = icmp sgt i32 %40, 5
  br i1 %cmp7.i29, label %reg_r.exit34, label %reg_r.exit34.thread

reg_r.exit34.thread:                              ; preds = %reg_w.exit23
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i, align 4
  br label %reg_w.exit45

reg_r.exit34:                                     ; preds = %reg_w.exit23
  %name15.i30 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv19.i31 = zext i8 %46 to i32
  %call20.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i30, i32 noundef 232, i32 noundef %conv19.i31) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr62 = load i32, ptr @gspca_debug, align 4
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr62)
  %cmp4.i36 = icmp sgt i32 %.pr62, 6
  br i1 %cmp4.i36, label %do.end9.i40, label %reg_r.exit34.reg_w.exit45_crit_edge

reg_r.exit34.reg_w.exit45_crit_edge:              ; preds = %reg_r.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit45

do.end9.i40:                                      ; preds = %reg_r.exit34
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i30, i32 noundef 81, i32 noundef 119) #8
  br label %reg_w.exit45

reg_w.exit45:                                     ; preds = %do.end9.i40, %reg_r.exit34.reg_w.exit45_crit_edge, %reg_r.exit34.thread
  %49 = phi ptr [ %42, %reg_r.exit34.thread ], [ %48, %reg_r.exit34.reg_w.exit45_crit_edge ], [ %48, %do.end9.i40 ]
  %conv265 = trunc i32 %sat to i8
  %50 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 119, ptr %51, align 1
  %reg51c.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %51, i32 1
  %53 = ptrtoint ptr %reg51c.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv265, ptr %reg51c.sroa.6.0..sroa_idx, align 1
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %49, align 8
  %shl.i.i42 = shl i32 %55, 8
  %or.i43 = or i32 %shl.i.i42, -2147483648
  %56 = load ptr, ptr %usb_buf.i, align 4
  %call23.i44 = tail call i32 @usb_control_msg(ptr noundef %49, i32 noundef %or.i43, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %56, i16 noundef zeroext 2, i32 noundef 500) #5
  %57 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %59 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %59)
  %cmp4.i47 = icmp sgt i32 %59, 6
  br i1 %cmp4.i47, label %do.end9.i50, label %reg_w.exit45.reg_w.exit55_crit_edge

reg_w.exit45.reg_w.exit55_crit_edge:              ; preds = %reg_w.exit45
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit55

do.end9.i50:                                      ; preds = %reg_w.exit45
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i48 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i48, i32 noundef 16, i32 noundef 177) #8
  br label %reg_w.exit55

reg_w.exit55:                                     ; preds = %do.end9.i50, %reg_w.exit45.reg_w.exit55_crit_edge
  %60 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 -20047, ptr %61, align 1
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %58, align 8
  %shl.i.i52 = shl i32 %64, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %65 = load ptr, ptr %usb_buf.i, align 4
  %call23.i54 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i53, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %65, i16 noundef zeroext 2, i32 noundef 500) #5
  %66 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i, align 4
  %68 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_buf.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 3, ptr %69, align 1
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %67, align 8
  %shl.i.i58 = shl i32 %72, 8
  %or.i59 = or i32 %shl.i.i58, -2147483648
  %73 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i59, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef %73, i16 noundef zeroext 1, i32 noundef 500) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setcontrast(ptr noundef %gspca_dev, i32 noundef %val, i32 noundef %sat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i8
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp4.i = icmp sgt i32 %2, 6
  br i1 %cmp4.i, label %do.end9.i, label %entry.reg_w.exit_crit_edge

entry.reg_w.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit

do.end9.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i, i32 noundef 229, i32 noundef 136) #8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end9.i, %entry.reg_w.exit_crit_edge
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -120, ptr %4, align 1
  %regE5acx.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 1
  %6 = ptrtoint ptr %regE5acx.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %regE5acx.sroa.5.0..sroa_idx, align 1
  %regE5acx.sroa.537.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 2
  %7 = ptrtoint ptr %regE5acx.sroa.537.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %regE5acx.sroa.537.0..sroa_idx, align 1
  %regE5acx.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 3
  %8 = ptrtoint ptr %regE5acx.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %regE5acx.sroa.6.0..sroa_idx, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call23.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 229, ptr noundef %11, i16 noundef zeroext 4, i32 noundef 500) #5
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i10 = shl i32 %15, 8
  %or4.i = or i32 %shl.i.i10, -2147483520
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or4.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 232, ptr noundef %17, i16 noundef zeroext 1, i32 noundef 500) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %18 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp7.i = icmp sgt i32 %18, 5
  br i1 %cmp7.i, label %reg_r.exit, label %reg_r.exit.thread

reg_r.exit.thread:                                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i, align 4
  br label %reg_w.exit22

reg_r.exit:                                       ; preds = %reg_w.exit
  %name15.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv19.i = zext i8 %24 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name15.i, i32 noundef 232, i32 noundef %conv19.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr)
  %cmp4.i13 = icmp sgt i32 %.pr, 6
  br i1 %cmp4.i13, label %do.end9.i17, label %reg_r.exit.reg_w.exit22_crit_edge

reg_r.exit.reg_w.exit22_crit_edge:                ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit22

do.end9.i17:                                      ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call16.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name15.i, i32 noundef 81, i32 noundef 119) #8
  br label %reg_w.exit22

reg_w.exit22:                                     ; preds = %do.end9.i17, %reg_r.exit.reg_w.exit22_crit_edge, %reg_r.exit.thread
  %27 = phi ptr [ %20, %reg_r.exit.thread ], [ %26, %reg_r.exit.reg_w.exit22_crit_edge ], [ %26, %do.end9.i17 ]
  %conv240 = trunc i32 %sat to i8
  %28 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 119, ptr %29, align 1
  %reg51c.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %29, i32 1
  %31 = ptrtoint ptr %reg51c.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv240, ptr %reg51c.sroa.6.0..sroa_idx, align 1
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %27, align 8
  %shl.i.i19 = shl i32 %33, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %34 = load ptr, ptr %usb_buf.i, align 4
  %call23.i21 = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i20, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 81, ptr noundef %34, i16 noundef zeroext 2, i32 noundef 500) #5
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %37 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp4.i24 = icmp sgt i32 %37, 6
  br i1 %cmp4.i24, label %do.end9.i27, label %reg_w.exit22.reg_w.exit32_crit_edge

reg_w.exit22.reg_w.exit32_crit_edge:              ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #7
  br label %reg_w.exit32

do.end9.i27:                                      ; preds = %reg_w.exit22
  call void @__sanitizer_cov_trace_pc() #7
  %name12.i25 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call16.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name12.i25, i32 noundef 16, i32 noundef 177) #8
  br label %reg_w.exit32

reg_w.exit32:                                     ; preds = %do.end9.i27, %reg_w.exit22.reg_w.exit32_crit_edge
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 -20047, ptr %39, align 1
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %36, align 8
  %shl.i.i29 = shl i32 %42, 8
  %or.i30 = or i32 %shl.i.i29, -2147483648
  %43 = load ptr, ptr %usb_buf.i, align 4
  %call23.i31 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i30, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %43, i16 noundef zeroext 2, i32 noundef 500) #5
  %44 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1.i, align 4
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %47, align 1
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 8
  %shl.i.i35 = shl i32 %50, 8
  %or.i36 = or i32 %shl.i.i35, -2147483648
  %51 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i36, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 112, ptr noundef %51, i16 noundef zeroext 1, i32 noundef 500) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/conex.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/conex.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/conex.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_conex__307_953_sd_driver_init6, !8, !"__initcall__kmod_gspca_conex__307_953_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/conex.c", i32 953, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/conex.c", i32 942, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/conex.c", i32 941, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/conex.c", i32 916, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/conex.c", i32 33, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/conex.c", i32 64, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_r._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_r._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/conex.c", i32 75, i32 2}
!27 = !{ptr @reg_r._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @reg_r._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cx_sensor_init, !30, !"cx_sensor_init", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/gspca/conex.c", i32 118, i32 19}
!31 = !{ptr @cx11646_initsize.reg12, !32, !"reg12", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/conex.c", i32 316, i32 20}
!33 = distinct !{null, !34, !"reg17", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/conex.c", i32 317, i32 20}
!35 = !{ptr @cx_inits_640, !36, !"cx_inits_640", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/conex.c", i32 303, i32 19}
!37 = !{ptr @cx_inits_352, !38, !"cx_inits_352", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/conex.c", i32 294, i32 19}
!39 = !{ptr @cx_inits_320, !40, !"cx_inits_320", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/conex.c", i32 285, i32 19}
!41 = !{ptr @cx_inits_176, !42, !"cx_inits_176", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/conex.c", i32 276, i32 19}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/conex.c", i32 103, i32 3}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @reg_w._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @reg_w._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/conex.c", i32 106, i32 2}
!50 = !{ptr @reg_w._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @reg_w._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @cx11646_fw1, !53, !"cx11646_fw1", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/conex.c", i32 126, i32 19}
!54 = !{ptr @cxsensor, !55, !"cxsensor", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/conex.c", i32 205, i32 19}
!56 = distinct !{null, !57, !"reg20", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/conex.c", i32 220, i32 19}
!58 = distinct !{null, !59, !"reg28", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/conex.c", i32 221, i32 19}
!60 = distinct !{null, !61, !"reg10", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/gspca/conex.c", i32 222, i32 19}
!62 = distinct !{null, !63, !"reg71a", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/conex.c", i32 223, i32 19}
!64 = distinct !{null, !65, !"reg71b", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/conex.c", i32 224, i32 19}
!66 = distinct !{null, !67, !"reg71c", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/conex.c", i32 226, i32 19}
!68 = distinct !{null, !69, !"reg71d", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/conex.c", i32 228, i32 19}
!70 = !{ptr @reg7b, !71, !"reg7b", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/conex.c", i32 229, i32 19}
!72 = !{ptr @cx_jpeg_init, !73, !"cx_jpeg_init", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/conex.c", i32 360, i32 19}
!74 = !{ptr @sd_init_controls._key, !75, !"_key", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/conex.c", i32 901, i32 2}
!76 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/conex.c", i32 909, i32 3}
!79 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sd_init_controls._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sd_init_controls._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sd_ctrl_ops, !83, !"sd_ctrl_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/conex.c", i32 891, i32 35}
!84 = distinct !{null, !85, !"regE5c", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/conex.c", i32 606, i32 19}
!86 = !{ptr @jpeg_head, !87, !"jpeg_head", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/jpeg.h", i32 19, i32 17}
!88 = !{ptr @.str.16, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/conex.c", i32 678, i32 3}
!90 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cx11646_jpeg._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx11646_jpeg._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @cxjpeg_640, !94, !"cxjpeg_640", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/gspca/conex.c", i32 443, i32 19}
!95 = !{ptr @cxjpeg_352, !96, !"cxjpeg_352", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/gspca/conex.c", i32 472, i32 19}
!97 = !{ptr @cxjpeg_320, !98, !"cxjpeg_320", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/conex.c", i32 501, i32 19}
!99 = !{ptr @cxjpeg_176, !100, !"cxjpeg_176", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/conex.c", i32 530, i32 19}
!101 = !{ptr @cxjpeg_qtable, !102, !"cxjpeg_qtable", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/conex.c", i32 560, i32 19}
!103 = !{ptr @reg12, !104, !"reg12", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/conex.c", i32 601, i32 19}
!105 = distinct !{null, !106, !"regE5_8", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/conex.c", i32 602, i32 19}
!107 = distinct !{null, !108, !"regE5a", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/gspca/conex.c", i32 604, i32 19}
!109 = distinct !{null, !110, !"regE5b", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/conex.c", i32 605, i32 19}
!111 = distinct !{null, !112, !"reg51", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/conex.c", i32 607, i32 19}
!113 = !{ptr @device_table, !114, !"device_table", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/conex.c", i32 927, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
