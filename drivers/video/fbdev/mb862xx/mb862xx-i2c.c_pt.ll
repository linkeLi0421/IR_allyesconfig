; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mb862xx/mb862xx-i2c.c_pt.bc'
source_filename = "../drivers/video/fbdev/mb862xx/mb862xx-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mb862xxfb_par = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, %struct.mb862xx_l1_cfg, i32, [16 x i32] }
%struct.mb862xx_l1_cfg = type { i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@mb862xx_i2c_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @mb862xx_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"MB862xx I2C adapter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@mb862xx_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mb862xx_xfer, ptr null, ptr null, ptr null, ptr @mb862xx_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mb862xx_xfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mb862xxfb\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mb862xx_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/video/fbdev/mb862xx/mb862xx-i2c.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: %d msgs\0A\00", [19 x i8] zeroinitializer }, align 32
@mb862xx_xfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: null msgs\0A\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"mb862xx_i2c_adapter\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 148, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"mb862xx_algo\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 143, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 111, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [45 x i8] c"../drivers/video/fbdev/mb862xx/mb862xx-i2c.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 116, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @mb862xx_i2c_adapter, ptr @mb862xx_algo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_i2c_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xx_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mb862xx_i2c_init(ptr noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %par, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @mb862xx_i2c_adapter, i32 0, i32 3), align 4
  %adap = getelementptr inbounds %struct.mb862xxfb_par, ptr %par, i32 0, i32 29
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mb862xx_i2c_adapter, ptr %adap, align 4
  %call = tail call i32 @i2c_add_adapter(ptr noundef nonnull @mb862xx_i2c_adapter) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mb862xx_i2c_exit(ptr nocapture noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.mb862xxfb_par, ptr %par, i32 0, i32 29
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_adapter(ptr noundef nonnull %1) #4
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %adap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb862xx_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xx_xfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xx_xfer, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xx_xfer.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %num) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp103 = icmp sgt i32 %num, 0
  br i1 %cmp103, label %for.body.lr.ph, label %do.end.if.end43.thread_crit_edge

do.end.if.end43.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.thread

for.body.lr.ph:                                   ; preds = %do.end
  %dev18 = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %err.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0105, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %do.body5, label %if.end22

do.body5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb862xx_xfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb862xx_xfer, %if.then17)) #4
          to label %for.inc [label %if.then17], !srcloc !22

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb862xx_xfer.__UNIQUE_ID_ddebug302, ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #4
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0105
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0105, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  %13 = or i16 %12, %9
  %14 = zext i16 %13 to i32
  %15 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  %i2c.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %16, i32 0, i32 13
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1056964608) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %i2c_rs.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %16, i32 0, i32 30
  %22 = ptrtoint ptr %i2c_rs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2c_rs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %cond.i = select i1 %tobool.not.i, i32 268435456, i32 805306368
  %24 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %cond.i) #4, !srcloc !24
  %26 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %algo_data, align 4
  %i2c.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %27, i32 0, i32 13
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #4
  %29 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !27
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %and.i.i = and i32 %32, 129
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %mb862xx_i2c_wait_event.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

mb862xx_i2c_wait_event.exit.i:                    ; preds = %do.body.i.i
  %33 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not.not.i = icmp eq i32 %33, 0
  br i1 %tobool11.not.not.i, label %mb862xx_i2c_do_address.exit, label %mb862xx_i2c_wait_event.exit.i.for.end_crit_edge

mb862xx_i2c_wait_event.exit.i.for.end_crit_edge:  ; preds = %mb862xx_i2c_wait_event.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

mb862xx_i2c_do_address.exit:                      ; preds = %mb862xx_i2c_wait_event.exit.i
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %37 = lshr i32 %36, 28
  %.lobit.i = and i32 %37, 1
  %38 = xor i32 %.lobit.i, 1
  %39 = ptrtoint ptr %i2c_rs.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %i2c_rs.i, align 4
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool36.not = icmp eq i16 %42, 0
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len, align 4
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %mb862xx_i2c_do_address.exit
  %conv.i = zext i16 %44 to i32
  %sub.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp14.not.i = icmp eq i16 %44, 0
  br i1 %cmp14.not.i, label %if.then37.for.inc_crit_edge, label %for.body.lr.ph.i

