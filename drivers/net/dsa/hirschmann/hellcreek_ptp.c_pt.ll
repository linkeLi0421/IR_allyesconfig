; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/hirschmann/hellcreek_ptp.c_pt.bc'
source_filename = "../drivers/net/dsa/hirschmann/hellcreek_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hellcreek = type { ptr, ptr, ptr, ptr, %struct.ptp_clock_info, ptr, %struct.delayed_work, %struct.led_classdev, %struct.led_classdev, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i16, ptr, i64, i64, i16, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.timespec64 = type { i64, i32 }

@hellcreek_ptp_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&hellcreek->overflow_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@hellcreek_ptp_setup.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&hellcreek->overflow_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leds\00", [27 x i8] zeroinitializer }, align 32
@hellcreek_led_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No LEDs specified in device tree!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hellcreek_led_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/dsa/hirschmann/hellcreek_ptp.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hellcreek_led_setup._entry_ptr = internal global ptr @hellcreek_led_setup._entry, section ".printk_index", align 4
@hellcreek_led_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 313, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"First LED not specified!\0A\00", [38 x i8] zeroinitializer }, align 32
@hellcreek_led_setup._entry_ptr.11 = internal global ptr @hellcreek_led_setup._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_good\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@hellcreek_led_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 338, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Second LED not specified!\0A\00", [37 x i8] zeroinitializer }, align 32
@hellcreek_led_setup._entry_ptr.20 = internal global ptr @hellcreek_led_setup._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"is_gm\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 386, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 303, i32 55 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 305, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 313, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 317, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 318, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 320, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 322, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 324, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 326, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 338, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [46 x i8] c"../drivers/net/dsa/hirschmann/hellcreek_ptp.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 344, i32 36 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @hellcreek_led_setup._entry, ptr @hellcreek_led_setup._entry.18, ptr @hellcreek_led_setup._entry.9, ptr @hellcreek_led_setup._entry_ptr, ptr @hellcreek_led_setup._entry_ptr.11, ptr @hellcreek_led_setup._entry_ptr.20, ptr @hellcreek_ptp_setup.__key, ptr @.str, ptr @hellcreek_ptp_setup.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_ptp_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_ptp_setup.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_led_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_led_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hellcreek_led_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hellcreek_ptp_read(ptr nocapture noundef readonly %hellcreek, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_base = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 15
  %0 = ptrtoint ptr %ptp_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !46
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  ret i16 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hellcreek_ptp_write(ptr nocapture noundef readonly %hellcreek, i16 noundef zeroext %data, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %0 = tail call i16 @llvm.bswap.i16(i16 %data)
  %ptp_base = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 15
  %1 = ptrtoint ptr %ptp_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @hellcreek_ptp_gettime_seconds(ptr nocapture noundef %hellcreek, i64 noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @__hellcreek_ptp_gettime(ptr noundef %hellcreek)
  %last_ts = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 19
  %0 = ptrtoint ptr %last_ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %ns)
  %cmp = icmp ugt i64 %1, %ns
  %seconds = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 18
  %2 = ptrtoint ptr %seconds to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seconds, align 8
  %mul = mul i64 %3, 1000000000
  %mul2 = add i64 %mul, -1000000000
  %s.0 = select i1 %cmp, i64 %mul, i64 %mul2
  ret i64 %s.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @__hellcreek_ptp_gettime(ptr nocapture noundef %hellcreek) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %ptp_base.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 15
  %0 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #9, !srcloc !49
  %2 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %5 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %6, i32 44
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i14.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %8 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %9, i32 44
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i16.i) #9, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %11 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %12, i32 44
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i18.i) #9, !srcloc !46
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %15 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %16, i32 44
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i20.i) #9, !srcloc !46
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %conv.i = zext i16 %18 to i64
  %conv5.i = zext i16 %14 to i64
  %shl.i = shl nuw nsw i64 %conv5.i, 16
  %or.i = or i64 %shl.i, %conv.i
  %last_ts = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 19
  %19 = ptrtoint ptr %last_ts to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %last_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %20)
  %cmp = icmp ult i64 %or.i, %20
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seconds = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 18
  %21 = ptrtoint ptr %seconds to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %seconds, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %seconds, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or.i, ptr %last_ts, align 8
  %seconds2 = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 18
  %24 = ptrtoint ptr %seconds2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seconds2, align 8
  %mul = mul i64 %25, 1000000000
  %add = add i64 %mul, %or.i
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hellcreek_ptp_setup(ptr noundef %hellcreek) local_unnamed_addr #0 align 64 {
entry:
  %label.i = alloca ptr, align 4
  %state.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %overflow_work = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6
  tail call void @__init_work(ptr noundef %overflow_work, i32 noundef 0) #9
  %0 = ptrtoint ptr %overflow_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %overflow_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @hellcreek_ptp_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8 = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hellcreek_ptp_overflow_check, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @hellcreek_ptp_setup.__key.1) #9
  %ptp_clock_info = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4
  %4 = ptrtoint ptr %ptp_clock_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_clock_info, align 8
  %name = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 1
  %dev = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %entry.dev_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef %retval.0.i)
  %max_adj = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 62500000, ptr %max_adj, align 4
  %n_alarm = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 3
  %adjfine = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 9
  %12 = call ptr @memset(ptr %n_alarm, i32 0, i32 20)
  %13 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hellcreek_ptp_adjfine, ptr %adjfine, align 8
  %adjtime = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 12
  %14 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hellcreek_ptp_adjtime, ptr %adjtime, align 4
  %gettime64 = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 13
  %15 = ptrtoint ptr %gettime64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hellcreek_ptp_gettime, ptr %gettime64, align 8
  %settime64 = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 16
  %16 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hellcreek_ptp_settime, ptr %settime64, align 4
  %enable = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 17
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hellcreek_ptp_enable, ptr %enable, align 8
  %do_aux_work = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 4, i32 19
  %18 = ptrtoint ptr %do_aux_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hellcreek_hwtstamp_work, ptr %do_aux_work, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call33 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %20) #9
  %ptp_clock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 3
  %21 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call33, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %ptp_base.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 15
  %23 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 24
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !46
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !47
  %27 = and i16 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  br i1 %tobool.not, label %if.then39, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i16 %26, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %28 = tail call i16 @llvm.bswap.i16(i16 %or) #9
  %29 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i95, i16 %28) #9, !srcloc !49
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end.if.end42_crit_edge
  %or44 = or i16 %26, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %31 = tail call i16 @llvm.bswap.i16(i16 %or44) #9
  %32 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i97, i16 %31) #9, !srcloc !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label.i) #9
  %34 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %label.i, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state.i) #9
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %state.i, align 4, !annotation !50
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_find_node_by_name(ptr noundef %39, ptr noundef nonnull @.str.3) #9
  %tobool.not.i98 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i98, label %hellcreek_led_setup.exit.thread, label %if.end.i99

