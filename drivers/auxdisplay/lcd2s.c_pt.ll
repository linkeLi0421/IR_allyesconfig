; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/lcd2s.c_pt.bc'
source_filename = "../drivers/auxdisplay/lcd2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.charlcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.charlcd = type { ptr, ptr, i32, i32, %struct.anon.86, ptr }
%struct.anon.86 = type { i32, i32 }
%struct.lcd2s_data = type { ptr, ptr }

@__initcall__kmod_lcd2s__288_388_lcd2s_modinit6 = internal global ptr @lcd2s_modinit, section ".initcall6.init", align 4
@lcd2s_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lcd2s_i2c_probe, ptr @lcd2s_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lcd2s_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lcd2s_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lcd2s_exit = internal global ptr @lcd2s_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [49 x i8] c"lcd2s.description=LCD2S character display driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [27 x i8] c"lcd2s.author=Lars Poeschel\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [36 x i8] c"lcd2s.file=drivers/auxdisplay/lcd2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [18 x i8] c"lcd2s.license=GPL\00", section ".modinfo", align 1
@lcd2s_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to register lcd2s driver\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd2s_modinit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/auxdisplay/lcd2s.c\00", [37 x i8] zeroinitializer }, align 32
@lcd2s_modinit._entry_ptr = internal global ptr @lcd2s_modinit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lcd2s\00", [26 x i8] zeroinitializer }, align 32
@lcd2s_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"modtronix,lcd2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lcd2s_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lcd2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"display-height-chars\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"display-width-chars\00", [44 x i8] zeroinitializer }, align 32
@lcd2s_ops = internal constant { %struct.charlcd_ops, [40 x i8] } { %struct.charlcd_ops { ptr @lcd2s_backlight, ptr @lcd2s_print, ptr @lcd2s_gotoxy, ptr @lcd2s_home, ptr @lcd2s_clear_display, ptr @lcd2s_init_display, ptr @lcd2s_shift_cursor, ptr @lcd2s_shift_display, ptr @lcd2s_display, ptr @lcd2s_cursor, ptr @lcd2s_blink, ptr @lcd2s_fontsize, ptr @lcd2s_lines, ptr @lcd2s_redefine_char }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__const.lcd2s_redefine_char.buf = private unnamed_addr constant <{ i8, [9 x i8] }> <{ i8 -110, [9 x i8] zeroinitializer }>, align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"lcd2s_i2c_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 366, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 384, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 368, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"lcd2s_of_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 359, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"lcd2s_i2c_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 352, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 319, i32 44 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 324, i32 44 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"lcd2s_ops\00", align 1
@___asan_gen_.37 = private constant [30 x i8] c"../drivers/auxdisplay/lcd2s.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 272, i32 33 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lcd2s_exit, ptr @__initcall__kmod_lcd2s__288_388_lcd2s_modinit6, ptr @lcd2s_exit, ptr @lcd2s_modinit._entry, ptr @lcd2s_modinit._entry_ptr, ptr @lcd2s_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lcd2s_of_table, ptr @lcd2s_i2c_id, ptr @.str.4, ptr @.str.5, ptr @lcd2s_ops], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd2s_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd2s_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd2s_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd2s_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd2s_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lcd2s_i2c_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lcd2s_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lcd2s_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 34603008
  call void @__sanitizer_cov_trace_const_cmp4(i32 34603008, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 34603008
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i53 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.i.i = icmp slt i32 %call.i.i53, 0
  br i1 %cmp.i.i, label %if.end4.cleanup_crit_edge, label %if.end4.while.cond.i.i_crit_edge

if.end4.while.cond.i.i_crit_edge:                 ; preds = %if.end4
  br label %while.cond.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end4.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i53, %if.end4.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %lcd2s_i2c_smbus_write_byte.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lcd2s_i2c_smbus_write_byte.exit:                  ; preds = %while.cond.i.i
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %i2c, i8 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %lcd2s_i2c_smbus_write_byte.exit.cleanup_crit_edge, label %if.end7

lcd2s_i2c_smbus_write_byte.exit.cleanup_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lcd2s_i2c_smbus_write_byte.exit
  %call8 = tail call ptr @charlcd_alloc() #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %call8, i32 0, i32 5
  %7 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %drvdata, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c, ptr %call.i, align 4
  %charlcd = getelementptr inbounds %struct.lcd2s_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %charlcd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %charlcd, align 4
  %height = getelementptr inbounds %struct.charlcd, ptr %call8, i32 0, i32 2
  %call.i54 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %height, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool15.not = icmp eq i32 %call.i54, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.fail1_crit_edge

if.end11.fail1_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end17:                                         ; preds = %if.end11
  %width = getelementptr inbounds %struct.charlcd, ptr %call8, i32 0, i32 3
  %call.i55 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %width, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool20.not = icmp eq i32 %call.i55, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.fail1_crit_edge

if.end17.fail1_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end22:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lcd2s_ops, ptr %call8, align 4
  %11 = ptrtoint ptr %charlcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %charlcd, align 4
  %call24 = tail call i32 @charlcd_register(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.fail1_crit_edge

if.end22.fail1_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

fail1:                                            ; preds = %if.end22.fail1_crit_edge, %if.end17.fail1_crit_edge, %if.end11.fail1_crit_edge
  %err.0 = phi i32 [ %call.i54, %if.end11.fail1_crit_edge ], [ %call.i55, %if.end17.fail1_crit_edge ], [ %call24, %if.end22.fail1_crit_edge ]
  %14 = ptrtoint ptr %charlcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %charlcd, align 4
  tail call void @charlcd_free(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end27, %if.end7.cleanup_crit_edge, %lcd2s_i2c_smbus_write_byte.exit.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail1 ], [ 0, %if.end27 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call1.i, %lcd2s_i2c_smbus_write_byte.exit.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call.i.i53, %if.end4.cleanup_crit_edge ], [ %call2.i.i, %while.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_i2c_remove(ptr nocapture noundef readonly %i2c) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %charlcd = getelementptr inbounds %struct.lcd2s_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %charlcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %charlcd, align 4
  %call1 = tail call i32 @charlcd_unregister(ptr noundef %3) #7
  %4 = ptrtoint ptr %charlcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charlcd, align 4
  tail call void @charlcd_free(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @charlcd_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @charlcd_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lcd2s_backlight(ptr nocapture noundef readonly %lcd, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i4, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i4, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 32, %while.cond.i.i9.if.end.sink.split_crit_edge ], [ 40, %while.cond.i.i.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_print(ptr nocapture noundef readonly %lcd, i32 noundef %c) #4 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %buf, align 1
  %conv = trunc i32 %c to i8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %2, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.lcd2s_i2c_master_send.exit_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.lcd2s_i2c_master_send.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_master_send.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %entry.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_master_send.exit

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #7
  br label %lcd2s_i2c_master_send.exit

lcd2s_i2c_master_send.exit:                       ; preds = %if.end.i, %while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge, %entry.lcd2s_i2c_master_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_gotoxy(ptr nocapture noundef readonly %lcd, i32 noundef %x, i32 noundef %y) #4 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -118, ptr %buf, align 1
  %5 = trunc i32 %y to i8
  %conv = add i8 %5, 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %2, align 1
  %7 = trunc i32 %x to i8
  %conv3 = add i8 %7, 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %3, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.lcd2s_i2c_master_send.exit_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.lcd2s_i2c_master_send.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_master_send.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %entry.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp ult i32 %and.i.i, 3
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_master_send.exit

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %buf, i32 noundef 3, i16 noundef zeroext 0) #7
  br label %lcd2s_i2c_master_send.exit

lcd2s_i2c_master_send.exit:                       ; preds = %if.end.i, %while.body.i.i.lcd2s_i2c_master_send.exit_crit_edge, %entry.lcd2s_i2c_master_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_home(ptr nocapture noundef readonly %lcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %entry.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -117) #7
  br label %lcd2s_i2c_smbus_write_byte.exit

lcd2s_i2c_smbus_write_byte.exit:                  ; preds = %if.end.i, %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_clear_display(ptr nocapture noundef readonly %lcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %entry.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext -116) #7
  br label %lcd2s_i2c_smbus_write_byte.exit

lcd2s_i2c_smbus_write_byte.exit:                  ; preds = %if.end.i, %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_init_display(ptr nocapture noundef readonly %lcd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %entry.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 26) #7
  br label %lcd2s_i2c_smbus_write_byte.exit

lcd2s_i2c_smbus_write_byte.exit:                  ; preds = %if.end.i, %while.body.i.i.lcd2s_i2c_smbus_write_byte.exit_crit_edge, %entry.lcd2s_i2c_smbus_write_byte.exit_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.i.i17 = icmp slt i32 %call.i.i16, 0
  br i1 %cmp.i.i17, label %lcd2s_i2c_smbus_write_byte.exit.lcd2s_i2c_smbus_write_byte.exit28_crit_edge, label %lcd2s_i2c_smbus_write_byte.exit.while.cond.i.i21_crit_edge

lcd2s_i2c_smbus_write_byte.exit.while.cond.i.i21_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit
  br label %while.cond.i.i21

lcd2s_i2c_smbus_write_byte.exit.lcd2s_i2c_smbus_write_byte.exit28_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit28

while.cond.i.i21:                                 ; preds = %while.body.i.i24.while.cond.i.i21_crit_edge, %lcd2s_i2c_smbus_write_byte.exit.while.cond.i.i21_crit_edge
  %status.0.i.i18 = phi i32 [ %call2.i.i22, %while.body.i.i24.while.cond.i.i21_crit_edge ], [ %call.i.i16, %lcd2s_i2c_smbus_write_byte.exit.while.cond.i.i21_crit_edge ]
  %and.i.i19 = and i32 %status.0.i.i18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %cmp1.i.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %cmp1.i.i20, label %while.body.i.i24, label %if.end.i26

while.body.i.i24:                                 ; preds = %while.cond.i.i21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  %call2.i.i22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -48) #7
  %cmp3.i.i23 = icmp slt i32 %call2.i.i22, 0
  br i1 %cmp3.i.i23, label %while.body.i.i24.lcd2s_i2c_smbus_write_byte.exit28_crit_edge, label %while.body.i.i24.while.cond.i.i21_crit_edge

while.body.i.i24.while.cond.i.i21_crit_edge:      ; preds = %while.body.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i21

while.body.i.i24.lcd2s_i2c_smbus_write_byte.exit28_crit_edge: ; preds = %while.body.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit28

if.end.i26:                                       ; preds = %while.cond.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i25 = tail call i32 @i2c_smbus_write_byte(ptr noundef %6, i8 noundef zeroext 32) #7
  br label %lcd2s_i2c_smbus_write_byte.exit28

lcd2s_i2c_smbus_write_byte.exit28:                ; preds = %if.end.i26, %while.body.i.i24.lcd2s_i2c_smbus_write_byte.exit28_crit_edge, %lcd2s_i2c_smbus_write_byte.exit.lcd2s_i2c_smbus_write_byte.exit28_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i30 = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i30, label %lcd2s_i2c_smbus_write_byte.exit28.lcd2s_i2c_smbus_write_byte.exit41_crit_edge, label %lcd2s_i2c_smbus_write_byte.exit28.while.cond.i.i34_crit_edge

lcd2s_i2c_smbus_write_byte.exit28.while.cond.i.i34_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit28
  br label %while.cond.i.i34

lcd2s_i2c_smbus_write_byte.exit28.lcd2s_i2c_smbus_write_byte.exit41_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit41

while.cond.i.i34:                                 ; preds = %while.body.i.i37.while.cond.i.i34_crit_edge, %lcd2s_i2c_smbus_write_byte.exit28.while.cond.i.i34_crit_edge
  %status.0.i.i31 = phi i32 [ %call2.i.i35, %while.body.i.i37.while.cond.i.i34_crit_edge ], [ %call.i.i29, %lcd2s_i2c_smbus_write_byte.exit28.while.cond.i.i34_crit_edge ]
  %and.i.i32 = and i32 %status.0.i.i31, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %cmp1.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %cmp1.i.i33, label %while.body.i.i37, label %if.end.i39

while.body.i.i37:                                 ; preds = %while.cond.i.i34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  %call2.i.i35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -48) #7
  %cmp3.i.i36 = icmp slt i32 %call2.i.i35, 0
  br i1 %cmp3.i.i36, label %while.body.i.i37.lcd2s_i2c_smbus_write_byte.exit41_crit_edge, label %while.body.i.i37.while.cond.i.i34_crit_edge

while.body.i.i37.while.cond.i.i34_crit_edge:      ; preds = %while.body.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i34

while.body.i.i37.lcd2s_i2c_smbus_write_byte.exit41_crit_edge: ; preds = %while.body.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit41

if.end.i39:                                       ; preds = %while.cond.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i38 = tail call i32 @i2c_smbus_write_byte(ptr noundef %9, i8 noundef zeroext 9) #7
  br label %lcd2s_i2c_smbus_write_byte.exit41

lcd2s_i2c_smbus_write_byte.exit41:                ; preds = %if.end.i39, %while.body.i.i37.lcd2s_i2c_smbus_write_byte.exit41_crit_edge, %lcd2s_i2c_smbus_write_byte.exit28.lcd2s_i2c_smbus_write_byte.exit41_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i42 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i.i43, label %lcd2s_i2c_smbus_write_byte.exit41.lcd2s_i2c_smbus_write_byte.exit54_crit_edge, label %lcd2s_i2c_smbus_write_byte.exit41.while.cond.i.i47_crit_edge

lcd2s_i2c_smbus_write_byte.exit41.while.cond.i.i47_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit41
  br label %while.cond.i.i47

lcd2s_i2c_smbus_write_byte.exit41.lcd2s_i2c_smbus_write_byte.exit54_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit54

while.cond.i.i47:                                 ; preds = %while.body.i.i50.while.cond.i.i47_crit_edge, %lcd2s_i2c_smbus_write_byte.exit41.while.cond.i.i47_crit_edge
  %status.0.i.i44 = phi i32 [ %call2.i.i48, %while.body.i.i50.while.cond.i.i47_crit_edge ], [ %call.i.i42, %lcd2s_i2c_smbus_write_byte.exit41.while.cond.i.i47_crit_edge ]
  %and.i.i45 = and i32 %status.0.i.i44, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %cmp1.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %cmp1.i.i46, label %while.body.i.i50, label %if.end.i52

while.body.i.i50:                                 ; preds = %while.cond.i.i47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  %call2.i.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -48) #7
  %cmp3.i.i49 = icmp slt i32 %call2.i.i48, 0
  br i1 %cmp3.i.i49, label %while.body.i.i50.lcd2s_i2c_smbus_write_byte.exit54_crit_edge, label %while.body.i.i50.while.cond.i.i47_crit_edge

while.body.i.i50.while.cond.i.i47_crit_edge:      ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i47

while.body.i.i50.lcd2s_i2c_smbus_write_byte.exit54_crit_edge: ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit54

if.end.i52:                                       ; preds = %while.cond.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i51 = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext 16) #7
  br label %lcd2s_i2c_smbus_write_byte.exit54

lcd2s_i2c_smbus_write_byte.exit54:                ; preds = %if.end.i52, %while.body.i.i50.lcd2s_i2c_smbus_write_byte.exit54_crit_edge, %lcd2s_i2c_smbus_write_byte.exit41.lcd2s_i2c_smbus_write_byte.exit54_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %cmp.i.i56 = icmp slt i32 %call.i.i55, 0
  br i1 %cmp.i.i56, label %lcd2s_i2c_smbus_write_byte.exit54.lcd2s_i2c_smbus_write_byte.exit67_crit_edge, label %lcd2s_i2c_smbus_write_byte.exit54.while.cond.i.i60_crit_edge

lcd2s_i2c_smbus_write_byte.exit54.while.cond.i.i60_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit54
  br label %while.cond.i.i60

lcd2s_i2c_smbus_write_byte.exit54.lcd2s_i2c_smbus_write_byte.exit67_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit54
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit67

while.cond.i.i60:                                 ; preds = %while.body.i.i63.while.cond.i.i60_crit_edge, %lcd2s_i2c_smbus_write_byte.exit54.while.cond.i.i60_crit_edge
  %status.0.i.i57 = phi i32 [ %call2.i.i61, %while.body.i.i63.while.cond.i.i60_crit_edge ], [ %call.i.i55, %lcd2s_i2c_smbus_write_byte.exit54.while.cond.i.i60_crit_edge ]
  %and.i.i58 = and i32 %status.0.i.i57, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %cmp1.i.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %cmp1.i.i59, label %while.body.i.i63, label %if.end.i65

while.body.i.i63:                                 ; preds = %while.cond.i.i60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  %call2.i.i61 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext -48) #7
  %cmp3.i.i62 = icmp slt i32 %call2.i.i61, 0
  br i1 %cmp3.i.i62, label %while.body.i.i63.lcd2s_i2c_smbus_write_byte.exit67_crit_edge, label %while.body.i.i63.while.cond.i.i60_crit_edge

