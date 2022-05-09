; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/tv8532.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/tv8532.c"
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.sd = type { %struct.gspca_dev, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [66 x i8] c"gspca_tv8532.author=Michel Xhaard <mxhaard@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [50 x i8] c"gspca_tv8532.description=TV8532 USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_tv8532.file=drivers/media/usb/gspca/gspca_tv8532\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_tv8532.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_tv8532__307_365_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_tv8532\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tv8532\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1133, i16 2336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1349, i16 -32629, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1349, i16 -31949, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2339, i16 271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 825770306, i32 1, i32 176, i32 25344, i32 8, i32 1, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 825770306, i32 1, i32 352, i32 101376, i32 8, i32 0, i32 0, %union.anon.101 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@eeprom_data = internal constant { [13 x [3 x i8]], [57 x i8] } { [13 x [3 x i8]] [[3 x i8] c"\01\00\01", [3 x i8] c"\01\80\11", [3 x i8] c"\05\00\14", [3 x i8] c"\05\00\1C", [3 x i8] c"\0D\00\1E", [3 x i8] c"\05\00\1F", [3 x i8] c"\05\05\19", [3 x i8] c"\05\01\1B", [3 x i8] c"\05\09\1E", [3 x i8] c"\0D\89.", [3 x i8] c"\05\89/", [3 x i8] c"\05\0D\D9", [3 x i8] c"\05\09\F1"], [57 x i8] zeroinitializer }, align 32
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tv8532:309:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Could not initialize controls\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/tv8532.c\00", [63 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9963793, i64 9963795]
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 353, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 365, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 354, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 334, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 323, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 22, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"eeprom_data\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 86, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 309, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 300, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [36 x i8] c"../drivers/media/usb/gspca/tv8532.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 316, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_tv8532__307_365_sd_driver_init6, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @sif_mode, ptr @eeprom_data, ptr @sd_init_controls._key, ptr @.str.2, ptr @sd_ctrl_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_data to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sif_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %nmodes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 48, ptr %1, align 1
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.055.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.055.i to i8
  %8 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %9, align 1
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i22.i = shl i32 %14, 8
  %or.i23.i = or i32 %shl.i.i22.i, -2147483648
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i24.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i23.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  %arrayidx.i = getelementptr [13 x [3 x i8]], ptr @eeprom_data, i32 0, i32 %i.055.i
  %arrayidx1.i = getelementptr [13 x [3 x i8]], ptr @eeprom_data, i32 0, i32 %i.055.i, i32 2
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %18 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %19, align 1
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i27.i = shl i32 %24, 8
  %or.i28.i = or i32 %shl.i.i27.i, -2147483648
  %25 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i29.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i28.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef %25, i16 noundef zeroext 1, i32 noundef 500) #5
  %arrayidx3.i = getelementptr [13 x [3 x i8]], ptr @eeprom_data, i32 0, i32 %i.055.i, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx3.i, align 1
  %28 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_buf.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %29, align 1
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i32.i = shl i32 %34, 8
  %or.i33.i = or i32 %shl.i.i32.i, -2147483648
  %35 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i34.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i33.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef %35, i16 noundef zeroext 1, i32 noundef 500) #5
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %38 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %39, align 1
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i37.i = shl i32 %44, 8
  %or.i38.i = or i32 %shl.i.i37.i, -2147483648
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i39.i = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i38.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #5
  %46 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %47, align 1
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i42.i = shl i32 %52, 8
  %or.i43.i = or i32 %shl.i.i42.i, -2147483648
  %53 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i44.i = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i43.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %53, i16 noundef zeroext 1, i32 noundef 500) #5
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %tv_8532WriteEEprom.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tv_8532WriteEEprom.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 13, ptr %55, align 1
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i47.i = shl i32 %60, 8
  %or.i48.i = or i32 %shl.i.i47.i, -2147483648
  %61 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i49.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i48.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 7, ptr noundef %61, i16 noundef zeroext 1, i32 noundef 500) #5
  %62 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_buf.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 41, ptr %63, align 1
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i52.i = shl i32 %68, 8
  %or.i53.i = or i32 %shl.i.i52.i, -2147483648
  %69 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i54.i = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i53.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %69, i16 noundef zeroext 1, i32 noundef 500) #5
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 2, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.2) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 399, i64 noundef 1, i64 noundef 399) #5
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 2047, i64 noundef 1, i64 noundef 256) #5
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
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
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -24, ptr %1, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  %8 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %9, align 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i19 = shl i32 %14, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %15 = load ptr, ptr %usb_buf.i, align 4
  %call3.i21 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i20, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #5
  %16 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -112, ptr %17, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i24 = shl i32 %22, 8
  %or.i25 = or i32 %shl.i.i24, -2147483648
  %23 = load ptr, ptr %usb_buf.i, align 4
  %call3.i26 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i25, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef %23, i16 noundef zeroext 1, i32 noundef 500) #5
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %24 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %26 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %27 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %25, i32 %conv, i32 7
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %. = select i1 %tobool.not, i8 -127, i8 65
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %., ptr %31, align 1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i34 = shl i32 %36, 8
  %or.i35 = or i32 %shl.i.i34, -2147483648
  %37 = load ptr, ptr %usb_buf.i, align 4
  %call3.i36 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i35, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 41, ptr noundef %37, i16 noundef zeroext 1, i32 noundef 500) #5
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 16, ptr %39, align 1
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i39 = shl i32 %44, 8
  %or.i40 = or i32 %shl.i.i39, -2147483648
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call3.i41 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i40, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #5
  %46 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 20, ptr %47, align 1
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i44 = shl i32 %52, 8
  %or.i45 = or i32 %shl.i.i44, -2147483648
  %53 = load ptr, ptr %usb_buf.i, align 4
  %call3.i46 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i45, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 45, ptr noundef %53, i16 noundef zeroext 1, i32 noundef 500) #5
  %54 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %usb_buf.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %55, align 1
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i49 = shl i32 %60, 8
  %or.i50 = or i32 %shl.i.i49, -2147483648
  %61 = load ptr, ptr %usb_buf.i, align 4
  %call3.i51 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i50, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 46, ptr noundef %61, i16 noundef zeroext 1, i32 noundef 500) #5
  %62 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_buf.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 18, ptr %63, align 1
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  %shl.i.i54 = shl i32 %68, 8
  %or.i55 = or i32 %shl.i.i54, -2147483648
  %69 = load ptr, ptr %usb_buf.i, align 4
  %call3.i56 = tail call i32 @usb_control_msg(ptr noundef %66, i32 noundef %or.i55, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 47, ptr noundef %69, i16 noundef zeroext 1, i32 noundef 500) #5
  %70 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %71, align 1
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i.i59 = shl i32 %76, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %77 = load ptr, ptr %usb_buf.i, align 4
  %call3.i61 = tail call i32 @usb_control_msg(ptr noundef %74, i32 noundef %or.i60, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 48, ptr noundef %77, i16 noundef zeroext 1, i32 noundef 500) #5
  %78 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_buf.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 10, ptr %79, align 1
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i.i = shl i32 %84, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %85 = load ptr, ptr %usb_buf.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 59, ptr noundef %85, i16 noundef zeroext 1, i32 noundef 500) #5
  %86 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -112, ptr %87, align 1
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i12.i = shl i32 %92, 8
  %or.i13.i = or i32 %shl.i.i12.i, -2147483648
  %93 = load ptr, ptr %usb_buf.i, align 4
  %call3.i14.i = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i13.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef %93, i16 noundef zeroext 1, i32 noundef 500) #5
  %94 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %usb_buf.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %95, align 1
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i17.i = shl i32 %100, 8
  %or.i18.i = or i32 %shl.i.i17.i, -2147483648
  %101 = load ptr, ptr %usb_buf.i, align 4
  %call3.i19.i = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i18.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef %101, i16 noundef zeroext 1, i32 noundef 500) #5
  %102 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usb_buf.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -113, ptr %103, align 1
  %105 = load ptr, ptr %usb_buf.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %105, i32 1
  %106 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %arrayidx4.i.i, align 1
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 8
  %shl.i.i22.i = shl i32 %110, 8
  %or.i23.i = or i32 %shl.i.i22.i, -2147483648
  %111 = load ptr, ptr %usb_buf.i, align 4
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %108, i32 noundef %or.i23.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28, ptr noundef %111, i16 noundef zeroext 2, i32 noundef 500) #5
  %112 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %usb_buf.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 68, ptr %113, align 1
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i26.i = shl i32 %118, 8
  %or.i27.i = or i32 %shl.i.i26.i, -2147483648
  %119 = load ptr, ptr %usb_buf.i, align 4
  %call3.i28.i = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or.i27.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %119, i16 noundef zeroext 1, i32 noundef 500) #5
  %120 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %usb_buf.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %121, align 1
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 8
  %shl.i.i31.i = shl i32 %126, 8
  %or.i32.i = or i32 %shl.i.i31.i, -2147483648
  %127 = load ptr, ptr %usb_buf.i, align 4
  %call3.i33.i = tail call i32 @usb_control_msg(ptr noundef %124, i32 noundef %or.i32.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %127, i16 noundef zeroext 1, i32 noundef 500) #5
  %128 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %usb_buf.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 10, ptr %129, align 1
  %131 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %shl.i.i36.i = shl i32 %134, 8
  %or.i37.i = or i32 %shl.i.i36.i, -2147483648
  %135 = load ptr, ptr %usb_buf.i, align 4
  %call3.i38.i = tail call i32 @usb_control_msg(ptr noundef %132, i32 noundef %or.i37.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 20, ptr noundef %135, i16 noundef zeroext 1, i32 noundef 500) #5
  %136 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %usb_buf.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %137, align 1
  %139 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %140, align 8
  %shl.i.i41.i = shl i32 %142, 8
  %or.i42.i = or i32 %shl.i.i41.i, -2147483648
  %143 = load ptr, ptr %usb_buf.i, align 4
  %call3.i43.i = tail call i32 @usb_control_msg(ptr noundef %140, i32 noundef %or.i42.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 148, ptr noundef %143, i16 noundef zeroext 1, i32 noundef 500) #5
  %144 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %usb_buf.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %145, align 1
  %147 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %shl.i.i46.i = shl i32 %150, 8
  %or.i47.i = or i32 %shl.i.i46.i, -2147483648
  %151 = load ptr, ptr %usb_buf.i, align 4
  %call3.i48.i = tail call i32 @usb_control_msg(ptr noundef %148, i32 noundef %or.i47.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 145, ptr noundef %151, i16 noundef zeroext 1, i32 noundef 500) #5
  %152 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %usb_buf.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -124, ptr %153, align 1
  %155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  %shl.i.i51.i = shl i32 %158, 8
  %or.i52.i = or i32 %shl.i.i51.i, -2147483648
  %159 = load ptr, ptr %usb_buf.i, align 4
  %call3.i53.i = tail call i32 @usb_control_msg(ptr noundef %156, i32 noundef %or.i52.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %159, i16 noundef zeroext 1, i32 noundef 500) #5
  %160 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %usb_buf.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %161, align 1
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 8
  %shl.i.i64 = shl i32 %166, 8
  %or.i65 = or i32 %shl.i.i64, -2147483648
  %167 = load ptr, ptr %usb_buf.i, align 4
  %call3.i66 = tail call i32 @usb_control_msg(ptr noundef %164, i32 noundef %or.i65, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 49, ptr noundef %167, i16 noundef zeroext 1, i32 noundef 500) #5
  tail call void @msleep(i32 noundef 200) #5
  %168 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %usb_buf.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %169, align 1
  %171 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 8
  %shl.i.i69 = shl i32 %174, 8
  %or.i70 = or i32 %shl.i.i69, -2147483648
  %175 = load ptr, ptr %usb_buf.i, align 4
  %call3.i71 = tail call i32 @usb_control_msg(ptr noundef %172, i32 noundef %or.i70, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 49, ptr noundef %175, i16 noundef zeroext 1, i32 noundef 500) #5
  %empty_packet = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 16
  %176 = ptrtoint ptr %empty_packet to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %empty_packet, align 1
  %packet = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %177 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %packet, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %empty_packet = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 16
  %0 = ptrtoint ptr %empty_packet to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %empty_packet, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %empty_packet to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %empty_packet, align 1
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %div35 = lshr i32 %4, 1
  %conv = trunc i32 %div35 to i8
  %packet = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %packet, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %packet2 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %6 = ptrtoint ptr %packet2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %packet2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %packet_type0.0 = phi i32 [ 1, %if.then ], [ 2, %if.else.if.end6_crit_edge ]
  %packet7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %8 = ptrtoint ptr %packet7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %packet7, align 8
  %dec = add i8 %9, -1
  store i8 %dec, ptr %packet7, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp10 = icmp eq i8 %dec, 0
  %spec.select = select i1 %cmp10, i32 3, i32 2
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %pixfmt14 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %10 = ptrtoint ptr %pixfmt14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixfmt14, align 8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %packet_type0.0, ptr noundef %add.ptr, i32 noundef %11) #5
  %12 = ptrtoint ptr %pixfmt14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixfmt14, align 8
  %add.ptr17 = getelementptr i8, ptr %data, i32 %13
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 5
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %spec.select, ptr noundef %add.ptr18, i32 noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef readonly %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 11, ptr %1, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 59, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 500) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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
  %4 = load i8, ptr %streaming, align 2, !range !43
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963793, label %sw.bb
    i32 9963795, label %sw.bb1
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
  %conv.i.i = trunc i32 %9 to i8
  %usb_buf.i.i = getelementptr i8, ptr %1, i32 204
  %10 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb_buf.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.i, ptr %11, align 1
  %13 = lshr i32 %9, 8
  %conv2.i.i = trunc i32 %13 to i8
  %14 = load ptr, ptr %usb_buf.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i.i, ptr %arrayidx4.i.i, align 1
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %20 = load ptr, ptr %usb_buf.i.i, align 4
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 28, ptr noundef %20, i16 noundef zeroext 2, i32 noundef 500) #5
  %21 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -124, ptr %22, align 1
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i4.i = shl i32 %27, 8
  %or.i5.i = or i32 %shl.i.i4.i, -2147483648
  %28 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i5.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %28, i16 noundef zeroext 1, i32 noundef 500) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val2, align 4
  %conv.i.i11 = trunc i32 %30 to i8
  %usb_buf.i.i12 = getelementptr i8, ptr %1, i32 204
  %31 = ptrtoint ptr %usb_buf.i.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf.i.i12, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i.i11, ptr %32, align 1
  %34 = lshr i32 %30, 8
  %conv2.i.i13 = trunc i32 %34 to i8
  %35 = load ptr, ptr %usb_buf.i.i12, align 4
  %arrayidx4.i.i14 = getelementptr i8, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx4.i.i14 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv2.i.i13, ptr %arrayidx4.i.i14, align 1
  %dev.i.i15 = getelementptr i8, ptr %1, i32 -100
  %37 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i15, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i.i16 = shl i32 %40, 8
  %or.i.i17 = or i32 %shl.i.i.i16, -2147483648
  %41 = load ptr, ptr %usb_buf.i.i12, align 4
  %call7.i.i18 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i.i17, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 32, ptr noundef %41, i16 noundef zeroext 2, i32 noundef 500) #5
  %42 = ptrtoint ptr %usb_buf.i.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i.i12, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i.i11, ptr %43, align 1
  %45 = load ptr, ptr %usb_buf.i.i12, align 4
  %arrayidx4.i13.i = getelementptr i8, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx4.i13.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.i.i13, ptr %arrayidx4.i13.i, align 1
  %47 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i15, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %shl.i.i15.i = shl i32 %50, 8
  %or.i16.i = or i32 %shl.i.i15.i, -2147483648
  %51 = load ptr, ptr %usb_buf.i.i12, align 4
  %call7.i17.i = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or.i16.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 34, ptr noundef %51, i16 noundef zeroext 2, i32 noundef 500) #5
  %52 = ptrtoint ptr %usb_buf.i.i12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_buf.i.i12, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i.i11, ptr %53, align 1
  %55 = load ptr, ptr %usb_buf.i.i12, align 4
  %arrayidx4.i21.i = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx4.i21.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv2.i.i13, ptr %arrayidx4.i21.i, align 1
  %57 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i15, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i23.i = shl i32 %60, 8
  %or.i24.i = or i32 %shl.i.i23.i, -2147483648
  %61 = load ptr, ptr %usb_buf.i.i12, align 4
  %call7.i25.i = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i24.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 36, ptr noundef %61, i16 noundef zeroext 2, i32 noundef 500) #5
  %62 = ptrtoint ptr %usb_buf.i.i12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %usb_buf.i.i12, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i.i11, ptr %63, align 1
  %65 = load ptr, ptr %usb_buf.i.i12, align 4
  %arrayidx4.i29.i = getelementptr i8, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx4.i29.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv2.i.i13, ptr %arrayidx4.i29.i, align 1
  %67 = ptrtoint ptr %dev.i.i15 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i15, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  %shl.i.i31.i = shl i32 %70, 8
  %or.i32.i = or i32 %shl.i.i31.i, -2147483648
  %71 = load ptr, ptr %usb_buf.i.i12, align 4
  %call7.i33.i = tail call i32 @usb_control_msg(ptr noundef %68, i32 noundef %or.i32.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 38, ptr noundef %71, i16 noundef zeroext 2, i32 noundef 500) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %if.end.sw.epilog_crit_edge
  %72 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %73, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 12, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 13, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_tv8532__307_365_sd_driver_init6, !8, !"__initcall__kmod_gspca_tv8532__307_365_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 365, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 354, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 353, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 323, i32 29}
!17 = !{ptr @sif_mode, !18, !"sif_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 22, i32 37}
!19 = !{ptr @eeprom_data, !20, !"eeprom_data", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 86, i32 17}
!21 = !{ptr @sd_init_controls._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 309, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 316, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sd_init_controls._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @sd_init_controls._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sd_ctrl_ops, !31, !"sd_ctrl_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 300, i32 35}
!32 = !{ptr @device_table, !33, !"device_table", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/gspca/tv8532.c", i32 334, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
