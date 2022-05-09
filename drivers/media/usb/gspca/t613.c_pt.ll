; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/t613.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/t613.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.additional_sensor_data = type { [6 x i8], ptr, i8, i8, i8, [6 x i8], [10 x i8], [9 x i8], [9 x i8], [6 x i8], [4 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, %struct.anon.108, i8, i8 }
%struct.anon.108 = type { ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [76 x i8] c"gspca_t613.author=Leandro Costantino <le_costantino@pixartargentina.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [70 x i8] c"gspca_t613.description=GSPCA/T613 (JPEG Compliance) USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [51 x i8] c"gspca_t613.file=drivers/media/usb/gspca/gspca_t613\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [23 x i8] c"gspca_t613.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_t613__307_1041_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gspca_t613\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"t613\00", [27 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6049, i16 296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@vga_mode_t16 = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1195724874, i32 1, i32 160, i32 10190, i32 7, i32 4, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1195724874, i32 1, i32 320, i32 29390, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1195724874, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sd_init.read_indexs = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\0Bf\80\81\8E\8F\A5\A6\A8\BB\BC\C6\00", [18 x i8] zeroinitializer }, align 32
@sd_init.n1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\08\03\09\03\12\04", [26 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: sensor tas5130a\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sd_init\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/usb/gspca/t613.c\00", [33 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr = internal global ptr @sd_init._entry, section ".printk_index", align 4
@sd_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: sensor lt168g\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.7 = internal global ptr @sd_init._entry.5, section ".printk_index", align 4
@sd_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: sensor 'other'\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.10 = internal global ptr @sd_init._entry.8, section ".printk_index", align 4
@sd_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: sensor om6802\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.13 = internal global ptr @sd_init._entry.11, section ".printk_index", align 4
@sd_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013gspca_t613: unknown sensor %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.16 = internal global ptr @sd_init._entry.14, section ".printk_index", align 4
@sensor_reset = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ahb\FF`\07", [26 x i8] zeroinitializer }, align 32
@sd_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_t613: Bad sensor reset %02x\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.19 = internal global ptr @sd_init._entry.17, section ".printk_index", align 4
@sd_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Reg 0x%02x = 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.22 = internal global ptr @sd_init._entry.20, section ".printk_index", align 4
@sensor_data = internal constant { [4 x %struct.additional_sensor_data], [48 x i8] } { [4 x %struct.additional_sensor_data] [%struct.additional_sensor_data { [6 x i8] c"ahe\0A`\04", ptr @n4_om6802, i8 70, i8 60, i8 51, [6 x i8] c"\A8\F0\C6\88\C0\00", [10 x i8] c"\C2(\0F\22\CD',\06\B3\FC", [9 x i8] c"\80\FF\FF\80\FF\FF\80\FF\FF", [9 x i8] c"\80\FF\FF\80\FF\FF\80\FF\FF", [6 x i8] c"\0C\03\AB\13\81#", [4 x i8] c"\0B\04\0Ax" }, %struct.additional_sensor_data { [6 x i8] c"a\C2e\88`\00", ptr @n4_other, i8 62, i8 -84, i8 -72, [6 x i8] c"\A8\A8\C6\DA\C0\00", [10 x i8] c"\C1H\04\1B\CA.3:\E8\FC", [9 x i8] c"N\9C\EC@\80\C0H\96\D9", [9 x i8] c"N\9C\EC@\80\C0H\96\D9", [6 x i8] c"\0C\03\AB)\81i", [4 x i8] c"\0B\04\0A\00" }, %struct.additional_sensor_data { [6 x i8] c"a\C2e\0D`\08", ptr @n4_tas5130a, i8 50, i8 60, i8 -76, [6 x i8] c"\A8\F0\C6\DA\C0\00", [10 x i8] c"\BB(\10\10\BB(\1E'\C8\FC", [9 x i8] c"`\A8\E0`\A8\E0`\A8\E0", [9 x i8] c"`\A8\E0`\A8\E0`\A8\E0", [6 x i8] c"\0C\03\AB\10\81 ", [4 x i8] c"\0B\04\0A@" }, %struct.additional_sensor_data { [6 x i8] c"a\C2eh`\00", ptr @n4_lt168g, i8 70, i8 124, i8 -77, [6 x i8] c"\A8\F0\C6\BA\C0\00", [10 x i8] c"\C08\08\10\C00\10@\B0\F4", [9 x i8] c"@\80\C0P\A0\F0S\A6\FF", [9 x i8] c"@\80\C0P\A0\F0S\A6\FF", [6 x i8] c"\0C\03\ABK\81+", [4 x i8] c"\0B\04\0A(" }], [48 x i8] zeroinitializer }, align 32
@sd_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.24 = internal global ptr @sd_init._entry.23, section ".printk_index", align 4
@sd_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sd_init._entry_ptr.26 = internal global ptr @sd_init._entry.25, section ".printk_index", align 4
@reg_w_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013gspca_t613: Out of memory\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_buf\00", [22 x i8] zeroinitializer }, align 32
@reg_w_buf._entry_ptr = internal global ptr @reg_w_buf._entry, section ".printk_index", align 4
@n4_om6802 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\09\01\12\04f\8A\80<\81\22\84P\8Ax\8Bh\8C\88\8E3\8F$\AA\B1\A2`\A50\A6:\A8\E8\AE\05\B1\00\BB\04\BCH\BE6\C6\88\E9\00\C5\C0e\0A\BB\86\AFX\B0h\87@\89+\8D\FF\83@\AC\84\AD\86\AFF", [58 x i8] zeroinitializer }, align 32
@n4_other = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"f\00\7F\00\80\AC\81i\84@\85p\86 \8Ah\8BX\8C\88\8D\FF\8E\B8\8F(\A2`\A5@\A8\A8\AC\84\AD\84\AE$\AFV\B0h\B1\00\B2\88\BB\C5\BCJ\BE6\C2\88\C5\C0\C6\DA\E9&\EB\00", [34 x i8] zeroinitializer }, align 32
@n4_tas5130a = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\80<\81h\83\A0\84 \8Ah\8BX\8C\88\8E\B4\8F$\A1\B1\A20\A5\10\A6J\AE\03\B1D\B2\08\B7\06\B9\E7\BB\C4\BCJ\BE6\BF\FF\C2\88\C5\C8\C6\DA", [46 x i8] zeroinitializer }, align 32
@n4_lt168g = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"f\01\7F\00\80|\81(\83D\84 \86 \8Ap\8BX\8C\88\8D\A0\8E\B3\8F$\A1\B0\A28\A5 \A6J\A8\E8\AF8\B0h\B1D\B2\88\BB\86\BD@\BE&\C1\05\C2\88\C5\C0\DA\8E\DB\CA\DC\A8\DD\8C\DED\DF\0C\E9\80", [58 x i8] zeroinitializer }, align 32
@reg_w_ixbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.4, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_w_ixbuf\00", [20 x i8] zeroinitializer }, align 32
@reg_w_ixbuf._entry_ptr = internal global ptr @reg_w_ixbuf._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"t613:951:(hdl)->_lock\00", [42 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @sd_g_volatile_ctrl, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013gspca_t613: Could not initialize controls\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@setgamma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: Gamma: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setgamma\00", [23 x i8] zeroinitializer }, align 32
@setgamma._entry_ptr = internal global ptr @setgamma._entry, section ".printk_index", align 4
@gamma_table = internal constant { [16 x [17 x i8]], [80 x i8] } { [16 x [17 x i8]] [[17 x i8] c"\00\00\01\04\08\0E\16!.=Pe}\99\B8\DB\FF", [17 x i8] c"\00\01\03\08\0E\16!-<M`u\8D\A6\C2\E1\FF", [17 x i8] c"\00\01\05\0B\12\1C(5EVi~\95\AD\C7\E3\FF", [17 x i8] c"\00\02\07\0F\18$0?Oas\88\9D\B4\CD\E6\FF", [17 x i8] c"\00\04\0B\15 -;J[l\7F\92\A7\BC\D2\E9\FF", [17 x i8] c"\00\07\11\15 -HXhy\8B\9D\B0\C4\D7\EC\FF", [17 x i8] c"\00\0C\1A)8GWgw\88\99\AA\BB\CC\DD\EE\FF", [17 x i8] c"\00\10 0@P`p\80\90\A0\B0\C0\D0\E0\F0\FF", [17 x i8] c"\00\15'8IYiy\88\97\A7\B6\C4\D3\E2\F0\FF", [17 x i8] c"\00\1C0CTeu\84\93\A1\B0\BD\CA\D8\E5\F2\FF", [17 x i8] c"\00$;O`p\80\8E\9C\AA\B7\C4\D0\DC\E8\F3\FF", [17 x i8] c"\00*<]n~\8D\9B\A8\B4\C0\CB\D6\E1\EB\F5\FF", [17 x i8] c"\00?Zn\7F\8E\9C\A8\B4\BF\C9\D3\DC\E5\EE\F6\FF", [17 x i8] c"\00To\83\93\A0\AD\B7\C2\CB\D4\DC\E4\EB\F2\F9\FF", [17 x i8] c"\00n\88\9A\A8\B3\BD\C6\CF\D6\DD\E3\E9\EF\F4\FA\FF", [17 x i8] c"\00\93\A8\B7\C1\CA\D2\D8\DE\E3\E8\ED\F1\F5\F8\FC\FF"], [80 x i8] zeroinitializer }, align 32
@effects_table = internal constant { [7 x [6 x i8]], [54 x i8] } { [7 x [6 x i8]] [[6 x i8] c"\A8\E8\C6\D2\C0\00", [6 x i8] c"\A8\C8\C6R\C0\04", [6 x i8] c"\A8\E8\C6\D2\C0 ", [6 x i8] c"\A8\E8\C6\D2\C0\80", [6 x i8] c"\A8\C8\C6R\C0\02", [6 x i8] c"\A8\C8\C6\D2\C0\10", [6 x i8] c"\A8\C8\C6\D2\C0@"], [54 x i8] zeroinitializer }, align 32
@om6802_sensor_init.sensor_init = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\DFm\DD\18Z\E0\\\07]\B0^\1E`q\EF\00\E9\00\EA\00\90$\91\B2\822\FDA\00", [35 x i8] zeroinitializer }, align 32
@om6802_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.35, ptr @.str.4, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"om6802_sensor_init\00", [45 x i8] zeroinitializer }, align 32
@om6802_sensor_init._entry_ptr = internal global ptr @om6802_sensor_init._entry, section ".printk_index", align 4
@poll_sensor.poll1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"g\05h\81i\80j\82khlir\D9s4t2u\92v\00\09\01`\14", [38 x i8] zeroinitializer }, align 32
@poll_sensor.poll2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"g\02hqirr\A9s\02s\02`\14", [18 x i8] zeroinitializer }, align 32
@poll_sensor.noise03 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\A6\0A\EA\CF\BE&\B1_\A1\B1\DAk\DB\98\DF\0C\C2\80\C3\10", [44 x i8] zeroinitializer }, align 32
@poll_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: [Sensor requires polling]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"poll_sensor\00", [20 x i8] zeroinitializer }, align 32
@poll_sensor._entry_ptr = internal global ptr @poll_sensor._entry, section ".printk_index", align 4
@switch.table.sd_s_ctrl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 6, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 2049, i64 2050, i64 2051, i64 2055]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [12 x i64] [i64 10, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963788, i64 9963792, i64 9963796, i64 9963800, i64 9963803, i64 9963804, i64 9963807]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1029, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1041, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1030, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1015, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1001, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"vga_mode_t16\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 48, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"read_indexs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 574, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [3 x i8] c"n1\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 577, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 586, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 590, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 594, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 598, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 602, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"sensor_reset\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 290, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 617, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 626, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"sensor_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 135, i32 44 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 637, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 659, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 333, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"n4_om6802\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 93, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"n4_other\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 104, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"n4_tas5130a\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 114, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"n4_lt168g\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 123, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 359, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 951, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 940, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 991, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 484, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"gamma_table\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 232, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"effects_table\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 221, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"sensor_init\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 384, i32 18 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 413, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"poll1\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 718, i32 18 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"poll2\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 723, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant [8 x i8] c"noise03\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 726, i32 18 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [34 x i8] c"../drivers/media/usb/gspca/t613.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 731, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"switch.table.sd_s_ctrl\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_t613__307_1041_sd_driver_init6, ptr @om6802_sensor_init._entry, ptr @om6802_sensor_init._entry_ptr, ptr @poll_sensor._entry, ptr @poll_sensor._entry_ptr, ptr @reg_w_buf._entry, ptr @reg_w_buf._entry_ptr, ptr @reg_w_ixbuf._entry, ptr @reg_w_ixbuf._entry_ptr, ptr @sd_driver_exit, ptr @sd_init._entry, ptr @sd_init._entry.11, ptr @sd_init._entry.14, ptr @sd_init._entry.17, ptr @sd_init._entry.20, ptr @sd_init._entry.23, ptr @sd_init._entry.25, ptr @sd_init._entry.5, ptr @sd_init._entry.8, ptr @sd_init._entry_ptr, ptr @sd_init._entry_ptr.10, ptr @sd_init._entry_ptr.13, ptr @sd_init._entry_ptr.16, ptr @sd_init._entry_ptr.19, ptr @sd_init._entry_ptr.22, ptr @sd_init._entry_ptr.24, ptr @sd_init._entry_ptr.26, ptr @sd_init._entry_ptr.7, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @setgamma._entry, ptr @setgamma._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode_t16, ptr @sd_init.read_indexs, ptr @sd_init.n1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @sensor_reset, ptr @.str.18, ptr @.str.21, ptr @sensor_data, ptr @.str.27, ptr @.str.28, ptr @n4_om6802, ptr @n4_other, ptr @n4_tas5130a, ptr @n4_lt168g, ptr @.str.29, ptr @sd_init_controls._key, ptr @.str.30, ptr @sd_ctrl_ops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @gamma_table, ptr @effects_table, ptr @om6802_sensor_init.sensor_init, ptr @.str.35, ptr @poll_sensor.poll1, ptr @poll_sensor.poll2, ptr @poll_sensor.noise03, ptr @.str.36, ptr @.str.37, ptr @switch.table.sd_s_ctrl], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode_t16 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.read_indexs to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init.n1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_reset to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n4_om6802 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n4_other to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n4_tas5130a to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n4_lt168g to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_ixbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setgamma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_table to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @effects_table to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @om6802_sensor_init.sensor_init to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @om6802_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_sensor.poll1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_sensor.poll2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_sensor.noise03 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_s_ctrl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2632, ptr noundef null) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode_t16, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %4 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %5, i16 noundef zeroext 1, i32 noundef 500) #6
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i264 = shl i32 %13, 8
  %or2.i265 = or i32 %shl.i.i264, -2147483520
  %call3.i267 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or2.i265, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #6
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv2 = zext i8 %17 to i32
  %or = or i32 %shl, %conv2
  %18 = trunc i32 %or to i16
  %trunc = and i16 %18, -241
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end64 [
    i16 2049, label %do.body
    i16 2050, label %do.body12
    i16 2051, label %do.body29
    i16 2055, label %do.body46
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %do.body.sw.epilog.sink.split_crit_edge, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.sw.epilog.sink.split_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body12:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %21 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %do.body12.sw.epilog.sink.split_crit_edge, label %do.body12.sw.epilog_crit_edge

do.body12.sw.epilog_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body12.sw.epilog.sink.split_crit_edge:         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body29:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp30 = icmp sgt i32 %22, 0
  br i1 %cmp30, label %do.body29.sw.epilog.sink.split_crit_edge, label %do.body29.sw.epilog_crit_edge

do.body29.sw.epilog_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body29.sw.epilog.sink.split_crit_edge:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.body46:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp47 = icmp sgt i32 %23, 0
  br i1 %cmp47, label %do.body46.sw.epilog.sink.split_crit_edge, label %do.body46.sw.epilog_crit_edge

do.body46.sw.epilog_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body46.sw.epilog.sink.split_crit_edge:         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

do.end64:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %or) #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.body46.sw.epilog.sink.split_crit_edge, %do.body29.sw.epilog.sink.split_crit_edge, %do.body12.sw.epilog.sink.split_crit_edge, %do.body.sw.epilog.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.2, %do.body.sw.epilog.sink.split_crit_edge ], [ @.str.6, %do.body12.sw.epilog.sink.split_crit_edge ], [ @.str.9, %do.body29.sw.epilog.sink.split_crit_edge ], [ @.str.12, %do.body46.sw.epilog.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 2, %do.body.sw.epilog.sink.split_crit_edge ], [ 3, %do.body12.sw.epilog.sink.split_crit_edge ], [ 1, %do.body29.sw.epilog.sink.split_crit_edge ], [ 0, %do.body46.sw.epilog.sink.split_crit_edge ]
  %name55 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink, ptr noundef %name55) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body46.sw.epilog_crit_edge, %do.body29.sw.epilog_crit_edge, %do.body12.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  %.sink = phi i8 [ 2, %do.body.sw.epilog_crit_edge ], [ 3, %do.body12.sw.epilog_crit_edge ], [ 1, %do.body29.sw.epilog_crit_edge ], [ 0, %do.body46.sw.epilog_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split ]
  %sensor61 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %24 = ptrtoint ptr %sensor61 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %sensor61, align 4
  %sensor68 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %cmp70 = icmp eq i8 %.sink, 0
  br i1 %cmp70, label %if.then72, label %sw.epilog.if.end91_crit_edge

