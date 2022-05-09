; ModuleID = '/llk/IR_all_yes/drivers/accessibility/braille/braille_console.c_pt.bc'
source_filename = "../drivers/accessibility/braille/braille_console.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.keyboard_notifier_param = type { ptr, i32, i32, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vt_notifier_param = type { ptr, i32 }

@__UNIQUE_ID_author232 = internal constant [52 x i8] c"braille_console.author=samuel.thibault@ens-lyon.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [43 x i8] c"braille_console.description=braille device\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [67 x i8] c"braille_console.file=drivers/accessibility/braille/braille_console\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [28 x i8] c"braille_console.license=GPL\00", section ".modinfo", align 1
@__param_str_sound = internal constant [22 x i8] c"braille_console.sound\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sound = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sound = internal constant %struct.kernel_param { ptr @__param_str_sound, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @sound } }, section "__param", align 4
@__UNIQUE_ID_soundtype236 = internal constant [36 x i8] c"braille_console.parmtype=sound:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sound237 = internal constant [39 x i8] c"braille_console.parm=sound:emit sounds\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"57600o8\00", [24 x i8] zeroinitializer }, align 32
@braille_co = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@keyboard_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @keyboard_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vt_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @vt_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@console_show = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lastVC = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@console_buf = internal global { [40 x i16], [48 x i8] } zeroinitializer, align 32
@vc_x = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vc_y = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@lastvc_x = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lastvc_y = internal global { i32, [28 x i8] } zeroinitializer, align 32
@braille_write.lastwrite = internal global { [40 x i16], [48 x i8] } zeroinitializer, align 32
@console_cursor = internal global { i32, [28 x i8] } zeroinitializer, align 32
@console_newline = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 32, i64 102, i64 103, i64 104, i64 105, i64 106, i64 108, i64 109, i64 110]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [9 x i64] [i64 7, i64 8, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 127]
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 34, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 356, i32 21 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"braille_co\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 59, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"keyboard_notifier_block\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 260, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"vt_notifier_block\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 341, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"console_show\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"lastVC\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 57, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"console_buf\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 47, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"vc_x\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [5 x i8] c"vc_y\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"lastvc_x\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"lastvc_y\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 51, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"lastwrite\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 64, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"console_cursor\00", align 1
@___asan_gen_.43 = private constant [51 x i8] c"../drivers/accessibility/braille/braille_console.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 48, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"console_newline\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_sound237, ptr @__UNIQUE_ID_soundtype236, ptr @__param_sound, ptr @sound, ptr @.str, ptr @braille_co, ptr @keyboard_notifier_block, ptr @vt_notifier_block, ptr @console_show, ptr @lastVC, ptr @console_buf, ptr @vc_x, ptr @vc_y, ptr @lastvc_x, ptr @lastvc_y, ptr @braille_write.lastwrite, ptr @console_cursor, ptr @console_newline], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sound to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @braille_co to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyboard_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_show to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastVC to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_buf to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_y to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastvc_x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lastvc_y to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @braille_write.lastwrite to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_cursor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_newline to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @braille_register_console(ptr noundef %console, i32 noundef %index, ptr noundef %console_options, ptr nocapture noundef readnone %braille_options) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %console_options, null
  %spec.store.select = select i1 %tobool.not, ptr @.str, ptr %console_options
  %0 = load ptr, ptr @braille_co, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %setup = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 5
  %1 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %setup, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  %call = tail call i32 %2(ptr noundef %console, ptr noundef %spec.store.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then5.if.end9_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %flags = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 4
  %5 = or i16 %4, 4
  store i16 %5, ptr %flags, align 4
  %conv11 = trunc i32 %index to i16
  %index12 = getelementptr inbounds %struct.console, ptr %console, i32 0, i32 9
  %6 = ptrtoint ptr %index12 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv11, ptr %index12, align 2
  store ptr %console, ptr @braille_co, align 4
  %call13 = tail call i32 @register_keyboard_notifier(ptr noundef nonnull @keyboard_notifier_block) #5
  %call14 = tail call i32 @register_vt_notifier(ptr noundef nonnull @vt_notifier_block) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_keyboard_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vt_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @braille_unregister_console(ptr nocapture noundef readnone %console) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @braille_co, align 4
  %cmp.not = icmp eq ptr %0, %console
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @unregister_keyboard_notifier(ptr noundef nonnull @keyboard_notifier_block) #5
  %call1 = tail call i32 @unregister_vt_notifier(ptr noundef nonnull @vt_notifier_block) #5
  store ptr null, ptr @braille_co, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_keyboard_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vt_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyboard_notifier_call(ptr nocapture noundef readnone %blk, i32 noundef %code, ptr nocapture noundef readonly %_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_param, align 4
  %down = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 1
  %2 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb56
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %.b = load i1, ptr @console_show, align 4
  %value6 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 4
  %5 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value6, align 4
  br i1 %.b, label %if.else, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %6)
  %cmp = icmp eq i32 %6, 110
  br i1 %cmp, label %if.then4, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.then3
  store i1 true, ptr @console_show, align 4
  %7 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then4.beep.exit_crit_edge, label %if.then.i

if.then4.beep.exit_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %beep.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 880, i32 noundef 10) #5
  br label %beep.exit

beep.exit:                                        ; preds = %if.then.i, %if.then4.beep.exit_crit_edge
  %state.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  %10 = load i32, ptr @lastvc_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp.not.i = icmp eq i32 %9, %10
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %beep.exit.if.then.i103_crit_edge

beep.exit.if.then.i103_crit_edge:                 ; preds = %beep.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i103

lor.lhs.false.i:                                  ; preds = %beep.exit
  %y.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y.i, align 4
  %13 = load i32, ptr @lastvc_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp2.not.i = icmp eq i32 %12, %13
  br i1 %cmp2.not.i, label %lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge, label %lor.lhs.false.i.if.then.i103_crit_edge

