; ModuleID = '/llk/IR_all_yes/drivers/input/gameport/lightning.c_pt.bc'
source_filename = "../drivers/input/gameport/lightning.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.l4 = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID_author183 = internal constant [49 x i8] c"lightning.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [55 x i8] c"lightning.description=PDPI Lightning 4 gamecard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [48 x i8] c"lightning.file=drivers/input/gameport/lightning\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [22 x i8] c"lightning.license=GPL\00", section ".modinfo", align 1
@__const.l4_exit.cal = private unnamed_addr constant [4 x i32] [i32 59, i32 59, i32 59, i32 59], align 4
@l4_ports = internal global { [8 x %struct.l4], [32 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_lightning__187_324_l4_init6 = internal global ptr @l4_init, section ".initcall6.init", align 4
@__exitcall_l4_exit = internal global ptr @l4_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lightning\00", [22 x i8] zeroinitializer }, align 32
@__const.l4_add_card.cal = private unnamed_addr constant [4 x i32] [i32 255, i32 255, i32 255, i32 255], align 4
@l4_add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016gameport: PDPI Lightning 4 %s card v%d.%d at %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4_add_card\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/gameport/lightning.c\00", [61 x i8] zeroinitializer }, align 32
@l4_add_card._entry_ptr = internal global ptr @l4_add_card._entry, section ".printk_index", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"secondary\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@l4_create_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013lightning: Memory allocation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_create_ports\00", [16 x i8] zeroinitializer }, align 32
@l4_create_ports._entry_ptr = internal global ptr @l4_create_ports._entry, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PDPI Lightning 4\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isa%04x/gameport%d\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"l4_ports\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 42, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 292, i32 7 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 274, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 215, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 229, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [38 x i8] c"../drivers/input/gameport/lightning.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 230, i32 27 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_l4_exit, ptr @__initcall__kmod_lightning__187_324_l4_init6, ptr @l4_add_card._entry, ptr @l4_add_card._entry_ptr, ptr @l4_create_ports._entry, ptr @l4_create_ports._entry_ptr, ptr @l4_exit, ptr @l4_ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_ports to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_create_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l4_exit() #0 section ".exit.text" align 64 {
entry:
  %cal = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cal) #8
  %0 = call ptr @memcpy(ptr %cal, ptr @__const.l4_exit.cal, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %i.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %i.09, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 4
  %conv = zext i8 %4 to i32
  %call = call fastcc i32 @l4_setcal(i32 noundef %conv, ptr noundef nonnull %cal)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @gameport_unregister_port(ptr noundef %6) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 513, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cal) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l4_setcal(i32 noundef %port, ptr nocapture noundef readonly %cal) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %shr = ashr i32 %port, 2
  %add = add nsw i32 %shr, 165
  %conv = trunc i32 %add to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv) #8, !srcloc !42
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %1 = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body8, label %entry.do.body47_crit_edge

entry.do.body47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body8:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -109) #8, !srcloc !42
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body8
  %t.0.i = phi i32 [ 80, %do.body8 ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %cmp.not.i = icmp eq i32 %t.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  %dec.i = add nsw i32 %t.0.i, -1
  br i1 %or.cond.i, label %l4_wait_ready.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

l4_wait_ready.exit:                               ; preds = %while.cond.i
  br i1 %cmp.not.i, label %l4_wait_ready.exit.do.body47_crit_edge, label %if.end15

l4_wait_ready.exit.do.body47_crit_edge:           ; preds = %l4_wait_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

if.end15:                                         ; preds = %l4_wait_ready.exit
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %conv20 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv20)
  %cmp.not = icmp eq i32 %add, %conv20
  br i1 %cmp.not, label %if.end15.while.cond.i60_crit_edge, label %if.end15.do.body47_crit_edge

if.end15.do.body47_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

if.end15.while.cond.i60_crit_edge:                ; preds = %if.end15
  br label %while.cond.i60

while.cond.i60:                                   ; preds = %while.cond.i60.while.cond.i60_crit_edge, %if.end15.while.cond.i60_crit_edge
  %t.0.i55 = phi i32 [ %dec.i59, %while.cond.i60.while.cond.i60_crit_edge ], [ 80, %if.end15.while.cond.i60_crit_edge ]
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i56 = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i55)
  %cmp.not.i57 = icmp eq i32 %t.0.i55, 0
  %or.cond.i58 = select i1 %tobool.not.i56, i1 true, i1 %cmp.not.i57
  %dec.i59 = add nsw i32 %t.0.i55, -1
  br i1 %or.cond.i58, label %l4_wait_ready.exit62, label %while.cond.i60.while.cond.i60_crit_edge

while.cond.i60.while.cond.i60_crit_edge:          ; preds = %while.cond.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i60

l4_wait_ready.exit62:                             ; preds = %while.cond.i60
  br i1 %cmp.not.i57, label %l4_wait_ready.exit62.do.body47_crit_edge, label %do.body30

l4_wait_ready.exit62.do.body47_crit_edge:         ; preds = %l4_wait_ready.exit62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body30:                                        ; preds = %l4_wait_ready.exit62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %7 = trunc i32 %port to i8
  %conv34 = and i8 %7, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv34) #8, !srcloc !42
  br label %while.cond.i68

while.cond.i68:                                   ; preds = %while.cond.i68.while.cond.i68_crit_edge, %do.body30
  %t.0.i63 = phi i32 [ %dec.i67, %while.cond.i68.while.cond.i68_crit_edge ], [ 80, %do.body30 ]
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i64 = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63)
  %cmp.not.i65 = icmp eq i32 %t.0.i63, 0
  %or.cond.i66 = select i1 %tobool.not.i64, i1 true, i1 %cmp.not.i65
  %dec.i67 = add nsw i32 %t.0.i63, -1
  br i1 %or.cond.i66, label %l4_wait_ready.exit70, label %while.cond.i68.while.cond.i68_crit_edge

while.cond.i68.while.cond.i68_crit_edge:          ; preds = %while.cond.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68

l4_wait_ready.exit70:                             ; preds = %while.cond.i68
  br i1 %cmp.not.i65, label %l4_wait_ready.exit70.do.body47_crit_edge, label %do.body42