sw.epilog.if.end91_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.then72:                                        ; preds = %sw.epilog
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %27 = call ptr @memcpy(ptr %26, ptr @sd_init.n1, i32 6)
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i270 = shl i32 %31, 8
  %or.i = or i32 %shl.i.i270, -2147483648
  %32 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %32, i16 noundef zeroext 6, i32 noundef 500) #6
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %dec445, -1
  %cmp73 = icmp sgt i32 %dec445, 0
  br i1 %cmp73, label %while.cond.while.body_crit_edge, label %do.end86

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.then72
  %dec445 = phi i32 [ 4, %if.then72 ], [ %dec, %while.cond.while.body_crit_edge ]
  %33 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb_buf.i, align 4
  %35 = call ptr @memcpy(ptr %34, ptr @sensor_reset, i32 6)
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i273 = shl i32 %39, 8
  %or.i274 = or i32 %shl.i.i273, -2147483648
  %40 = load ptr, ptr %usb_buf.i, align 4
  %call5.i275 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i274, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %40, i16 noundef zeroext 6, i32 noundef 500) #6
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i277 = shl i32 %44, 8
  %or2.i278 = or i32 %shl.i.i277, -2147483520
  %45 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb_buf.i, align 4
  %call3.i280 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or2.i278, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 99, ptr noundef %46, i16 noundef zeroext 1, i32 noundef 500) #6
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  tail call void @msleep(i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %50)
  %cmp77 = icmp eq i8 %50, 23
  br i1 %cmp77, label %if.end90, label %while.cond

do.end86:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %conv88 = zext i8 %50 to i32
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv88) #9
  br label %cleanup

if.end90:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %usb_buf.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 2048, ptr %52, align 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i283 = shl i32 %57, 8
  %or.i284 = or i32 %shl.i.i283, -2147483648
  %58 = load ptr, ptr %usb_buf.i, align 4
  %call5.i285 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i284, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %58, i16 noundef zeroext 2, i32 noundef 500) #6
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %sw.epilog.if.end91_crit_edge
  %name109 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %while.body96

while.body96:                                     ; preds = %do.end117.while.body96_crit_edge, %if.end91
  %i.1446 = phi i32 [ 0, %if.end91 ], [ %inc, %do.end117.while.body96_crit_edge ]
  %arrayidx = getelementptr [14 x i8], ptr @sd_init.read_indexs, i32 0, i32 %i.1446
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx, align 1
  %conv98 = zext i8 %60 to i16
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i287 = shl i32 %64, 8
  %or2.i288 = or i32 %shl.i.i287, -2147483520
  %65 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf.i, align 4
  %call3.i290 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or2.i288, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %conv98, ptr noundef %66, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %67 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp101 = icmp sgt i32 %67, 2
  br i1 %cmp101, label %do.end106, label %while.body96.do.end117_crit_edge

while.body96.do.end117_crit_edge:                 ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end117

do.end106:                                        ; preds = %while.body96
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %usb_buf.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv112 = zext i8 %60 to i32
  %conv113 = zext i8 %71 to i32
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name109, i32 noundef %conv112, i32 noundef %conv113) #9
  br label %do.end117

do.end117:                                        ; preds = %do.end106, %while.body96.do.end117_crit_edge
  %inc = add nuw nsw i32 %i.1446, 1
  %cmp94.not = icmp eq i32 %inc, 13
  br i1 %cmp94.not, label %while.end118, label %do.end117.while.body96_crit_edge

do.end117.while.body96_crit_edge:                 ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body96

while.end118:                                     ; preds = %do.end117
  %72 = ptrtoint ptr %sensor68 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %sensor68, align 4
  %idxprom = zext i8 %73 to i32
  %arrayidx120 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom
  %74 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i, align 4
  %76 = call ptr @memcpy(ptr %75, ptr %arrayidx120, i32 6)
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %shl.i.i293 = shl i32 %80, 8
  %or.i294 = or i32 %shl.i.i293, -2147483648
  %81 = load ptr, ptr %usb_buf.i, align 4
  %call5.i295 = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i294, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %81, i16 noundef zeroext 6, i32 noundef 500) #6
  %n4 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 1
  %82 = ptrtoint ptr %n4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %n4, align 4
  %n4sz = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 2
  %84 = ptrtoint ptr %n4sz to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %n4sz, align 4
  %conv122 = zext i8 %85 to i16
  tail call fastcc void @reg_w_buf(ptr noundef %gspca_dev, ptr noundef %83, i16 noundef zeroext %conv122)
  %86 = ptrtoint ptr %sensor68 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sensor68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp125 = icmp eq i8 %87, 3
  br i1 %cmp125, label %if.then127, label %while.end118.if.end145_crit_edge

while.end118.if.end145_crit_edge:                 ; preds = %while.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then127:                                       ; preds = %while.end118
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i297 = shl i32 %91, 8
  %or2.i298 = or i32 %shl.i.i297, -2147483520
  %92 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %usb_buf.i, align 4
  %call3.i300 = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or2.i298, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %93, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %94 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp130 = icmp sgt i32 %94, 2
  br i1 %cmp130, label %do.end135, label %if.then127.do.end144_crit_edge

if.then127.do.end144_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end144

do.end135:                                        ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_buf.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv140 = zext i8 %98 to i32
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name109, i32 noundef 128, i32 noundef %conv140) #9
  br label %do.end144

do.end144:                                        ; preds = %do.end135, %if.then127.do.end144_crit_edge
  %99 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  %shl.i.i302 = shl i32 %102, 8
  %or.i303 = or i32 %shl.i.i302, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %100, i32 noundef %or.i303, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 27776, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %if.end145