if.then37.for.inc_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.then37
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0105, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015.i, i32 %sub.i)
  %cmp4.not.i = icmp eq i32 %i.015.i, %sub.i
  %47 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %algo_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %or.i.i = select i1 %cmp4.not.i, i32 268435456, i32 402653184
  %i2c.i.i68 = getelementptr inbounds %struct.mb862xxfb_par, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %i2c.i.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c.i.i68, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69, i32 %or.i.i) #4, !srcloc !24
  %51 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %algo_data, align 4
  %i2c.i.i.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %52, i32 0, i32 13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 2147480) #4
  %54 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !27
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %and.i.i.i = and i32 %57, 129
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %mb862xx_i2c_wait_event.exit.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

mb862xx_i2c_wait_event.exit.i.i:                  ; preds = %do.body.i.i.i
  %58 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool1.not.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool1.not.not.i.i, label %for.inc.i, label %mb862xx_i2c_wait_event.exit.i.i.for.inc_crit_edge

mb862xx_i2c_wait_event.exit.i.i.for.inc_crit_edge: ; preds = %mb862xx_i2c_wait_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc.i:                                        ; preds = %mb862xx_i2c_wait_event.exit.i.i
  %arrayidx.i = getelementptr i8, ptr %46, i32 %i.015.i
  %59 = ptrtoint ptr %i2c.i.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c.i.i68, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %60, i32 16
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #4, !srcloc !27
  %62 = lshr i32 %61, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv.i.i = trunc i32 %62 to i8
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len, align 4
  %conv2.i = zext i16 %65 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.else:                                          ; preds = %mb862xx_i2c_do_address.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp8.not.i = icmp eq i16 %44, 0
  br i1 %cmp8.not.i, label %if.else.for.inc_crit_edge, label %for.body.lr.ph.i73

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.lr.ph.i73:                               ; preds = %if.else
  %buf.i71 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0105, i32 3
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc.i88.for.body.i79_crit_edge, %for.body.lr.ph.i73
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i73 ], [ %inc.i85, %for.inc.i88.for.body.i79_crit_edge ]
  %66 = ptrtoint ptr %buf.i71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf.i71, align 4
  %arrayidx.i74 = getelementptr i8, ptr %67, i32 %i.09.i
  %68 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i74, align 1
  %70 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %algo_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %conv.i.i75 = zext i8 %69 to i32
  %72 = shl nuw i32 %conv.i.i75, 24
  %i2c.i.i76 = getelementptr inbounds %struct.mb862xxfb_par, ptr %71, i32 0, i32 13
  %73 = ptrtoint ptr %i2c.i.i76 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c.i.i76, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 %72) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %75 = ptrtoint ptr %i2c.i.i76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c.i.i76, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 268435456) #4, !srcloc !24
  %77 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %algo_data, align 4
  %i2c.i.i.i78 = getelementptr inbounds %struct.mb862xxfb_par, ptr %78, i32 0, i32 13
  br label %do.body.i.i.i83

do.body.i.i.i83:                                  ; preds = %do.body.i.i.i83.do.body.i.i.i83_crit_edge, %for.body.i79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #4
  %80 = ptrtoint ptr %i2c.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2c.i.i.i78, align 4
  %add.ptr.i.i.i80 = getelementptr i8, ptr %81, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i80) #4, !srcloc !27
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %and.i.i.i81 = and i32 %83, 129
  %tobool.not.i.i.i82 = icmp eq i32 %and.i.i.i81, 0
  br i1 %tobool.not.i.i.i82, label %do.body.i.i.i83.do.body.i.i.i83_crit_edge, label %mb862xx_i2c_wait_event.exit.i.i84

do.body.i.i.i83.do.body.i.i.i83_crit_edge:        ; preds = %do.body.i.i.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i83

mb862xx_i2c_wait_event.exit.i.i84:                ; preds = %do.body.i.i.i83
  %84 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.not.i.i, label %mb862xx_i2c_write_byte.exit.i, label %mb862xx_i2c_wait_event.exit.i.i84.for.inc.i88_crit_edge

mb862xx_i2c_wait_event.exit.i.i84.for.inc.i88_crit_edge: ; preds = %mb862xx_i2c_wait_event.exit.i.i84
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i88

mb862xx_i2c_write_byte.exit.i:                    ; preds = %mb862xx_i2c_wait_event.exit.i.i84
  %85 = ptrtoint ptr %i2c.i.i76 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c.i.i76, align 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %88 = and i32 %87, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.not.i = icmp eq i32 %88, 0
  br i1 %tobool.not.not.i, label %mb862xx_i2c_write_byte.exit.i.for.inc.i88_crit_edge, label %mb862xx_i2c_write_byte.exit.i.for.inc_crit_edge

mb862xx_i2c_write_byte.exit.i.for.inc_crit_edge:  ; preds = %mb862xx_i2c_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