l4_wait_ready.exit70.do.body47_crit_edge:         ; preds = %l4_wait_ready.exit70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body42:                                        ; preds = %l4_wait_ready.exit70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cal, align 4
  %conv45 = trunc i32 %11 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv45) #8, !srcloc !42
  br label %while.cond.i68.1

while.cond.i68.1:                                 ; preds = %while.cond.i68.1.while.cond.i68.1_crit_edge, %do.body42
  %t.0.i63.1 = phi i32 [ %dec.i67.1, %while.cond.i68.1.while.cond.i68.1_crit_edge ], [ 80, %do.body42 ]
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i64.1 = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.1)
  %cmp.not.i65.1 = icmp eq i32 %t.0.i63.1, 0
  %or.cond.i66.1 = select i1 %tobool.not.i64.1, i1 true, i1 %cmp.not.i65.1
  %dec.i67.1 = add nsw i32 %t.0.i63.1, -1
  br i1 %or.cond.i66.1, label %l4_wait_ready.exit70.1, label %while.cond.i68.1.while.cond.i68.1_crit_edge

while.cond.i68.1.while.cond.i68.1_crit_edge:      ; preds = %while.cond.i68.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.1

l4_wait_ready.exit70.1:                           ; preds = %while.cond.i68.1
  br i1 %cmp.not.i65.1, label %l4_wait_ready.exit70.1.do.body47_crit_edge, label %do.body42.1

l4_wait_ready.exit70.1.do.body47_crit_edge:       ; preds = %l4_wait_ready.exit70.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body42.1:                                      ; preds = %l4_wait_ready.exit70.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %arrayidx.1 = getelementptr i32, ptr %cal, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %conv45.1 = trunc i32 %15 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv45.1) #8, !srcloc !42
  br label %while.cond.i68.2

while.cond.i68.2:                                 ; preds = %while.cond.i68.2.while.cond.i68.2_crit_edge, %do.body42.1
  %t.0.i63.2 = phi i32 [ %dec.i67.2, %while.cond.i68.2.while.cond.i68.2_crit_edge ], [ 80, %do.body42.1 ]
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i64.2 = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.2)
  %cmp.not.i65.2 = icmp eq i32 %t.0.i63.2, 0
  %or.cond.i66.2 = select i1 %tobool.not.i64.2, i1 true, i1 %cmp.not.i65.2
  %dec.i67.2 = add nsw i32 %t.0.i63.2, -1
  br i1 %or.cond.i66.2, label %l4_wait_ready.exit70.2, label %while.cond.i68.2.while.cond.i68.2_crit_edge

while.cond.i68.2.while.cond.i68.2_crit_edge:      ; preds = %while.cond.i68.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.2

l4_wait_ready.exit70.2:                           ; preds = %while.cond.i68.2
  br i1 %cmp.not.i65.2, label %l4_wait_ready.exit70.2.do.body47_crit_edge, label %do.body42.2

l4_wait_ready.exit70.2.do.body47_crit_edge:       ; preds = %l4_wait_ready.exit70.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body42.2:                                      ; preds = %l4_wait_ready.exit70.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %arrayidx.2 = getelementptr i32, ptr %cal, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  %conv45.2 = trunc i32 %19 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv45.2) #8, !srcloc !42
  br label %while.cond.i68.3

while.cond.i68.3:                                 ; preds = %while.cond.i68.3.while.cond.i68.3_crit_edge, %do.body42.2
  %t.0.i63.3 = phi i32 [ %dec.i67.3, %while.cond.i68.3.while.cond.i68.3_crit_edge ], [ 80, %do.body42.2 ]
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i64.3 = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.3)
  %cmp.not.i65.3 = icmp eq i32 %t.0.i63.3, 0
  %or.cond.i66.3 = select i1 %tobool.not.i64.3, i1 true, i1 %cmp.not.i65.3
  %dec.i67.3 = add nsw i32 %t.0.i63.3, -1
  br i1 %or.cond.i66.3, label %l4_wait_ready.exit70.3, label %while.cond.i68.3.while.cond.i68.3_crit_edge

while.cond.i68.3.while.cond.i68.3_crit_edge:      ; preds = %while.cond.i68.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.3

l4_wait_ready.exit70.3:                           ; preds = %while.cond.i68.3
  br i1 %cmp.not.i65.3, label %l4_wait_ready.exit70.3.do.body47_crit_edge, label %do.body42.3

l4_wait_ready.exit70.3.do.body47_crit_edge:       ; preds = %l4_wait_ready.exit70.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

do.body42.3:                                      ; preds = %l4_wait_ready.exit70.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %arrayidx.3 = getelementptr i32, ptr %cal, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  %conv45.3 = trunc i32 %23 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv45.3) #8, !srcloc !42
  br label %do.body47

do.body47:                                        ; preds = %do.body42.3, %l4_wait_ready.exit70.3.do.body47_crit_edge, %l4_wait_ready.exit70.2.do.body47_crit_edge, %l4_wait_ready.exit70.1.do.body47_crit_edge, %l4_wait_ready.exit70.do.body47_crit_edge, %l4_wait_ready.exit62.do.body47_crit_edge, %if.end15.do.body47_crit_edge, %l4_wait_ready.exit.do.body47_crit_edge, %entry.do.body47_crit_edge
  %result.0 = phi i32 [ -1, %entry.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit.do.body47_crit_edge ], [ -1, %if.end15.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit62.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit70.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit70.1.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit70.2.do.body47_crit_edge ], [ -1, %l4_wait_ready.exit70.3.do.body47_crit_edge ], [ 0, %do.body42.3 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l4_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 513, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cards.015 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cmp = phi i1 [ false, %for.body.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ 1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @l4_add_card(i32 noundef %i.014) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  %inc = zext i1 %cmp2 to i32
  %spec.select = add i32 %cards.015, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %if.then8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 513, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then8 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l4_add_card(i32 noundef %card_no) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cal = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cal) #8
  %0 = call ptr @memcpy(ptr %cal, ptr @__const.l4_add_card.cal, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %add = add i32 %card_no, 165
  %conv = trunc i32 %add to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv) #8, !srcloc !42
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body8, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body8:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -128) #8, !srcloc !42
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body8
  %t.0.i = phi i32 [ 80, %do.body8 ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %cmp.not.i = icmp eq i32 %t.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  %dec.i = add nsw i32 %t.0.i, -1
  br i1 %or.cond.i, label %l4_wait_ready.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

l4_wait_ready.exit:                               ; preds = %while.cond.i
  br i1 %cmp.not.i, label %l4_wait_ready.exit.cleanup_crit_edge, label %if.end15

l4_wait_ready.exit.cleanup_crit_edge:             ; preds = %l4_wait_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %l4_wait_ready.exit
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %conv20 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv20)
  %cmp.not = icmp eq i32 %add, %conv20
  br i1 %cmp.not, label %if.end15.while.cond.i89_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.while.cond.i89_crit_edge:                ; preds = %if.end15
  br label %while.cond.i89