if.end145:                                        ; preds = %do.end144, %while.end118.if.end145_crit_edge
  %data1 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 6
  %103 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %104, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -48, ptr %104, align 1
  %incdec.ptr9.i = getelementptr i8, ptr %data1, i32 1
  %106 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %data1, align 1
  %incdec.ptr10.i = getelementptr i8, ptr %104, i32 2
  %108 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %incdec.ptr.i, align 1
  %incdec.ptr.i.1 = getelementptr i8, ptr %104, i32 3
  %109 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -47, ptr %incdec.ptr10.i, align 1
  %incdec.ptr9.i.1 = getelementptr i8, ptr %data1, i32 2
  %110 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %incdec.ptr9.i, align 2
  %incdec.ptr10.i.1 = getelementptr i8, ptr %104, i32 4
  %112 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %incdec.ptr.i.1, align 1
  %incdec.ptr.i.2 = getelementptr i8, ptr %104, i32 5
  %113 = ptrtoint ptr %incdec.ptr10.i.1 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -46, ptr %incdec.ptr10.i.1, align 1
  %incdec.ptr9.i.2 = getelementptr i8, ptr %data1, i32 3
  %114 = ptrtoint ptr %incdec.ptr9.i.1 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %incdec.ptr9.i.1, align 1
  %incdec.ptr10.i.2 = getelementptr i8, ptr %104, i32 6
  %116 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %incdec.ptr.i.2, align 1
  %incdec.ptr.i.3 = getelementptr i8, ptr %104, i32 7
  %117 = ptrtoint ptr %incdec.ptr10.i.2 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -45, ptr %incdec.ptr10.i.2, align 1
  %incdec.ptr9.i.3 = getelementptr i8, ptr %data1, i32 4
  %118 = ptrtoint ptr %incdec.ptr9.i.2 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %incdec.ptr9.i.2, align 4
  %incdec.ptr10.i.3 = getelementptr i8, ptr %104, i32 8
  %120 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %incdec.ptr.i.3, align 1
  %incdec.ptr.i.4 = getelementptr i8, ptr %104, i32 9
  %121 = ptrtoint ptr %incdec.ptr10.i.3 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -44, ptr %incdec.ptr10.i.3, align 1
  %incdec.ptr9.i.4 = getelementptr i8, ptr %data1, i32 5
  %122 = ptrtoint ptr %incdec.ptr9.i.3 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %incdec.ptr9.i.3, align 1
  %incdec.ptr10.i.4 = getelementptr i8, ptr %104, i32 10
  %124 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %incdec.ptr.i.4, align 1
  %incdec.ptr.i.5 = getelementptr i8, ptr %104, i32 11
  %125 = ptrtoint ptr %incdec.ptr10.i.4 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -43, ptr %incdec.ptr10.i.4, align 1
  %incdec.ptr9.i.5 = getelementptr i8, ptr %data1, i32 6
  %126 = ptrtoint ptr %incdec.ptr9.i.4 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %incdec.ptr9.i.4, align 2
  %incdec.ptr10.i.5 = getelementptr i8, ptr %104, i32 12
  %128 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %incdec.ptr.i.5, align 1
  %incdec.ptr.i.6 = getelementptr i8, ptr %104, i32 13
  %129 = ptrtoint ptr %incdec.ptr10.i.5 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -42, ptr %incdec.ptr10.i.5, align 1
  %incdec.ptr9.i.6 = getelementptr i8, ptr %data1, i32 7
  %130 = ptrtoint ptr %incdec.ptr9.i.5 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %incdec.ptr9.i.5, align 1
  %incdec.ptr10.i.6 = getelementptr i8, ptr %104, i32 14
  %132 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %incdec.ptr.i.6, align 1
  %incdec.ptr.i.7 = getelementptr i8, ptr %104, i32 15
  %133 = ptrtoint ptr %incdec.ptr10.i.6 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -41, ptr %incdec.ptr10.i.6, align 1
  %incdec.ptr9.i.7 = getelementptr i8, ptr %data1, i32 8
  %134 = ptrtoint ptr %incdec.ptr9.i.6 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %incdec.ptr9.i.6, align 4
  %incdec.ptr10.i.7 = getelementptr i8, ptr %104, i32 16
  %136 = ptrtoint ptr %incdec.ptr.i.7 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %incdec.ptr.i.7, align 1
  %incdec.ptr.i.8 = getelementptr i8, ptr %104, i32 17
  %137 = ptrtoint ptr %incdec.ptr10.i.7 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -40, ptr %incdec.ptr10.i.7, align 1
  %incdec.ptr9.i.8 = getelementptr i8, ptr %data1, i32 9
  %138 = ptrtoint ptr %incdec.ptr9.i.7 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %incdec.ptr9.i.7, align 1
  %incdec.ptr10.i.8 = getelementptr i8, ptr %104, i32 18
  %140 = ptrtoint ptr %incdec.ptr.i.8 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %incdec.ptr.i.8, align 1
  %incdec.ptr.i.9 = getelementptr i8, ptr %104, i32 19
  %141 = ptrtoint ptr %incdec.ptr10.i.8 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -39, ptr %incdec.ptr10.i.8, align 1
  %142 = ptrtoint ptr %incdec.ptr9.i.8 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %incdec.ptr9.i.8, align 2
  %144 = ptrtoint ptr %incdec.ptr.i.9 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %incdec.ptr.i.9, align 1
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 8
  %shl.i.i306 = shl i32 %148, 8
  %or.i307 = or i32 %shl.i.i306, -2147483648
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %146, i32 noundef %or.i307, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %104, i16 noundef zeroext 20, i32 noundef 500) #6
  %data2 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 7
  %149 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i315 = getelementptr i8, ptr %150, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -57, ptr %150, align 1
  %incdec.ptr9.i316 = getelementptr i8, ptr %data2, i32 1
  %152 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %data2, align 1
  %incdec.ptr10.i317 = getelementptr i8, ptr %150, i32 2
  %154 = ptrtoint ptr %incdec.ptr.i315 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %incdec.ptr.i315, align 1
  %incdec.ptr.i315.1 = getelementptr i8, ptr %150, i32 3
  %155 = ptrtoint ptr %incdec.ptr10.i317 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -56, ptr %incdec.ptr10.i317, align 1
  %incdec.ptr9.i316.1 = getelementptr i8, ptr %data2, i32 2
  %156 = ptrtoint ptr %incdec.ptr9.i316 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %incdec.ptr9.i316, align 4
  %incdec.ptr10.i317.1 = getelementptr i8, ptr %150, i32 4
  %158 = ptrtoint ptr %incdec.ptr.i315.1 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %incdec.ptr.i315.1, align 1
  %incdec.ptr.i315.2 = getelementptr i8, ptr %150, i32 5
  %159 = ptrtoint ptr %incdec.ptr10.i317.1 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -55, ptr %incdec.ptr10.i317.1, align 1
  %incdec.ptr9.i316.2 = getelementptr i8, ptr %data2, i32 3
  %160 = ptrtoint ptr %incdec.ptr9.i316.1 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %incdec.ptr9.i316.1, align 1
  %incdec.ptr10.i317.2 = getelementptr i8, ptr %150, i32 6
  %162 = ptrtoint ptr %incdec.ptr.i315.2 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %incdec.ptr.i315.2, align 1
  %incdec.ptr.i315.3 = getelementptr i8, ptr %150, i32 7
  %163 = ptrtoint ptr %incdec.ptr10.i317.2 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -54, ptr %incdec.ptr10.i317.2, align 1
  %incdec.ptr9.i316.3 = getelementptr i8, ptr %data2, i32 4
  %164 = ptrtoint ptr %incdec.ptr9.i316.2 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %incdec.ptr9.i316.2, align 2
  %incdec.ptr10.i317.3 = getelementptr i8, ptr %150, i32 8
  %166 = ptrtoint ptr %incdec.ptr.i315.3 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %incdec.ptr.i315.3, align 1
  %incdec.ptr.i315.4 = getelementptr i8, ptr %150, i32 9
  %167 = ptrtoint ptr %incdec.ptr10.i317.3 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -53, ptr %incdec.ptr10.i317.3, align 1
  %incdec.ptr9.i316.4 = getelementptr i8, ptr %data2, i32 5
  %168 = ptrtoint ptr %incdec.ptr9.i316.3 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %incdec.ptr9.i316.3, align 1
  %incdec.ptr10.i317.4 = getelementptr i8, ptr %150, i32 10
  %170 = ptrtoint ptr %incdec.ptr.i315.4 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %incdec.ptr.i315.4, align 1
  %incdec.ptr.i315.5 = getelementptr i8, ptr %150, i32 11
  %171 = ptrtoint ptr %incdec.ptr10.i317.4 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -52, ptr %incdec.ptr10.i317.4, align 1
  %incdec.ptr9.i316.5 = getelementptr i8, ptr %data2, i32 6
  %172 = ptrtoint ptr %incdec.ptr9.i316.4 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %incdec.ptr9.i316.4, align 4
  %incdec.ptr10.i317.5 = getelementptr i8, ptr %150, i32 12
  %174 = ptrtoint ptr %incdec.ptr.i315.5 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %incdec.ptr.i315.5, align 1
  %incdec.ptr.i315.6 = getelementptr i8, ptr %150, i32 13
  %175 = ptrtoint ptr %incdec.ptr10.i317.5 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -51, ptr %incdec.ptr10.i317.5, align 1
  %incdec.ptr9.i316.6 = getelementptr i8, ptr %data2, i32 7
  %176 = ptrtoint ptr %incdec.ptr9.i316.5 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %incdec.ptr9.i316.5, align 1
  %incdec.ptr10.i317.6 = getelementptr i8, ptr %150, i32 14
  %178 = ptrtoint ptr %incdec.ptr.i315.6 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %incdec.ptr.i315.6, align 1
  %incdec.ptr.i315.7 = getelementptr i8, ptr %150, i32 15
  %179 = ptrtoint ptr %incdec.ptr10.i317.6 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -50, ptr %incdec.ptr10.i317.6, align 1
  %incdec.ptr9.i316.7 = getelementptr i8, ptr %data2, i32 8
  %180 = ptrtoint ptr %incdec.ptr9.i316.6 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %incdec.ptr9.i316.6, align 2
  %incdec.ptr10.i317.7 = getelementptr i8, ptr %150, i32 16
  %182 = ptrtoint ptr %incdec.ptr.i315.7 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %incdec.ptr.i315.7, align 1
  %incdec.ptr.i315.8 = getelementptr i8, ptr %150, i32 17
  %183 = ptrtoint ptr %incdec.ptr10.i317.7 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -49, ptr %incdec.ptr10.i317.7, align 1
  %184 = ptrtoint ptr %incdec.ptr9.i316.7 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %incdec.ptr9.i316.7, align 1
  %186 = ptrtoint ptr %incdec.ptr.i315.8 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %incdec.ptr.i315.8, align 1
  %187 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 8
  %shl.i.i321 = shl i32 %190, 8
  %or.i322 = or i32 %shl.i.i321, -2147483648
  %call16.i323 = tail call i32 @usb_control_msg(ptr noundef %188, i32 noundef %or.i322, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %150, i16 noundef zeroext 18, i32 noundef 500) #6
  %data3 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 8
  %191 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i332 = getelementptr i8, ptr %192, i32 1
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -32, ptr %192, align 1
  %incdec.ptr9.i333 = getelementptr i8, ptr %data3, i32 1
  %194 = ptrtoint ptr %data3 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %data3, align 4
  %incdec.ptr10.i334 = getelementptr i8, ptr %192, i32 2
  %196 = ptrtoint ptr %incdec.ptr.i332 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %incdec.ptr.i332, align 1
  %incdec.ptr.i332.1 = getelementptr i8, ptr %192, i32 3
  %197 = ptrtoint ptr %incdec.ptr10.i334 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -31, ptr %incdec.ptr10.i334, align 1
  %incdec.ptr9.i333.1 = getelementptr i8, ptr %data3, i32 2
  %198 = ptrtoint ptr %incdec.ptr9.i333 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %incdec.ptr9.i333, align 1
  %incdec.ptr10.i334.1 = getelementptr i8, ptr %192, i32 4
  %200 = ptrtoint ptr %incdec.ptr.i332.1 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %incdec.ptr.i332.1, align 1
  %incdec.ptr.i332.2 = getelementptr i8, ptr %192, i32 5
  %201 = ptrtoint ptr %incdec.ptr10.i334.1 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -30, ptr %incdec.ptr10.i334.1, align 1
  %incdec.ptr9.i333.2 = getelementptr i8, ptr %data3, i32 3
  %202 = ptrtoint ptr %incdec.ptr9.i333.1 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %incdec.ptr9.i333.1, align 2
  %incdec.ptr10.i334.2 = getelementptr i8, ptr %192, i32 6
  %204 = ptrtoint ptr %incdec.ptr.i332.2 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %incdec.ptr.i332.2, align 1
  %incdec.ptr.i332.3 = getelementptr i8, ptr %192, i32 7
  %205 = ptrtoint ptr %incdec.ptr10.i334.2 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -29, ptr %incdec.ptr10.i334.2, align 1
  %incdec.ptr9.i333.3 = getelementptr i8, ptr %data3, i32 4
  %206 = ptrtoint ptr %incdec.ptr9.i333.2 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %incdec.ptr9.i333.2, align 1
  %incdec.ptr10.i334.3 = getelementptr i8, ptr %192, i32 8
  %208 = ptrtoint ptr %incdec.ptr.i332.3 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %incdec.ptr.i332.3, align 1
  %incdec.ptr.i332.4 = getelementptr i8, ptr %192, i32 9
  %209 = ptrtoint ptr %incdec.ptr10.i334.3 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -28, ptr %incdec.ptr10.i334.3, align 1
  %incdec.ptr9.i333.4 = getelementptr i8, ptr %data3, i32 5
  %210 = ptrtoint ptr %incdec.ptr9.i333.3 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %incdec.ptr9.i333.3, align 4
  %incdec.ptr10.i334.4 = getelementptr i8, ptr %192, i32 10
  %212 = ptrtoint ptr %incdec.ptr.i332.4 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %incdec.ptr.i332.4, align 1
  %incdec.ptr.i332.5 = getelementptr i8, ptr %192, i32 11
  %213 = ptrtoint ptr %incdec.ptr10.i334.4 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -27, ptr %incdec.ptr10.i334.4, align 1
  %incdec.ptr9.i333.5 = getelementptr i8, ptr %data3, i32 6
  %214 = ptrtoint ptr %incdec.ptr9.i333.4 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %incdec.ptr9.i333.4, align 1
  %incdec.ptr10.i334.5 = getelementptr i8, ptr %192, i32 12
  %216 = ptrtoint ptr %incdec.ptr.i332.5 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %incdec.ptr.i332.5, align 1
  %incdec.ptr.i332.6 = getelementptr i8, ptr %192, i32 13
  %217 = ptrtoint ptr %incdec.ptr10.i334.5 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -26, ptr %incdec.ptr10.i334.5, align 1
  %incdec.ptr9.i333.6 = getelementptr i8, ptr %data3, i32 7
  %218 = ptrtoint ptr %incdec.ptr9.i333.5 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %incdec.ptr9.i333.5, align 2
  %incdec.ptr10.i334.6 = getelementptr i8, ptr %192, i32 14
  %220 = ptrtoint ptr %incdec.ptr.i332.6 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %incdec.ptr.i332.6, align 1
  %incdec.ptr.i332.7 = getelementptr i8, ptr %192, i32 15
  %221 = ptrtoint ptr %incdec.ptr10.i334.6 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 -25, ptr %incdec.ptr10.i334.6, align 1
  %incdec.ptr9.i333.7 = getelementptr i8, ptr %data3, i32 8
  %222 = ptrtoint ptr %incdec.ptr9.i333.6 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %incdec.ptr9.i333.6, align 1
  %incdec.ptr10.i334.7 = getelementptr i8, ptr %192, i32 16
  %224 = ptrtoint ptr %incdec.ptr.i332.7 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %incdec.ptr.i332.7, align 1
  %incdec.ptr.i332.8 = getelementptr i8, ptr %192, i32 17
  %225 = ptrtoint ptr %incdec.ptr10.i334.7 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 -24, ptr %incdec.ptr10.i334.7, align 1
  %226 = ptrtoint ptr %incdec.ptr9.i333.7 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %incdec.ptr9.i333.7, align 4
  %228 = ptrtoint ptr %incdec.ptr.i332.8 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %incdec.ptr.i332.8, align 1
  %229 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %230, align 8
  %shl.i.i338 = shl i32 %232, 8
  %or.i339 = or i32 %shl.i.i338, -2147483648
  %call16.i340 = tail call i32 @usb_control_msg(ptr noundef %230, i32 noundef %or.i339, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %192, i16 noundef zeroext 18, i32 noundef 500) #6
  %reg80 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 3
  %233 = ptrtoint ptr %reg80 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %reg80, align 1
  %conv149 = zext i8 %234 to i16
  %shl150 = shl nuw i16 %conv149, 8
  %add = or i16 %shl150, 128
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 8
  %shl.i.i343 = shl i32 %238, 8
  %or.i344 = or i32 %shl.i.i343, -2147483648
  %call2.i345 = tail call i32 @usb_control_msg(ptr noundef %236, i32 noundef %or.i344, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %239 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %240, align 8
  %shl.i.i347 = shl i32 %242, 8
  %or.i348 = or i32 %shl.i.i347, -2147483648
  %call2.i349 = tail call i32 @usb_control_msg(ptr noundef %240, i32 noundef %or.i348, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %reg8e = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 4
  %243 = ptrtoint ptr %reg8e to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %reg8e, align 2
  %conv157 = zext i8 %244 to i16
  %shl158 = shl nuw i16 %conv157, 8
  %add159 = or i16 %shl158, 142
  %245 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev.i, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %246, align 8
  %shl.i.i351 = shl i32 %248, 8
  %or.i352 = or i32 %shl.i.i351, -2147483648
  %call2.i353 = tail call i32 @usb_control_msg(ptr noundef %246, i32 noundef %or.i352, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add159, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %249 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 8
  %shl.i.i355 = shl i32 %252, 8
  %or.i356 = or i32 %shl.i.i355, -2147483648
  %call2.i357 = tail call i32 @usb_control_msg(ptr noundef %250, i32 noundef %or.i356, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8327, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %253 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 8
  %shl.i.i359 = shl i32 %256, 8
  %or.i360 = or i32 %shl.i.i359, -2147483648
  %call2.i361 = tail call i32 @usb_control_msg(ptr noundef %254, i32 noundef %or.i360, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8328, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %257 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %258, align 8
  %shl.i.i363 = shl i32 %260, 8
  %or.i364 = or i32 %shl.i.i363, -2147483648
  %call2.i365 = tail call i32 @usb_control_msg(ptr noundef %258, i32 noundef %or.i364, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8329, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %data5 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 9
  %261 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %usb_buf.i, align 4
  %263 = call ptr @memcpy(ptr %262, ptr %data5, i32 6)
  %264 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %265, align 8
  %shl.i.i368 = shl i32 %267, 8
  %or.i369 = or i32 %shl.i.i368, -2147483648
  %268 = load ptr, ptr %usb_buf.i, align 4
  %call5.i370 = tail call i32 @usb_control_msg(ptr noundef %265, i32 noundef %or.i369, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %268, i16 noundef zeroext 6, i32 noundef 500) #6
  %nset8 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 5
  %269 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %usb_buf.i, align 4
  %271 = call ptr @memcpy(ptr %270, ptr %nset8, i32 6)
  %272 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %273, align 8
  %shl.i.i373 = shl i32 %275, 8
  %or.i374 = or i32 %shl.i.i373, -2147483648
  %276 = load ptr, ptr %usb_buf.i, align 4
  %call5.i375 = tail call i32 @usb_control_msg(ptr noundef %273, i32 noundef %or.i374, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %276, i16 noundef zeroext 6, i32 noundef 500) #6
  %stream = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 10
  %277 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %usb_buf.i, align 4
  %279 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %279, i32 4)
  %280 = load i32, ptr %stream, align 1
  %281 = ptrtoint ptr %278 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %280, ptr %278, align 1
  %282 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 8
  %shl.i.i378 = shl i32 %285, 8
  %or.i379 = or i32 %shl.i.i378, -2147483648
  %286 = load ptr, ptr %usb_buf.i, align 4
  %call5.i380 = tail call i32 @usb_control_msg(ptr noundef %283, i32 noundef %or.i379, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %286, i16 noundef zeroext 4, i32 noundef 500) #6
  %287 = ptrtoint ptr %sensor68 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %sensor68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %288)
  %cmp166 = icmp eq i8 %288, 3
  br i1 %cmp166, label %if.then168, label %if.end145.if.end186_crit_edge

if.end145.if.end186_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then168:                                       ; preds = %if.end145
  %289 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %290, align 8
  %shl.i.i382 = shl i32 %292, 8
  %or2.i383 = or i32 %shl.i.i382, -2147483520
  %293 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %usb_buf.i, align 4
  %call3.i385 = tail call i32 @usb_control_msg(ptr noundef %290, i32 noundef %or2.i383, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %294, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %295 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %295)
  %cmp171 = icmp sgt i32 %295, 2
  br i1 %cmp171, label %do.end176, label %if.then168.do.end185_crit_edge

if.then168.do.end185_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end185

do.end176:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  %296 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %usb_buf.i, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %297, align 1
  %conv181 = zext i8 %299 to i32
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name109, i32 noundef 128, i32 noundef %conv181) #9
  br label %do.end185

do.end185:                                        ; preds = %do.end176, %if.then168.do.end185_crit_edge
  %300 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev.i, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %301, align 8
  %shl.i.i387 = shl i32 %303, 8
  %or.i388 = or i32 %shl.i.i387, -2147483648
  %call2.i389 = tail call i32 @usb_control_msg(ptr noundef %301, i32 noundef %or.i388, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 27776, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %if.end186

if.end186:                                        ; preds = %do.end185, %if.end145.if.end186_crit_edge
  %304 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i397 = getelementptr i8, ptr %305, i32 1
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 -48, ptr %305, align 1
  %307 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %data1, align 1
  %incdec.ptr10.i399 = getelementptr i8, ptr %305, i32 2
  %309 = ptrtoint ptr %incdec.ptr.i397 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %incdec.ptr.i397, align 1
  %incdec.ptr.i397.1 = getelementptr i8, ptr %305, i32 3
  %310 = ptrtoint ptr %incdec.ptr10.i399 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 -47, ptr %incdec.ptr10.i399, align 1
  %311 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %incdec.ptr9.i, align 2
  %incdec.ptr10.i399.1 = getelementptr i8, ptr %305, i32 4
  %313 = ptrtoint ptr %incdec.ptr.i397.1 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %312, ptr %incdec.ptr.i397.1, align 1
  %incdec.ptr.i397.2 = getelementptr i8, ptr %305, i32 5
  %314 = ptrtoint ptr %incdec.ptr10.i399.1 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 -46, ptr %incdec.ptr10.i399.1, align 1
  %315 = ptrtoint ptr %incdec.ptr9.i.1 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %incdec.ptr9.i.1, align 1
  %incdec.ptr10.i399.2 = getelementptr i8, ptr %305, i32 6
  %317 = ptrtoint ptr %incdec.ptr.i397.2 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %316, ptr %incdec.ptr.i397.2, align 1
  %incdec.ptr.i397.3 = getelementptr i8, ptr %305, i32 7
  %318 = ptrtoint ptr %incdec.ptr10.i399.2 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 -45, ptr %incdec.ptr10.i399.2, align 1
  %319 = ptrtoint ptr %incdec.ptr9.i.2 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %incdec.ptr9.i.2, align 4
  %incdec.ptr10.i399.3 = getelementptr i8, ptr %305, i32 8
  %321 = ptrtoint ptr %incdec.ptr.i397.3 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %incdec.ptr.i397.3, align 1
  %incdec.ptr.i397.4 = getelementptr i8, ptr %305, i32 9
  %322 = ptrtoint ptr %incdec.ptr10.i399.3 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -44, ptr %incdec.ptr10.i399.3, align 1
  %323 = ptrtoint ptr %incdec.ptr9.i.3 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %incdec.ptr9.i.3, align 1
  %incdec.ptr10.i399.4 = getelementptr i8, ptr %305, i32 10
  %325 = ptrtoint ptr %incdec.ptr.i397.4 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %324, ptr %incdec.ptr.i397.4, align 1
  %incdec.ptr.i397.5 = getelementptr i8, ptr %305, i32 11
  %326 = ptrtoint ptr %incdec.ptr10.i399.4 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 -43, ptr %incdec.ptr10.i399.4, align 1
  %327 = ptrtoint ptr %incdec.ptr9.i.4 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %incdec.ptr9.i.4, align 2
  %incdec.ptr10.i399.5 = getelementptr i8, ptr %305, i32 12
  %329 = ptrtoint ptr %incdec.ptr.i397.5 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %328, ptr %incdec.ptr.i397.5, align 1
  %incdec.ptr.i397.6 = getelementptr i8, ptr %305, i32 13
  %330 = ptrtoint ptr %incdec.ptr10.i399.5 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 -42, ptr %incdec.ptr10.i399.5, align 1
  %331 = ptrtoint ptr %incdec.ptr9.i.5 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %incdec.ptr9.i.5, align 1
  %incdec.ptr10.i399.6 = getelementptr i8, ptr %305, i32 14
  %333 = ptrtoint ptr %incdec.ptr.i397.6 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %incdec.ptr.i397.6, align 1
  %incdec.ptr.i397.7 = getelementptr i8, ptr %305, i32 15
  %334 = ptrtoint ptr %incdec.ptr10.i399.6 to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 -41, ptr %incdec.ptr10.i399.6, align 1
  %335 = ptrtoint ptr %incdec.ptr9.i.6 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %incdec.ptr9.i.6, align 4
  %incdec.ptr10.i399.7 = getelementptr i8, ptr %305, i32 16
  %337 = ptrtoint ptr %incdec.ptr.i397.7 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %336, ptr %incdec.ptr.i397.7, align 1
  %incdec.ptr.i397.8 = getelementptr i8, ptr %305, i32 17
  %338 = ptrtoint ptr %incdec.ptr10.i399.7 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -40, ptr %incdec.ptr10.i399.7, align 1
  %339 = ptrtoint ptr %incdec.ptr9.i.7 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %incdec.ptr9.i.7, align 1
  %incdec.ptr10.i399.8 = getelementptr i8, ptr %305, i32 18
  %341 = ptrtoint ptr %incdec.ptr.i397.8 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %340, ptr %incdec.ptr.i397.8, align 1
  %incdec.ptr.i397.9 = getelementptr i8, ptr %305, i32 19
  %342 = ptrtoint ptr %incdec.ptr10.i399.8 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 -39, ptr %incdec.ptr10.i399.8, align 1
  %343 = ptrtoint ptr %incdec.ptr9.i.8 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %incdec.ptr9.i.8, align 2
  %345 = ptrtoint ptr %incdec.ptr.i397.9 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %incdec.ptr.i397.9, align 1
  %346 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev.i, align 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %347, align 8
  %shl.i.i403 = shl i32 %349, 8
  %or.i404 = or i32 %shl.i.i403, -2147483648
  %call16.i405 = tail call i32 @usb_control_msg(ptr noundef %347, i32 noundef %or.i404, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %305, i16 noundef zeroext 20, i32 noundef 500) #6
  %350 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i414 = getelementptr i8, ptr %351, i32 1
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 -57, ptr %351, align 1
  %353 = ptrtoint ptr %data2 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %data2, align 1
  %incdec.ptr10.i416 = getelementptr i8, ptr %351, i32 2
  %355 = ptrtoint ptr %incdec.ptr.i414 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %354, ptr %incdec.ptr.i414, align 1
  %incdec.ptr.i414.1 = getelementptr i8, ptr %351, i32 3
  %356 = ptrtoint ptr %incdec.ptr10.i416 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -56, ptr %incdec.ptr10.i416, align 1
  %357 = ptrtoint ptr %incdec.ptr9.i316 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %incdec.ptr9.i316, align 4
  %incdec.ptr10.i416.1 = getelementptr i8, ptr %351, i32 4
  %359 = ptrtoint ptr %incdec.ptr.i414.1 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %358, ptr %incdec.ptr.i414.1, align 1
  %incdec.ptr.i414.2 = getelementptr i8, ptr %351, i32 5
  %360 = ptrtoint ptr %incdec.ptr10.i416.1 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 -55, ptr %incdec.ptr10.i416.1, align 1
  %361 = ptrtoint ptr %incdec.ptr9.i316.1 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %incdec.ptr9.i316.1, align 1
  %incdec.ptr10.i416.2 = getelementptr i8, ptr %351, i32 6
  %363 = ptrtoint ptr %incdec.ptr.i414.2 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %362, ptr %incdec.ptr.i414.2, align 1
  %incdec.ptr.i414.3 = getelementptr i8, ptr %351, i32 7
  %364 = ptrtoint ptr %incdec.ptr10.i416.2 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 -54, ptr %incdec.ptr10.i416.2, align 1
  %365 = ptrtoint ptr %incdec.ptr9.i316.2 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %incdec.ptr9.i316.2, align 2
  %incdec.ptr10.i416.3 = getelementptr i8, ptr %351, i32 8
  %367 = ptrtoint ptr %incdec.ptr.i414.3 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %366, ptr %incdec.ptr.i414.3, align 1
  %incdec.ptr.i414.4 = getelementptr i8, ptr %351, i32 9
  %368 = ptrtoint ptr %incdec.ptr10.i416.3 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 -53, ptr %incdec.ptr10.i416.3, align 1
  %369 = ptrtoint ptr %incdec.ptr9.i316.3 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %incdec.ptr9.i316.3, align 1
  %incdec.ptr10.i416.4 = getelementptr i8, ptr %351, i32 10
  %371 = ptrtoint ptr %incdec.ptr.i414.4 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %370, ptr %incdec.ptr.i414.4, align 1
  %incdec.ptr.i414.5 = getelementptr i8, ptr %351, i32 11
  %372 = ptrtoint ptr %incdec.ptr10.i416.4 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 -52, ptr %incdec.ptr10.i416.4, align 1
  %373 = ptrtoint ptr %incdec.ptr9.i316.4 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %incdec.ptr9.i316.4, align 4
  %incdec.ptr10.i416.5 = getelementptr i8, ptr %351, i32 12
  %375 = ptrtoint ptr %incdec.ptr.i414.5 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %374, ptr %incdec.ptr.i414.5, align 1
  %incdec.ptr.i414.6 = getelementptr i8, ptr %351, i32 13
  %376 = ptrtoint ptr %incdec.ptr10.i416.5 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 -51, ptr %incdec.ptr10.i416.5, align 1
  %377 = ptrtoint ptr %incdec.ptr9.i316.5 to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %incdec.ptr9.i316.5, align 1
  %incdec.ptr10.i416.6 = getelementptr i8, ptr %351, i32 14
  %379 = ptrtoint ptr %incdec.ptr.i414.6 to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %378, ptr %incdec.ptr.i414.6, align 1
  %incdec.ptr.i414.7 = getelementptr i8, ptr %351, i32 15
  %380 = ptrtoint ptr %incdec.ptr10.i416.6 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 -50, ptr %incdec.ptr10.i416.6, align 1
  %381 = ptrtoint ptr %incdec.ptr9.i316.6 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %incdec.ptr9.i316.6, align 2
  %incdec.ptr10.i416.7 = getelementptr i8, ptr %351, i32 16
  %383 = ptrtoint ptr %incdec.ptr.i414.7 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 %382, ptr %incdec.ptr.i414.7, align 1
  %incdec.ptr.i414.8 = getelementptr i8, ptr %351, i32 17
  %384 = ptrtoint ptr %incdec.ptr10.i416.7 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 -49, ptr %incdec.ptr10.i416.7, align 1
  %385 = ptrtoint ptr %incdec.ptr9.i316.7 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %incdec.ptr9.i316.7, align 1
  %387 = ptrtoint ptr %incdec.ptr.i414.8 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %386, ptr %incdec.ptr.i414.8, align 1
  %388 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dev.i, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %389, align 8
  %shl.i.i420 = shl i32 %391, 8
  %or.i421 = or i32 %shl.i.i420, -2147483648
  %call16.i422 = tail call i32 @usb_control_msg(ptr noundef %389, i32 noundef %or.i421, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %351, i16 noundef zeroext 18, i32 noundef 500) #6
  %392 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %usb_buf.i, align 4
  %incdec.ptr.i431 = getelementptr i8, ptr %393, i32 1
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 -32, ptr %393, align 1
  %395 = ptrtoint ptr %data3 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %data3, align 4
  %incdec.ptr10.i433 = getelementptr i8, ptr %393, i32 2
  %397 = ptrtoint ptr %incdec.ptr.i431 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %incdec.ptr.i431, align 1
  %incdec.ptr.i431.1 = getelementptr i8, ptr %393, i32 3
  %398 = ptrtoint ptr %incdec.ptr10.i433 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 -31, ptr %incdec.ptr10.i433, align 1
  %399 = ptrtoint ptr %incdec.ptr9.i333 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %incdec.ptr9.i333, align 1
  %incdec.ptr10.i433.1 = getelementptr i8, ptr %393, i32 4
  %401 = ptrtoint ptr %incdec.ptr.i431.1 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %incdec.ptr.i431.1, align 1
  %incdec.ptr.i431.2 = getelementptr i8, ptr %393, i32 5
  %402 = ptrtoint ptr %incdec.ptr10.i433.1 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 -30, ptr %incdec.ptr10.i433.1, align 1
  %403 = ptrtoint ptr %incdec.ptr9.i333.1 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %incdec.ptr9.i333.1, align 2
  %incdec.ptr10.i433.2 = getelementptr i8, ptr %393, i32 6
  %405 = ptrtoint ptr %incdec.ptr.i431.2 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %incdec.ptr.i431.2, align 1
  %incdec.ptr.i431.3 = getelementptr i8, ptr %393, i32 7
  %406 = ptrtoint ptr %incdec.ptr10.i433.2 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 -29, ptr %incdec.ptr10.i433.2, align 1
  %407 = ptrtoint ptr %incdec.ptr9.i333.2 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %incdec.ptr9.i333.2, align 1
  %incdec.ptr10.i433.3 = getelementptr i8, ptr %393, i32 8
  %409 = ptrtoint ptr %incdec.ptr.i431.3 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %408, ptr %incdec.ptr.i431.3, align 1
  %incdec.ptr.i431.4 = getelementptr i8, ptr %393, i32 9
  %410 = ptrtoint ptr %incdec.ptr10.i433.3 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 -28, ptr %incdec.ptr10.i433.3, align 1
  %411 = ptrtoint ptr %incdec.ptr9.i333.3 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %incdec.ptr9.i333.3, align 4
  %incdec.ptr10.i433.4 = getelementptr i8, ptr %393, i32 10
  %413 = ptrtoint ptr %incdec.ptr.i431.4 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %412, ptr %incdec.ptr.i431.4, align 1
  %incdec.ptr.i431.5 = getelementptr i8, ptr %393, i32 11
  %414 = ptrtoint ptr %incdec.ptr10.i433.4 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 -27, ptr %incdec.ptr10.i433.4, align 1
  %415 = ptrtoint ptr %incdec.ptr9.i333.4 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %incdec.ptr9.i333.4, align 1
  %incdec.ptr10.i433.5 = getelementptr i8, ptr %393, i32 12
  %417 = ptrtoint ptr %incdec.ptr.i431.5 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %416, ptr %incdec.ptr.i431.5, align 1
  %incdec.ptr.i431.6 = getelementptr i8, ptr %393, i32 13
  %418 = ptrtoint ptr %incdec.ptr10.i433.5 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 -26, ptr %incdec.ptr10.i433.5, align 1
  %419 = ptrtoint ptr %incdec.ptr9.i333.5 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %incdec.ptr9.i333.5, align 2
  %incdec.ptr10.i433.6 = getelementptr i8, ptr %393, i32 14
  %421 = ptrtoint ptr %incdec.ptr.i431.6 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %420, ptr %incdec.ptr.i431.6, align 1
  %incdec.ptr.i431.7 = getelementptr i8, ptr %393, i32 15
  %422 = ptrtoint ptr %incdec.ptr10.i433.6 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 -25, ptr %incdec.ptr10.i433.6, align 1
  %423 = ptrtoint ptr %incdec.ptr9.i333.6 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %incdec.ptr9.i333.6, align 1
  %incdec.ptr10.i433.7 = getelementptr i8, ptr %393, i32 16
  %425 = ptrtoint ptr %incdec.ptr.i431.7 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %incdec.ptr.i431.7, align 1
  %incdec.ptr.i431.8 = getelementptr i8, ptr %393, i32 17
  %426 = ptrtoint ptr %incdec.ptr10.i433.7 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 -24, ptr %incdec.ptr10.i433.7, align 1
  %427 = ptrtoint ptr %incdec.ptr9.i333.7 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %incdec.ptr9.i333.7, align 4
  %429 = ptrtoint ptr %incdec.ptr.i431.8 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %428, ptr %incdec.ptr.i431.8, align 1
  %430 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev.i, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %431, align 8
  %shl.i.i437 = shl i32 %433, 8
  %or.i438 = or i32 %shl.i.i437, -2147483648
  %call16.i439 = tail call i32 @usb_control_msg(ptr noundef %431, i32 noundef %or.i438, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %393, i16 noundef zeroext 18, i32 noundef 500) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %do.end86, %do.end64
  %retval.0 = phi i32 [ -22, %do.end64 ], [ -5, %do.end86 ], [ 0, %if.end186 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 12, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.30) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 14, i64 noundef 1, i64 noundef 8) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 13, i64 noundef 1, i64 noundef 7) #6
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 5) #6
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963792, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 10) #6
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963804, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sensor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963788, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %3, align 4
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 16, i64 noundef 64, i64 noundef 1, i64 noundef 32) #6
  %gain = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %gain, align 4
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963791, i64 noundef -48, i64 noundef 48, i64 noundef 1, i64 noundef 0) #6
  %blue_balance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %blue_balance to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %blue_balance, align 4
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963790, i64 noundef -48, i64 noundef 48, i64 noundef 1, i64 noundef 0) #6
  %red_balance = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %red_balance to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %red_balance, align 4
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 6) #6
  %call14 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 5, i64 noundef -48, i8 noundef zeroext 0) #6
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 1, i8 noundef zeroext 1) #6
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %freq, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 4, ptr noundef %3, i8 noundef zeroext 0, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  %switch.shiftamt = shl i32 %5, 3
  %switch.downshift = lshr i32 1343242240, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %t2.sroa.4.0 = select i1 %6, i8 %switch.masked, i8 32
  %sensor7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %sensor7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sensor7, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %8, label %entry.sw.epilog14_crit_edge [
    i8 0, label %sw.bb8
    i8 2, label %for.cond.preheader
  ]