lor.lhs.false.i.if.then.i103_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i103

lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc_maybe_cursor_moved.exit

if.then.i103:                                     ; preds = %lor.lhs.false.i.if.then.i103_crit_edge, %beep.exit.if.then.i103_crit_edge
  %rem.i.i = urem i32 %9, 40
  %sub.i.i = sub i32 %9, %rem.i.i
  store i32 %sub.i.i, ptr @vc_x, align 4
  %y.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y.i.i, align 4
  store i32 %15, ptr @vc_y, align 4
  store i32 %9, ptr @lastvc_x, align 4
  store i32 %15, ptr @lastvc_y, align 4
  br label %vc_maybe_cursor_moved.exit

vc_maybe_cursor_moved.exit:                       ; preds = %if.then.i103, %lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge
  tail call fastcc void @vc_refresh(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %16 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %6, label %if.else.cleanup_crit_edge [
    i32 110, label %sw.bb7
    i32 105, label %sw.bb8
    i32 106, label %sw.bb21
    i32 108, label %sw.bb33
    i32 103, label %sw.bb41
    i32 102, label %sw.bb47
    i32 104, label %sw.bb48
    i32 109, label %sw.bb49
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.else
  %17 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i104 = icmp eq i8 %17, 0
  br i1 %tobool.not.i104, label %sw.bb7.beep.exit106_crit_edge, label %if.then.i105

sw.bb7.beep.exit106_crit_edge:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %beep.exit106

if.then.i105:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 440, i32 noundef 10) #5
  br label %beep.exit106

beep.exit106:                                     ; preds = %if.then.i105, %sw.bb7.beep.exit106_crit_edge
  store i1 false, ptr @console_show, align 4
  store i32 -1, ptr @lastVC, align 4
  tail call fastcc void @braille_write(ptr noundef nonnull @console_buf)
  br label %if.then53

sw.bb8:                                           ; preds = %if.else
  %18 = load i32, ptr @vc_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9 = icmp sgt i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 40)
  %20 = add nsw i32 %19, -40
  store i32 %20, ptr @vc_x, align 4
  br label %if.then53

if.else14:                                        ; preds = %sw.bb8
  %21 = load i32, ptr @vc_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15 = icmp sgt i32 %21, 0
  %22 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i107 = icmp eq i8 %22, 0
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  br i1 %tobool.not.i107, label %if.then16.beep.exit109_crit_edge, label %if.then.i108

if.then16.beep.exit109_crit_edge:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %beep.exit109

if.then.i108:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 880, i32 noundef 10) #5
  br label %beep.exit109

beep.exit109:                                     ; preds = %if.then.i108, %if.then16.beep.exit109_crit_edge
  %23 = load i32, ptr @vc_y, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr @vc_y, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vc_cols, align 4
  %sub17 = add i32 %25, -40
  store i32 %sub17, ptr @vc_x, align 4
  br label %if.then53

if.else18:                                        ; preds = %if.else14
  br i1 %tobool.not.i107, label %if.else18.if.then53_crit_edge, label %if.then.i111

if.else18.if.then53_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then.i111:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 220, i32 noundef 10) #5
  br label %if.then53

sw.bb21:                                          ; preds = %if.else
  %26 = load i32, ptr @vc_x, align 4
  %add = add i32 %26, 40
  %vc_cols22 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %vc_cols22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vc_cols22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp23 = icmp ult i32 %add, %28
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %add, ptr @vc_x, align 4
  br label %if.then53

if.else26:                                        ; preds = %sw.bb21
  %29 = load i32, ptr @vc_y, align 4
  %add27 = add i32 %29, 1
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %31)
  %cmp28 = icmp ult i32 %add27, %31
  %32 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i113 = icmp eq i8 %32, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  br i1 %tobool.not.i113, label %if.then29.beep.exit115_crit_edge, label %if.then.i114

if.then29.beep.exit115_crit_edge:                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %beep.exit115

if.then.i114:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 880, i32 noundef 10) #5
  br label %beep.exit115

beep.exit115:                                     ; preds = %if.then.i114, %if.then29.beep.exit115_crit_edge
  %33 = load i32, ptr @vc_y, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr @vc_y, align 4
  store i32 0, ptr @vc_x, align 4
  br label %if.then53

if.else30:                                        ; preds = %if.else26
  br i1 %tobool.not.i113, label %if.else30.if.then53_crit_edge, label %if.then.i117

if.else30.if.then53_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then.i117:                                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 220, i32 noundef 10) #5
  br label %if.then53

sw.bb33:                                          ; preds = %if.else
  %34 = load i32, ptr @vc_y, align 4
  %add34 = add i32 %34, 1
  %vc_rows35 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %vc_rows35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vc_rows35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %36)
  %cmp36 = icmp ult i32 %add34, %36
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %add34, ptr @vc_y, align 4
  br label %if.then53

if.else39:                                        ; preds = %sw.bb33
  %37 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i119 = icmp eq i8 %37, 0
  br i1 %tobool.not.i119, label %if.else39.if.then53_crit_edge, label %if.then.i120

if.else39.if.then53_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then.i120:                                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 220, i32 noundef 10) #5
  br label %if.then53

sw.bb41:                                          ; preds = %if.else
  %38 = load i32, ptr @vc_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp42 = icmp sgt i32 %38, 0
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  %dec44 = add nsw i32 %38, -1
  store i32 %dec44, ptr @vc_y, align 4
  br label %if.then53

if.else45:                                        ; preds = %sw.bb41
  %39 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i122 = icmp eq i8 %39, 0
  br i1 %tobool.not.i122, label %if.else45.if.then53_crit_edge, label %if.then.i123