hellcreek_led_setup.exit.thread:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #9
  br label %if.then48

if.end.i99:                                       ; preds = %if.end42
  %status_out.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 20
  %42 = ptrtoint ptr %status_out.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %status_out.i, align 8
  %call2.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call.i, ptr noundef null) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.10) #12
  br label %hellcreek_led_setup.exit.thread106

if.end9.i:                                        ; preds = %if.end.i99
  %call10.i = call i32 @of_property_read_string(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %label.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %cond.false.i, label %if.end9.i.cond.end.i_crit_edge

if.end9.i.cond.end.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %label.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end9.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %46, %cond.false.i ], [ @.str.13, %if.end9.i.cond.end.i_crit_edge ]
  %led_sync_good.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8
  %47 = ptrtoint ptr %led_sync_good.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond.i, ptr %led_sync_good.i, align 4
  %call12.i = call i32 @of_property_read_string(ptr noundef nonnull %call2.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %cond.end.i.if.end34.i_crit_edge

cond.end.i.if.end34.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then14.i:                                      ; preds = %cond.end.i
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state.i, align 4
  %call15.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(3) @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end34.sink.split.i_crit_edge, label %if.else.i

if.then14.i.if.end34.sink.split.i_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split.i

if.else.i:                                        ; preds = %if.then14.i
  %call19.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(4) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.else.i.if.end34.sink.split.i_crit_edge, label %if.else24.i

if.else.i.if.end34.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split.i

if.else24.i:                                      ; preds = %if.else.i
  %call25.i = call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(5) @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else24.i.if.end34.i_crit_edge

if.else24.i.if.end34.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %status_out.i, align 8
  %52 = and i16 %51, 1
  %53 = zext i16 %52 to i32
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %if.then27.i, %if.else.i.if.end34.sink.split.i_crit_edge, %if.then14.i.if.end34.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %53, %if.then27.i ], [ 1, %if.then14.i.if.end34.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end34.sink.split.i_crit_edge ]
  %brightness.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i, ptr %brightness.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.sink.split.i, %if.else24.i.if.end34.i_crit_edge, %cond.end.i.if.end34.i_crit_edge
  %max_brightness.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8, i32 2
  %55 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %max_brightness.i, align 4
  %brightness_set.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8, i32 5
  %56 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @hellcreek_led_sync_good_set, ptr %brightness_set.i, align 4
  %brightness_get.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %brightness_get.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @hellcreek_led_sync_good_get, ptr %brightness_get.i, align 4
  %call38.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i, ptr noundef nonnull %call2.i) #9
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %do.end43.i, label %if.end45.i