entry.sw.epilog14_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog14

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %10 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 7064005349897756681, ptr %11, align 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %17 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %17, i16 noundef zeroext 8, i32 noundef 500) #6
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 7070760272595673097, ptr %19, align 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.1 = shl i32 %24, 8
  %or.i.1 = or i32 %shl.i.i.1, -2147483648
  %25 = load ptr, ptr %usb_buf.i, align 4
  %call5.i.1 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.1, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %25, i16 noundef zeroext 8, i32 noundef 500) #6
  %26 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 7063723406767710217, ptr %27, align 1
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.2 = shl i32 %32, 8
  %or.i.2 = or i32 %shl.i.i.2, -2147483648
  %33 = load ptr, ptr %usb_buf.i, align 4
  %call5.i.2 = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.2, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %33, i16 noundef zeroext 8, i32 noundef 500) #6
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i52 = shl i32 %37, 8
  %or.i53 = or i32 %shl.i.i52, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i53, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 7063723406767710217, ptr %39, align 1
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i56 = shl i32 %44, 8
  %or.i57 = or i32 %shl.i.i56, -2147483648
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call5.i58 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i57, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 8, i32 noundef 500) #6
  br label %sw.epilog14.sink.split

sw.bb8:                                           ; preds = %entry
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %46 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i.i, align 4
  %48 = call ptr @memcpy(ptr %47, ptr @sensor_reset, i32 6)
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i.i = shl i32 %52, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %53 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %53, i16 noundef zeroext 6, i32 noundef 500) #6
  tail call void @msleep(i32 noundef 100) #6
  %54 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i48.i = shl i32 %57, 8
  %or2.i.i = or i32 %shl.i.i48.i, -2147483520
  %58 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or2.i.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %59, i16 noundef zeroext 1, i32 noundef 500) #6
  %60 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i, label %sw.bb8.while.end.i_crit_edge, label %if.end.i