if.else45.if.then53_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then53

if.then.i123:                                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 220, i32 noundef 10) #5
  br label %if.then53

sw.bb47:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %state.i125 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %state.i125 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i125, align 4
  %rem.i = urem i32 %41, 40
  %sub.i = sub i32 %41, %rem.i
  store i32 %sub.i, ptr @vc_x, align 4
  %y.i126 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %y.i126 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y.i126, align 4
  store i32 %43, ptr @vc_y, align 4
  store i32 %41, ptr @lastvc_x, align 4
  store i32 %43, ptr @lastvc_y, align 4
  br label %if.then53

sw.bb48:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr @vc_x, align 4
  store i32 0, ptr @vc_y, align 4
  br label %if.then53

sw.bb49:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  store i32 0, ptr @vc_x, align 4
  %vc_rows50 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %vc_rows50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vc_rows50, align 4
  %sub51 = add i32 %45, -1
  store i32 %sub51, ptr @vc_y, align 4
  br label %if.then53

if.then53:                                        ; preds = %sw.bb49, %sw.bb48, %sw.bb47, %if.then.i123, %if.else45.if.then53_crit_edge, %if.then43, %if.then.i120, %if.else39.if.then53_crit_edge, %if.then37, %if.then.i117, %if.else30.if.then53_crit_edge, %beep.exit115, %if.then24, %if.then.i111, %if.else18.if.then53_crit_edge, %beep.exit109, %if.then10, %beep.exit106
  tail call fastcc void @vc_refresh(ptr noundef %1)
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  %value57 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 4
  %46 = ptrtoint ptr %value57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value57, align 4
  %shr = lshr i32 %47, 8
  %conv = add nuw nsw i32 %shr, 16
  %conv59 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv59)
  %cmp60 = icmp eq i32 %conv59, 2
  br i1 %cmp60, label %if.then62, label %sw.bb56.cleanup_crit_edge

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then62:                                        ; preds = %sw.bb56
  %trunc = trunc i32 %47 to i8
  %switch.tableidx = add i8 %trunc, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %48 = icmp ult i8 %switch.tableidx, 3
  br i1 %48, label %switch.lookup, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.then62
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = sub nsw i32 2, %switch.idx.cast
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %49 = load i32, ptr @fg_console, align 4
  %call70 = tail call i32 @vt_get_leds(i32 noundef %49, i32 noundef %switch.offset) #5
  %50 = zext i32 %call70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call70, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %if.then74
    i32 0, label %if.then78
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then74:                                        ; preds = %switch.lookup
  %51 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i127 = icmp eq i8 %51, 0
  br i1 %tobool.not.i127, label %if.then74.cleanup_crit_edge, label %if.then.i128

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i128:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 880, i32 noundef 10) #5
  br label %cleanup

if.then78:                                        ; preds = %switch.lookup
  %52 = load i8, ptr @sound, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i130 = icmp eq i8 %52, 0
  br i1 %tobool.not.i130, label %if.then78.cleanup_crit_edge, label %if.then.i131

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i131:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kd_mksound(i32 noundef 440, i32 noundef 10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i131, %if.then78.cleanup_crit_edge, %if.then.i128, %if.then74.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %sw.bb56.cleanup_crit_edge, %if.then53, %if.else.cleanup_crit_edge, %vc_maybe_cursor_moved.exit, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 32769, %vc_maybe_cursor_moved.exit ], [ 1, %if.then3.cleanup_crit_edge ], [ 32769, %if.then53 ], [ 1, %switch.lookup.cleanup_crit_edge ], [ 1, %sw.bb56.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then74.cleanup_crit_edge ], [ 1, %if.then.i128 ], [ 1, %if.then78.cleanup_crit_edge ], [ 1, %if.then.i131 ], [ 1, %if.then62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc_refresh(ptr noundef %vc) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [85 x i8], align 1
  %buf = alloca [40 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = load i32, ptr @vc_x, align 4
  %add = add i32 %1, %i.09
  %mul = shl i32 %add, 1
  %2 = load i32, ptr @vc_y, align 4
  %3 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vc_size_row, align 4
  %mul1 = mul i32 %4, %2
  %add2 = add i32 %mul1, %mul
  %call = tail call zeroext i16 @screen_glyph(ptr noundef %vc, i32 noundef %add2) #5
  %conv = zext i16 %call to i32
  %call3 = tail call zeroext i16 @inverse_translate(ptr noundef %vc, i32 noundef %conv, i32 noundef 1) #5
  %arrayidx = getelementptr [40 x i16], ptr %buf, i32 0, i32 %i.09
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call3, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 85, ptr nonnull %data.i) #5
  %6 = getelementptr inbounds i8, ptr %data.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 83)
  %8 = load ptr, ptr @braille_co, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.end.braille_write.exit_crit_edge, label %if.end.i

for.end.braille_write.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit

if.end.i:                                         ; preds = %for.end
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(80) @braille_write.lastwrite, ptr noundef nonnull dereferenceable(80) %buf, i32 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %if.end.i.braille_write.exit_crit_edge, label %if.end3.i