while.cond.i89:                                   ; preds = %while.cond.i89.while.cond.i89_crit_edge, %if.end15.while.cond.i89_crit_edge
  %t.0.i84 = phi i32 [ %dec.i88, %while.cond.i89.while.cond.i89_crit_edge ], [ 80, %if.end15.while.cond.i89_crit_edge ]
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i85 = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i84)
  %cmp.not.i86 = icmp eq i32 %t.0.i84, 0
  %or.cond.i87 = select i1 %tobool.not.i85, i1 true, i1 %cmp.not.i86
  %dec.i88 = add nsw i32 %t.0.i84, -1
  br i1 %or.cond.i87, label %l4_wait_ready.exit91, label %while.cond.i89.while.cond.i89_crit_edge

while.cond.i89.while.cond.i89_crit_edge:          ; preds = %while.cond.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i89

l4_wait_ready.exit91:                             ; preds = %while.cond.i89
  br i1 %cmp.not.i86, label %l4_wait_ready.exit91.cleanup_crit_edge, label %if.end28

l4_wait_ready.exit91.cleanup_crit_edge:           ; preds = %l4_wait_ready.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %l4_wait_ready.exit91
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp34.not = icmp eq i8 %8, 4
  br i1 %cmp34.not, label %if.end28.while.cond.i97_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.while.cond.i97_crit_edge:                ; preds = %if.end28
  br label %while.cond.i97

while.cond.i97:                                   ; preds = %while.cond.i97.while.cond.i97_crit_edge, %if.end28.while.cond.i97_crit_edge
  %t.0.i92 = phi i32 [ %dec.i96, %while.cond.i97.while.cond.i97_crit_edge ], [ 80, %if.end28.while.cond.i97_crit_edge ]
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i93 = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i92)
  %cmp.not.i94 = icmp eq i32 %t.0.i92, 0
  %or.cond.i95 = select i1 %tobool.not.i93, i1 true, i1 %cmp.not.i94
  %dec.i96 = add nsw i32 %t.0.i92, -1
  br i1 %or.cond.i95, label %l4_wait_ready.exit99, label %while.cond.i97.while.cond.i97_crit_edge

while.cond.i97.while.cond.i97_crit_edge:          ; preds = %while.cond.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i97

l4_wait_ready.exit99:                             ; preds = %while.cond.i97
  br i1 %cmp.not.i94, label %l4_wait_ready.exit99.cleanup_crit_edge, label %if.end41

l4_wait_ready.exit99.cleanup_crit_edge:           ; preds = %l4_wait_ready.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %l4_wait_ready.exit99
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %conv46 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool47.not = icmp eq i8 %11, 0
  br i1 %tobool47.not, label %if.end41.cleanup_crit_edge, label %if.end49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %call50 = tail call fastcc i32 @l4_create_ports(i32 noundef %card_no) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end56, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %card_no)
  %tobool58.not = icmp eq i32 %card_no, 0
  %cond = select i1 %tobool58.not, ptr @.str.5, ptr @.str.4
  %12 = lshr i32 %conv46, 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, i32 noundef %12, i32 noundef %conv46, i32 noundef 513) #12
  %mul = shl i32 %card_no, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %11)
  %cmp63 = icmp ugt i8 %11, 40
  br label %for.body

for.body:                                         ; preds = %if.end68.for.body_crit_edge, %do.end56
  %i.0100 = phi i32 [ 0, %do.end56 ], [ %inc, %if.end68.for.body_crit_edge ]
  %add62 = add nuw nsw i32 %i.0100, %mul
  %arrayidx = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %add62
  br i1 %cmp63, label %if.then65, label %for.body.if.end68_crit_edge

for.body.if.end68_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %add62, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port, align 4
  %conv66 = zext i8 %14 to i32
  %call67 = call fastcc i32 @l4_setcal(i32 noundef %conv66, ptr noundef nonnull %cal)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.body.if.end68_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @__gameport_register_port(ptr noundef %16, ptr noundef null) #8
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end68.cleanup_crit_edge, label %if.end68.for.body_crit_edge

if.end68.for.body_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end68.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %l4_wait_ready.exit99.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %l4_wait_ready.exit91.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %l4_wait_ready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %l4_wait_ready.exit.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ -1, %l4_wait_ready.exit91.cleanup_crit_edge ], [ -1, %if.end28.cleanup_crit_edge ], [ -1, %l4_wait_ready.exit99.cleanup_crit_edge ], [ -1, %if.end41.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cal) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l4_create_ports(i32 noundef %card_no) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %card_no, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.031, %mul
  %arrayidx = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #13
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031)
  %cmp233.not = icmp eq i32 %i.031, 0
  br i1 %cmp233.not, label %do.end.cleanup_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %dec34.in = phi i32 [ %dec34, %while.body.while.body_crit_edge ], [ %i.031, %do.end.while.body_crit_edge ]
  %dec34 = add nsw i32 %dec34.in, -1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %cmp2 = icmp sgt i32 %dec34.in, 1
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %add to i8
  %port5 = getelementptr [8 x %struct.l4], ptr @l4_ports, i32 0, i32 %add, i32 1
  %5 = ptrtoint ptr %port5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port5, align 4
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %call7.i.i.i, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @l4_open, ptr %open, align 8
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @l4_cooked_read, ptr %cooked_read, align 8
  %calibrate = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %calibrate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @l4_calibrate, ptr %calibrate, align 4
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.8, i32 noundef 32) #8
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.9, i32 noundef 513, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp6 = icmp eq i32 %add, 0
  br i1 %cmp6, label %if.then8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 513, ptr %io, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4_open(ptr nocapture noundef readonly %gameport, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %port = getelementptr inbounds %struct.l4, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp2.not = icmp eq i32 %mode, 2
  %or.cond = or i1 %cmp2.not, %cmp.not
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef writeonly %axes, ptr nocapture noundef writeonly %buttons) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %port = getelementptr inbounds %struct.l4, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  %4 = lshr i8 %3, 2
  %narrow = add nuw nsw i8 %4, -91
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %narrow) #8, !srcloc !42
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body9, label %entry.do.body61_crit_edge

