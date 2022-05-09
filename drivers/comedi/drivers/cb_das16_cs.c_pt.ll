; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/cb_das16_cs.c_pt.bc'
source_filename = "../drivers/comedi/drivers/cb_das16_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.das16cs_board = type { ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.das16cs_private = type { i16, i16 }

@__initcall__kmod_cb_das16_cs__236_450_driver_das16cs_init6 = internal global ptr @driver_das16cs_init, section ".initcall6.init", align 4
@driver_das16cs = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pcmcia_disable, ptr @das16cs_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@das16cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @das16cs_pcmcia_attach, ptr @comedi_pcmcia_auto_unconfig, ptr null, ptr null, ptr null, ptr @das16cs_id_table, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_driver_das16cs_exit = internal global ptr @driver_das16cs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [53 x i8] c"cb_das16_cs.author=David A. Schleef <ds@schleef.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [75 x i8] c"cb_das16_cs.description=Comedi driver for Computer Boards PC-CARD DAS16/16\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"cb_das16_cs.file=drivers/comedi/drivers/cb_das16_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"cb_das16_cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cb_das16_cs\00", [20 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das16cs_boards = internal constant { [3 x %struct.das16cs_board], [60 x i8] } { [3 x %struct.das16cs_board] [%struct.das16cs_board { ptr @.str.1, i32 57, i8 -64 }, %struct.das16cs_board { ptr @.str.2, i32 16393, i8 0 }, %struct.das16cs_board { ptr @.str.3, i32 0, i8 0 }], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PC-CARD DAS16/16-AO\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM-DAS16s/16\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PC-CARD DAS16/16\00", [47 x i8] zeroinitializer }, align 32
@das16cs_ai_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@das16cs_id_table = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 453, i16 57, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 453, i16 16393, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 57, i64 16393]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"driver_das16cs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 424, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"das16cs_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 443, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 425, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"das16cs_boards\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 95, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 97, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 102, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 105, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"das16cs_ai_range\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 115, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"das16cs_id_table\00", align 1
@___asan_gen_.33 = private constant [40 x i8] c"../drivers/comedi/drivers/cb_das16_cs.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 436, i32 38 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_driver_das16cs_exit, ptr @__initcall__kmod_cb_das16_cs__236_450_driver_das16cs_init6, ptr @driver_das16cs_exit, ptr @driver_das16cs, ptr @das16cs_driver, ptr @.str, ptr @das16cs_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @das16cs_ai_range, ptr @das16cs_id_table], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_das16cs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16cs_boards to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16cs_ai_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16cs_id_table to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_das16cs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_driver_register(ptr noundef nonnull @driver_das16cs, ptr noundef nonnull @das16cs_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @driver_das16cs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pcmcia_driver_unregister(ptr noundef nonnull @driver_das16cs, ptr noundef nonnull @das16cs_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_disable(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pcmcia_dev(ptr noundef %dev) #4
  %card_id.i = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %card_id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %card_id.i, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 57, label %entry.das16cs_find_boardinfo.exit_crit_edge
    i16 16393, label %if.then.fold.split.i
    i16 0, label %if.then.fold.split4.i
  ]

entry.das16cs_find_boardinfo.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %das16cs_find_boardinfo.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %das16cs_find_boardinfo.exit

if.then.fold.split4.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %das16cs_find_boardinfo.exit

das16cs_find_boardinfo.exit:                      ; preds = %if.then.fold.split4.i, %if.then.fold.split.i, %entry.das16cs_find_boardinfo.exit_crit_edge
  %3 = phi i1 [ false, %entry.das16cs_find_boardinfo.exit_crit_edge ], [ true, %if.then.fold.split.i ], [ false, %if.then.fold.split4.i ]
  %4 = phi i1 [ false, %entry.das16cs_find_boardinfo.exit_crit_edge ], [ false, %if.then.fold.split.i ], [ true, %if.then.fold.split4.i ]
  %i.02.lcssa.i = phi i32 [ 0, %entry.das16cs_find_boardinfo.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split4.i ]
  %arrayidx.i = getelementptr [3 x %struct.das16cs_board], ptr @das16cs_boards, i32 0, i32 %i.02.lcssa.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %das16cs_find_boardinfo.exit.cleanup_crit_edge, label %if.end