if.end.i.braille_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = call ptr @memcpy(ptr @braille_write.lastwrite, ptr %buf, i32 80)
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %data.i, align 1
  %arrayidx4.i = getelementptr inbounds [85 x i8], ptr %data.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 62, ptr %arrayidx4.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %if.end3.i
  %i.069.i = phi i32 [ 0, %if.end3.i ], [ %inc.i, %if.end29.i.for.body.i_crit_edge ]
  %c.068.i = phi ptr [ %6, %if.end3.i ], [ %incdec.ptr31.i, %if.end29.i.for.body.i_crit_edge ]
  %csum.067.i = phi i8 [ 62, %if.end3.i ], [ %conv22.i, %if.end29.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr i16, ptr %buf, i32 %i.069.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %13)
  %cmp10.i = icmp ugt i16 %13, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp14.i = icmp eq i16 %13, 0
  %spec.store.select.i = select i1 %cmp14.i, i16 32, i16 %13
  %out.0.i = select i1 %cmp10.i, i16 63, i16 %spec.store.select.i
  %14 = trunc i16 %out.0.i to i8
  %conv22.i = xor i8 %csum.067.i, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %out.0.i)
  %cmp24.i = icmp ult i16 %out.0.i, 6
  br i1 %cmp24.i, label %if.then26.i, label %for.body.i.if.end29.i_crit_edge

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %c.068.i, i32 1
  %15 = ptrtoint ptr %c.068.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %c.068.i, align 1
  %or.i = or i8 %14, 64
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %for.body.i.if.end29.i_crit_edge
  %c.1.i = phi ptr [ %incdec.ptr.i, %if.then26.i ], [ %c.068.i, %for.body.i.if.end29.i_crit_edge ]
  %out.1.off0.i = phi i8 [ %or.i, %if.then26.i ], [ %14, %for.body.i.if.end29.i_crit_edge ]
  %incdec.ptr31.i = getelementptr i8, ptr %c.1.i, i32 1
  %16 = ptrtoint ptr %c.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %out.1.off0.i, ptr %c.1.i, align 1
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.end.i, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv22.i)
  %cmp33.i = icmp ult i8 %conv22.i, 6
  br i1 %cmp33.i, label %if.then35.i, label %for.end.i.if.end40.i_crit_edge

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr36.i = getelementptr i8, ptr %c.1.i, i32 2
  %17 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %incdec.ptr31.i, align 1
  %18 = or i8 %conv22.i, 64
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %for.end.i.if.end40.i_crit_edge
  %csum.1.i = phi i8 [ %18, %if.then35.i ], [ %conv22.i, %for.end.i.if.end40.i_crit_edge ]
  %c.2.i = phi ptr [ %incdec.ptr36.i, %if.then35.i ], [ %incdec.ptr31.i, %for.end.i.if.end40.i_crit_edge ]
  %incdec.ptr41.i = getelementptr i8, ptr %c.2.i, i32 1
  %19 = ptrtoint ptr %c.2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %csum.1.i, ptr %c.2.i, align 1
  %incdec.ptr42.i = getelementptr i8, ptr %c.2.i, i32 2
  %20 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %incdec.ptr41.i, align 1
  %21 = load ptr, ptr @braille_co, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr42.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %data.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void %23(ptr noundef %21, ptr noundef nonnull %data.i, i32 noundef %sub.ptr.sub.i) #5
  br label %braille_write.exit