sw.bb8.while.end.i_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end.i:                                         ; preds = %sw.bb8
  tail call void @msleep(i32 noundef 100) #6
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i48.1.i = shl i32 %68, 8
  %or2.i.1.i = or i32 %shl.i.i48.1.i, -2147483520
  %69 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.1.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or2.i.1.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #6
  %71 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %75 = and i8 %74, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.1.i = icmp eq i8 %75, 0
  br i1 %tobool.not.1.i, label %if.end.i.while.end.i_crit_edge, label %if.end.1.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 100) #6
  %76 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i48.2.i = shl i32 %79, 8
  %or2.i.2.i = or i32 %shl.i.i48.2.i, -2147483520
  %80 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.2.i = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or2.i.2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %81, i16 noundef zeroext 1, i32 noundef 500) #6
  %82 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_buf.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %86 = and i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.2.i = icmp eq i8 %86, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.while.end.i_crit_edge, label %if.end.2.i

if.end.1.i.while.end.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 100) #6
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.2.i, %if.end.1.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %sw.bb8.while.end.i_crit_edge
  %87 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  %shl.i.i51.i = shl i32 %90, 8
  %or2.i52.i = or i32 %shl.i.i51.i, -2147483520
  %91 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i54.i = tail call i32 @usb_control_msg(ptr noundef %88, i32 noundef %or2.i52.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 99, ptr noundef %92, i16 noundef zeroext 1, i32 noundef 500) #6
  %93 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %usb_buf.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %96)
  %cmp3.not.i = icmp eq i8 %96, 23
  br i1 %cmp3.not.i, label %while.end.i.while.body13.i.preheader_crit_edge, label %do.end.i

while.end.i.while.body13.i.preheader_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body13.i.preheader

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv2.i = zext i8 %96 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv2.i) #9
  br label %while.body13.i.preheader

while.body13.i.preheader:                         ; preds = %do.end.i, %while.end.i.while.body13.i.preheader_crit_edge
  br label %while.body13.i

while.body13.i:                                   ; preds = %while.end32.i.while.body13.i_crit_edge, %while.body13.i.preheader
  %97 = phi i8 [ %158, %while.end32.i.while.body13.i_crit_edge ], [ -33, %while.body13.i.preheader ]
  %p.078.i = phi ptr [ %incdec.ptr14.i, %while.end32.i.while.body13.i_crit_edge ], [ @om6802_sensor_init.sensor_init, %while.body13.i.preheader ]
  %incdec.ptr.i = getelementptr i8, ptr %p.078.i, i32 1
  %incdec.ptr14.i = getelementptr i8, ptr %p.078.i, i32 2
  %98 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr.i, align 1
  %100 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp17.i = icmp eq i8 %101, 0
  br i1 %cmp17.i, label %if.then19.i, label %while.body13.i.if.end20.i_crit_edge

while.body13.i.if.end20.i_crit_edge:              ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then19.i:                                      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 8
  %shl.i.i56.i = shl i32 %105, 8
  %or.i57.i = or i32 %shl.i.i56.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %103, i32 noundef %or.i57.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %while.body13.i.if.end20.i_crit_edge
  %106 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %usb_buf.i.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 98, ptr %107, align 1
  %val.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %107, i32 1
  %109 = ptrtoint ptr %val.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %97, ptr %val.sroa.4.0..sroa_idx.i, align 1
  %val.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %107, i32 2
  %110 = ptrtoint ptr %val.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 100, ptr %val.sroa.5.0..sroa_idx.i, align 1
  %val.sroa.575.0..sroa_idx.i = getelementptr inbounds i8, ptr %107, i32 3
  %111 = ptrtoint ptr %val.sroa.575.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %99, ptr %val.sroa.575.0..sroa_idx.i, align 1
  %val.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %107, i32 4
  %112 = ptrtoint ptr %val.sroa.6.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 24581, ptr %val.sroa.6.0..sroa_idx.i, align 1
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  %shl.i.i60.i = shl i32 %116, 8
  %or.i61.i = or i32 %shl.i.i60.i, -2147483648
  %117 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i62.i = tail call i32 @usb_control_msg(ptr noundef %114, i32 noundef %or.i61.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %117, i16 noundef zeroext 6, i32 noundef 500) #6
  tail call void @msleep(i32 noundef 15) #6
  %118 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %shl.i.i64.i = shl i32 %121, 8
  %or2.i65.i = or i32 %shl.i.i64.i, -2147483520
  %122 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i67.i = tail call i32 @usb_control_msg(ptr noundef %119, i32 noundef %or2.i65.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %123, i16 noundef zeroext 1, i32 noundef 500) #6
  %124 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %usb_buf.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  %128 = and i8 %127, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool29.not.i = icmp eq i8 %128, 0
  br i1 %tobool29.not.i, label %if.end20.i.while.end32.i_crit_edge, label %while.cond21.1.i

if.end20.i.while.end32.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end32.i

while.cond21.1.i:                                 ; preds = %if.end20.i
  tail call void @msleep(i32 noundef 15) #6
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i.i64.1.i = shl i32 %132, 8
  %or2.i65.1.i = or i32 %shl.i.i64.1.i, -2147483520
  %133 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i67.1.i = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or2.i65.1.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %134, i16 noundef zeroext 1, i32 noundef 500) #6
  %135 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usb_buf.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 1
  %139 = and i8 %138, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool29.not.1.i = icmp eq i8 %139, 0
  br i1 %tobool29.not.1.i, label %while.cond21.1.i.while.end32.i_crit_edge, label %while.cond21.2.i

while.cond21.1.i.while.end32.i_crit_edge:         ; preds = %while.cond21.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end32.i

while.cond21.2.i:                                 ; preds = %while.cond21.1.i
  tail call void @msleep(i32 noundef 15) #6
  %140 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 8
  %shl.i.i64.2.i = shl i32 %143, 8
  %or2.i65.2.i = or i32 %shl.i.i64.2.i, -2147483520
  %144 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i67.2.i = tail call i32 @usb_control_msg(ptr noundef %141, i32 noundef %or2.i65.2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %145, i16 noundef zeroext 1, i32 noundef 500) #6
  %146 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %usb_buf.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 1
  %150 = and i8 %149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool29.not.2.i = icmp eq i8 %150, 0
  br i1 %tobool29.not.2.i, label %while.cond21.2.i.while.end32.i_crit_edge, label %while.cond21.3.i

while.cond21.2.i.while.end32.i_crit_edge:         ; preds = %while.cond21.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end32.i

while.cond21.3.i:                                 ; preds = %while.cond21.2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 15) #6
  %151 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev.i.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %152, align 8
  %shl.i.i64.3.i = shl i32 %154, 8
  %or2.i65.3.i = or i32 %shl.i.i64.3.i, -2147483520
  %155 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i67.3.i = tail call i32 @usb_control_msg(ptr noundef %152, i32 noundef %or2.i65.3.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 96, ptr noundef %156, i16 noundef zeroext 1, i32 noundef 500) #6
  br label %while.end32.i

while.end32.i:                                    ; preds = %while.cond21.3.i, %while.cond21.2.i.while.end32.i_crit_edge, %while.cond21.1.i.while.end32.i_crit_edge, %if.end20.i.while.end32.i_crit_edge
  %157 = ptrtoint ptr %incdec.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %incdec.ptr14.i, align 1
  %cmp11.not.i = icmp eq i8 %158, 0
  br i1 %cmp11.not.i, label %om6802_sensor_init.exit, label %while.end32.i.while.body13.i_crit_edge

while.end32.i.while.body13.i_crit_edge:           ; preds = %while.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body13.i

om6802_sensor_init.exit:                          ; preds = %while.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 15) #6
  br label %sw.epilog14.sink.split

sw.epilog14.sink.split:                           ; preds = %om6802_sensor_init.exit, %for.cond.preheader
  %dev.i.i.sink = phi ptr [ %dev.i.i, %om6802_sensor_init.exit ], [ %dev.i, %for.cond.preheader ]
  %159 = ptrtoint ptr %dev.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i.sink, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 8
  %shl.i.i60 = shl i32 %162, 8
  %or.i61 = or i32 %shl.i.i60, -2147483648
  %call2.i62 = tail call i32 @usb_control_msg(ptr noundef %160, i32 noundef %or.i61, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15488, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.epilog14.sink.split, %entry.sw.epilog14_crit_edge
  %163 = ptrtoint ptr %sensor7 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sensor7, align 4
  %idxprom16 = zext i8 %164 to i32
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %165 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %freq, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %166) #6
  %167 = ptrtoint ptr %sensor7 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %sensor7, align 4
  %169 = zext i8 %168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %168, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 0, label %sw.epilog14.sw.epilog.i_crit_edge
  ]