das16cs_find_boardinfo.exit.cleanup_crit_edge:    ; preds = %das16cs_find_boardinfo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %das16cs_find_boardinfo.exit
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.i, ptr %board_ptr, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %board_name, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config_flags, align 4
  %or = or i32 %10, 2049
  store i32 %or, ptr %config_flags, align 4
  %call2 = tail call i32 @comedi_pcmcia_enable(ptr noundef %dev, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %iobase, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 22
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %priv, align 8
  %call6 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 4) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add = add i32 %18, 8
  %call11 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 100, i32 noundef 2, i32 noundef 0) #4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11, ptr %pacer, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call16 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %20 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 4
  %23 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 13
  %25 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 15
  %26 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @das16cs_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %21, i32 0, i32 18
  %27 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @das16cs_ai_insn_read, ptr %insn_read, align 4
  %28 = load ptr, ptr %subdevices, align 4
  %tobool23.not = or i1 %3, %4
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end19
  %arrayidx22 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1
  %type25 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 2
  %29 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %type25, align 4
  %subdev_flags26 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 4
  %30 = ptrtoint ptr %subdev_flags26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 131072, ptr %subdev_flags26, align 4
  %n_chan27 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 3
  %31 = ptrtoint ptr %n_chan27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %n_chan27, align 4
  %maxdata28 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 13
  %32 = ptrtoint ptr %maxdata28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 65535, ptr %maxdata28, align 4
  %range_table29 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 15
  %33 = ptrtoint ptr %range_table29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @range_bipolar10, ptr %range_table29, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 19
  %34 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @das16cs_ao_insn_write, ptr %insn_write, align 4
  %call30 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then24.if.end35_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %type34 = getelementptr %struct.comedi_subdevice, ptr %28, i32 1, i32 2
  %35 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %type34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then24.if.end35_crit_edge
  %cond = phi i32 [ 4, %if.then24.if.end35_crit_edge ], [ 8, %if.else ]
  %36 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subdevices, align 4
  %type38 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 2
  %38 = ptrtoint ptr %type38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %type38, align 4
  %subdev_flags39 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 4
  %39 = ptrtoint ptr %subdev_flags39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196608, ptr %subdev_flags39, align 4
  %n_chan44 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 3
  %40 = ptrtoint ptr %n_chan44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %n_chan44, align 4
  %maxdata45 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 13
  %41 = ptrtoint ptr %maxdata45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %maxdata45, align 4
  %range_table46 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 15
  %42 = ptrtoint ptr %range_table46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @range_unipolar5, ptr %range_table46, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 20
  %43 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @das16cs_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 21
  %44 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @das16cs_dio_insn_config, ptr %insn_config, align 4
  %45 = load ptr, ptr %subdevices, align 4
  %arrayidx48 = getelementptr %struct.comedi_subdevice, ptr %45, i32 3
  %46 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx48, ptr noundef %47) #4
  %48 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pacer, align 4
  %insn_config51 = getelementptr inbounds %struct.comedi_8254, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %insn_config51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @das16cs_counter_insn_config, ptr %insn_config51, align 4
  %51 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %51, i32 noundef 1, i1 noundef zeroext true) #4
  %52 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %53, i32 noundef 2, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then24.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %das16cs_find_boardinfo.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -19, %das16cs_find_boardinfo.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call30, %if.then24.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pcmcia_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %4 = trunc i32 %3 to i16
  %5 = and i16 %4, 15
  %6 = mul nuw i16 %5, 4352
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 2
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %9 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !38
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 2
  %12 = and i16 %11, 3295
  %13 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cmp = icmp eq i32 %13, 33554432
  %14 = or i16 %12, 32
  %storemerge = select i1 %cmp, i16 %12, i16 %14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %storemerge, ptr %1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add28 = add i32 %20, 4
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %21 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #4, !srcloc !38
  %misc2 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %misc2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %misc2, align 2
  %24 = and i16 %23, -20225
  store i16 %24, ptr %misc2, align 2
  %trunc = trunc i32 %shr to i8
  %25 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %trunc, label %entry.do.body54_crit_edge [
    i8 0, label %entry.do.body54.sink.split_crit_edge
    i8 3, label %sw.bb49
    i8 2, label %sw.bb44
  ]

entry.do.body54.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54.sink.split

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54.sink.split

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body54.sink.split