braille_write.exit:                               ; preds = %if.end40.i, %if.end.i.braille_write.exit_crit_edge, %for.end.braille_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @braille_write(ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %data = alloca [85 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 85, ptr nonnull %data) #5
  %0 = getelementptr inbounds i8, ptr %data, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 83)
  %2 = load ptr, ptr @braille_co, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(80) @braille_write.lastwrite, ptr noundef dereferenceable(80) %buf, i32 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool1.not = icmp eq i32 %bcmp, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = call ptr @memcpy(ptr @braille_write.lastwrite, ptr %buf, i32 80)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %data, align 1
  %arrayidx4 = getelementptr inbounds [85 x i8], ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 62, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [85 x i8], ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %if.end3
  %i.069 = phi i32 [ 0, %if.end3 ], [ %inc, %if.end29.for.body_crit_edge ]
  %c.068 = phi ptr [ %arrayidx6, %if.end3 ], [ %incdec.ptr31, %if.end29.for.body_crit_edge ]
  %csum.067 = phi i8 [ 62, %if.end3 ], [ %conv22, %if.end29.for.body_crit_edge ]
  %arrayidx8 = getelementptr i16, ptr %buf, i32 %i.069
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %7)
  %cmp10 = icmp ugt i16 %7, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp14 = icmp eq i16 %7, 0
  %spec.store.select = select i1 %cmp14, i16 32, i16 %7
  %out.0 = select i1 %cmp10, i16 63, i16 %spec.store.select
  %8 = trunc i16 %out.0 to i8
  %conv22 = xor i8 %csum.067, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %out.0)
  %cmp24 = icmp ult i16 %out.0, 6
  br i1 %cmp24, label %if.then26, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %c.068, i32 1
  %9 = ptrtoint ptr %c.068 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %c.068, align 1
  %or = or i8 %8, 64
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %for.body.if.end29_crit_edge
  %c.1 = phi ptr [ %incdec.ptr, %if.then26 ], [ %c.068, %for.body.if.end29_crit_edge ]
  %out.1.off0 = phi i8 [ %or, %if.then26 ], [ %8, %for.body.if.end29_crit_edge ]
  %incdec.ptr31 = getelementptr i8, ptr %c.1, i32 1
  %10 = ptrtoint ptr %c.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %out.1.off0, ptr %c.1, align 1
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %for.end, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv22)
  %cmp33 = icmp ult i8 %conv22, 6
  br i1 %cmp33, label %if.then35, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr36 = getelementptr i8, ptr %c.1, i32 2
  %11 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %incdec.ptr31, align 1
  %12 = or i8 %conv22, 64
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %for.end.if.end40_crit_edge
  %csum.1 = phi i8 [ %12, %if.then35 ], [ %conv22, %for.end.if.end40_crit_edge ]
  %c.2 = phi ptr [ %incdec.ptr36, %if.then35 ], [ %incdec.ptr31, %for.end.if.end40_crit_edge ]
  %incdec.ptr41 = getelementptr i8, ptr %c.2, i32 1
  %13 = ptrtoint ptr %c.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %csum.1, ptr %c.2, align 1
  %incdec.ptr42 = getelementptr i8, ptr %c.2, i32 2
  %14 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %incdec.ptr41, align 1
  %15 = load ptr, ptr @braille_co, align 4
  %write = getelementptr inbounds %struct.console, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr42 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void %17(ptr noundef %15, ptr noundef nonnull %data, i32 noundef %sub.ptr.sub) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_leds(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kd_mksound(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @screen_glyph(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @inverse_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt_notifier_call(ptr nocapture noundef readnone %blk, i32 noundef %code, ptr nocapture noundef readonly %_param) #0 align 64 {
entry:
  %data.i59 = alloca [85 x i8], align 1
  %data.i = alloca [85 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_param, align 4
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %code, label %entry.sw.epilog43_crit_edge [
    i32 4, label %sw.bb30
    i32 3, label %sw.bb
  ]

entry.sw.epilog43_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog43

sw.bb:                                            ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vc_num, align 4
  %conv3 = zext i16 %4 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %5 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3)
  %cmp.not = icmp eq i32 %5, %conv3
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog43_crit_edge

sw.bb.sw.epilog43_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog43

if.end:                                           ; preds = %sw.bb
  %c2 = getelementptr inbounds %struct.vt_notifier_param, ptr %_param, i32 0, i32 1
  %6 = ptrtoint ptr %c2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c2, align 4
  %conv = trunc i32 %7 to i8
  %8 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %conv, label %sw.default [
    i8 8, label %if.end.sw.bb6_crit_edge
    i8 127, label %if.end.sw.bb6_crit_edge116
    i8 10, label %if.end.sw.bb11_crit_edge
    i8 11, label %if.end.sw.bb11_crit_edge117
    i8 12, label %if.end.sw.bb11_crit_edge118
    i8 13, label %if.end.sw.bb11_crit_edge119
    i8 9, label %if.end.if.end17_crit_edge
  ]

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.sw.bb11_crit_edge119:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end.sw.bb11_crit_edge118:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end.sw.bb11_crit_edge117:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

if.end.sw.bb6_crit_edge116:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge116
  %9 = load i32, ptr @console_cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then9, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr @console_cursor, align 4
  %arrayidx = getelementptr [40 x i16], ptr @console_buf, i32 0, i32 %dec
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 32, ptr %arrayidx, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.sw.bb11_crit_edge117, %if.end.sw.bb11_crit_edge118, %if.end.sw.bb11_crit_edge119
  store i1 false, ptr @console_newline, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %conv)
  %cmp14 = icmp ult i8 %conv, 32
  br i1 %cmp14, label %sw.default.sw.epilog_crit_edge, label %sw.default.if.end17_crit_edge

sw.default.if.end17_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end17:                                         ; preds = %sw.default.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %c.0114 = phi i8 [ %conv, %sw.default.if.end17_crit_edge ], [ 32, %if.end.if.end17_crit_edge ]
  %.b57 = load i1, ptr @console_newline, align 4
  br i1 %.b57, label %if.end19, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %11 = call ptr @memset(ptr @console_buf, i32 0, i32 80)
  store i1 true, ptr @console_newline, align 4
  br label %if.else

if.end19:                                         ; preds = %if.end17
  %.pr = load i32, ptr @console_cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %.pr)
  %cmp20 = icmp eq i32 %.pr, 40
  br i1 %cmp20, label %if.then22, label %if.end19.if.else_crit_edge

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %12 = call ptr @memmove(ptr @console_buf, ptr getelementptr inbounds ([40 x i16], ptr @console_buf, i32 0, i32 1), i32 78)
  br label %if.end23

if.else:                                          ; preds = %if.end19.if.else_crit_edge, %if.end19.thread
  %13 = phi i32 [ 0, %if.end19.thread ], [ %.pr, %if.end19.if.else_crit_edge ]
  %inc = add i32 %13, 1
  store i32 %inc, ptr @console_cursor, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %conv24 = zext i8 %c.0114 to i16
  %14 = load i32, ptr @console_cursor, align 4
  %sub = add i32 %14, -1
  %arrayidx25 = getelementptr [40 x i16], ptr @console_buf, i32 0, i32 %sub
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv24, ptr %arrayidx25, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end23, %sw.default.sw.epilog_crit_edge, %sw.bb11, %if.then9, %sw.bb6.sw.epilog_crit_edge
  %.b56 = load i1, ptr @console_show, align 4
  br i1 %.b56, label %if.else28, label %if.then27

if.then27:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 85, ptr nonnull %data.i) #5
  %16 = getelementptr inbounds i8, ptr %data.i, i32 2
  %17 = call ptr @memset(ptr %16, i32 255, i32 83)
  %18 = load ptr, ptr @braille_co, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then27.braille_write.exit_crit_edge, label %if.end.i

if.then27.braille_write.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit

if.end.i:                                         ; preds = %if.then27
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(80) @braille_write.lastwrite, ptr noundef nonnull dereferenceable(80) @console_buf, i32 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i, label %if.end.i.braille_write.exit_crit_edge, label %if.end3.i

if.end.i.braille_write.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit

if.end3.i:                                        ; preds = %if.end.i
  %19 = call ptr @memcpy(ptr @braille_write.lastwrite, ptr @console_buf, i32 80)
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %data.i, align 1
  %arrayidx4.i = getelementptr inbounds [85 x i8], ptr %data.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 62, ptr %arrayidx4.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %if.end3.i
  %i.069.i = phi i32 [ 0, %if.end3.i ], [ %inc.i, %if.end29.i.for.body.i_crit_edge ]
  %c.068.i = phi ptr [ %16, %if.end3.i ], [ %incdec.ptr31.i, %if.end29.i.for.body.i_crit_edge ]
  %csum.067.i = phi i8 [ 62, %if.end3.i ], [ %conv22.i, %if.end29.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr i16, ptr @console_buf, i32 %i.069.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %23)
  %cmp10.i = icmp ugt i16 %23, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp14.i = icmp eq i16 %23, 0
  %spec.store.select.i = select i1 %cmp14.i, i16 32, i16 %23
  %out.0.i = select i1 %cmp10.i, i16 63, i16 %spec.store.select.i
  %24 = trunc i16 %out.0.i to i8
  %conv22.i = xor i8 %csum.067.i, %24
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %out.0.i)
  %cmp24.i = icmp ult i16 %out.0.i, 6
  br i1 %cmp24.i, label %if.then26.i, label %for.body.i.if.end29.i_crit_edge

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %c.068.i, i32 1
  %25 = ptrtoint ptr %c.068.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %c.068.i, align 1
  %or.i = or i8 %24, 64
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %for.body.i.if.end29.i_crit_edge
  %c.1.i = phi ptr [ %incdec.ptr.i, %if.then26.i ], [ %c.068.i, %for.body.i.if.end29.i_crit_edge ]
  %out.1.off0.i = phi i8 [ %or.i, %if.then26.i ], [ %24, %for.body.i.if.end29.i_crit_edge ]
  %incdec.ptr31.i = getelementptr i8, ptr %c.1.i, i32 1
  %26 = ptrtoint ptr %c.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %out.1.off0.i, ptr %c.1.i, align 1
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.end.i, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv22.i)
  %cmp33.i = icmp ult i8 %conv22.i, 6
  br i1 %cmp33.i, label %if.then35.i, label %for.end.i.if.end40.i_crit_edge

for.end.i.if.end40.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr36.i = getelementptr i8, ptr %c.1.i, i32 2
  %27 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %incdec.ptr31.i, align 1
  %28 = or i8 %conv22.i, 64
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %for.end.i.if.end40.i_crit_edge
  %csum.1.i = phi i8 [ %28, %if.then35.i ], [ %conv22.i, %for.end.i.if.end40.i_crit_edge ]
  %c.2.i = phi ptr [ %incdec.ptr36.i, %if.then35.i ], [ %incdec.ptr31.i, %for.end.i.if.end40.i_crit_edge ]
  %incdec.ptr41.i = getelementptr i8, ptr %c.2.i, i32 1
  %29 = ptrtoint ptr %c.2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %csum.1.i, ptr %c.2.i, align 1
  %incdec.ptr42.i = getelementptr i8, ptr %c.2.i, i32 2
  %30 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %incdec.ptr41.i, align 1
  %31 = load ptr, ptr @braille_co, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr42.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %data.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void %33(ptr noundef %31, ptr noundef nonnull %data.i, i32 noundef %sub.ptr.sub.i) #5
  br label %braille_write.exit

braille_write.exit:                               ; preds = %if.end40.i, %if.end.i.braille_write.exit_crit_edge, %if.then27.braille_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %data.i) #5
  br label %sw.epilog43

if.else28:                                        ; preds = %sw.epilog
  %state.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state.i, align 4
  %36 = load i32, ptr @lastvc_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp.not.i = icmp eq i32 %35, %36
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.else28.if.then.i_crit_edge

if.else28.if.then.i_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else28
  %y.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y.i, align 4
  %39 = load i32, ptr @lastvc_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %39)
  %cmp2.not.i = icmp eq i32 %38, %39
  br i1 %cmp2.not.i, label %lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc_maybe_cursor_moved.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else28.if.then.i_crit_edge
  %rem.i.i = urem i32 %35, 40
  %sub.i.i = sub i32 %35, %rem.i.i
  store i32 %sub.i.i, ptr @vc_x, align 4
  %y.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %y.i.i, align 4
  store i32 %41, ptr @vc_y, align 4
  store i32 %35, ptr @lastvc_x, align 4
  store i32 %41, ptr @lastvc_y, align 4
  br label %vc_maybe_cursor_moved.exit

vc_maybe_cursor_moved.exit:                       ; preds = %if.then.i, %lor.lhs.false.i.vc_maybe_cursor_moved.exit_crit_edge
  tail call fastcc void @vc_refresh(ptr noundef %1)
  br label %sw.epilog43

sw.bb30:                                          ; preds = %entry
  %.b = load i1, ptr @console_show, align 4
  br i1 %.b, label %if.else41, label %if.then32

if.then32:                                        ; preds = %sw.bb30
  %vc_num33 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %vc_num33 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vc_num33, align 4
  %conv34 = zext i16 %43 to i32
  %44 = load i32, ptr @lastVC, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv34)
  %cmp35.not = icmp eq i32 %44, %conv34
  br i1 %cmp35.not, label %if.then32.sw.epilog43_crit_edge, label %if.then37

if.then32.sw.epilog43_crit_edge:                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog43

if.then37:                                        ; preds = %if.then32
  store i32 %conv34, ptr @lastVC, align 4
  %45 = call ptr @memset(ptr @console_buf, i32 0, i32 80)
  store i32 0, ptr @console_cursor, align 4
  call void @llvm.lifetime.start.p0(i64 85, ptr nonnull %data.i59) #5
  %46 = getelementptr inbounds i8, ptr %data.i59, i32 2
  %47 = call ptr @memset(ptr %46, i32 255, i32 83)
  %48 = load ptr, ptr @braille_co, align 4
  %tobool.not.i60 = icmp eq ptr %48, null
  br i1 %tobool.not.i60, label %if.then37.braille_write.exit100_crit_edge, label %if.end.i63

if.then37.braille_write.exit100_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit100