sw.epilog14.sw.epilog.i_crit_edge:                ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not.i = icmp eq i32 %call, 0
  br i1 %cmp.not.i, label %sw.bb.i.sw.bb3.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.default.i:                                     ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i.sw.epilog.i_crit_edge, %sw.epilog14.sw.epilog.i_crit_edge
  %freq.sroa.513.0.i = phi i8 [ -24, %sw.default.i ], [ -24, %sw.epilog14.sw.epilog.i_crit_edge ], [ -88, %sw.bb.i.sw.epilog.i_crit_edge ]
  %reg66.0.i = phi i8 [ 64, %sw.default.i ], [ -54, %sw.epilog14.sw.epilog.i_crit_edge ], [ 65, %sw.bb.i.sw.epilog.i_crit_edge ]
  %170 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call, label %sw.epilog.i.setfreq.exit_crit_edge [
    i32 0, label %sw.epilog.i.sw.bb3.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

sw.epilog.i.sw.bb3.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.epilog.i.setfreq.exit_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %setfreq.exit

sw.bb3.i:                                         ; preds = %sw.epilog.i.sw.bb3.i_crit_edge, %sw.bb.i.sw.bb3.i_crit_edge
  %reg66.016.i = phi i8 [ %reg66.0.i, %sw.epilog.i.sw.bb3.i_crit_edge ], [ 65, %sw.bb.i.sw.bb3.i_crit_edge ]
  br label %setfreq.exit

sw.bb5.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %171 = and i8 %reg66.0.i, -117
  br label %setfreq.exit

setfreq.exit:                                     ; preds = %sw.bb5.i, %sw.bb3.i, %sw.epilog.i.setfreq.exit_crit_edge
  %freq.sroa.513.1.i = phi i8 [ %freq.sroa.513.0.i, %sw.epilog.i.setfreq.exit_crit_edge ], [ %freq.sroa.513.0.i, %sw.bb5.i ], [ -16, %sw.bb3.i ]
  %reg66.1.i = phi i8 [ %reg66.0.i, %sw.epilog.i.setfreq.exit_crit_edge ], [ %171, %sw.bb5.i ], [ %reg66.016.i, %sw.bb3.i ]
  %usb_buf.i.i63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %172 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %usb_buf.i.i63, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 102, ptr %173, align 1
  %freq.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %173, i32 1
  %175 = ptrtoint ptr %freq.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %reg66.1.i, ptr %freq.sroa.4.0..sroa_idx.i, align 1
  %freq.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %173, i32 2
  %176 = ptrtoint ptr %freq.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -88, ptr %freq.sroa.5.0..sroa_idx.i, align 1
  %freq.sroa.513.0..sroa_idx.i = getelementptr inbounds i8, ptr %173, i32 3
  %177 = ptrtoint ptr %freq.sroa.513.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %freq.sroa.513.1.i, ptr %freq.sroa.513.0..sroa_idx.i, align 1
  %dev.i.i64 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %178 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i.i64, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %shl.i.i.i65 = shl i32 %181, 8
  %or.i.i66 = or i32 %shl.i.i.i65, -2147483648
  %182 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i.i67 = tail call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or.i.i66, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %182, i16 noundef zeroext 4, i32 noundef 500) #6
  %183 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i.i64, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 8
  %shl.i.i69 = shl i32 %186, 8
  %or2.i = or i32 %shl.i.i69, -2147483520
  %187 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %usb_buf.i.i63, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %184, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %188, i16 noundef zeroext 1, i32 noundef 500) #6
  %189 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %usb_buf.i.i63, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 7, ptr %190, align 1
  %t2.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %190, i32 1
  %192 = ptrtoint ptr %t2.sroa.4.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %t2.sroa.4.0, ptr %t2.sroa.4.0..sroa_idx, align 1
  %t2.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %190, i32 2
  %193 = ptrtoint ptr %t2.sroa.8.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 224398976, ptr %t2.sroa.8.0..sroa_idx, align 1
  %194 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i.i64, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %195, align 8
  %shl.i.i73 = shl i32 %197, 8
  %or.i74 = or i32 %shl.i.i73, -2147483648
  %198 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i75 = tail call i32 @usb_control_msg(ptr noundef %195, i32 noundef %or.i74, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %198, i16 noundef zeroext 6, i32 noundef 500) #6
  %199 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %usb_buf.i.i63, align 4
  %incdec.ptr.i77 = getelementptr i8, ptr %200, i32 1
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -77, ptr %200, align 1
  %incdec.ptr10.i = getelementptr i8, ptr %200, i32 2
  %202 = ptrtoint ptr %incdec.ptr.i77 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 7, ptr %incdec.ptr.i77, align 1
  %incdec.ptr.i77.1 = getelementptr i8, ptr %200, i32 3
  %203 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -76, ptr %incdec.ptr10.i, align 1
  %incdec.ptr10.i.1 = getelementptr i8, ptr %200, i32 4
  %204 = ptrtoint ptr %incdec.ptr.i77.1 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %incdec.ptr.i77.1, align 1
  %incdec.ptr.i77.2 = getelementptr i8, ptr %200, i32 5
  %205 = ptrtoint ptr %incdec.ptr10.i.1 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -75, ptr %incdec.ptr10.i.1, align 1
  %incdec.ptr10.i.2 = getelementptr i8, ptr %200, i32 6
  %206 = ptrtoint ptr %incdec.ptr.i77.2 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -120, ptr %incdec.ptr.i77.2, align 1
  %incdec.ptr.i77.3 = getelementptr i8, ptr %200, i32 7
  %207 = ptrtoint ptr %incdec.ptr10.i.2 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -74, ptr %incdec.ptr10.i.2, align 1
  %incdec.ptr10.i.3 = getelementptr i8, ptr %200, i32 8
  %208 = ptrtoint ptr %incdec.ptr.i77.3 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 2, ptr %incdec.ptr.i77.3, align 1
  %incdec.ptr.i77.4 = getelementptr i8, ptr %200, i32 9
  %209 = ptrtoint ptr %incdec.ptr10.i.3 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -73, ptr %incdec.ptr10.i.3, align 1
  %incdec.ptr10.i.4 = getelementptr i8, ptr %200, i32 10
  %210 = ptrtoint ptr %incdec.ptr.i77.4 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 6, ptr %incdec.ptr.i77.4, align 1
  %incdec.ptr.i77.5 = getelementptr i8, ptr %200, i32 11
  %211 = ptrtoint ptr %incdec.ptr10.i.4 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -72, ptr %incdec.ptr10.i.4, align 1
  %incdec.ptr10.i.5 = getelementptr i8, ptr %200, i32 12
  %212 = ptrtoint ptr %incdec.ptr.i77.5 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %incdec.ptr.i77.5, align 1
  %incdec.ptr.i77.6 = getelementptr i8, ptr %200, i32 13
  %213 = ptrtoint ptr %incdec.ptr10.i.5 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -71, ptr %incdec.ptr10.i.5, align 1
  %incdec.ptr10.i.6 = getelementptr i8, ptr %200, i32 14
  %214 = ptrtoint ptr %incdec.ptr.i77.6 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -25, ptr %incdec.ptr.i77.6, align 1
  %incdec.ptr.i77.7 = getelementptr i8, ptr %200, i32 15
  %215 = ptrtoint ptr %incdec.ptr10.i.6 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -70, ptr %incdec.ptr10.i.6, align 1
  %216 = ptrtoint ptr %incdec.ptr.i77.7 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %incdec.ptr.i77.7, align 1
  %217 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i.i64, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %218, align 8
  %shl.i.i79 = shl i32 %220, 8
  %or.i80 = or i32 %shl.i.i79, -2147483648
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %218, i32 noundef %or.i80, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %200, i16 noundef zeroext 16, i32 noundef 500) #6
  %221 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i.i64, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %222, align 8
  %shl.i.i83 = shl i32 %224, 8
  %or.i84 = or i32 %shl.i.i83, -2147483648
  %call2.i85 = tail call i32 @usb_control_msg(ptr noundef %222, i32 noundef %or.i84, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  tail call void @msleep(i32 noundef 15) #6
  %stream = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom16, i32 10
  %225 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %usb_buf.i.i63, align 4
  %227 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %stream, align 1
  %229 = ptrtoint ptr %226 to i32
  call void @__asan_storeN_noabort(i32 %229, i32 4)
  store i32 %228, ptr %226, align 1
  %230 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev.i.i64, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %231, align 8
  %shl.i.i88 = shl i32 %233, 8
  %or.i89 = or i32 %shl.i.i88, -2147483648
  %234 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i90 = tail call i32 @usb_control_msg(ptr noundef %231, i32 noundef %or.i89, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %234, i16 noundef zeroext 4, i32 noundef 500) #6
  %235 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %usb_buf.i.i63, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_storeN_noabort(i32 %237, i32 4)
  store i32 %228, ptr %236, align 1
  %238 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i.i64, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 8
  %shl.i.i93 = shl i32 %241, 8
  %or.i94 = or i32 %shl.i.i93, -2147483648
  %242 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i95 = tail call i32 @usb_control_msg(ptr noundef %239, i32 noundef %or.i94, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %242, i16 noundef zeroext 4, i32 noundef 500) #6
  %243 = ptrtoint ptr %sensor7 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %sensor7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %cmp25 = icmp eq i8 %244, 0
  br i1 %cmp25, label %if.then27, label %setfreq.exit.if.end28_crit_edge

setfreq.exit.if.end28_crit_edge:                  ; preds = %setfreq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then27:                                        ; preds = %setfreq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %245 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %245)
  %cmp.i = icmp sgt i32 %245, 2
  br i1 %cmp.i, label %do.end.i96, label %if.then27.poll_sensor.exit_crit_edge

if.then27.poll_sensor.exit_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_sensor.exit

do.end.i96:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name.i) #9
  br label %poll_sensor.exit

poll_sensor.exit:                                 ; preds = %do.end.i96, %if.then27.poll_sensor.exit_crit_edge
  %246 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %usb_buf.i.i63, align 4
  %248 = call ptr @memcpy(ptr %247, ptr @poll_sensor.poll1, i32 26)
  %249 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i.i64, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %250, align 8
  %shl.i.i.i99 = shl i32 %252, 8
  %or.i.i100 = or i32 %shl.i.i.i99, -2147483648
  %253 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i.i101 = tail call i32 @usb_control_msg(ptr noundef %250, i32 noundef %or.i.i100, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %253, i16 noundef zeroext 26, i32 noundef 500) #6
  %254 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %usb_buf.i.i63, align 4
  %256 = call ptr @memcpy(ptr %255, ptr @poll_sensor.poll2, i32 14)
  %257 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i.i64, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %258, align 8
  %shl.i.i8.i = shl i32 %260, 8
  %or.i9.i = or i32 %shl.i.i8.i, -2147483648
  %261 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i10.i = tail call i32 @usb_control_msg(ptr noundef %258, i32 noundef %or.i9.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %261, i16 noundef zeroext 14, i32 noundef 500) #6
  %262 = ptrtoint ptr %usb_buf.i.i63 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %usb_buf.i.i63, align 4
  %264 = call ptr @memcpy(ptr %263, ptr @poll_sensor.noise03, i32 20)
  %265 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i.i64, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %266, align 8
  %shl.i.i13.i = shl i32 %268, 8
  %or.i14.i = or i32 %shl.i.i13.i, -2147483648
  %269 = load ptr, ptr %usb_buf.i.i63, align 4
  %call5.i15.i = tail call i32 @usb_control_msg(ptr noundef %266, i32 noundef %or.i14.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %269, i16 noundef zeroext 20, i32 noundef 500) #6
  br label %if.end28

if.end28:                                         ; preds = %poll_sensor.exit, %setfreq.exit.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %1)
  %cmp = icmp eq i8 %1, 90
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp2 = icmp sgt i32 %len, 20
  br i1 %cmp2, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %arrayidx5 = getelementptr i8, ptr %data, i32 20
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %.lobit = lshr i8 %3, 7
  %button_pressed = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %button_pressed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %button_pressed, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %.lobit)
  %cmp10.not = icmp eq i8 %5, %.lobit
  br i1 %cmp10.not, label %if.then4.cleanup_crit_edge, label %if.then12

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  %8 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 212, i32 noundef %8) #6
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %11 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.lobit, ptr %button_pressed, align 1
  br label %cleanup

if.end17:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %sub = add i32 %len, -2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp20 = icmp eq i8 %13, -1
  br i1 %cmp20, label %land.lhs.true, label %if.end17.if.else_crit_edge

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end17
  %arrayidx22 = getelementptr i8, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -40, i8 %15)
  %cmp24 = icmp eq i8 %15, -40
  br i1 %cmp24, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end17.if.else_crit_edge
  %sub27 = add i32 %len, -4
  %arrayidx28 = getelementptr i8, ptr %add.ptr, i32 %sub27
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp30 = icmp eq i8 %17, -1
  br i1 %cmp30, label %land.lhs.true32, label %if.else.if.else39_crit_edge

if.else.if.else39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true32:                                  ; preds = %if.else
  %sub33 = add i32 %len, -3
  %arrayidx34 = getelementptr i8, ptr %add.ptr, i32 %sub33
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %19)
  %cmp36 = icmp eq i8 %19, -39
  br i1 %cmp36, label %land.lhs.true32.if.end41_crit_edge, label %land.lhs.true32.if.else39_crit_edge