mb862xx_i2c_write_byte.exit.i.for.inc.i88_crit_edge: ; preds = %mb862xx_i2c_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i88

for.inc.i88:                                      ; preds = %mb862xx_i2c_write_byte.exit.i.for.inc.i88_crit_edge, %mb862xx_i2c_wait_event.exit.i.i84.for.inc.i88_crit_edge
  %inc.i85 = add nuw nsw i32 %i.09.i, 1
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len, align 4
  %conv.i86 = zext i16 %90 to i32
  %cmp.i87 = icmp ult i32 %inc.i85, %conv.i86
  br i1 %cmp.i87, label %for.inc.i88.for.body.i79_crit_edge, label %for.inc.i88.for.inc_crit_edge

for.inc.i88.for.inc_crit_edge:                    ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc.i88.for.body.i79_crit_edge:               ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i79

for.inc:                                          ; preds = %for.inc.i88.for.inc_crit_edge, %mb862xx_i2c_write_byte.exit.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %mb862xx_i2c_wait_event.exit.i.i.for.inc_crit_edge, %if.then37.for.inc_crit_edge, %if.then17, %do.body5
  %err.1 = phi i32 [ %err.0104, %if.then17 ], [ %err.0104, %do.body5 ], [ 0, %if.then37.for.inc_crit_edge ], [ 0, %if.else.for.inc_crit_edge ], [ 0, %for.inc.i88.for.inc_crit_edge ], [ -5, %mb862xx_i2c_write_byte.exit.i.for.inc_crit_edge ], [ 0, %for.inc.i.for.inc_crit_edge ], [ -5, %mb862xx_i2c_wait_event.exit.i.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mb862xx_i2c_wait_event.exit.i.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %num, %for.inc.for.end_crit_edge ], [ %i.0105, %mb862xx_i2c_wait_event.exit.i.for.end_crit_edge ]
  %err.2 = phi i32 [ %err.1, %for.inc.for.end_crit_edge ], [ -5, %mb862xx_i2c_wait_event.exit.i.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool41.not = icmp eq i32 %i.0.lcssa, 0
  br i1 %tobool41.not, label %for.end.if.end43_crit_edge, label %if.then42

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %algo_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %i2c.i91 = getelementptr inbounds %struct.mb862xxfb_par, ptr %92, i32 0, i32 13
  %93 = ptrtoint ptr %i2c.i91 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %95 = ptrtoint ptr %i2c.i91 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i2c.i91, align 4
  %add.ptr5.i93 = getelementptr i8, ptr %96, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i93, i32 0) #4, !srcloc !24
  %i2c_rs.i94 = getelementptr inbounds %struct.mb862xxfb_par, ptr %92, i32 0, i32 30
  %97 = ptrtoint ptr %i2c_rs.i94 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %i2c_rs.i94, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.end.if.end43_crit_edge
  %i.0.lcssa117 = phi i32 [ %i.0.lcssa, %if.then42 ], [ 0, %for.end.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp44 = icmp slt i32 %err.2, 0
  %spec.select = select i1 %cmp44, i32 %err.2, i32 %i.0.lcssa117
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %if.end43, %do.end.if.end43.thread_crit_edge
  %98 = phi i32 [ 0, %do.end.if.end43.thread_crit_edge ], [ %spec.select, %if.end43 ]
  ret i32 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mb862xx_func(ptr nocapture noundef readnone %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1572864
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @mb862xx_i2c_adapter, !1, !"mb862xx_i2c_adapter", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mb862xx/mb862xx-i2c.c", i32 148, i32 27}
!2 = !{ptr @mb862xx_algo, !3, !"mb862xx_algo", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/mb862xx/mb862xx-i2c.c", i32 143, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/mb862xx/mb862xx-i2c.c", i32 111, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mb862xx_xfer.__UNIQUE_ID_ddebug301, !5, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/mb862xx/mb862xx-i2c.c", i32 116, i32 4}
!12 = !{ptr @mb862xx_xfer.__UNIQUE_ID_ddebug302, !11, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148606555, i64 2148606560, i64 2148606573, i64 2148606617, i64 2148606651, i64 2148606672}
!23 = !{i64 2155839300}
!24 = !{i64 4298424}
!25 = !{i64 2155839830}
!26 = !{i64 2155840443}
!27 = !{i64 4298842}
!28 = !{i64 2155838979}
!29 = !{i64 2155841337}
!30 = !{i64 2155843372}
!31 = !{i64 2155844246}
!32 = !{i64 2155841648}
!33 = !{i64 2155842178}
!34 = !{i64 2155842991}
!35 = !{i64 2155844575}
!36 = !{i64 2155845123}
