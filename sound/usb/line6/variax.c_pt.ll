; ModuleID = '/llk/IR_all_yes/sound/usb/line6/variax.c_pt.bc'
source_filename = "../sound/usb/line6/variax.c"
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
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.71, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.71 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.72 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.72 = type { %union.anon.73, [8192 x i8] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_line6_variax = type { %struct.usb_line6, ptr, i32 }

@__initcall__kmod_snd_usb_variax__239_239_variax_driver_init6 = internal global ptr @variax_driver_init, section ".initcall6.init", align 4
@variax_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @variax_probe, ptr @line6_disconnect, ptr null, ptr @line6_suspend, ptr @line6_resume, ptr @line6_resume, ptr null, ptr null, ptr @variax_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_variax_driver_exit = internal global ptr @variax_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [55 x i8] c"snd_usb_variax.description=Variax Workbench USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [51 x i8] c"snd_usb_variax.file=sound/usb/line6/snd-usb-variax\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"snd_usb_variax.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_usb_variax\00", [17 x i8] zeroinitializer }, align 32
@variax_id_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 3649, i16 18000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 3, i16 3649, i16 21325, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line6-Variax\00", [19 x i8] zeroinitializer }, align 32
@variax_properties_table = internal constant { [2 x %struct.line6_properties], [56 x i8] } { [2 x %struct.line6_properties] [%struct.line6_properties { ptr @.str.2, ptr @.str.3, i32 17, i32 1, i32 0, i32 134, i32 5, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.4, ptr @.str.5, i32 17, i32 1, i32 0, i32 130, i32 1, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PODxtLive\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PODxt Live\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Variax\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Variax Workbench\00", [47 x i8] zeroinitializer }, align 32
@variax_activate = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\F0\00\01\0C\07\00*\01\F7", [23 x i8] zeroinitializer }, align 32
@line6_variax_process_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 121, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VARIAX reset\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"line6_variax_process_message\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/usb/line6/variax.c\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@line6_variax_process_message._entry_ptr = internal global ptr @line6_variax_process_message._entry, section ".printk_index", align 4
@variax_init_version = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\F0~\7F\06\02\00\01\0C\07\00\00\00", [20 x i8] zeroinitializer }, align 32
@variax_init_done = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\F0\00\01\0C\07\00k", [25 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 255]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"variax_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 227, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 239, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"variax_id_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 184, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 222, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"variax_properties_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 192, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 194, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 195, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 205, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 206, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"variax_activate\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 66, i32 19 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 121, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"variax_init_version\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 54, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"variax_init_done\00", align 1
@___asan_gen_.64 = private constant [28 x i8] c"../sound/usb/line6/variax.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 62, i32 19 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_variax_driver_exit, ptr @__initcall__kmod_snd_usb_variax__239_239_variax_driver_init6, ptr @line6_variax_process_message._entry, ptr @line6_variax_process_message._entry_ptr, ptr @variax_driver_exit, ptr @variax_driver, ptr @.str, ptr @variax_id_table, ptr @.str.1, ptr @variax_properties_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @variax_activate, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @variax_init_version, ptr @variax_init_done], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_properties_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_activate to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_variax_process_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_init_version to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variax_init_done to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @variax_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @variax_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @variax_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @variax_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @variax_probe(ptr noundef %interface, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [2 x %struct.line6_properties], ptr @variax_properties_table, i32 0, i32 %1
  %call = tail call i32 @line6_probe(ptr noundef %interface, ptr noundef %id, ptr noundef nonnull @.str.1, ptr noundef %arrayidx, ptr noundef nonnull @variax_init, i32 noundef 8536) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @variax_init(ptr noundef %line6, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %process_message = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 16
  %0 = ptrtoint ptr %process_message to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @line6_variax_process_message, ptr %process_message, align 4
  %disconnect = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 17
  %1 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @line6_variax_disconnect, ptr %disconnect, align 4
  %startup = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 18
  %2 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @variax_startup, ptr %startup, align 4
  %call = tail call ptr @kmemdup(ptr noundef nonnull @variax_activate, i32 noundef 9, i32 noundef 3264) #5
  %buffer_activate = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 1
  %3 = ptrtoint ptr %buffer_activate to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %buffer_activate, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %startup_work = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %startup_work, i32 noundef 100) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_variax_process_message(ptr noundef %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_message = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 12
  %0 = ptrtoint ptr %buffer_message to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_message, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 -1, label %do.end
    i8 -16, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ifcdev = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 6
  %5 = ptrtoint ptr %ifcdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifcdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.6) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %1, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(11) %add.ptr4, ptr noundef dereferenceable(11) getelementptr inbounds ([12 x i8], ptr @variax_init_version, i32 0, i32 1), i32 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  %startup_progress = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 2
  %7 = ptrtoint ptr %startup_progress to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %startup_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then.sw.epilog_crit_edge, label %if.end

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %startup_progress to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %startup_progress, align 4
  %startup_work = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  %call10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %startup_work) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %startup_work, i32 noundef 10) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  %bcmp40 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr4, ptr noundef dereferenceable(6) getelementptr inbounds ([7 x i8], ptr @variax_init_done, i32 0, i32 1), i32 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp40)
  %cmp16 = icmp eq i32 %bcmp40, 0
  br i1 %cmp16, label %if.then18, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then18:                                        ; preds = %if.else
  %startup_progress19 = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 2
  %11 = ptrtoint ptr %startup_progress19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %startup_progress19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp20 = icmp sgt i32 %12, 1
  br i1 %cmp20, label %if.then18.sw.epilog_crit_edge, label %if.end23

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end23:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %startup_work24 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  %call25 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %startup_work24) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i41 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %startup_work24, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end23, %if.then18.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.end, %if.then.sw.epilog_crit_edge, %do.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_variax_disconnect(ptr nocapture noundef readonly %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_activate = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 1
  %0 = ptrtoint ptr %buffer_activate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer_activate, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @variax_startup(ptr noundef %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %startup_progress = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 2
  %0 = ptrtoint ptr %startup_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %startup_progress, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %startup_work = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %startup_work, i32 noundef 100) #5
  %call2 = tail call i32 @line6_version_request_async(ptr noundef %line6) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %buffer_activate.i = getelementptr inbounds %struct.usb_line6_variax, ptr %line6, i32 0, i32 1
  %4 = ptrtoint ptr %buffer_activate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_activate.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.i, align 1
  %7 = load ptr, ptr %buffer_activate.i, align 4
  %call.i = tail call i32 @line6_send_raw_message_async(ptr noundef %line6, ptr noundef %7, i32 noundef 9) #5
  %8 = ptrtoint ptr %startup_progress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %startup_progress, align 4
  %startup_work5 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %startup_work5, i32 noundef 10) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call10 = tail call i32 @snd_card_register(ptr noundef %11) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_version_request_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_send_raw_message_async(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_snd_usb_variax__239_239_variax_driver_init6, !1, !"__initcall__kmod_snd_usb_variax__239_239_variax_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/variax.c", i32 239, i32 1}