land.lhs.true32.if.else39_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true32.if.end41_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.else39:                                        ; preds = %land.lhs.true32.if.else39_crit_edge, %if.else.if.else39_crit_edge
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %land.lhs.true32.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge
  %pkt_type.0 = phi i32 [ 2, %if.else39 ], [ 1, %land.lhs.true.if.end41_crit_edge ], [ 3, %land.lhs.true32.if.end41_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %pkt_type.0, ptr noundef %add.ptr, i32 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then12, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sensor, align 4
  %idxprom = zext i8 %1 to i32
  %stream = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom, i32 10
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %stream, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %11 = load ptr, ptr %usb_buf.i, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %11, i16 noundef zeroext 4, i32 noundef 500) #6
  %12 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sensor, align 4
  %idxprom2 = zext i8 %13 to i32
  %stream4 = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom2, i32 10
  %14 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf.i, align 4
  %16 = ptrtoint ptr %stream4 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %stream4, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %15, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i23 = shl i32 %22, 8
  %or.i24 = or i32 %shl.i.i23, -2147483648
  %23 = load ptr, ptr %usb_buf.i, align 4
  %call5.i25 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i24, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 4, i32 noundef 500) #6
  %24 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sensor, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp = icmp eq i8 %25, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i27 = shl i32 %29, 8
  %or.i28 = or i32 %shl.i.i27, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i28, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 777, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %button_pressed = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %30 = ptrtoint ptr %button_pressed to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %button_pressed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %32 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %34 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %36 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %button_pressed, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reg_w_buf(ptr nocapture noundef readonly %gspca_dev, ptr noundef %buffer, i16 noundef zeroext %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %len)
  %cmp = icmp ult i16 %len, 65
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %buffer, i32 %conv)
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or = or i32 %shl.i, -2147483648
  %7 = load ptr, ptr %usb_buf, align 4
  %call5 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext %len, i32 noundef 500) #6
  br label %if.end15

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @kmemdup(ptr noundef %buffer, i32 noundef %conv, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %if.end15

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i28 = shl i32 %11, 8
  %or13 = or i32 %shl.i28, -2147483648
  %call14 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or13, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7, i16 noundef zeroext %len, i32 noundef 500) #6
  tail call void @kfree(ptr noundef nonnull %call7) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963788, i32 %4)
  %cond = icmp eq i32 %4, 9963788
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %1, i32 -100
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr i8, ptr %1, i32 204
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 135, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 500) #6
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = tail call i8 @llvm.umax.i8(i8 %14, i8 16)
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 64)
  %red_gain.0 = zext i8 %16 to i32
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i49 = shl i32 %20, 8
  %or2.i50 = or i32 %shl.i.i49, -2147483520
  %call3.i52 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or2.i50, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 136, ptr noundef %12, i16 noundef zeroext 1, i32 noundef 500) #6
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = tail call i8 @llvm.umax.i8(i8 %24, i8 16)
  %26 = tail call i8 @llvm.umin.i8(i8 %25, i8 64)
  %blue_gain.0 = zext i8 %26 to i32
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i54 = shl i32 %30, 8
  %or2.i55 = or i32 %shl.i.i54, -2147483520
  %call3.i57 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or2.i55, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 137, ptr noundef %22, i16 noundef zeroext 1, i32 noundef 500) #6
  %31 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %35 = tail call i8 @llvm.umax.i8(i8 %34, i8 16)
  %36 = tail call i8 @llvm.umin.i8(i8 %35, i8 64)
  %green_gain.0 = zext i8 %36 to i32
  %gain = getelementptr i8, ptr %1, i32 1032
  %37 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gain, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %green_gain.0, ptr %val, align 4
  %sub = sub nsw i32 %red_gain.0, %green_gain.0
  %red_balance = getelementptr i8, ptr %1, i32 1036
  %40 = ptrtoint ptr %red_balance to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %red_balance, align 4
  %val28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %val28, align 4
  %sub29 = sub nsw i32 %blue_gain.0, %green_gain.0
  %blue_balance = getelementptr i8, ptr %1, i32 1040
  %43 = ptrtoint ptr %blue_balance to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %blue_balance, align 4
  %val30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %val30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub29, ptr %val30, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %4 = load i8, ptr %streaming, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb3
    i32 9963792, label %sw.bb5
    i32 9963796, label %sw.bb7
    i32 9963803, label %sw.bb9
    i32 9963800, label %sw.bb11
    i32 9963804, label %sw.bb13
    i32 9963788, label %sw.bb16
    i32 9963807, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.i = icmp slt i32 %9, 7
  %10 = trunc i32 %9 to i8
  %11 = mul i8 %10, -16
  %conv.i = add i8 %11, 112
  %12 = shl i8 %10, 4
  %conv4.i = add i8 %12, -112
  %set6.sroa.4.0.i = select i1 %cmp.i, i8 38, i8 36
  %set6.sroa.58.0.i = select i1 %cmp.i, i8 %conv.i, i8 %conv4.i
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %13 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -113, ptr %14, align 1
  %set6.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %14, i32 1
  %16 = ptrtoint ptr %set6.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %set6.sroa.4.0.i, ptr %set6.sroa.4.0..sroa_idx.i, align 1
  %set6.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %14, i32 2
  %17 = ptrtoint ptr %set6.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -61, ptr %set6.sroa.5.0..sroa_idx.i, align 1
  %set6.sroa.58.0..sroa_idx.i = getelementptr inbounds i8, ptr %14, i32 3
  %18 = ptrtoint ptr %set6.sroa.58.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %set6.sroa.58.0.i, ptr %set6.sroa.58.0..sroa_idx.i, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i = shl i32 %22, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %23 = load ptr, ptr %usb_buf.i.i, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 4, i32 noundef 500) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i42 = icmp slt i32 %25, 7
  %26 = trunc i32 %25 to i16
  %27 = mul i16 %26, -512
  %conv.i43 = add i16 %27, -29015
  %28 = shl i16 %26, 9
  %conv3.i = add i16 %28, -3415
  %reg_to_write.0.i = select i1 %cmp.i42, i16 %conv.i43, i16 %conv3.i
  %dev.i.i44 = getelementptr i8, ptr %1, i32 -100
  %29 = ptrtoint ptr %dev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i44, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i.i45 = shl i32 %32, 8
  %or.i.i46 = or i32 %shl.i.i.i45, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i.i46, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %reg_to_write.0.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val4, align 4
  %val.tr.i = trunc i32 %34 to i16
  %35 = shl i16 %val.tr.i, 8
  %conv.i47 = add i16 %35, -32581
  %dev.i.i48 = getelementptr i8, ptr %1, i32 -100
  %36 = ptrtoint ptr %dev.i.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i48, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i.i49 = shl i32 %39, 8
  %or.i.i50 = or i32 %shl.i.i.i49, -2147483648
  %call2.i.i51 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i.i50, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i47, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %40 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %42 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i52 = icmp sgt i32 %42, 1
  br i1 %cmp.i52, label %do.end.i, label %sw.bb5.setgamma.exit_crit_edge

sw.bb5.setgamma.exit_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %setgamma.exit

do.end.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr i8, ptr %1, i32 -168
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, i32 noundef %41) #9
  br label %setgamma.exit

setgamma.exit:                                    ; preds = %do.end.i, %sw.bb5.setgamma.exit_crit_edge
  %arrayidx.i = getelementptr [16 x [17 x i8]], ptr @gamma_table, i32 0, i32 %41
  %usb_buf.i.i53 = getelementptr i8, ptr %1, i32 204
  %43 = ptrtoint ptr %usb_buf.i.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %usb_buf.i.i53, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %44, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -112, ptr %44, align 1
  %incdec.ptr9.i.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr10.i.i = getelementptr i8, ptr %44, i32 2
  %48 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i.1.i = getelementptr i8, ptr %44, i32 3
  %49 = ptrtoint ptr %incdec.ptr10.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -111, ptr %incdec.ptr10.i.i, align 1
  %incdec.ptr9.i.1.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %50 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr9.i.i, align 1
  %incdec.ptr10.i.1.i = getelementptr i8, ptr %44, i32 4
  %52 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %incdec.ptr.i.1.i, align 1
  %incdec.ptr.i.2.i = getelementptr i8, ptr %44, i32 5
  %53 = ptrtoint ptr %incdec.ptr10.i.1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -110, ptr %incdec.ptr10.i.1.i, align 1
  %incdec.ptr9.i.2.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %54 = ptrtoint ptr %incdec.ptr9.i.1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr9.i.1.i, align 1
  %incdec.ptr10.i.2.i = getelementptr i8, ptr %44, i32 6
  %56 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %incdec.ptr.i.2.i, align 1
  %incdec.ptr.i.3.i = getelementptr i8, ptr %44, i32 7
  %57 = ptrtoint ptr %incdec.ptr10.i.2.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -109, ptr %incdec.ptr10.i.2.i, align 1
  %incdec.ptr9.i.3.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %58 = ptrtoint ptr %incdec.ptr9.i.2.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr9.i.2.i, align 1
  %incdec.ptr10.i.3.i = getelementptr i8, ptr %44, i32 8
  %60 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %incdec.ptr.i.3.i, align 1
  %incdec.ptr.i.4.i = getelementptr i8, ptr %44, i32 9
  %61 = ptrtoint ptr %incdec.ptr10.i.3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -108, ptr %incdec.ptr10.i.3.i, align 1
  %incdec.ptr9.i.4.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %62 = ptrtoint ptr %incdec.ptr9.i.3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr9.i.3.i, align 1
  %incdec.ptr10.i.4.i = getelementptr i8, ptr %44, i32 10
  %64 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %incdec.ptr.i.4.i, align 1
  %incdec.ptr.i.5.i = getelementptr i8, ptr %44, i32 11
  %65 = ptrtoint ptr %incdec.ptr10.i.4.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -107, ptr %incdec.ptr10.i.4.i, align 1
  %incdec.ptr9.i.5.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %66 = ptrtoint ptr %incdec.ptr9.i.4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr9.i.4.i, align 1
  %incdec.ptr10.i.5.i = getelementptr i8, ptr %44, i32 12
  %68 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %incdec.ptr.i.5.i, align 1
  %incdec.ptr.i.6.i = getelementptr i8, ptr %44, i32 13
  %69 = ptrtoint ptr %incdec.ptr10.i.5.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -106, ptr %incdec.ptr10.i.5.i, align 1
  %incdec.ptr9.i.6.i = getelementptr i8, ptr %arrayidx.i, i32 7
  %70 = ptrtoint ptr %incdec.ptr9.i.5.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr9.i.5.i, align 1
  %incdec.ptr10.i.6.i = getelementptr i8, ptr %44, i32 14
  %72 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %incdec.ptr.i.6.i, align 1
  %incdec.ptr.i.7.i = getelementptr i8, ptr %44, i32 15
  %73 = ptrtoint ptr %incdec.ptr10.i.6.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -105, ptr %incdec.ptr10.i.6.i, align 1
  %incdec.ptr9.i.7.i = getelementptr i8, ptr %arrayidx.i, i32 8
  %74 = ptrtoint ptr %incdec.ptr9.i.6.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %incdec.ptr9.i.6.i, align 1
  %incdec.ptr10.i.7.i = getelementptr i8, ptr %44, i32 16
  %76 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %incdec.ptr.i.7.i, align 1
  %incdec.ptr.i.8.i = getelementptr i8, ptr %44, i32 17
  %77 = ptrtoint ptr %incdec.ptr10.i.7.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -104, ptr %incdec.ptr10.i.7.i, align 1
  %incdec.ptr9.i.8.i = getelementptr i8, ptr %arrayidx.i, i32 9
  %78 = ptrtoint ptr %incdec.ptr9.i.7.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %incdec.ptr9.i.7.i, align 1
  %incdec.ptr10.i.8.i = getelementptr i8, ptr %44, i32 18
  %80 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %incdec.ptr.i.8.i, align 1
  %incdec.ptr.i.9.i = getelementptr i8, ptr %44, i32 19
  %81 = ptrtoint ptr %incdec.ptr10.i.8.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -103, ptr %incdec.ptr10.i.8.i, align 1
  %incdec.ptr9.i.9.i = getelementptr i8, ptr %arrayidx.i, i32 10
  %82 = ptrtoint ptr %incdec.ptr9.i.8.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %incdec.ptr9.i.8.i, align 1
  %incdec.ptr10.i.9.i = getelementptr i8, ptr %44, i32 20
  %84 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %incdec.ptr.i.9.i, align 1
  %incdec.ptr.i.10.i = getelementptr i8, ptr %44, i32 21
  %85 = ptrtoint ptr %incdec.ptr10.i.9.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -102, ptr %incdec.ptr10.i.9.i, align 1
  %incdec.ptr9.i.10.i = getelementptr i8, ptr %arrayidx.i, i32 11
  %86 = ptrtoint ptr %incdec.ptr9.i.9.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr9.i.9.i, align 1
  %incdec.ptr10.i.10.i = getelementptr i8, ptr %44, i32 22
  %88 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %incdec.ptr.i.10.i, align 1
  %incdec.ptr.i.11.i = getelementptr i8, ptr %44, i32 23
  %89 = ptrtoint ptr %incdec.ptr10.i.10.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -101, ptr %incdec.ptr10.i.10.i, align 1
  %incdec.ptr9.i.11.i = getelementptr i8, ptr %arrayidx.i, i32 12
  %90 = ptrtoint ptr %incdec.ptr9.i.10.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %incdec.ptr9.i.10.i, align 1
  %incdec.ptr10.i.11.i = getelementptr i8, ptr %44, i32 24
  %92 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %incdec.ptr.i.11.i, align 1
  %incdec.ptr.i.12.i = getelementptr i8, ptr %44, i32 25
  %93 = ptrtoint ptr %incdec.ptr10.i.11.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -100, ptr %incdec.ptr10.i.11.i, align 1
  %incdec.ptr9.i.12.i = getelementptr i8, ptr %arrayidx.i, i32 13
  %94 = ptrtoint ptr %incdec.ptr9.i.11.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %incdec.ptr9.i.11.i, align 1
  %incdec.ptr10.i.12.i = getelementptr i8, ptr %44, i32 26
  %96 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %incdec.ptr.i.12.i, align 1
  %incdec.ptr.i.13.i = getelementptr i8, ptr %44, i32 27
  %97 = ptrtoint ptr %incdec.ptr10.i.12.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -99, ptr %incdec.ptr10.i.12.i, align 1
  %incdec.ptr9.i.13.i = getelementptr i8, ptr %arrayidx.i, i32 14
  %98 = ptrtoint ptr %incdec.ptr9.i.12.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr9.i.12.i, align 1
  %incdec.ptr10.i.13.i = getelementptr i8, ptr %44, i32 28
  %100 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %incdec.ptr.i.13.i, align 1
  %incdec.ptr.i.14.i = getelementptr i8, ptr %44, i32 29
  %101 = ptrtoint ptr %incdec.ptr10.i.13.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -98, ptr %incdec.ptr10.i.13.i, align 1
  %incdec.ptr9.i.14.i = getelementptr i8, ptr %arrayidx.i, i32 15
  %102 = ptrtoint ptr %incdec.ptr9.i.13.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %incdec.ptr9.i.13.i, align 1
  %incdec.ptr10.i.14.i = getelementptr i8, ptr %44, i32 30
  %104 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %incdec.ptr.i.14.i, align 1
  %incdec.ptr.i.15.i = getelementptr i8, ptr %44, i32 31
  %105 = ptrtoint ptr %incdec.ptr10.i.14.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -97, ptr %incdec.ptr10.i.14.i, align 1
  %incdec.ptr9.i.15.i = getelementptr i8, ptr %arrayidx.i, i32 16
  %106 = ptrtoint ptr %incdec.ptr9.i.14.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %incdec.ptr9.i.14.i, align 1
  %incdec.ptr10.i.15.i = getelementptr i8, ptr %44, i32 32
  %108 = ptrtoint ptr %incdec.ptr.i.15.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %incdec.ptr.i.15.i, align 1
  %incdec.ptr.i.16.i = getelementptr i8, ptr %44, i32 33
  %109 = ptrtoint ptr %incdec.ptr10.i.15.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -96, ptr %incdec.ptr10.i.15.i, align 1
  %110 = ptrtoint ptr %incdec.ptr9.i.15.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %incdec.ptr9.i.15.i, align 1
  %112 = ptrtoint ptr %incdec.ptr.i.16.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %incdec.ptr.i.16.i, align 1
  %dev.i.i54 = getelementptr i8, ptr %1, i32 -100
  %113 = ptrtoint ptr %dev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i54, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 8
  %shl.i.i.i55 = shl i32 %116, 8
  %or.i.i56 = or i32 %shl.i.i.i55, -2147483648
  %call16.i.i = tail call i32 @usb_control_msg(ptr noundef %114, i32 noundef %or.i.i56, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %44, i16 noundef zeroext 34, i32 noundef 500) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %117 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i = icmp eq i32 %118, 0
  %spec.select.i = select i1 %tobool.not.i, i8 3, i8 1
  %usb_buf.i.i57 = getelementptr i8, ptr %1, i32 204
  %119 = ptrtoint ptr %usb_buf.i.i57 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %usb_buf.i.i57, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_storeN_noabort(i32 %121, i32 3)
  store i24 6424419, ptr %120, align 1
  %hflipcmd.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %120, i32 3
  %122 = ptrtoint ptr %hflipcmd.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %spec.select.i, ptr %hflipcmd.sroa.4.0..sroa_idx.i, align 1
  %hflipcmd.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %120, i32 4
  %123 = ptrtoint ptr %hflipcmd.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 1677746185, ptr %hflipcmd.sroa.5.0..sroa_idx.i, align 1
  %dev.i.i58 = getelementptr i8, ptr %1, i32 -100
  %124 = ptrtoint ptr %dev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i.i58, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 8
  %shl.i.i.i59 = shl i32 %127, 8
  %or.i.i60 = or i32 %shl.i.i.i59, -2147483648
  %128 = load ptr, ptr %usb_buf.i.i57, align 4
  %call5.i.i61 = tail call i32 @usb_control_msg(ptr noundef %125, i32 noundef %or.i.i60, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %128, i16 noundef zeroext 8, i32 noundef 500) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %129 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val10, align 4
  %val.tr.i62 = trunc i32 %130 to i16
  %131 = shl i16 %val.tr.i62, 12
  %conv.i63 = or i16 %131, 2726
  %dev.i.i64 = getelementptr i8, ptr %1, i32 -100
  %132 = ptrtoint ptr %dev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i.i64, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  %shl.i.i.i65 = shl i32 %135, 8
  %or.i.i66 = or i32 %shl.i.i.i65, -2147483648
  %call2.i.i67 = tail call i32 @usb_control_msg(ptr noundef %133, i32 noundef %or.i.i66, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i63, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %136 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val12, align 4
  %sensor.i = getelementptr i8, ptr %1, i32 1044
  %138 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %sensor.i, align 4
  %140 = zext i8 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %139, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 0, label %sw.bb11.sw.epilog.i_crit_edge
  ]