while.body.i.i63.while.cond.i.i60_crit_edge:      ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i60

while.body.i.i63.lcd2s_i2c_smbus_write_byte.exit67_crit_edge: ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit67

if.end.i65:                                       ; preds = %while.cond.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i64 = tail call i32 @i2c_smbus_write_byte(ptr noundef %15, i8 noundef zeroext 17) #7
  br label %lcd2s_i2c_smbus_write_byte.exit67

lcd2s_i2c_smbus_write_byte.exit67:                ; preds = %if.end.i65, %while.body.i.i63.lcd2s_i2c_smbus_write_byte.exit67_crit_edge, %lcd2s_i2c_smbus_write_byte.exit54.lcd2s_i2c_smbus_write_byte.exit67_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i68 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i.i69, label %lcd2s_i2c_smbus_write_byte.exit67.lcd2s_i2c_smbus_write_byte.exit80_crit_edge, label %lcd2s_i2c_smbus_write_byte.exit67.while.cond.i.i73_crit_edge

lcd2s_i2c_smbus_write_byte.exit67.while.cond.i.i73_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit67
  br label %while.cond.i.i73

lcd2s_i2c_smbus_write_byte.exit67.lcd2s_i2c_smbus_write_byte.exit80_crit_edge: ; preds = %lcd2s_i2c_smbus_write_byte.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit80