!2 = !{ptr @__exitcall_variax_driver_exit, !1, !"__exitcall_variax_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../sound/usb/line6/variax.c", i32 241, i32 1}
!5 = !{ptr @__UNIQUE_ID_file241, !6, !"__UNIQUE_ID_file241", i1 false, i1 false}
!6 = !{!"../sound/usb/line6/variax.c", i32 242, i32 1}
!7 = !{ptr @__UNIQUE_ID_license242, !6, !"__UNIQUE_ID_license242", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @variax_driver, !10, !"variax_driver", i1 false, i1 false}
!10 = !{!"../sound/usb/line6/variax.c", i32 227, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/usb/line6/variax.c", i32 222, i32 36}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/line6/variax.c", i32 194, i32 9}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/line6/variax.c", i32 195, i32 11}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/line6/variax.c", i32 205, i32 9}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/line6/variax.c", i32 206, i32 11}
!21 = !{ptr @variax_properties_table, !22, !"variax_properties_table", i1 false, i1 false}
!22 = !{!"../sound/usb/line6/variax.c", i32 192, i32 38}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/line6/variax.c", i32 121, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @line6_variax_process_message._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @line6_variax_process_message._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @variax_init_version, !32, !"variax_init_version", i1 false, i1 false}
!32 = !{!"../sound/usb/line6/variax.c", i32 54, i32 19}
!33 = !{ptr @variax_init_done, !34, !"variax_init_done", i1 false, i1 false}
!34 = !{!"../sound/usb/line6/variax.c", i32 62, i32 19}
!35 = !{ptr @variax_activate, !36, !"variax_activate", i1 false, i1 false}
!36 = !{!"../sound/usb/line6/variax.c", i32 66, i32 19}
!37 = !{ptr @variax_id_table, !38, !"variax_id_table", i1 false, i1 false}
!38 = !{!"../sound/usb/line6/variax.c", i32 184, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