entry.do.body61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

do.body9:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port, align 4
  %9 = and i8 %8, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %9) #8, !srcloc !42
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.body9
  %t.0.i = phi i32 [ 80, %do.body9 ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i)
  %cmp.not.i = icmp eq i32 %t.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  %dec.i = add nsw i32 %t.0.i, -1
  br i1 %or.cond.i, label %l4_wait_ready.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

l4_wait_ready.exit:                               ; preds = %while.cond.i
  br i1 %cmp.not.i, label %l4_wait_ready.exit.do.body61_crit_edge, label %if.end20

l4_wait_ready.exit.do.body61_crit_edge:           ; preds = %l4_wait_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end20:                                         ; preds = %l4_wait_ready.exit
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %conv26 = zext i8 %12 to i32
  %and27 = and i32 %conv26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end20.for.inc_crit_edge, label %if.end20.while.cond.i79_crit_edge

if.end20.while.cond.i79_crit_edge:                ; preds = %if.end20
  br label %while.cond.i79

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.i79:                                   ; preds = %while.cond.i79.while.cond.i79_crit_edge, %if.end20.while.cond.i79_crit_edge
  %t.0.i74 = phi i32 [ %dec.i78, %while.cond.i79.while.cond.i79_crit_edge ], [ 80, %if.end20.while.cond.i79_crit_edge ]
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i75 = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i74)
  %cmp.not.i76 = icmp eq i32 %t.0.i74, 0
  %or.cond.i77 = select i1 %tobool.not.i75, i1 true, i1 %cmp.not.i76
  %dec.i78 = add nsw i32 %t.0.i74, -1
  br i1 %or.cond.i77, label %l4_wait_ready.exit81, label %while.cond.i79.while.cond.i79_crit_edge

while.cond.i79.while.cond.i79_crit_edge:          ; preds = %while.cond.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i79

l4_wait_ready.exit81:                             ; preds = %while.cond.i79
  br i1 %cmp.not.i76, label %l4_wait_ready.exit81.do.body61_crit_edge, label %if.end33

l4_wait_ready.exit81.do.body61_crit_edge:         ; preds = %l4_wait_ready.exit81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end33:                                         ; preds = %l4_wait_ready.exit81
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %conv38 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %15)
  %cmp40 = icmp ugt i8 %15, -4
  %spec.store.select = select i1 %cmp40, i32 -1, i32 %conv38
  %16 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %axes, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.end20.for.inc_crit_edge
  %and27.1 = and i32 %conv26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.1)
  %tobool28.not.1 = icmp eq i32 %and27.1, 0
  br i1 %tobool28.not.1, label %for.inc.for.inc.1_crit_edge, label %for.inc.while.cond.i79.1_crit_edge

for.inc.while.cond.i79.1_crit_edge:               ; preds = %for.inc
  br label %while.cond.i79.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

while.cond.i79.1:                                 ; preds = %while.cond.i79.1.while.cond.i79.1_crit_edge, %for.inc.while.cond.i79.1_crit_edge
  %t.0.i74.1 = phi i32 [ %dec.i78.1, %while.cond.i79.1.while.cond.i79.1_crit_edge ], [ 80, %for.inc.while.cond.i79.1_crit_edge ]
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i75.1 = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i74.1)
  %cmp.not.i76.1 = icmp eq i32 %t.0.i74.1, 0
  %or.cond.i77.1 = select i1 %tobool.not.i75.1, i1 true, i1 %cmp.not.i76.1
  %dec.i78.1 = add nsw i32 %t.0.i74.1, -1
  br i1 %or.cond.i77.1, label %l4_wait_ready.exit81.1, label %while.cond.i79.1.while.cond.i79.1_crit_edge

while.cond.i79.1.while.cond.i79.1_crit_edge:      ; preds = %while.cond.i79.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i79.1

l4_wait_ready.exit81.1:                           ; preds = %while.cond.i79.1
  br i1 %cmp.not.i76.1, label %l4_wait_ready.exit81.1.do.body61_crit_edge, label %if.end33.1

l4_wait_ready.exit81.1.do.body61_crit_edge:       ; preds = %l4_wait_ready.exit81.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end33.1:                                       ; preds = %l4_wait_ready.exit81.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %conv38.1 = zext i8 %19 to i32
  %arrayidx.1 = getelementptr i32, ptr %axes, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %19)
  %cmp40.1 = icmp ugt i8 %19, -4
  %spec.store.select.1 = select i1 %cmp40.1, i32 -1, i32 %conv38.1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select.1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end33.1, %for.inc.for.inc.1_crit_edge
  %and27.2 = and i32 %conv26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.2)
  %tobool28.not.2 = icmp eq i32 %and27.2, 0
  br i1 %tobool28.not.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.while.cond.i79.2_crit_edge

for.inc.1.while.cond.i79.2_crit_edge:             ; preds = %for.inc.1
  br label %while.cond.i79.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

while.cond.i79.2:                                 ; preds = %while.cond.i79.2.while.cond.i79.2_crit_edge, %for.inc.1.while.cond.i79.2_crit_edge
  %t.0.i74.2 = phi i32 [ %dec.i78.2, %while.cond.i79.2.while.cond.i79.2_crit_edge ], [ 80, %for.inc.1.while.cond.i79.2_crit_edge ]
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i75.2 = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i74.2)
  %cmp.not.i76.2 = icmp eq i32 %t.0.i74.2, 0
  %or.cond.i77.2 = select i1 %tobool.not.i75.2, i1 true, i1 %cmp.not.i76.2
  %dec.i78.2 = add nsw i32 %t.0.i74.2, -1
  br i1 %or.cond.i77.2, label %l4_wait_ready.exit81.2, label %while.cond.i79.2.while.cond.i79.2_crit_edge