do.body54.sink.split:                             ; preds = %sw.bb49, %sw.bb44, %entry.do.body54.sink.split_crit_edge
  %.sink115 = phi i16 [ 256, %sw.bb44 ], [ 512, %sw.bb49 ], [ 1024, %entry.do.body54.sink.split_crit_edge ]
  %26 = or i16 %24, %.sink115
  %27 = ptrtoint ptr %misc2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %misc2, align 2
  br label %do.body54

do.body54:                                        ; preds = %do.body54.sink.split, %entry.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %misc2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %misc2, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add59 = add i32 %32, 6
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %33 = inttoptr i32 %add61 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #4, !srcloc !38
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp63112.not = icmp eq i32 %35, 0
  br i1 %cmp63112.not, label %do.body54.cleanup_crit_edge, label %do.body54.do.body65_crit_edge

do.body54.do.body65_crit_edge:                    ; preds = %do.body54
  br label %do.body65

do.body54.cleanup_crit_edge:                      ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body65:                                        ; preds = %if.end75.do.body65_crit_edge, %do.body54.do.body65_crit_edge
  %i.0113 = phi i32 [ %inc, %if.end75.do.body65_crit_edge ], [ 0, %do.body54.do.body65_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %and70 = and i32 %37, 1048575
  %add71 = or i32 %and70, -18874368
  %38 = inttoptr i32 %add71 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 0) #4, !srcloc !38
  %call73 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das16cs_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool.not = icmp eq i32 %call73, 0
  br i1 %tobool.not, label %if.end75, label %do.body65.cleanup_crit_edge

do.body65.cleanup_crit_edge:                      ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end75:                                         ; preds = %do.body65
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %and78 = and i32 %40, 1048575
  %add79 = or i32 %and78, -18874368
  %41 = inttoptr i32 %add79 to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #4, !srcloc !42
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %conv82 = zext i16 %43 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0113
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv82, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0113, 1
  %45 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n, align 4
  %cmp63 = icmp ult i32 %inc, %46
  br i1 %cmp63, label %if.end75.do.body65_crit_edge, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end75.do.body65_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body65

cleanup:                                          ; preds = %if.end75.cleanup_crit_edge, %do.body65.cleanup_crit_edge, %do.body54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body54.cleanup_crit_edge ], [ %inc, %if.end75.cleanup_crit_edge ], [ %call73, %do.body65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp97.not = icmp eq i32 %9, 0
  br i1 %cmp97.not, label %entry.for.end68_crit_edge, label %for.body.lr.ph

entry.for.end68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end68

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %misc1.0.v = select i1 %tobool.not, i16 8, i16 1
  br label %for.body

for.body:                                         ; preds = %do.body55.for.body_crit_edge, %for.body.lr.ph
  %i.098 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body55.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.098
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add = add i32 %16, 4
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %17 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #4, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 2
  %21 = and i16 %20, -16
  %misc1.0 = or i16 %21, %misc1.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %22 = tail call i16 @llvm.bswap.i16(i16 %misc1.0)
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add17 = add i32 %24, 4
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %25 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #4, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #4
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body
  %bit.096 = phi i32 [ 15, %for.body ], [ %dec, %for.body24.for.body24_crit_edge ]
  %misc1.195 = phi i16 [ %misc1.0, %for.body ], [ %misc1.2, %for.body24.for.body24_crit_edge ]
  %27 = shl nuw i32 1, %bit.096
  %28 = and i32 %27, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not = icmp eq i32 %28, 0
  %29 = and i16 %misc1.195, -3
  %masksel = select i1 %tobool26.not, i16 0, i16 2
  %misc1.2 = or i16 %masksel, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %30 = tail call i16 @llvm.bswap.i16(i16 %misc1.2)
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add40 = add i32 %32, 4
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %33 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #4, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %35 = or i16 %misc1.2, 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add51 = add i32 %38, 4
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %39 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #4, !srcloc !38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #4
  %dec = add nsw i32 %bit.096, -1
  %cmp22.not = icmp eq i32 %bit.096, 0
  br i1 %cmp22.not, label %do.body55, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

do.body55:                                        ; preds = %for.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %41 = or i16 %misc1.2, 9
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %add63 = add i32 %44, 4
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %45 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #4, !srcloc !38
  %inc = add nuw i32 %i.098, 1
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %47
  br i1 %cmp, label %do.body55.for.body_crit_edge, label %do.body55.for.end68_crit_edge

do.body55.for.end68_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end68

do.body55.for.body_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end68:                                        ; preds = %do.body55.for.end68_crit_edge, %entry.for.end68_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end68_crit_edge ], [ %11, %do.body55.for.end68_crit_edge ]
  %48 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %readback, align 4
  %arrayidx70 = getelementptr i32, ptr %49, i32 %and
  %50 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %val.0.lcssa, ptr %arrayidx70, align 4
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #4, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase3, align 4
  %add4 = add i32 %7, 16
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #4, !srcloc !42
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %conv9 = zext i16 %10 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 15, i32 240
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  %and3 = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %misc28 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %misc28 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %misc28, align 2
  %8 = and i16 %7, -129
  %masksel = select i1 %tobool4.not, i16 0, i16 128
  %.sink = or i16 %8, %masksel
  store i16 %.sink, ptr %misc28, align 2
  %9 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_bits, align 4
  %and14 = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %misc222 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %11 = and i16 %.sink, -65
  %masksel46 = select i1 %tobool15.not, i16 0, i16 64
  %.sink45 = or i16 %11, %masksel46
  %12 = ptrtoint ptr %misc222 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %.sink45, ptr %misc222, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %misc227 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %misc227 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %misc227, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 6
  %and28 = and i32 %add, 1048575
  %add29 = or i32 %and28, -18874368
  %18 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #4, !srcloc !38
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end2 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_counter_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2003, label %sw.bb
    i32 2004, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %misc2 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %misc2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %misc2, align 2
  %10 = or i16 %9, 2
  store i16 %10, ptr %misc2, align 2
  br label %do.body

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %misc25 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %misc25 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %misc25, align 2
  %13 = and i16 %12, -3
  store i16 %13, ptr %misc25, align 2
  br label %do.body