while.cond.i.i73:                                 ; preds = %while.body.i.i76.while.cond.i.i73_crit_edge, %lcd2s_i2c_smbus_write_byte.exit67.while.cond.i.i73_crit_edge
  %status.0.i.i70 = phi i32 [ %call2.i.i74, %while.body.i.i76.while.cond.i.i73_crit_edge ], [ %call.i.i68, %lcd2s_i2c_smbus_write_byte.exit67.while.cond.i.i73_crit_edge ]
  %and.i.i71 = and i32 %status.0.i.i70, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i71)
  %cmp1.i.i72 = icmp eq i32 %and.i.i71, 0
  br i1 %cmp1.i.i72, label %while.body.i.i76, label %if.end.i78

while.body.i.i76:                                 ; preds = %while.cond.i.i73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  %call2.i.i74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext -48) #7
  %cmp3.i.i75 = icmp slt i32 %call2.i.i74, 0
  br i1 %cmp3.i.i75, label %while.body.i.i76.lcd2s_i2c_smbus_write_byte.exit80_crit_edge, label %while.body.i.i76.while.cond.i.i73_crit_edge

while.body.i.i76.while.cond.i.i73_crit_edge:      ; preds = %while.body.i.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i73

while.body.i.i76.lcd2s_i2c_smbus_write_byte.exit80_crit_edge: ; preds = %while.body.i.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %lcd2s_i2c_smbus_write_byte.exit80