sw.bb11.sw.epilog.i_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.not.i = icmp eq i32 %137, 0
  br i1 %cmp.not.i, label %sw.bb.i.sw.bb3.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.default.i:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i.sw.epilog.i_crit_edge, %sw.bb11.sw.epilog.i_crit_edge
  %freq.sroa.513.0.i = phi i8 [ -24, %sw.default.i ], [ -24, %sw.bb11.sw.epilog.i_crit_edge ], [ -88, %sw.bb.i.sw.epilog.i_crit_edge ]
  %reg66.0.i = phi i8 [ 64, %sw.default.i ], [ -54, %sw.bb11.sw.epilog.i_crit_edge ], [ 65, %sw.bb.i.sw.epilog.i_crit_edge ]
  %141 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %137, label %sw.epilog.i.setfreq.exit_crit_edge [
    i32 0, label %sw.epilog.i.sw.bb3.i_crit_edge
    i32 2, label %sw.bb5.i
  ]

sw.epilog.i.sw.bb3.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

sw.epilog.i.setfreq.exit_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %setfreq.exit

sw.bb3.i:                                         ; preds = %sw.epilog.i.sw.bb3.i_crit_edge, %sw.bb.i.sw.bb3.i_crit_edge
  %reg66.016.i = phi i8 [ %reg66.0.i, %sw.epilog.i.sw.bb3.i_crit_edge ], [ 65, %sw.bb.i.sw.bb3.i_crit_edge ]
  br label %setfreq.exit

sw.bb5.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %142 = and i8 %reg66.0.i, -117
  br label %setfreq.exit

setfreq.exit:                                     ; preds = %sw.bb5.i, %sw.bb3.i, %sw.epilog.i.setfreq.exit_crit_edge
  %freq.sroa.513.1.i = phi i8 [ %freq.sroa.513.0.i, %sw.epilog.i.setfreq.exit_crit_edge ], [ %freq.sroa.513.0.i, %sw.bb5.i ], [ -16, %sw.bb3.i ]
  %reg66.1.i = phi i8 [ %reg66.0.i, %sw.epilog.i.setfreq.exit_crit_edge ], [ %142, %sw.bb5.i ], [ %reg66.016.i, %sw.bb3.i ]
  %usb_buf.i.i68 = getelementptr i8, ptr %1, i32 204
  %143 = ptrtoint ptr %usb_buf.i.i68 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %usb_buf.i.i68, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 102, ptr %144, align 1
  %freq.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %144, i32 1
  %146 = ptrtoint ptr %freq.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %reg66.1.i, ptr %freq.sroa.4.0..sroa_idx.i, align 1
  %freq.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %144, i32 2
  %147 = ptrtoint ptr %freq.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -88, ptr %freq.sroa.5.0..sroa_idx.i, align 1
  %freq.sroa.513.0..sroa_idx.i = getelementptr inbounds i8, ptr %144, i32 3
  %148 = ptrtoint ptr %freq.sroa.513.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %freq.sroa.513.1.i, ptr %freq.sroa.513.0..sroa_idx.i, align 1
  %dev.i.i69 = getelementptr i8, ptr %1, i32 -100
  %149 = ptrtoint ptr %dev.i.i69 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i.i69, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %150, align 8
  %shl.i.i.i70 = shl i32 %152, 8
  %or.i.i71 = or i32 %shl.i.i.i70, -2147483648
  %153 = load ptr, ptr %usb_buf.i.i68, align 4
  %call5.i.i72 = tail call i32 @usb_control_msg(ptr noundef %150, i32 noundef %or.i.i71, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %153, i16 noundef zeroext 4, i32 noundef 500) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %154 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool15.not = icmp eq i32 %155, 0
  %conv = select i1 %tobool15.not, i16 -19314, i16 -2930
  %dev.i = getelementptr i8, ptr %1, i32 -100
  %156 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 8
  %shl.i.i = shl i32 %159, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %157, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %160 = getelementptr i8, ptr %1, i32 1028
  %gain.i = getelementptr i8, ptr %1, i32 1032
  %161 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %gain.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %162, i32 0, i32 22
  %163 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %val.i, align 4
  %red_balance.i = getelementptr i8, ptr %1, i32 1036
  %165 = ptrtoint ptr %red_balance.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %red_balance.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %166, i32 0, i32 22
  %167 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %val1.i, align 4
  %add.i = add i32 %168, %164
  %169 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 16) #6
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 64) #6
  %171 = trunc i32 %170 to i8
  %blue_balance.i = getelementptr i8, ptr %1, i32 1040
  %172 = ptrtoint ptr %blue_balance.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %blue_balance.i, align 4
  %val5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %173, i32 0, i32 22
  %174 = ptrtoint ptr %val5.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %val5.i, align 4
  %add6.i = add i32 %175, %164
  %176 = tail call i32 @llvm.smax.i32(i32 %add6.i, i32 16) #6
  %177 = tail call i32 @llvm.umin.i32(i32 %176, i32 64) #6
  %178 = trunc i32 %177 to i8
  %conv16.i = trunc i32 %164 to i8
  %sensor.i73 = getelementptr i8, ptr %1, i32 1044
  %179 = ptrtoint ptr %sensor.i73 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %sensor.i73, align 4
  %idxprom.i = zext i8 %180 to i32
  %reg80.i = getelementptr [4 x %struct.additional_sensor_data], ptr @sensor_data, i32 0, i32 %idxprom.i, i32 3
  %181 = ptrtoint ptr %reg80.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %reg80.i, align 1
  %183 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %160, align 4
  %val20.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %184, i32 0, i32 22
  %185 = ptrtoint ptr %val20.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %val20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i74 = icmp eq i32 %186, 0
  %187 = and i8 %182, -5
  %spec.select.i75 = select i1 %tobool.not.i74, i8 %187, i8 %182
  %usb_buf.i.i76 = getelementptr i8, ptr %1, i32 204
  %188 = ptrtoint ptr %usb_buf.i.i76 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %usb_buf.i.i76, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -121, ptr %189, align 1
  %all_gain_reg.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 1
  %191 = ptrtoint ptr %all_gain_reg.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %171, ptr %all_gain_reg.sroa.4.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 2
  %192 = ptrtoint ptr %all_gain_reg.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -120, ptr %all_gain_reg.sroa.5.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.539.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 3
  %193 = ptrtoint ptr %all_gain_reg.sroa.539.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %178, ptr %all_gain_reg.sroa.539.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 4
  %194 = ptrtoint ptr %all_gain_reg.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 -119, ptr %all_gain_reg.sroa.6.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.640.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 5
  %195 = ptrtoint ptr %all_gain_reg.sroa.640.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv16.i, ptr %all_gain_reg.sroa.640.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 6
  %196 = ptrtoint ptr %all_gain_reg.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 -128, ptr %all_gain_reg.sroa.7.0..sroa_idx.i, align 1
  %all_gain_reg.sroa.741.0..sroa_idx.i = getelementptr inbounds i8, ptr %189, i32 7
  %197 = ptrtoint ptr %all_gain_reg.sroa.741.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %spec.select.i75, ptr %all_gain_reg.sroa.741.0..sroa_idx.i, align 1
  %dev.i.i77 = getelementptr i8, ptr %1, i32 -100
  %198 = ptrtoint ptr %dev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i.i77, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 8
  %shl.i.i.i78 = shl i32 %201, 8
  %or.i.i79 = or i32 %shl.i.i.i78, -2147483648
  %202 = load ptr, ptr %usb_buf.i.i76, align 4
  %call5.i.i80 = tail call i32 @usb_control_msg(ptr noundef %199, i32 noundef %or.i.i79, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %202, i16 noundef zeroext 8, i32 noundef 500) #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %203 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %val18, align 4
  %switch.tableidx = add i32 %204, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %205 = icmp ult i32 %switch.tableidx, 5
  br i1 %205, label %switch.lookup, label %sw.bb17.seteffect.exit_crit_edge

sw.bb17.seteffect.exit_crit_edge:                 ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %seteffect.exit

switch.lookup:                                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sd_s_ctrl, i32 0, i32 %switch.tableidx
  %206 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %206)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %seteffect.exit

seteffect.exit:                                   ; preds = %switch.lookup, %sw.bb17.seteffect.exit_crit_edge
  %idx.0.i = phi i32 [ 0, %sw.bb17.seteffect.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx.i83 = getelementptr [7 x [6 x i8]], ptr @effects_table, i32 0, i32 %idx.0.i
  %usb_buf.i.i84 = getelementptr i8, ptr %1, i32 204
  %207 = ptrtoint ptr %usb_buf.i.i84 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %usb_buf.i.i84, align 4
  %209 = call ptr @memcpy(ptr %208, ptr %arrayidx.i83, i32 6)
  %dev.i.i85 = getelementptr i8, ptr %1, i32 -100
  %210 = ptrtoint ptr %dev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i.i85, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 8
  %shl.i.i.i86 = shl i32 %213, 8
  %or.i.i87 = or i32 %shl.i.i.i86, -2147483648
  %214 = load ptr, ptr %usb_buf.i.i84, align 4
  %call5.i.i88 = tail call i32 @usb_control_msg(ptr noundef %211, i32 noundef %or.i.i87, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %214, i16 noundef zeroext 6, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %204)
  %cmp.i89 = icmp eq i32 %204, 5
  %215 = ptrtoint ptr %dev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev.i.i85, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 8
  %shl.i.i8.i = shl i32 %218, 8
  %or.i9.i = or i32 %shl.i.i8.i, -2147483648
  %..i = select i1 %cmp.i89, i16 19110, i16 -1370
  %call2.i13.i = tail call i32 @usb_control_msg(ptr noundef %216, i32 noundef %or.i9.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %..i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %seteffect.exit, %sw.bb16, %sw.bb13, %setfreq.exit, %sw.bb9, %sw.bb7, %setgamma.exit, %sw.bb3, %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %219 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %220, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/t613.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/t613.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/t613.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_t613__307_1041_sd_driver_init6, !8, !"__initcall__kmod_gspca_t613__307_1041_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/t613.c", i32 1041, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/t613.c", i32 1030, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/t613.c", i32 1029, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/t613.c", i32 1001, i32 29}
!17 = !{ptr @vga_mode_t16, !18, !"vga_mode_t16", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/t613.c", i32 48, i32 37}
!19 = !{ptr @sd_init.read_indexs, !20, !"read_indexs", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/t613.c", i32 574, i32 18}
!21 = !{ptr @sd_init.n1, !22, !"n1", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/t613.c", i32 577, i32 18}
!23 = distinct !{null, !24, !"n2", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/t613.c", i32 579, i32 18}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/t613.c", i32 586, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sd_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/t613.c", i32 590, i32 3}
!33 = !{ptr @sd_init._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_init._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/t613.c", i32 594, i32 3}
!37 = !{ptr @sd_init._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_init._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/t613.c", i32 598, i32 3}
!41 = !{ptr @sd_init._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_init._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/t613.c", i32 602, i32 3}
!45 = !{ptr @sd_init._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sd_init._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/t613.c", i32 617, i32 4}
!49 = !{ptr @sd_init._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sd_init._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/t613.c", i32 626, i32 3}
!53 = !{ptr @sd_init._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sd_init._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sd_init._entry.23, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/t613.c", i32 637, i32 3}
!57 = !{ptr @sd_init._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sd_init._entry.25, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/t613.c", i32 659, i32 3}
!60 = !{ptr @sd_init._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/t613.c", i32 333, i32 4}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @reg_w_buf._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @reg_w_buf._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @sensor_reset, !67, !"sensor_reset", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/t613.c", i32 290, i32 11}
!68 = !{ptr @sensor_data, !69, !"sensor_data", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/t613.c", i32 135, i32 44}
!70 = !{ptr @n4_om6802, !71, !"n4_om6802", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/t613.c", i32 93, i32 17}
!72 = !{ptr @n4_other, !73, !"n4_other", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/gspca/t613.c", i32 104, i32 17}
!74 = !{ptr @n4_tas5130a, !75, !"n4_tas5130a", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/t613.c", i32 114, i32 17}
!76 = !{ptr @n4_lt168g, !77, !"n4_lt168g", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/gspca/t613.c", i32 123, i32 17}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/t613.c", i32 359, i32 4}
!80 = !{ptr @reg_w_ixbuf._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @reg_w_ixbuf._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sd_init_controls._key, !83, !"_key", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/t613.c", i32 951, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/gspca/t613.c", i32 991, i32 3}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sd_init_controls._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @sd_init_controls._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @sd_ctrl_ops, !91, !"sd_ctrl_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/t613.c", i32 940, i32 35}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/t613.c", i32 484, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @setgamma._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @setgamma._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @gamma_table, !98, !"gamma_table", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/gspca/t613.c", i32 232, i32 17}
!99 = !{ptr @effects_table, !100, !"effects_table", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/t613.c", i32 221, i32 17}
!101 = distinct !{null, !102, !"t3", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/gspca/t613.c", i32 743, i32 18}
!103 = !{ptr @om6802_sensor_init.sensor_init, !104, !"sensor_init", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/t613.c", i32 384, i32 18}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/gspca/t613.c", i32 413, i32 3}
!107 = !{ptr @om6802_sensor_init._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @om6802_sensor_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"tas5130a_sensor_init", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/t613.c", i32 284, i32 17}
!111 = !{ptr @poll_sensor.poll1, !112, !"poll1", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/gspca/t613.c", i32 718, i32 18}
!113 = !{ptr @poll_sensor.poll2, !114, !"poll2", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/t613.c", i32 723, i32 18}
!115 = !{ptr @poll_sensor.noise03, !116, !"noise03", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/gspca/t613.c", i32 726, i32 18}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/t613.c", i32 731, i32 2}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @poll_sensor._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @poll_sensor._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @device_table, !123, !"device_table", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/gspca/t613.c", i32 1015, i32 35}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i8 0, i8 2}
