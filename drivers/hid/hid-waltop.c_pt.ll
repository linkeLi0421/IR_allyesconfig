; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-waltop.c_pt.bc'
source_filename = "../drivers/hid/hid-waltop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@__initcall__kmod_hid_waltop__223_743_waltop_driver_init6 = internal global ptr @waltop_driver_init, section ".initcall6.init", align 4
@waltop_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @waltop_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @waltop_raw_event, ptr null, ptr null, ptr null, ptr @waltop_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_waltop_driver_exit = internal global ptr @waltop_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [39 x i8] c"hid_waltop.file=drivers/hid/hid-waltop\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [23 x i8] c"hid_waltop.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_waltop\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"waltop\00", [25 x i8] zeroinitializer }, align 32
@waltop_devices = internal constant { [8 x %struct.hid_device_id], [32 x i8] } { [8 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 5935, i32 50, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 52, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 55, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 56, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1281, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1280, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1282, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@waltop_raw_event.tilt_to_radians = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\00\05\0A\0E\13\18\1D\22(-28>DJQX`i", [45 x i8] zeroinitializer }, align 32
@slim_tablet_5_8_inch_rdesc_fixed = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80\092\14%\01u\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090F\88\13&\10'\81\02\091F\B8\0B&p\17\81\02\B4\090&\FF\03\81\02\C0\C0", [44 x i8] zeroinitializer }, align 32
@slim_tablet_12_1_inch_rdesc_fixed = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80\092\14%\01u\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090F\10'& N\81\02\091Fj\18&\D40\81\02\B4\090&\FF\03\81\02\C0\C0", [44 x i8] zeroinitializer }, align 32
@q_pad_rdesc_fixed = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80\092\14%\01u\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090Fp\17&\000\81\02\091F\94\11&\00$\81\02\B4\090&\FF\03\81\02\C0\C0", [44 x i8] zeroinitializer }, align 32
@pid_0038_rdesc_fixed = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80\092\14%\01u\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090F.\22&\00F\81\02\091F\82\14&\00*\81\02\B4\090&\FF\03\81\02\C0\C0", [44 x i8] zeroinitializer }, align 32
@media_tablet_10_6_inch_rdesc_fixed = internal global { [202 x i8], [54 x i8] } { [202 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80u\01\092\14%\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090F(#&PF\81\02\091F|\15&\F8*\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\01\09\01\A0u\08\95\03\81\03\95\02\15\FF%\01\098\0B8\02\0C\00\81\06\95\02\81\03\C0\C0\05\0C\09\01\A1\01\85\0D\95\01u\10\81\03\0A/\02\0A.\02\0A-\02\09\B6\09\B5\08\08\08\08\08\0A.\02\0A-\02\15\0C%\17u\05\80u\03\81\03u \81\03\C0\09\01\A1\01\85\0Cu\01\09\E9\09\EA\09\E2\14%\01\95\03\81\06\955\81\03\C0", [54 x i8] zeroinitializer }, align 32
@media_tablet_14_1_inch_rdesc_fixed = internal global { [198 x i8], [58 x i8] } { [198 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\15\01%\03u\04\95\01\80u\01\092\14%\01\95\01\81\02\95\03\81\03u\10\95\01\14\A4\05\01e\13U\FD4\090F\E0.&\FF?\81\02\091FR\1C&\FF?\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\01\09\01\A0u\08\95\03\81\03\95\02\15\FF%\01\098\0B8\02\0C\00\81\06\C0\C0\05\0C\09\01\A1\01\85\0D\95\01u\10\81\03\0A/\02\0A.\02\0A-\02\09\B6\09\B5\08\08\08\08\08\0A.\02\0A-\02\15\0C%\17u\05\80u\03\81\03u \81\03\C0\09\01\A1\01\85\0Cu\01\09\E9\09\EA\09\E2\14%\01\95\03\81\06u\05\81\03\C0", [58 x i8] zeroinitializer }, align 32
@sirius_battery_free_tablet_rdesc_fixed = internal global { [229 x i8], [59 x i8] } { [229 x i8] c"\05\0D\09\02\A1\01\85\10\09 \A0\95\01\15\01%\03u\02\09B\09D\09F\80\14%\01u\01\09<\81\02\81\03\092\81\02\95\03\81\03\A4\05\01U\FDe\134\14u\10\95\01F\10'& N\090\81\02Fp\17&\E0.\091\81\02\B4u\10\95\01\14&\FF\03\090\81\02\A4U\FEe\125\97Ei\15\97%iu\08\95\02\09=\09>\81\02\B4\C0\C0\05\01\09\02\A1\01\85\01\09\01\A0u\08\95\03\81\03\098\15\FF%\01u\08\95\01\81\06u\08\95\03\81\03\C0\C0\05\01\09\06\A1\01\85\0D\05\07\19\E0)\E7\14%\01u\01\95\08\81\02u\08\95\01\81\01\18)e\14%eu\08\95\05\80\C0\05\0C\09\01\A1\01\85\0C\09\E9\09\EA\14%\01u\01\95\02\81\02u\06\95\01\81\03u\10\95\03\81\03\C0", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 50, i64 52, i64 55, i64 56, i64 1280, i64 1281, i64 1282]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"waltop_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 737, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 743, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 738, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"waltop_devices\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 718, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"tilt_to_radians\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 682, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant [33 x i8] c"slim_tablet_5_8_inch_rdesc_fixed\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 46, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [34 x i8] c"slim_tablet_12_1_inch_rdesc_fixed\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 97, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"q_pad_rdesc_fixed\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 148, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"pid_0038_rdesc_fixed\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 201, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant [35 x i8] c"media_tablet_10_6_inch_rdesc_fixed\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 252, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [35 x i8] c"media_tablet_14_1_inch_rdesc_fixed\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 365, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant [39 x i8] c"sirius_battery_free_tablet_rdesc_fixed\00", align 1
@___asan_gen_.36 = private constant [28 x i8] c"../drivers/hid/hid-waltop.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 476, i32 13 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_waltop_driver_exit, ptr @__initcall__kmod_hid_waltop__223_743_waltop_driver_init6, ptr @waltop_driver_exit, ptr @waltop_driver, ptr @.str, ptr @.str.1, ptr @waltop_devices, ptr @waltop_raw_event.tilt_to_radians, ptr @slim_tablet_5_8_inch_rdesc_fixed, ptr @slim_tablet_12_1_inch_rdesc_fixed, ptr @q_pad_rdesc_fixed, ptr @pid_0038_rdesc_fixed, ptr @media_tablet_10_6_inch_rdesc_fixed, ptr @media_tablet_14_1_inch_rdesc_fixed, ptr @sirius_battery_free_tablet_rdesc_fixed], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waltop_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waltop_devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waltop_raw_event.tilt_to_radians to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_tablet_5_8_inch_rdesc_fixed to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_tablet_12_1_inch_rdesc_fixed to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q_pad_rdesc_fixed to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_0038_rdesc_fixed to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_tablet_10_6_inch_rdesc_fixed to i32), i32 202, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_tablet_14_1_inch_rdesc_fixed to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sirius_battery_free_tablet_rdesc_fixed to i32), i32 229, i32 288, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @waltop_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @waltop_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @waltop_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hid_unregister_driver(ptr noundef nonnull @waltop_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @waltop_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %report, ptr nocapture noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1 = icmp eq i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp3 = icmp sgt i32 %size, 7
  %or.cond = and i1 %cmp3, %cmp1
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4.not = icmp eq i8 %6, 0
  br i1 %cmp4.not, label %if.then.if.end9_crit_edge, label %if.then6

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx7 = getelementptr i8, ptr %data, i32 6
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %data, i32 7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %9 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1282, i32 %10)
  %cmp10 = icmp eq i32 %10, 1282
  br i1 %cmp10, label %land.lhs.true12, label %if.end9.if.end68_crit_edge

if.end9.if.end68_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

land.lhs.true12:                                  ; preds = %if.end9
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true12.if.end68_crit_edge

land.lhs.true12.if.end68_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %id17 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %13 = ptrtoint ptr %id17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp18 = icmp eq i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %size)
  %cmp21 = icmp eq i32 %size, 10
  %or.cond93 = and i1 %cmp21, %cmp18
  br i1 %or.cond93, label %if.then23, label %land.lhs.true16.if.end68_crit_edge

land.lhs.true16.if.end68_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then23:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx24 = getelementptr i8, ptr %data, i32 8
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %data, i32 9
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp27 = icmp sgt i8 %16, -1
  %19 = select i1 %cmp27, i8 1, i8 -1
  %conv37 = mul i8 %19, %16
  %20 = tail call i8 @llvm.abs.i8(i8 %18, i1 false)
  %21 = tail call i8 @llvm.umin.i8(i8 %conv37, i8 18)
  %22 = tail call i8 @llvm.umin.i8(i8 %20, i8 18)
  %idxprom = zext i8 %21 to i32
  %arrayidx55 = getelementptr [19 x i8], ptr @waltop_raw_event.tilt_to_radians, i32 0, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx55, align 1
  %conv59 = mul i8 %24, %19
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv59, ptr %arrayidx24, align 1
  %idxprom61 = zext i8 %22 to i32
  %arrayidx62 = getelementptr [19 x i8], ptr @waltop_raw_event.tilt_to_radians, i32 0, i32 %idxprom61
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx62, align 1
  %28 = sub i8 0, %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp3192 = icmp slt i8 %18, 0
  %29 = select i1 %cmp3192, i8 %27, i8 %28
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx25, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then23, %land.lhs.true16.if.end68_crit_edge, %land.lhs.true12.if.end68_crit_edge, %if.end9.if.end68_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @waltop_report_fixup(ptr nocapture noundef readonly %hdev, ptr noundef readnone %rdesc, ptr nocapture noundef %rsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 52, label %sw.bb1
    i32 55, label %sw.bb5
    i32 56, label %sw.bb9
    i32 1281, label %sw.bb13
    i32 1280, label %sw.bb17
    i32 1282, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %4)
  %cmp = icmp eq i32 %4, 222
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 269, i32 %6)
  %cmp2 = icmp eq i32 %6, 269
  br i1 %cmp2, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  %7 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %8)
  %cmp6 = icmp eq i32 %8, 241
  br i1 %cmp6, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  %9 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %10)
  %cmp10 = icmp eq i32 %10, 241
  br i1 %cmp10, label %sw.bb9.sw.epilog.sink.split_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %entry
  %11 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %12)
  %cmp14 = icmp eq i32 %12, 300
  br i1 %cmp14, label %sw.bb13.sw.epilog.sink.split_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %entry
  %13 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 309, i32 %14)
  %cmp18 = icmp eq i32 %14, 309
  br i1 %cmp18, label %sw.bb17.sw.epilog.sink.split_crit_edge, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb17.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %entry
  %15 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 335, i32 %16)
  %cmp22 = icmp eq i32 %16, 335
  br i1 %cmp22, label %sw.bb21.sw.epilog.sink.split_crit_edge, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb21.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb21.sw.epilog.sink.split_crit_edge, %sw.bb17.sw.epilog.sink.split_crit_edge, %sw.bb13.sw.epilog.sink.split_crit_edge, %sw.bb9.sw.epilog.sink.split_crit_edge, %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb1.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 84, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 84, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ 84, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ 84, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ 202, %sw.bb13.sw.epilog.sink.split_crit_edge ], [ 198, %sw.bb17.sw.epilog.sink.split_crit_edge ], [ 229, %sw.bb21.sw.epilog.sink.split_crit_edge ]
  %rdesc.addr.0.ph = phi ptr [ @slim_tablet_5_8_inch_rdesc_fixed, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @slim_tablet_12_1_inch_rdesc_fixed, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ @q_pad_rdesc_fixed, %sw.bb5.sw.epilog.sink.split_crit_edge ], [ @pid_0038_rdesc_fixed, %sw.bb9.sw.epilog.sink.split_crit_edge ], [ @media_tablet_10_6_inch_rdesc_fixed, %sw.bb13.sw.epilog.sink.split_crit_edge ], [ @media_tablet_14_1_inch_rdesc_fixed, %sw.bb17.sw.epilog.sink.split_crit_edge ], [ @sirius_battery_free_tablet_rdesc_fixed, %sw.bb21.sw.epilog.sink.split_crit_edge ]
  %17 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %rsize, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb21.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rdesc.addr.0 = phi ptr [ %rdesc, %entry.sw.epilog_crit_edge ], [ %rdesc, %sw.bb21.sw.epilog_crit_edge ], [ %rdesc, %sw.bb17.sw.epilog_crit_edge ], [ %rdesc, %sw.bb13.sw.epilog_crit_edge ], [ %rdesc, %sw.bb9.sw.epilog_crit_edge ], [ %rdesc, %sw.bb5.sw.epilog_crit_edge ], [ %rdesc, %sw.bb1.sw.epilog_crit_edge ], [ %rdesc, %sw.bb.sw.epilog_crit_edge ], [ %rdesc.addr.0.ph, %sw.epilog.sink.split ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_hid_waltop__223_743_waltop_driver_init6, !1, !"__initcall__kmod_hid_waltop__223_743_waltop_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-waltop.c", i32 743, i32 1}
!2 = !{ptr @__exitcall_waltop_driver_exit, !1, !"__exitcall_waltop_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-waltop.c", i32 745, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-waltop.c", i32 738, i32 10}
!9 = !{ptr @waltop_driver, !10, !"waltop_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-waltop.c", i32 737, i32 26}
!11 = !{ptr @waltop_devices, !12, !"waltop_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-waltop.c", i32 718, i32 35}
!13 = !{ptr @waltop_raw_event.tilt_to_radians, !14, !"tilt_to_radians", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-waltop.c", i32 682, i32 19}
!15 = !{ptr @slim_tablet_5_8_inch_rdesc_fixed, !16, !"slim_tablet_5_8_inch_rdesc_fixed", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-waltop.c", i32 46, i32 13}
!17 = !{ptr @slim_tablet_12_1_inch_rdesc_fixed, !18, !"slim_tablet_12_1_inch_rdesc_fixed", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-waltop.c", i32 97, i32 13}
!19 = !{ptr @q_pad_rdesc_fixed, !20, !"q_pad_rdesc_fixed", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-waltop.c", i32 148, i32 13}
!21 = !{ptr @pid_0038_rdesc_fixed, !22, !"pid_0038_rdesc_fixed", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-waltop.c", i32 201, i32 13}
!23 = !{ptr @media_tablet_10_6_inch_rdesc_fixed, !24, !"media_tablet_10_6_inch_rdesc_fixed", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-waltop.c", i32 252, i32 13}
!25 = !{ptr @media_tablet_14_1_inch_rdesc_fixed, !26, !"media_tablet_14_1_inch_rdesc_fixed", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-waltop.c", i32 365, i32 13}
!27 = !{ptr @sirius_battery_free_tablet_rdesc_fixed, !28, !"sirius_battery_free_tablet_rdesc_fixed", i1 false, i1 false}
!28 = !{!"../drivers/hid/hid-waltop.c", i32 476, i32 13}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