do.body:                                          ; preds = %sw.bb4, %sw.bb2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %misc28 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %misc28 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %misc28, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add = add i32 %18, 6
  %and9 = and i32 %add, 1048575
  %add10 = or i32 %and9, -18874368
  %19 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #4, !srcloc !38
  br label %sw.epilog20

sw.bb11:                                          ; preds = %entry
  %misc212 = getelementptr inbounds %struct.das16cs_private, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %misc212 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %misc212, align 2
  %22 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  %arrayidx17 = getelementptr i32, ptr %data, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx17, align 4
  %arrayidx16 = getelementptr i32, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10000, ptr %arrayidx16, align 4
  br label %sw.epilog20

if.else:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr i32, ptr %data, i32 2
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx18, align 4
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %if.else, %if.then, %do.body
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog20, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %sw.epilog20 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_set_busy(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool.not = icmp sgt i16 %3, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16cs_pcmcia_attach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_auto_config(ptr noundef %link, ptr noundef nonnull @driver_das16cs) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_cb_das16_cs__236_450_driver_das16cs_init6, !1, !"__initcall__kmod_cb_das16_cs__236_450_driver_das16cs_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 450, i32 1}
!2 = !{ptr @__exitcall_driver_das16cs_exit, !1, !"__exitcall_driver_das16cs_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 452, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 453, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 454, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 425, i32 17}
!12 = !{ptr @driver_das16cs, !13, !"driver_das16cs", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 424, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 97, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 102, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 105, i32 12}
!20 = !{ptr @das16cs_boards, !21, !"das16cs_boards", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 95, i32 35}
!22 = !{ptr @das16cs_ai_range, !23, !"das16cs_ai_range", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 115, i32 35}
!24 = !{ptr @das16cs_driver, !25, !"das16cs_driver", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 443, i32 29}
!26 = !{ptr @das16cs_id_table, !27, !"das16cs_id_table", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/cb_das16_cs.c", i32 436, i32 38}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2154584917}
!38 = !{i64 4626139}
!39 = !{i64 2154585856}
!40 = !{i64 2154586689}
!41 = !{i64 2154587191}
!42 = !{i64 4626339}
!43 = !{i64 2154588096}
!44 = !{i64 2154588397}
!45 = !{i64 2154589615}
!46 = !{i64 2154590803}
!47 = !{i64 2154591939}
!48 = !{i64 2154593247}
!49 = !{i64 2154593858}
!50 = !{i64 2154594777}
!51 = !{i64 2154595406}
!52 = !{i64 2154596088}
!53 = !{i64 2154584298}