if.end.i63:                                       ; preds = %if.then37
  %bcmp.i61 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(80) @braille_write.lastwrite, ptr noundef nonnull dereferenceable(80) @console_buf, i32 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i61)
  %tobool1.not.i62 = icmp eq i32 %bcmp.i61, 0
  br i1 %tobool1.not.i62, label %if.end.i63.braille_write.exit100_crit_edge, label %if.end3.i66

if.end.i63.braille_write.exit100_crit_edge:       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %braille_write.exit100

if.end3.i66:                                      ; preds = %if.end.i63
  %49 = call ptr @memset(ptr @braille_write.lastwrite, i32 0, i32 80)
  %50 = ptrtoint ptr %data.i59 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %data.i59, align 1
  %arrayidx4.i64 = getelementptr inbounds [85 x i8], ptr %data.i59, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx4.i64 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 62, ptr %arrayidx4.i64, align 1
  br label %for.body.i77

for.body.i77:                                     ; preds = %if.end29.i86.for.body.i77_crit_edge, %if.end3.i66
  %i.069.i67 = phi i32 [ 0, %if.end3.i66 ], [ %inc.i84, %if.end29.i86.for.body.i77_crit_edge ]
  %c.068.i68 = phi ptr [ %46, %if.end3.i66 ], [ %incdec.ptr31.i83, %if.end29.i86.for.body.i77_crit_edge ]
  %csum.067.i69 = phi i8 [ 62, %if.end3.i66 ], [ %conv22.i75, %if.end29.i86.for.body.i77_crit_edge ]
  %arrayidx8.i70 = getelementptr i16, ptr @console_buf, i32 %i.069.i67
  %52 = ptrtoint ptr %arrayidx8.i70 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx8.i70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %53)
  %cmp10.i71 = icmp ugt i16 %53, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp14.i72 = icmp eq i16 %53, 0
  %spec.store.select.i73 = select i1 %cmp14.i72, i16 32, i16 %53
  %out.0.i74 = select i1 %cmp10.i71, i16 63, i16 %spec.store.select.i73
  %54 = trunc i16 %out.0.i74 to i8
  %conv22.i75 = xor i8 %csum.067.i69, %54
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %out.0.i74)
  %cmp24.i76 = icmp ult i16 %out.0.i74, 6
  br i1 %cmp24.i76, label %if.then26.i80, label %for.body.i77.if.end29.i86_crit_edge

for.body.i77.if.end29.i86_crit_edge:              ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i86

if.then26.i80:                                    ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i78 = getelementptr i8, ptr %c.068.i68, i32 1
  %55 = ptrtoint ptr %c.068.i68 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %c.068.i68, align 1
  %or.i79 = or i8 %54, 64
  br label %if.end29.i86

if.end29.i86:                                     ; preds = %if.then26.i80, %for.body.i77.if.end29.i86_crit_edge
  %c.1.i81 = phi ptr [ %incdec.ptr.i78, %if.then26.i80 ], [ %c.068.i68, %for.body.i77.if.end29.i86_crit_edge ]
  %out.1.off0.i82 = phi i8 [ %or.i79, %if.then26.i80 ], [ %54, %for.body.i77.if.end29.i86_crit_edge ]
  %incdec.ptr31.i83 = getelementptr i8, ptr %c.1.i81, i32 1
  %56 = ptrtoint ptr %c.1.i81 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %out.1.off0.i82, ptr %c.1.i81, align 1
  %inc.i84 = add nuw nsw i32 %i.069.i67, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, 40
  br i1 %exitcond.not.i85, label %for.end.i88, label %if.end29.i86.for.body.i77_crit_edge

if.end29.i86.for.body.i77_crit_edge:              ; preds = %if.end29.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i77

for.end.i88:                                      ; preds = %if.end29.i86
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv22.i75)
  %cmp33.i87 = icmp ult i8 %conv22.i75, 6
  br i1 %cmp33.i87, label %if.then35.i90, label %for.end.i88.if.end40.i99_crit_edge

for.end.i88.if.end40.i99_crit_edge:               ; preds = %for.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i99

if.then35.i90:                                    ; preds = %for.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr36.i89 = getelementptr i8, ptr %c.1.i81, i32 2
  %57 = ptrtoint ptr %incdec.ptr31.i83 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %incdec.ptr31.i83, align 1
  %58 = or i8 %conv22.i75, 64
  br label %if.end40.i99

if.end40.i99:                                     ; preds = %if.then35.i90, %for.end.i88.if.end40.i99_crit_edge
  %csum.1.i91 = phi i8 [ %58, %if.then35.i90 ], [ %conv22.i75, %for.end.i88.if.end40.i99_crit_edge ]
  %c.2.i92 = phi ptr [ %incdec.ptr36.i89, %if.then35.i90 ], [ %incdec.ptr31.i83, %for.end.i88.if.end40.i99_crit_edge ]
  %incdec.ptr41.i93 = getelementptr i8, ptr %c.2.i92, i32 1
  %59 = ptrtoint ptr %c.2.i92 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %csum.1.i91, ptr %c.2.i92, align 1
  %incdec.ptr42.i94 = getelementptr i8, ptr %c.2.i92, i32 2
  %60 = ptrtoint ptr %incdec.ptr41.i93 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %incdec.ptr41.i93, align 1
  %61 = load ptr, ptr @braille_co, align 4
  %write.i95 = getelementptr inbounds %struct.console, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write.i95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i95, align 4
  %sub.ptr.lhs.cast.i96 = ptrtoint ptr %incdec.ptr42.i94 to i32
  %sub.ptr.rhs.cast.i97 = ptrtoint ptr %data.i59 to i32
  %sub.ptr.sub.i98 = sub i32 %sub.ptr.lhs.cast.i96, %sub.ptr.rhs.cast.i97
  call void %63(ptr noundef %61, ptr noundef nonnull %data.i59, i32 noundef %sub.ptr.sub.i98) #5
  br label %braille_write.exit100