while.cond.i79.2.while.cond.i79.2_crit_edge:      ; preds = %while.cond.i79.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i79.2

l4_wait_ready.exit81.2:                           ; preds = %while.cond.i79.2
  br i1 %cmp.not.i76.2, label %l4_wait_ready.exit81.2.do.body61_crit_edge, label %if.end33.2

l4_wait_ready.exit81.2.do.body61_crit_edge:       ; preds = %l4_wait_ready.exit81.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end33.2:                                       ; preds = %l4_wait_ready.exit81.2
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %conv38.2 = zext i8 %23 to i32
  %arrayidx.2 = getelementptr i32, ptr %axes, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %23)
  %cmp40.2 = icmp ugt i8 %23, -4
  %spec.store.select.2 = select i1 %cmp40.2, i32 -1, i32 %conv38.2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select.2, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end33.2, %for.inc.1.for.inc.2_crit_edge
  %and27.3 = and i32 %conv26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.3)
  %tobool28.not.3 = icmp eq i32 %and27.3, 0
  br i1 %tobool28.not.3, label %for.inc.2.for.inc.3_crit_edge, label %for.inc.2.while.cond.i79.3_crit_edge

for.inc.2.while.cond.i79.3_crit_edge:             ; preds = %for.inc.2
  br label %while.cond.i79.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

while.cond.i79.3:                                 ; preds = %while.cond.i79.3.while.cond.i79.3_crit_edge, %for.inc.2.while.cond.i79.3_crit_edge
  %t.0.i74.3 = phi i32 [ %dec.i78.3, %while.cond.i79.3.while.cond.i79.3_crit_edge ], [ 80, %for.inc.2.while.cond.i79.3_crit_edge ]
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i75.3 = icmp eq i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i74.3)
  %cmp.not.i76.3 = icmp eq i32 %t.0.i74.3, 0
  %or.cond.i77.3 = select i1 %tobool.not.i75.3, i1 true, i1 %cmp.not.i76.3
  %dec.i78.3 = add nsw i32 %t.0.i74.3, -1
  br i1 %or.cond.i77.3, label %l4_wait_ready.exit81.3, label %while.cond.i79.3.while.cond.i79.3_crit_edge

while.cond.i79.3.while.cond.i79.3_crit_edge:      ; preds = %while.cond.i79.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i79.3

l4_wait_ready.exit81.3:                           ; preds = %while.cond.i79.3
  br i1 %cmp.not.i76.3, label %l4_wait_ready.exit81.3.do.body61_crit_edge, label %if.end33.3

l4_wait_ready.exit81.3.do.body61_crit_edge:       ; preds = %l4_wait_ready.exit81.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end33.3:                                       ; preds = %l4_wait_ready.exit81.3
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %conv38.3 = zext i8 %27 to i32
  %arrayidx.3 = getelementptr i32, ptr %axes, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %27)
  %cmp40.3 = icmp ugt i8 %27, -4
  %spec.store.select.3 = select i1 %cmp40.3, i32 -1, i32 %conv38.3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select.3, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end33.3, %for.inc.2.for.inc.3_crit_edge
  %29 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  br i1 %tobool48.not, label %for.inc.3.do.body61_crit_edge, label %for.inc.3.while.cond.i87_crit_edge

for.inc.3.while.cond.i87_crit_edge:               ; preds = %for.inc.3
  br label %while.cond.i87

for.inc.3.do.body61_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

while.cond.i87:                                   ; preds = %while.cond.i87.while.cond.i87_crit_edge, %for.inc.3.while.cond.i87_crit_edge
  %t.0.i82 = phi i32 [ %dec.i86, %while.cond.i87.while.cond.i87_crit_edge ], [ 80, %for.inc.3.while.cond.i87_crit_edge ]
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i83 = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i82)
  %cmp.not.i84 = icmp eq i32 %t.0.i82, 0
  %or.cond.i85 = select i1 %tobool.not.i83, i1 true, i1 %cmp.not.i84
  %dec.i86 = add nsw i32 %t.0.i82, -1
  br i1 %or.cond.i85, label %l4_wait_ready.exit89, label %while.cond.i87.while.cond.i87_crit_edge

while.cond.i87.while.cond.i87_crit_edge:          ; preds = %while.cond.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i87

l4_wait_ready.exit89:                             ; preds = %while.cond.i87
  br i1 %cmp.not.i84, label %l4_wait_ready.exit89.do.body61_crit_edge, label %if.end53

l4_wait_ready.exit89.do.body61_crit_edge:         ; preds = %l4_wait_ready.exit89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61

if.end53:                                         ; preds = %l4_wait_ready.exit89
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %33 = and i8 %32, 15
  %and59 = zext i8 %33 to i32
  %34 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and59, ptr %buttons, align 4
  br label %do.body61

do.body61:                                        ; preds = %if.end53, %l4_wait_ready.exit89.do.body61_crit_edge, %for.inc.3.do.body61_crit_edge, %l4_wait_ready.exit81.3.do.body61_crit_edge, %l4_wait_ready.exit81.2.do.body61_crit_edge, %l4_wait_ready.exit81.1.do.body61_crit_edge, %l4_wait_ready.exit81.do.body61_crit_edge, %l4_wait_ready.exit.do.body61_crit_edge, %entry.do.body61_crit_edge
  %result.0 = phi i32 [ -1, %entry.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit89.do.body61_crit_edge ], [ 0, %if.end53 ], [ 0, %for.inc.3.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit81.3.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit81.2.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit81.1.do.body61_crit_edge ], [ -1, %l4_wait_ready.exit81.do.body61_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4_calibrate(ptr nocapture noundef readonly %gameport, ptr nocapture noundef %axes, ptr nocapture noundef readonly %max) #2 align 64 {
entry:
  %cal = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cal) #8
  %0 = getelementptr inbounds [4 x i32], ptr %cal, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %cal, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %cal, i32 0, i32 3
  %3 = call ptr @memset(ptr %cal, i32 255, i32 16)
  %4 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gameport, align 8
  %port = getelementptr inbounds %struct.l4, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %8 = lshr i8 %7, 2
  %narrow = add nuw nsw i8 %8, -91
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %narrow) #8, !srcloc !42
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body8.i, label %cleanup.critedge