do.end43.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.19) #12
  br label %hellcreek_led_setup.exit.thread106

if.end45.i:                                       ; preds = %if.end34.i
  %call46.i = call i32 @of_property_read_string(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %label.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %cond.false49.i, label %if.end45.i.cond.end50.i_crit_edge

if.end45.i.cond.end50.i_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end50.i

cond.false49.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %label.i, align 4
  br label %cond.end50.i

cond.end50.i:                                     ; preds = %cond.false49.i, %if.end45.i.cond.end50.i_crit_edge
  %cond51.i = phi ptr [ %61, %cond.false49.i ], [ @.str.21, %if.end45.i.cond.end50.i_crit_edge ]
  %led_is_gm.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7
  %62 = ptrtoint ptr %led_is_gm.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cond51.i, ptr %led_is_gm.i, align 4
  %call53.i = call i32 @of_property_read_string(ptr noundef nonnull %call38.i, ptr noundef nonnull @.str.14, ptr noundef nonnull %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %cond.end50.i.if.end77.i_crit_edge

cond.end50.i.if.end77.i_crit_edge:                ; preds = %cond.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then55.i:                                      ; preds = %cond.end50.i
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state.i, align 4
  %call56.i = call i32 @strcmp(ptr noundef %64, ptr noundef nonnull dereferenceable(3) @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then55.i.if.end77.sink.split.i_crit_edge, label %if.else61.i

if.then55.i.if.end77.sink.split.i_crit_edge:      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.sink.split.i

if.else61.i:                                      ; preds = %if.then55.i
  %call62.i = call i32 @strcmp(ptr noundef %64, ptr noundef nonnull dereferenceable(4) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.else61.i.if.end77.sink.split.i_crit_edge, label %if.else67.i

if.else61.i.if.end77.sink.split.i_crit_edge:      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.sink.split.i

if.else67.i:                                      ; preds = %if.else61.i
  %call68.i = call i32 @strcmp(ptr noundef %64, ptr noundef nonnull dereferenceable(5) @.str.17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.else67.i.if.end77.i_crit_edge

if.else67.i.if.end77.i_crit_edge:                 ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77.i

if.then70.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %status_out.i, align 8
  %67 = lshr i16 %66, 1
  %.lobit.i = and i16 %67, 1
  %68 = zext i16 %.lobit.i to i32
  br label %if.end77.sink.split.i

if.end77.sink.split.i:                            ; preds = %if.then70.i, %if.else61.i.if.end77.sink.split.i_crit_edge, %if.then55.i.if.end77.sink.split.i_crit_edge
  %.sink158.i = phi i32 [ %68, %if.then70.i ], [ 1, %if.then55.i.if.end77.sink.split.i_crit_edge ], [ 0, %if.else61.i.if.end77.sink.split.i_crit_edge ]
  %brightness60.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %brightness60.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink158.i, ptr %brightness60.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end77.sink.split.i, %if.else67.i.if.end77.i_crit_edge, %cond.end50.i.if.end77.i_crit_edge
  %max_brightness79.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %max_brightness79.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %max_brightness79.i, align 4
  %brightness_set81.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7, i32 5
  %71 = ptrtoint ptr %brightness_set81.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @hellcreek_led_is_gm_set, ptr %brightness_set81.i, align 4
  %brightness_get83.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7, i32 7
  %72 = ptrtoint ptr %brightness_get83.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @hellcreek_led_is_gm_get, ptr %brightness_get83.i, align 4
  %brightness85.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %brightness85.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %brightness85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i100 = icmp eq i32 %74, 1
  br i1 %cmp.i100, label %if.then86.i, label %if.end77.i.if.end87.i_crit_edge

if.end77.i.if.end87.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.then86.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_lock.i.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %ptp_lock.i.i, i32 noundef 0) #9
  %75 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %status_out.i, align 8
  %conv1.i.i = or i16 %76, 1
  store i16 %conv1.i.i, ptr %status_out.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %77 = call i16 @llvm.bswap.i16(i16 %conv1.i.i) #9
  %78 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 192
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %77) #9, !srcloc !49
  call void @mutex_unlock(ptr noundef %ptp_lock.i.i) #9
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then86.i, %if.end77.i.if.end87.i_crit_edge
  %brightness89.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7, i32 1
  %80 = ptrtoint ptr %brightness89.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %brightness89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp90.i = icmp eq i32 %81, 1
  br i1 %cmp90.i, label %if.then91.i, label %if.end87.i.if.end55_crit_edge

if.end87.i.if.end55_crit_edge:                    ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_lock.i151.i = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %ptp_lock.i151.i, i32 noundef 0) #9
  %82 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %status_out.i, align 8
  %conv1.i154.i = or i16 %83, 2
  store i16 %conv1.i154.i, ptr %status_out.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %84 = call i16 @llvm.bswap.i16(i16 %conv1.i154.i) #9
  %85 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i.i156.i = getelementptr i8, ptr %86, i32 192
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i156.i, i16 %84) #9, !srcloc !49
  call void @mutex_unlock(ptr noundef %ptp_lock.i151.i) #9
  br label %if.end55

hellcreek_led_setup.exit.thread106:               ; preds = %do.end43.i, %do.end7.i
  call void @of_node_put(ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #9
  br label %if.then48

if.then48:                                        ; preds = %hellcreek_led_setup.exit.thread106, %hellcreek_led_setup.exit.thread
  %87 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ptp_clock, align 4
  %tobool50.not = icmp eq ptr %88, null
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %if.then51

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 @ptp_clock_unregister(ptr noundef nonnull %88) #9
  br label %cleanup

if.end55:                                         ; preds = %if.then91.i, %if.end87.i.if.end55_crit_edge
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  %call.i.i = call i32 @led_classdev_register_ext(ptr noundef %90, ptr noundef %led_sync_good.i, ptr noundef null) #9
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %call.i157.i = call i32 @led_classdev_register_ext(ptr noundef %92, ptr noundef %led_is_gm.i, ptr noundef null) #9
  call void @of_node_put(ptr noundef nonnull %call.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %93 = load ptr, ptr @system_wq, align 4
  %call.i.i102 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %93, ptr noundef %overflow_work, i32 noundef 25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then51, %if.then48.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %22, %if.then ], [ 0, %if.end55 ], [ -22, %if.then51 ], [ -22, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_ptp_overflow_check(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %ptp_lock = getelementptr i8, ptr %work, i32 1084
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %call1 = tail call fastcc i64 @__hellcreek_ptp_gettime(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 25) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 11
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shl) #14, !srcloc !51
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shl, i64 %1, i32 0) #14, !srcloc !52
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 12
  %conv1 = trunc i64 %div1581.i.i to i16
  %shr21 = lshr i64 %asmresult10.i.i.i, 28
  %conv2 = trunc i64 %shr21 to i16
  %ptp_lock = getelementptr i8, ptr %ptp, i32 1196
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %sum.shift = lshr i32 %scaled_ppm, 24
  %3 = trunc i32 %sum.shift to i16
  %4 = and i16 %3, 128
  %ptp_base.i = getelementptr i8, ptr %ptp, i32 1300
  %5 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i26, i16 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv2) #9
  %12 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28, i16 %11) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv1) #9
  %15 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 %14) #9, !srcloc !49
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %now = alloca %struct.timespec64, align 8
  %then = alloca %struct.timespec64, align 8
  %tmp3 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 7516192761, i64 %0)
  %cmp2 = icmp ugt i64 %0, 7516192761
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %ptp, i32 -16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %then) #9
  %1 = call ptr @memset(ptr %then, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %then, i64 noundef %delta) #9
  %ptp_lock.i = getelementptr i8, ptr %ptp, i32 1196
  call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #9
  %call.i = call fastcc i64 @__hellcreek_ptp_gettime(ptr noundef %add.ptr) #9
  call void @mutex_unlock(ptr noundef %ptp_lock.i) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %now, i64 noundef %call.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp3) #9
  %2 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load22 = load i64, ptr %now, align 8
  %.fca.1.gep24 = getelementptr inbounds [2 x i64], ptr %now, i32 0, i32 1
  %3 = ptrtoint ptr %.fca.1.gep24 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.1.load25 = load i64, ptr %.fca.1.gep24, align 8
  %4 = ptrtoint ptr %then to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load = load i64, ptr %then, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %then, i32 0, i32 1
  %5 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %5)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load25, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %6 = call ptr @memset(ptr %tmp3, i32 255, i32 16)
  %add.i = add i64 %.fca.0.load, %.fca.0.load22
  %add3.i = add i32 %rhs.sroa.2.8.extract.trunc.i, %lhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp3, i64 noundef %add.i, i64 noundef %conv.i) #9
  %7 = call ptr @memcpy(ptr %now, ptr %tmp3, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp3) #9
  %call4 = call i32 @hellcreek_ptp_settime(ptr noundef %ptp, ptr noundef nonnull %now)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %then) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %8 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %remainder.i, align 4, !annotation !50
  %call.i45 = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 7, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %conv = trunc i64 %call.i45 to i16
  %shr43 = lshr i64 %call.i45, 16
  %conv10 = trunc i64 %shr43 to i16
  %ptp_lock = getelementptr i8, ptr %ptp, i32 1196
  call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %sum.shift = lshr i64 %delta, 56
  %9 = trunc i64 %sum.shift to i16
  %10 = and i16 %9, 128
  %ptp_base.i = getelementptr i8, ptr %ptp, i32 1300
  %11 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %12, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i46, i16 %10) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %14, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i48, i16 1792) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %16, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i50, i16 0) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %17 = call i16 @llvm.bswap.i16(i16 %conv) #9
  %18 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %19, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i52, i16 %17) #9, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @arm_heavy_mb() #9
  %20 = call i16 @llvm.bswap.i16(i16 %conv10) #9
  %21 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %22, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i54, i16 %20) #9, !srcloc !49
  call void @mutex_unlock(ptr noundef %ptp_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_ptp_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -16
  %ptp_lock = getelementptr i8, ptr %ptp, i32 1196
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %call = tail call fastcc i64 @__hellcreek_ptp_gettime(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp2) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp2, i64 noundef %call) #9
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp2, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hellcreek_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  %conv = trunc i64 %1 to i16
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  %shr = lshr i32 %3, 16
  %conv2 = trunc i32 %shr to i16
  %conv5 = trunc i32 %3 to i16
  %ptp_lock = getelementptr i8, ptr %ptp, i32 1196
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts, align 8
  %seconds = getelementptr i8, ptr %ptp, i32 1312
  %6 = ptrtoint ptr %seconds to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %seconds, align 8
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec, align 8
  %conv8 = sext i32 %8 to i64
  %last_ts = getelementptr i8, ptr %ptp, i32 1320
  %9 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv8, ptr %last_ts, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %ptp_base.i = getelementptr i8, ptr %ptp, i32 1300
  %10 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 0) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %15 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 %14) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv2) #9
  %18 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i27, i16 %17) #9, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv5) #9
  %21 = ptrtoint ptr %ptp_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp_base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29, i16 %20) #9, !srcloc !49
  tail call void @mutex_unlock(ptr noundef %ptp_lock) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_ptp_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %rq, i32 noundef %on) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hellcreek_hwtstamp_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hellcreek_ptp_free(ptr noundef %hellcreek) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %led_is_gm = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 7
  tail call void @led_classdev_unregister(ptr noundef %led_is_gm) #9
  %led_sync_good = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 8
  tail call void @led_classdev_unregister(ptr noundef %led_sync_good) #9
  %overflow_work = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %overflow_work) #9
  %ptp_clock = getelementptr inbounds %struct.hellcreek, ptr %hellcreek, i32 0, i32 3
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_clock, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_led_sync_good_set(ptr noundef %ldev, i32 noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock.i = getelementptr i8, ptr %ldev, i32 584
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool.not.i = icmp ne i32 %b, 0
  %status_out2.i = getelementptr i8, ptr %ldev, i32 716
  %0 = ptrtoint ptr %status_out2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status_out2.i, align 8
  %conv4.i = and i16 %1, -2
  %masksel = zext i1 %tobool.not.i to i16
  %conv4.sink.i = or i16 %conv4.i, %masksel
  store i16 %conv4.sink.i, ptr %status_out2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv4.sink.i) #9
  %ptp_base.i.i = getelementptr i8, ptr %ldev, i32 688
  %3 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %2) #9, !srcloc !49
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_led_sync_good_get(ptr nocapture noundef readonly %ldev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status_out.i = getelementptr i8, ptr %ldev, i32 716
  %0 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status_out.i, align 8
  %2 = and i16 %1, 1
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hellcreek_led_is_gm_set(ptr noundef %ldev, i32 noundef %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock.i = getelementptr i8, ptr %ldev, i32 984
  tail call void @mutex_lock_nested(ptr noundef %ptp_lock.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b)
  %tobool.not.i = icmp eq i32 %b, 0
  %status_out2.i = getelementptr i8, ptr %ldev, i32 1116
  %0 = ptrtoint ptr %status_out2.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status_out2.i, align 8
  %conv4.i = and i16 %1, -3
  %masksel = select i1 %tobool.not.i, i16 0, i16 2
  %conv4.sink.i = or i16 %conv4.i, %masksel
  store i16 %conv4.sink.i, ptr %status_out2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv4.sink.i) #9
  %ptp_base.i.i = getelementptr i8, ptr %ldev, i32 1088
  %3 = ptrtoint ptr %ptp_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %2) #9, !srcloc !49
  tail call void @mutex_unlock(ptr noundef %ptp_lock.i) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hellcreek_led_is_gm_get(ptr nocapture noundef readonly %ldev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status_out.i = getelementptr i8, ptr %ldev, i32 1116
  %0 = ptrtoint ptr %status_out.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status_out.i, align 8
  %2 = lshr i16 %1, 1
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @hellcreek_ptp_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 386, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hellcreek_ptp_setup.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 303, i32 55}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 305, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hellcreek_led_setup._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @hellcreek_led_setup._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 313, i32 3}
!17 = !{ptr @hellcreek_led_setup._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hellcreek_led_setup._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 317, i32 37}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 318, i32 40}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 320, i32 37}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 322, i32 22}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 324, i32 27}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 326, i32 27}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 338, i32 3}
!33 = !{ptr @hellcreek_led_setup._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hellcreek_led_setup._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/hirschmann/hellcreek_ptp.c", i32 344, i32 36}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 6479781}
!47 = !{i64 2158263842}
!48 = !{i64 2158264068}
!49 = !{i64 6479581}
!50 = !{!"auto-init"}
!51 = !{i64 840409, i64 840436}
!52 = !{i64 841104, i64 841131, i64 841164, i64 841185, i64 841212, i64 841238}