if.end.i78:                                       ; preds = %while.cond.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i77 = tail call i32 @i2c_smbus_write_byte(ptr noundef %18, i8 noundef zeroext -116) #7
  br label %lcd2s_i2c_smbus_write_byte.exit80

lcd2s_i2c_smbus_write_byte.exit80:                ; preds = %if.end.i78, %while.body.i.i76.lcd2s_i2c_smbus_write_byte.exit80_crit_edge, %lcd2s_i2c_smbus_write_byte.exit67.lcd2s_i2c_smbus_write_byte.exit80_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_shift_cursor(ptr nocapture noundef readonly %lcd, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ -124, %while.cond.i.i.if.end.sink.split_crit_edge ], [ -125, %while.cond.i.i9.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_shift_display(ptr nocapture noundef readonly %lcd, i32 noundef %dir) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ -122, %while.cond.i.i.if.end.sink.split_crit_edge ], [ -123, %while.cond.i.i9.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_display(ptr nocapture noundef readonly %lcd, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i4, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i4, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 18, %while.cond.i.i9.if.end.sink.split_crit_edge ], [ 26, %while.cond.i.i.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_cursor(ptr nocapture noundef readonly %lcd, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i4, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i4, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 17, %while.cond.i.i9.if.end.sink.split_crit_edge ], [ 25, %while.cond.i.i.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_blink(ptr nocapture noundef readonly %lcd, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.i.i5 = icmp slt i32 %call.i.i4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.then.if.end_crit_edge, label %if.then.while.cond.i.i_crit_edge

if.then.while.cond.i.i_crit_edge:                 ; preds = %if.then
  br label %while.cond.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i4, %if.then.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.if.end.sink.split_crit_edge

while.cond.i.i.if.end.sink.split_crit_edge:       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i5, label %if.else.if.end_crit_edge, label %if.else.while.cond.i.i9_crit_edge

if.else.while.cond.i.i9_crit_edge:                ; preds = %if.else
  br label %while.cond.i.i9

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.i.i9:                                  ; preds = %while.body.i.i12.while.cond.i.i9_crit_edge, %if.else.while.cond.i.i9_crit_edge
  %status.0.i.i6 = phi i32 [ %call2.i.i10, %while.body.i.i12.while.cond.i.i9_crit_edge ], [ %call.i.i4, %if.else.while.cond.i.i9_crit_edge ]
  %and.i.i7 = and i32 %status.0.i.i6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %cmp1.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %cmp1.i.i8, label %while.body.i.i12, label %while.cond.i.i9.if.end.sink.split_crit_edge

while.cond.i.i9.if.end.sink.split_crit_edge:      ; preds = %while.cond.i.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split

while.body.i.i12:                                 ; preds = %while.cond.i.i9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %call2.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #7
  %cmp3.i.i11 = icmp slt i32 %call2.i.i10, 0
  br i1 %cmp3.i.i11, label %while.body.i.i12.if.end_crit_edge, label %while.body.i.i12.while.cond.i.i9_crit_edge

while.body.i.i12.while.cond.i.i9_crit_edge:       ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i9

while.body.i.i12.if.end_crit_edge:                ; preds = %while.body.i.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.sink.split:                                ; preds = %while.cond.i.i9.if.end.sink.split_crit_edge, %while.cond.i.i.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 16, %while.cond.i.i9.if.end.sink.split_crit_edge ], [ 24, %while.cond.i.i.if.end.sink.split_crit_edge ]
  %call1.i13 = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext %.sink) #7
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %while.body.i.i12.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lcd2s_fontsize(ptr nocapture noundef readnone %lcd, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lcd2s_lines(ptr nocapture noundef readnone %lcd, i32 noundef %lines) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd2s_redefine_char(ptr nocapture noundef readonly %lcd, ptr noundef readonly %esc) #4 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #7
  %2 = call ptr @memcpy(ptr %buf, ptr @__const.lcd2s_redefine_char.buf, i32 10)
  %call = tail call ptr @strchr(ptr noundef %esc, i32 noundef 59)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %esc, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %sub = add i8 %4, -48
  %arrayidx = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %sub, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %sub)
  %cmp = icmp ugt i8 %sub, 7
  br i1 %cmp, label %if.end.cleanup26_crit_edge, label %if.end7

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end7:                                          ; preds = %if.end
  %incdec.ptr1 = getelementptr i8, ptr %esc, i32 2
  %6 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not40.not = icmp eq i8 %7, 0
  br i1 %tobool9.not40.not, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end7.while.body_crit_edge
  %8 = phi i8 [ %12, %cleanup.while.body_crit_edge ], [ %7, %if.end7.while.body_crit_edge ]
  %i.044 = phi i32 [ %i.2, %cleanup.while.body_crit_edge ], [ 2, %if.end7.while.body_crit_edge ]
  %shift.043 = phi i32 [ %xor, %cleanup.while.body_crit_edge ], [ 0, %if.end7.while.body_crit_edge ]
  %value.042 = phi i8 [ %value.2, %cleanup.while.body_crit_edge ], [ 0, %if.end7.while.body_crit_edge ]
  %esc.addr.041 = phi ptr [ %incdec.ptr12, %cleanup.while.body_crit_edge ], [ %incdec.ptr1, %if.end7.while.body_crit_edge ]
  %xor = xor i32 %shift.043, 4
  %incdec.ptr12 = getelementptr i8, ptr %esc.addr.041, i32 1
  %call13 = tail call i32 @hex_to_bin(i8 noundef zeroext %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %while.body.cleanup_crit_edge, label %if.end17

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %shl = shl i32 %call13, %xor
  %9 = trunc i32 %shl to i8
  %conv19 = or i8 %value.042, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp20 = icmp eq i32 %xor, 0
  br i1 %cmp20, label %if.then22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %i.044, 1
  %arrayidx23 = getelementptr [10 x i8], ptr %buf, i32 0, i32 %i.044
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv19, ptr %arrayidx23, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end17.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %value.2 = phi i8 [ %value.042, %while.body.cleanup_crit_edge ], [ 0, %if.then22 ], [ %conv19, %if.end17.cleanup_crit_edge ]
  %i.2 = phi i32 [ %i.044, %while.body.cleanup_crit_edge ], [ %inc, %if.then22 ], [ %i.044, %if.end17.cleanup_crit_edge ]
  %11 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.2)
  %cmp10 = icmp slt i32 %i.2, 10
  %or.cond = select i1 %tobool9.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end7.while.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext -48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.end.cleanup26_crit_edge, label %while.end.while.cond.i.i_crit_edge

while.end.while.cond.i.i_crit_edge:               ; preds = %while.end
  br label %while.cond.i.i

while.end.cleanup26_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %while.end.while.cond.i.i_crit_edge
  %status.0.i.i = phi i32 [ %call2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %call.i.i, %while.end.while.cond.i.i_crit_edge ]
  %and.i.i = and i32 %status.0.i.i, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i.i)
  %cmp1.i.i = icmp ult i32 %and.i.i, 10
  br i1 %cmp1.i.i, label %while.body.i.i, label %if.end.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext -48) #7
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.cleanup26_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.cleanup26_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end.i:                                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf, i32 noundef 10, i16 noundef zeroext 0) #7
  br label %cleanup26