do.body8.i:                                       ; preds = %entry
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -110) #8, !srcloc !42
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.body8.i
  %t.0.i.i = phi i32 [ 80, %do.body8.i ], [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i.i)
  %cmp.not.i.i = icmp eq i32 %t.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i.i
  %dec.i.i = add nsw i32 %t.0.i.i, -1
  br i1 %or.cond.i.i, label %l4_wait_ready.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

l4_wait_ready.exit.i:                             ; preds = %while.cond.i.i
  br i1 %cmp.not.i.i, label %cleanup.critedge69, label %if.end15.i

if.end15.i:                                       ; preds = %l4_wait_ready.exit.i
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @__sanitizer_cov_trace_cmp1(i8 %narrow, i8 %13)
  %cmp.not.i = icmp eq i8 %narrow, %13
  br i1 %cmp.not.i, label %if.end15.i.while.cond.i60.i_crit_edge, label %cleanup.critedge70

if.end15.i.while.cond.i60.i_crit_edge:            ; preds = %if.end15.i
  br label %while.cond.i60.i

while.cond.i60.i:                                 ; preds = %while.cond.i60.i.while.cond.i60.i_crit_edge, %if.end15.i.while.cond.i60.i_crit_edge
  %t.0.i55.i = phi i32 [ %dec.i59.i, %while.cond.i60.i.while.cond.i60.i_crit_edge ], [ 80, %if.end15.i.while.cond.i60.i_crit_edge ]
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i56.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i55.i)
  %cmp.not.i57.i = icmp eq i32 %t.0.i55.i, 0
  %or.cond.i58.i = select i1 %tobool.not.i56.i, i1 true, i1 %cmp.not.i57.i
  %dec.i59.i = add nsw i32 %t.0.i55.i, -1
  br i1 %or.cond.i58.i, label %l4_wait_ready.exit62.i, label %while.cond.i60.i.while.cond.i60.i_crit_edge

while.cond.i60.i.while.cond.i60.i_crit_edge:      ; preds = %while.cond.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i60.i

l4_wait_ready.exit62.i:                           ; preds = %while.cond.i60.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp.not.i57.i, label %cleanup.critedge71, label %do.body30.i

do.body30.i:                                      ; preds = %l4_wait_ready.exit62.i
  %conv34.i = and i8 %7, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 %conv34.i) #8, !srcloc !42
  br label %while.cond.i68.i

while.cond.i68.i:                                 ; preds = %while.cond.i68.i.while.cond.i68.i_crit_edge, %do.body30.i
  %t.0.i63.i = phi i32 [ %dec.i67.i, %while.cond.i68.i.while.cond.i68.i_crit_edge ], [ 80, %do.body30.i ]
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i64.i = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.i)
  %cmp.not.i65.i = icmp eq i32 %t.0.i63.i, 0
  %or.cond.i66.i = select i1 %tobool.not.i64.i, i1 true, i1 %cmp.not.i65.i
  %dec.i67.i = add nsw i32 %t.0.i63.i, -1
  br i1 %or.cond.i66.i, label %l4_wait_ready.exit70.i, label %while.cond.i68.i.while.cond.i68.i_crit_edge

while.cond.i68.i.while.cond.i68.i_crit_edge:      ; preds = %while.cond.i68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.i

l4_wait_ready.exit70.i:                           ; preds = %while.cond.i68.i
  br i1 %cmp.not.i65.i, label %cleanup.critedge72, label %if.end41.i

if.end41.i:                                       ; preds = %l4_wait_ready.exit70.i
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %conv46.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %cal to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv46.i, ptr %cal, align 4
  br label %while.cond.i68.1.i

while.cond.i68.1.i:                               ; preds = %while.cond.i68.1.i.while.cond.i68.1.i_crit_edge, %if.end41.i
  %t.0.i63.1.i = phi i32 [ %dec.i67.1.i, %while.cond.i68.1.i.while.cond.i68.1.i_crit_edge ], [ 80, %if.end41.i ]
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i64.1.i = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.1.i)
  %cmp.not.i65.1.i = icmp eq i32 %t.0.i63.1.i, 0
  %or.cond.i66.1.i = select i1 %tobool.not.i64.1.i, i1 true, i1 %cmp.not.i65.1.i
  %dec.i67.1.i = add nsw i32 %t.0.i63.1.i, -1
  br i1 %or.cond.i66.1.i, label %l4_wait_ready.exit70.1.i, label %while.cond.i68.1.i.while.cond.i68.1.i_crit_edge

while.cond.i68.1.i.while.cond.i68.1.i_crit_edge:  ; preds = %while.cond.i68.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.1.i

l4_wait_ready.exit70.1.i:                         ; preds = %while.cond.i68.1.i
  br i1 %cmp.not.i65.1.i, label %cleanup.critedge73, label %if.end41.1.i

if.end41.1.i:                                     ; preds = %l4_wait_ready.exit70.1.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %conv46.1.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv46.1.i, ptr %0, align 4
  br label %while.cond.i68.2.i

while.cond.i68.2.i:                               ; preds = %while.cond.i68.2.i.while.cond.i68.2.i_crit_edge, %if.end41.1.i
  %t.0.i63.2.i = phi i32 [ %dec.i67.2.i, %while.cond.i68.2.i.while.cond.i68.2.i_crit_edge ], [ 80, %if.end41.1.i ]
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i64.2.i = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.2.i)
  %cmp.not.i65.2.i = icmp eq i32 %t.0.i63.2.i, 0
  %or.cond.i66.2.i = select i1 %tobool.not.i64.2.i, i1 true, i1 %cmp.not.i65.2.i
  %dec.i67.2.i = add nsw i32 %t.0.i63.2.i, -1
  br i1 %or.cond.i66.2.i, label %l4_wait_ready.exit70.2.i, label %while.cond.i68.2.i.while.cond.i68.2.i_crit_edge

while.cond.i68.2.i.while.cond.i68.2.i_crit_edge:  ; preds = %while.cond.i68.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.2.i