braille_write.exit100:                            ; preds = %if.end40.i99, %if.end.i63.braille_write.exit100_crit_edge, %if.then37.braille_write.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 85, ptr nonnull %data.i59) #5
  br label %sw.epilog43

if.else41:                                        ; preds = %sw.bb30
  %state.i101 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %state.i101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i101, align 4
  %66 = load i32, ptr @lastvc_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %66)
  %cmp.not.i102 = icmp eq i32 %65, %66
  br i1 %cmp.not.i102, label %lor.lhs.false.i105, label %if.else41.if.then.i109_crit_edge

if.else41.if.then.i109_crit_edge:                 ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i109

lor.lhs.false.i105:                               ; preds = %if.else41
  %y.i103 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %y.i103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %y.i103, align 4
  %69 = load i32, ptr @lastvc_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %69)
  %cmp2.not.i104 = icmp eq i32 %68, %69
  br i1 %cmp2.not.i104, label %lor.lhs.false.i105.vc_maybe_cursor_moved.exit111_crit_edge, label %lor.lhs.false.i105.if.then.i109_crit_edge

lor.lhs.false.i105.if.then.i109_crit_edge:        ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i109

lor.lhs.false.i105.vc_maybe_cursor_moved.exit111_crit_edge: ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc_maybe_cursor_moved.exit111

if.then.i109:                                     ; preds = %lor.lhs.false.i105.if.then.i109_crit_edge, %if.else41.if.then.i109_crit_edge
  %rem.i.i106 = urem i32 %65, 40
  %sub.i.i107 = sub i32 %65, %rem.i.i106
  store i32 %sub.i.i107, ptr @vc_x, align 4
  %y.i.i108 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %y.i.i108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %y.i.i108, align 4
  store i32 %71, ptr @vc_y, align 4
  store i32 %65, ptr @lastvc_x, align 4
  store i32 %71, ptr @lastvc_y, align 4
  br label %vc_maybe_cursor_moved.exit111

vc_maybe_cursor_moved.exit111:                    ; preds = %if.then.i109, %lor.lhs.false.i105.vc_maybe_cursor_moved.exit111_crit_edge
  tail call fastcc void @vc_refresh(ptr noundef %1)
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %vc_maybe_cursor_moved.exit111, %braille_write.exit100, %if.then32.sw.epilog43_crit_edge, %vc_maybe_cursor_moved.exit, %braille_write.exit, %sw.bb.sw.epilog43_crit_edge, %entry.sw.epilog43_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/braille/braille_console.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/braille/braille_console.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/braille/braille_console.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_sound, !8, !"__param_sound", i1 false, i1 false}
!8 = !{!"../drivers/accessibility/braille/braille_console.c", i32 35, i32 1}
!9 = !{ptr @__UNIQUE_ID_soundtype236, !8, !"__UNIQUE_ID_soundtype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_sound237, !11, !"__UNIQUE_ID_sound237", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/braille/braille_console.c", i32 36, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/braille/braille_console.c", i32 356, i32 21}
!14 = !{ptr @sound, !15, !"sound", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/braille/braille_console.c", i32 34, i32 13}
!16 = !{ptr @braille_co, !17, !"braille_co", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/braille/braille_console.c", i32 59, i32 24}
!18 = !{ptr @__param_str_sound, !8, !"__param_str_sound", i1 false, i1 false}
!19 = !{ptr @keyboard_notifier_block, !20, !"keyboard_notifier_block", i1 false, i1 false}
!20 = !{!"../drivers/accessibility/braille/braille_console.c", i32 260, i32 30}
!21 = distinct !{null, !22, !"console_show", i1 false, i1 false}
!22 = !{!"../drivers/accessibility/braille/braille_console.c", i32 54, i32 12}
!23 = !{ptr @lastvc_x, !24, !"lastvc_x", i1 false, i1 false}
!24 = !{!"../drivers/accessibility/braille/braille_console.c", i32 51, i32 24}
!25 = !{ptr @lastvc_y, !26, !"lastvc_y", i1 false, i1 false}
!26 = !{!"../drivers/accessibility/braille/braille_console.c", i32 51, i32 34}
!27 = !{ptr @lastVC, !28, !"lastVC", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/braille/braille_console.c", i32 57, i32 12}
!29 = !{ptr @braille_write.lastwrite, !30, !"lastwrite", i1 false, i1 false}
!30 = !{!"../drivers/accessibility/braille/braille_console.c", i32 64, i32 13}
!31 = !{ptr @console_buf, !32, !"console_buf", i1 false, i1 false}
!32 = !{!"../drivers/accessibility/braille/braille_console.c", i32 47, i32 12}
!33 = !{ptr @vc_x, !34, !"vc_x", i1 false, i1 false}
!34 = !{!"../drivers/accessibility/braille/braille_console.c", i32 51, i32 12}
!35 = !{ptr @vc_y, !36, !"vc_y", i1 false, i1 false}
!36 = !{!"../drivers/accessibility/braille/braille_console.c", i32 51, i32 18}
!37 = !{ptr @vt_notifier_block, !38, !"vt_notifier_block", i1 false, i1 false}
!38 = !{!"../drivers/accessibility/braille/braille_console.c", i32 341, i32 30}
!39 = !{ptr @console_cursor, !40, !"console_cursor", i1 false, i1 false}
!40 = !{!"../drivers/accessibility/braille/braille_console.c", i32 48, i32 12}
!41 = distinct !{null, !42, !"console_newline", i1 false, i1 false}
!42 = !{!"../drivers/accessibility/braille/braille_console.c", i32 56, i32 12}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