cleanup26:                                        ; preds = %if.end.i, %while.body.i.i.cleanup26_crit_edge, %while.end.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup26_crit_edge ], [ 1, %if.end.cleanup26_crit_edge ], [ 1, %while.end.cleanup26_crit_edge ], [ 1, %if.end.i ], [ 1, %while.body.i.i.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_lcd2s__288_388_lcd2s_modinit6, !1, !"__initcall__kmod_lcd2s__288_388_lcd2s_modinit6", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/lcd2s.c", i32 388, i32 1}
!2 = !{ptr @__exitcall_lcd2s_exit, !3, !"__exitcall_lcd2s_exit", i1 false, i1 false}
!3 = !{!"../drivers/auxdisplay/lcd2s.c", i32 394, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/auxdisplay/lcd2s.c", i32 396, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/auxdisplay/lcd2s.c", i32 397, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/auxdisplay/lcd2s.c", i32 398, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/auxdisplay/lcd2s.c", i32 384, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @lcd2s_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @lcd2s_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/auxdisplay/lcd2s.c", i32 368, i32 11}
!19 = !{ptr @lcd2s_i2c_driver, !20, !"lcd2s_i2c_driver", i1 false, i1 false}
!20 = !{!"../drivers/auxdisplay/lcd2s.c", i32 366, i32 26}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/auxdisplay/lcd2s.c", i32 319, i32 44}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/auxdisplay/lcd2s.c", i32 324, i32 44}
!25 = !{ptr @lcd2s_ops, !26, !"lcd2s_ops", i1 false, i1 false}
!26 = !{!"../drivers/auxdisplay/lcd2s.c", i32 272, i32 33}
!27 = !{ptr @lcd2s_of_table, !28, !"lcd2s_of_table", i1 false, i1 false}
!28 = !{!"../drivers/auxdisplay/lcd2s.c", i32 359, i32 34}
!29 = !{ptr @lcd2s_i2c_id, !30, !"lcd2s_i2c_id", i1 false, i1 false}
!30 = !{!"../drivers/auxdisplay/lcd2s.c", i32 352, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