l4_wait_ready.exit70.2.i:                         ; preds = %while.cond.i68.2.i
  br i1 %cmp.not.i65.2.i, label %cleanup.critedge74, label %if.end41.2.i

if.end41.2.i:                                     ; preds = %l4_wait_ready.exit70.2.i
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %conv46.2.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv46.2.i, ptr %1, align 4
  br label %while.cond.i68.3.i

while.cond.i68.3.i:                               ; preds = %while.cond.i68.3.i.while.cond.i68.3.i_crit_edge, %if.end41.2.i
  %t.0.i63.3.i = phi i32 [ %dec.i67.3.i, %while.cond.i68.3.i.while.cond.i68.3.i_crit_edge ], [ 80, %if.end41.2.i ]
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i64.3.i = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.i63.3.i)
  %cmp.not.i65.3.i = icmp eq i32 %t.0.i63.3.i, 0
  %or.cond.i66.3.i = select i1 %tobool.not.i64.3.i, i1 true, i1 %cmp.not.i65.3.i
  %dec.i67.3.i = add nsw i32 %t.0.i63.3.i, -1
  br i1 %or.cond.i66.3.i, label %l4_wait_ready.exit70.3.i, label %while.cond.i68.3.i.while.cond.i68.3.i_crit_edge

while.cond.i68.3.i.while.cond.i68.3.i_crit_edge:  ; preds = %while.cond.i68.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i68.3.i

l4_wait_ready.exit70.3.i:                         ; preds = %while.cond.i68.3.i
  br i1 %cmp.not.i65.3.i, label %cleanup.critedge75, label %if.end41.3.i

if.end41.3.i:                                     ; preds = %l4_wait_ready.exit70.3.i
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr)) #8, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %conv46.3.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv46.3.i, ptr %2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  %32 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max, align 4
  %34 = ptrtoint ptr %cal to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cal, align 4
  %mul = mul i32 %35, %33
  %div = sdiv i32 %mul, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %mul)
  %cmp3 = icmp slt i32 %mul, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 51199, i32 %mul)
  %cmp5 = icmp sgt i32 %mul, 51199
  %spec.select = select i1 %cmp5, i32 255, i32 %div
  %cond10 = select i1 %cmp3, i32 1, i32 %spec.select
  %36 = ptrtoint ptr %axes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %axes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp12 = icmp slt i32 %37, 0
  br i1 %cmp12, label %if.end41.3.i.cond.end20.thread_crit_edge, label %cond.end20

if.end41.3.i.cond.end20.thread_crit_edge:         ; preds = %if.end41.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20.thread

cond.end20:                                       ; preds = %if.end41.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul18 = mul i32 %37, %35
  %div19 = sdiv i32 %mul18, %cond10
  %38 = tail call i32 @llvm.smin.i32(i32 %div19, i32 252)
  br label %cond.end20.thread

cond.end20.thread:                                ; preds = %cond.end20, %if.end41.3.i.cond.end20.thread_crit_edge
  %39 = phi i32 [ -1, %if.end41.3.i.cond.end20.thread_crit_edge ], [ %38, %cond.end20 ]
  %40 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %axes, align 4
  %41 = ptrtoint ptr %cal to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond10, ptr %cal, align 4
  %arrayidx.1 = getelementptr i32, ptr %max, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %0, align 4
  %mul.1 = mul i32 %45, %43
  %div.1 = sdiv i32 %mul.1, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %mul.1)
  %cmp3.1 = icmp slt i32 %mul.1, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 51199, i32 %mul.1)
  %cmp5.1 = icmp sgt i32 %mul.1, 51199
  %spec.select.1 = select i1 %cmp5.1, i32 255, i32 %div.1
  %cond10.1 = select i1 %cmp3.1, i32 1, i32 %spec.select.1
  %arrayidx11.1 = getelementptr i32, ptr %axes, i32 1
  %46 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp12.1 = icmp slt i32 %47, 0
  br i1 %cmp12.1, label %cond.end20.thread.cond.end20.thread.1_crit_edge, label %cond.end20.1

cond.end20.thread.cond.end20.thread.1_crit_edge:  ; preds = %cond.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20.thread.1

cond.end20.1:                                     ; preds = %cond.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  %mul18.1 = mul i32 %47, %45
  %div19.1 = sdiv i32 %mul18.1, %cond10.1
  %48 = tail call i32 @llvm.smin.i32(i32 %div19.1, i32 252)
  br label %cond.end20.thread.1

cond.end20.thread.1:                              ; preds = %cond.end20.1, %cond.end20.thread.cond.end20.thread.1_crit_edge
  %49 = phi i32 [ -1, %cond.end20.thread.cond.end20.thread.1_crit_edge ], [ %48, %cond.end20.1 ]
  %50 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx11.1, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond10.1, ptr %0, align 4
  %arrayidx.2 = getelementptr i32, ptr %max, i32 2
  %52 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.2, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %mul.2 = mul i32 %55, %53
  %div.2 = sdiv i32 %mul.2, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %mul.2)
  %cmp3.2 = icmp slt i32 %mul.2, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 51199, i32 %mul.2)
  %cmp5.2 = icmp sgt i32 %mul.2, 51199
  %spec.select.2 = select i1 %cmp5.2, i32 255, i32 %div.2
  %cond10.2 = select i1 %cmp3.2, i32 1, i32 %spec.select.2
  %arrayidx11.2 = getelementptr i32, ptr %axes, i32 2
  %56 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp12.2 = icmp slt i32 %57, 0
  br i1 %cmp12.2, label %cond.end20.thread.1.cond.end20.thread.2_crit_edge, label %cond.end20.2

cond.end20.thread.1.cond.end20.thread.2_crit_edge: ; preds = %cond.end20.thread.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20.thread.2

cond.end20.2:                                     ; preds = %cond.end20.thread.1
  call void @__sanitizer_cov_trace_pc() #10
  %mul18.2 = mul i32 %57, %55
  %div19.2 = sdiv i32 %mul18.2, %cond10.2
  %58 = tail call i32 @llvm.smin.i32(i32 %div19.2, i32 252)
  br label %cond.end20.thread.2

cond.end20.thread.2:                              ; preds = %cond.end20.2, %cond.end20.thread.1.cond.end20.thread.2_crit_edge
  %59 = phi i32 [ -1, %cond.end20.thread.1.cond.end20.thread.2_crit_edge ], [ %58, %cond.end20.2 ]
  %60 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx11.2, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond10.2, ptr %1, align 4
  %arrayidx.3 = getelementptr i32, ptr %max, i32 3
  %62 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.3, align 4
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %2, align 4
  %mul.3 = mul i32 %65, %63
  %div.3 = sdiv i32 %mul.3, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %mul.3)
  %cmp3.3 = icmp slt i32 %mul.3, 200
  call void @__sanitizer_cov_trace_const_cmp4(i32 51199, i32 %mul.3)
  %cmp5.3 = icmp sgt i32 %mul.3, 51199
  %spec.select.3 = select i1 %cmp5.3, i32 255, i32 %div.3
  %cond10.3 = select i1 %cmp3.3, i32 1, i32 %spec.select.3
  %arrayidx11.3 = getelementptr i32, ptr %axes, i32 3
  %66 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx11.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp12.3 = icmp slt i32 %67, 0
  br i1 %cmp12.3, label %cond.end20.thread.2.cond.end20.thread.3_crit_edge, label %cond.end20.3

cond.end20.thread.2.cond.end20.thread.3_crit_edge: ; preds = %cond.end20.thread.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20.thread.3

cond.end20.3:                                     ; preds = %cond.end20.thread.2
  call void @__sanitizer_cov_trace_pc() #10
  %mul18.3 = mul i32 %67, %65
  %div19.3 = sdiv i32 %mul18.3, %cond10.3
  %68 = tail call i32 @llvm.smin.i32(i32 %div19.3, i32 252)
  br label %cond.end20.thread.3

cond.end20.thread.3:                              ; preds = %cond.end20.3, %cond.end20.thread.2.cond.end20.thread.3_crit_edge
  %69 = phi i32 [ -1, %cond.end20.thread.2.cond.end20.thread.3_crit_edge ], [ %68, %cond.end20.3 ]
  %70 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx11.3, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond10.3, ptr %2, align 4
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port, align 4
  %conv34 = zext i8 %73 to i32
  %call36 = call fastcc i32 @l4_setcal(i32 noundef %conv34, ptr noundef nonnull %cal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp ne i32 %call36, 0
  %. = sext i1 %tobool37.not to i32
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge69:                               ; preds = %l4_wait_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge70:                               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge71:                               ; preds = %l4_wait_ready.exit62.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge72:                               ; preds = %l4_wait_ready.exit70.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge73:                               ; preds = %l4_wait_ready.exit70.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge74:                               ; preds = %l4_wait_ready.exit70.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup.critedge75:                               ; preds = %l4_wait_ready.exit70.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873855 to ptr), i8 -92) #8, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge75, %cleanup.critedge74, %cleanup.critedge73, %cleanup.critedge72, %cleanup.critedge71, %cleanup.critedge70, %cleanup.critedge69, %cleanup.critedge, %cond.end20.thread.3
  %retval.0 = phi i32 [ %., %cond.end20.thread.3 ], [ -1, %cleanup.critedge ], [ -1, %cleanup.critedge69 ], [ -1, %cleanup.critedge70 ], [ -1, %cleanup.critedge71 ], [ -1, %cleanup.critedge72 ], [ -1, %cleanup.critedge73 ], [ -1, %cleanup.critedge74 ], [ -1, %cleanup.critedge75 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cal) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_author183, !1, !"__UNIQUE_ID_author183", i1 false, i1 false}
!1 = !{!"../drivers/input/gameport/lightning.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_description184, !3, !"__UNIQUE_ID_description184", i1 false, i1 false}
!3 = !{!"../drivers/input/gameport/lightning.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_file185, !5, !"__UNIQUE_ID_file185", i1 false, i1 false}
!5 = !{!"../drivers/input/gameport/lightning.c", i32 35, i32 1}
!6 = !{ptr @__UNIQUE_ID_license186, !5, !"__UNIQUE_ID_license186", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_lightning__187_324_l4_init6, !8, !"__initcall__kmod_lightning__187_324_l4_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/gameport/lightning.c", i32 324, i32 1}
!9 = !{ptr @__exitcall_l4_exit, !10, !"__exitcall_l4_exit", i1 false, i1 false}
!10 = !{!"../drivers/input/gameport/lightning.c", i32 325, i32 1}
!11 = !{ptr @l4_ports, !12, !"l4_ports", i1 false, i1 false}
!12 = !{!"../drivers/input/gameport/lightning.c", i32 42, i32 18}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/gameport/lightning.c", i32 292, i32 7}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/gameport/lightning.c", i32 274, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @l4_add_card._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @l4_add_card._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/gameport/lightning.c", i32 215, i32 4}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @l4_create_ports._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @l4_create_ports._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/gameport/lightning.c", i32 229, i32 27}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/gameport/lightning.c", i32 230, i32 27}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2152754163}
!42 = !{i64 472280}
!43 = !{i64 2152744898}
!44 = !{i64 2152745244}
!45 = !{i64 472675}
!46 = !{i64 2152745635}
!47 = !{i64 2152745858}
!48 = !{i64 2152739365}
!49 = !{i64 2152746249}
!50 = !{i64 2152746471}
!51 = !{i64 2152746800}
!52 = !{i64 2152747132}
!53 = !{i64 2152753561}
!54 = !{i64 2152749372}
!55 = !{i64 2152749714}
!56 = !{i64 2152750105}
!57 = !{i64 2152750328}
!58 = !{i64 2152750719}
!59 = !{i64 2152751001}
!60 = !{i64 2152751283}
!61 = !{i64 2152742052}
!62 = !{i64 2152739588}
!63 = !{i64 2152739938}
!64 = !{i64 2152740329}
!65 = !{i64 2152740555}
!66 = !{i64 2152740946}
!67 = !{i64 2152741223}
!68 = !{i64 2152741500}
!69 = !{i64 2152741718}
!70 = !{i64 2152742384}
!71 = !{i64 2152742730}
!72 = !{i64 2152743121}
!73 = !{i64 2152743735}
!74 = !{i64 2152744348}
!75 = !{i64 2152744566}
