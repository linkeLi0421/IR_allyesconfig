; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/quatech_daqp_cs.c_pt.bc'
source_filename = "../drivers/comedi/drivers/quatech_daqp_cs.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.daqp_private = type { i32, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_quatech_daqp_cs__236_837_driver_daqp_init6 = internal global ptr @driver_daqp_init, section ".initcall6.init", align 4
@driver_daqp = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pcmcia_disable, ptr @daqp_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@daqp_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @daqp_cs_attach, ptr @comedi_pcmcia_auto_unconfig, ptr @daqp_cs_suspend, ptr @daqp_cs_resume, ptr null, ptr @daqp_cs_id_table, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_driver_daqp_exit = internal global ptr @driver_daqp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [85 x i8] c"quatech_daqp_cs.description=Comedi driver for Quatech DAQP PCMCIA data capture cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [60 x i8] c"quatech_daqp_cs.author=Brent Baccala <baccala@freesoft.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [60 x i8] c"quatech_daqp_cs.file=drivers/comedi/drivers/quatech_daqp_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [28 x i8] c"quatech_daqp_cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quatech_daqp_cs\00", [16 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@daqp_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data lost\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"daqp_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/comedi/drivers/quatech_daqp_cs.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@daqp_interrupt._entry_ptr = internal global ptr @daqp_interrupt._entry, section ".printk_index", align 4
@daqp_interrupt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"loop_limit reached in %s()\0A\00", [36 x i8] zeroinitializer }, align 32
@daqp_interrupt._entry_ptr.8 = internal global ptr @daqp_interrupt._entry.6, section ".printk_index", align 4
@range_daqp_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@daqp_clear_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 173, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"couldn't clear events in status register\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"daqp_clear_events\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@daqp_clear_events._entry_ptr = internal global ptr @daqp_clear_events._entry, section ".printk_index", align 4
@daqp_cs_id_table = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 311, i16 39, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"driver_daqp\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 787, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"daqp_cs_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 828, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 788, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 230, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 250, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"range_daqp_ai\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 151, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 173, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"daqp_cs_id_table\00", align 1
@___asan_gen_.62 = private constant [44 x i8] c"../drivers/comedi/drivers/quatech_daqp_cs.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 822, i32 38 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_driver_daqp_exit, ptr @__initcall__kmod_quatech_daqp_cs__236_837_driver_daqp_init6, ptr @daqp_clear_events._entry, ptr @daqp_clear_events._entry_ptr, ptr @daqp_interrupt._entry, ptr @daqp_interrupt._entry.6, ptr @daqp_interrupt._entry_ptr, ptr @daqp_interrupt._entry_ptr.8, ptr @driver_daqp_exit, ptr @driver_daqp, ptr @daqp_cs_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @range_daqp_ai, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @daqp_cs_id_table], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_daqp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daqp_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daqp_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daqp_interrupt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_daqp_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daqp_clear_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daqp_cs_id_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_daqp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_driver_register(ptr noundef nonnull @driver_daqp, ptr noundef nonnull @daqp_cs_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @driver_daqp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @comedi_pcmcia_driver_unregister(ptr noundef nonnull @driver_daqp, ptr noundef nonnull @daqp_cs_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_disable(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pcmcia_dev(ptr noundef %dev) #8
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_flags, align 4
  %or = or i32 %1, 2049
  store i32 %or, ptr %config_flags, align 4
  %call2 = tail call i32 @comedi_pcmcia_enable(ptr noundef %dev, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 22
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %priv, align 8
  %call6 = tail call i32 @pcmcia_request_irq(ptr noundef %call, ptr noundef nonnull @daqp_interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  %irq8 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %irq8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %call10 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %11 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 13
  %16 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 15
  %17 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @range_daqp_ai, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 18
  %18 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @daqp_ai_insn_read, ptr %insn_read, align 4
  %irq15 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %19 = ptrtoint ptr %irq15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not = icmp eq i32 %20, 0
  br i1 %tobool16.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %21 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %12, ptr %read_subdev, align 4
  %22 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subdev_flags, align 4
  %or19 = or i32 %23, 32768
  store i32 %or19, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 5
  %24 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2048, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 23
  %25 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @daqp_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 22
  %26 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @daqp_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %12, i32 0, i32 25
  %27 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @daqp_ai_cancel, ptr %cancel, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %28 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdevices, align 4
  %arrayidx22 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1
  %type23 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 2
  %30 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %type23, align 4
  %subdev_flags24 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 4
  %31 = ptrtoint ptr %subdev_flags24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 131072, ptr %subdev_flags24, align 4
  %n_chan25 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 3
  %32 = ptrtoint ptr %n_chan25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %n_chan25, align 4
  %maxdata26 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 13
  %33 = ptrtoint ptr %maxdata26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4095, ptr %maxdata26, align 4
  %range_table27 = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 15
  %34 = ptrtoint ptr %range_table27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @range_bipolar5, ptr %range_table27, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %29, i32 1, i32 19
  %35 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @daqp_ao_insn_write, ptr %insn_write, align 4
  %call28 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subdevices, align 4
  %type34 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 2
  %38 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %type34, align 4
  %subdev_flags35 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 4
  %39 = ptrtoint ptr %subdev_flags35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 65536, ptr %subdev_flags35, align 4
  %n_chan36 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 3
  %40 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %n_chan36, align 4
  %maxdata37 = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 13
  %41 = ptrtoint ptr %maxdata37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %maxdata37, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %37, i32 2, i32 20
  %42 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @daqp_di_insn_bits, ptr %insn_bits, align 4
  %43 = load ptr, ptr %subdevices, align 4
  %type40 = getelementptr %struct.comedi_subdevice, ptr %43, i32 3, i32 2
  %44 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %type40, align 4
  %subdev_flags41 = getelementptr %struct.comedi_subdevice, ptr %43, i32 3, i32 4
  %45 = ptrtoint ptr %subdev_flags41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 131072, ptr %subdev_flags41, align 4
  %n_chan42 = getelementptr %struct.comedi_subdevice, ptr %43, i32 3, i32 3
  %46 = ptrtoint ptr %n_chan42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %n_chan42, align 4
  %maxdata43 = getelementptr %struct.comedi_subdevice, ptr %43, i32 3, i32 13
  %47 = ptrtoint ptr %maxdata43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %maxdata43, align 4
  %insn_bits44 = getelementptr %struct.comedi_subdevice, ptr %43, i32 3, i32 20
  %48 = ptrtoint ptr %insn_bits44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @daqp_do_insn_bits, ptr %insn_bits44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end20.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call28, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pcmcia_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup52_crit_edge, label %if.end

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %conv = zext i8 %8 to i32
  %and4 = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.cleanup52_crit_edge, label %while.cond.preheader

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

while.cond.preheader:                             ; preds = %if.end
  %and882 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and882)
  %tobool9.not83 = icmp eq i32 %and882, 0
  br i1 %tobool9.not83, label %while.body.lr.ph, label %while.cond.preheader.if.end50_crit_edge

while.cond.preheader.if.end50_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 13
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %status.086 = phi i32 [ %conv, %while.body.lr.ph ], [ %conv39, %cleanup.while.body_crit_edge ]
  %loop_limit.084 = phi i32 [ 10000, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data, align 2, !annotation !49
  %and10 = and i32 %status.086, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %events, align 4
  %or = or i32 %13, 32
  store i32 %or, ptr %events, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.1) #11
  br label %cleanup.thread

if.end14:                                         ; preds = %while.body
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %and.i = and i32 %17, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %and6.i = and i32 %21, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %22 = inttoptr i32 %add7.i to ptr
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %conv11.i = zext i8 %23 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %24 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxdata.i.i, align 4
  %xor.i.i = xor i32 %or.i, %25
  %shr.i.i = lshr i32 %25, 1
  %xor2.i.i = xor i32 %xor.i.i, %shr.i.i
  %conv16 = trunc i32 %xor2.i.i to i16
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv16, ptr %data, align 2
  %call17 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %data, i32 noundef 1) #8
  %27 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp = icmp eq i32 %28, 32
  br i1 %cmp, label %land.lhs.true, label %if.end14.if.end26_crit_edge

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end14
  %29 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scans_done, align 4
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp20.not = icmp ult i32 %32, %34
  br i1 %cmp20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then22

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %events24 = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 16
  %35 = ptrtoint ptr %events24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %events24, align 4
  %or25 = or i32 %36, 2
  store i32 %or25, ptr %events24, align 4
  br label %cleanup.thread

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loop_limit.084)
  %cmp27 = icmp eq i32 %loop_limit.084, 0
  br i1 %cmp27, label %if.end26.cleanup.thread_crit_edge, label %cleanup

if.end26.cleanup.thread_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end26.cleanup.thread_crit_edge, %if.then22, %if.then12
  %loop_limit.1.ph = phi i32 [ %loop_limit.084, %if.then22 ], [ %loop_limit.084, %if.then12 ], [ -1, %if.end26.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  br label %while.end

cleanup:                                          ; preds = %if.end26
  %dec = add nsw i32 %loop_limit.084, -1
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add33 = add i32 %38, 2
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %39 = inttoptr i32 %add35 to ptr
  %40 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %conv39 = zext i8 %40 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  %and8 = and i32 %conv39, 1
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread
  %loop_limit.2 = phi i32 [ %loop_limit.1.ph, %cleanup.thread ], [ %dec, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loop_limit.2)
  %cmp40 = icmp slt i32 %loop_limit.2, 1
  br i1 %cmp40, label %do.end45, label %while.end.if.end50_crit_edge

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end45:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev46 = getelementptr inbounds %struct.comedi_device, ptr %dev_id, i32 0, i32 4
  %41 = ptrtoint ptr %class_dev46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %class_dev46, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #11
  %43 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %async, align 4
  %events48 = getelementptr inbounds %struct.comedi_async, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %events48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %events48, align 4
  %or49 = or i32 %46, 16
  store i32 %or49, ptr %events48, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %while.end.if.end50_crit_edge, %while.cond.preheader.if.end50_crit_edge
  %call51 = call i32 @comedi_handle_events(ptr noundef %dev_id, ptr noundef %1) #8
  br label %cleanup52

cleanup52:                                        ; preds = %if.end50, %if.end.cleanup52_crit_edge, %entry.cleanup52_crit_edge
  %retval.0 = phi i32 [ 1, %if.end50 ], [ 0, %entry.cleanup52_crit_edge ], [ 0, %if.end.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 15
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add6 = add i32 %8, 7
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 32) #8, !srcloc !54
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %10 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chanspec, align 4
  %shl.i = and i32 %11, 15
  %12 = lshr i32 %11, 12
  %shl6.i = and i32 %12, 48
  %or.i = or i32 %shl6.i, %shl.i
  %13 = and i32 %11, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cmp.i = icmp eq i32 %13, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add.i = add i32 %15, 1
  %and12.i = and i32 %add.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %16 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -128) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %17 = or i32 %or.i, 64
  %shr17.i = select i1 %cmp.i, i32 %17, i32 %or.i
  %conv19.i = trunc i32 %shr17.i to i8
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add21.i = add i32 %19, 1
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %20 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv19.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add14 = add i32 %22, 7
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %23 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 64) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add22 = add i32 %25, 2
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %26 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -64) #8, !srcloc !54
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body
  %loops.addr.0.i = phi i32 [ 10000, %do.body ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %loops.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %daqp_clear_events.exit.thread, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add.i92 = add i32 %28, 2
  %and.i = and i32 %add.i92, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %31 = and i8 %30, 56
  %cmp.i93 = icmp eq i8 %31, 0
  br i1 %cmp.i93, label %for.cond.preheader, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

for.cond.preheader:                               ; preds = %while.body.i
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp102.not = icmp eq i32 %33, 0
  br i1 %cmp102.not, label %for.cond.preheader.do.body49_crit_edge, label %do.body30.lr.ph

for.cond.preheader.do.body49_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

do.body30.lr.ph:                                  ; preds = %for.cond.preheader
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body30

daqp_clear_events.exit.thread:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10) #11
  br label %cleanup

do.body30:                                        ; preds = %if.end41.do.body30_crit_edge, %do.body30.lr.ph
  %i.0103 = phi i32 [ 0, %do.body30.lr.ph ], [ %inc, %if.end41.do.body30_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add34 = add i32 %37, 7
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %38 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 -127) #8, !srcloc !54
  %call38 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @daqp_ai_eos, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.body30.do.body49_crit_edge

do.body30.do.body49_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.end41:                                         ; preds = %do.body30
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add43 = add i32 %40, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %41 = inttoptr i32 %add45 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase, align 4
  %and.i95 = and i32 %44, 1048575
  %add1.i96 = or i32 %and.i95, -18874368
  %45 = inttoptr i32 %add1.i96 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %conv.i97 = zext i8 %46 to i32
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase, align 4
  %and6.i = and i32 %48, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %49 = inttoptr i32 %add7.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %conv11.i = zext i8 %50 to i32
  %shl.i98 = shl nuw nsw i32 %conv11.i, 8
  %or.i99 = or i32 %shl.i98, %conv.i97
  %51 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxdata.i.i, align 4
  %xor.i.i = xor i32 %or.i99, %52
  %shr.i.i = lshr i32 %52, 1
  %xor2.i.i = xor i32 %xor.i.i, %shr.i.i
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0103
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %xor2.i.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0103, 1
  %54 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %if.end41.do.body30_crit_edge, label %if.end41.do.body49_crit_edge

if.end41.do.body49_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body49

if.end41.do.body30_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body49:                                        ; preds = %if.end41.do.body49_crit_edge, %do.body30.do.body49_crit_edge, %for.cond.preheader.do.body49_crit_edge
  %ret.1 = phi i32 [ 0, %for.cond.preheader.do.body49_crit_edge ], [ 0, %if.end41.do.body49_crit_edge ], [ %call38, %do.body30.do.body49_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase, align 4
  %add53 = add i32 %57, 7
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %58 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 16) #8, !srcloc !54
  %59 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase, align 4
  %add59 = add i32 %60, 2
  %and60 = and i32 %add59, 1048575
  %add61 = or i32 %and60, -18874368
  %61 = inttoptr i32 %add61 to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool65.not = icmp eq i32 %ret.1, 0
  br i1 %tobool65.not, label %cond.false, label %do.body49.cleanup_crit_edge

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %do.body49.cleanup_crit_edge, %daqp_clear_events.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %64, %cond.false ], [ %ret.1, %do.body49.cleanup_crit_edge ], [ -16, %daqp_clear_events.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daqp_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i148 = and i32 %5, 20
  store i32 %and.i148, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %cmp.i149 = icmp ne i32 %and.i148, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i148, i32 %5)
  %cmp1.not.i150 = icmp eq i32 %and.i148, %5
  %or.cond.i151 = and i1 %cmp.i149, %cmp1.not.i150
  %6 = select i1 %or.cond.i, i1 %or.cond.i151, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i153 = and i32 %8, 18
  store i32 %and.i153, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %cmp.i154 = icmp ne i32 %and.i153, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i153, i32 %8)
  %cmp1.not.i155 = icmp eq i32 %and.i153, %8
  %or.cond.i156 = and i1 %cmp.i154, %cmp1.not.i155
  %9 = select i1 %6, i1 %or.cond.i156, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i158 = and i32 %11, 32
  store i32 %and.i158, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %cmp.i159 = icmp ne i32 %and.i158, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i158, i32 %11)
  %cmp1.not.i160 = icmp eq i32 %and.i158, %11
  %or.cond.i161 = and i1 %cmp.i159, %cmp1.not.i160
  %12 = select i1 %9, i1 %or.cond.i161, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i163 = and i32 %14, 33
  store i32 %and.i163, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %cmp.i164 = icmp ne i32 %and.i163, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i163, i32 %14)
  %cmp1.not.i165 = icmp eq i32 %and.i163, %14
  %or.cond.i166 = and i1 %cmp.i164, %cmp1.not.i165
  %15 = select i1 %12, i1 %or.cond.i166, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %5) #8, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %8) #8, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i168 = icmp ult i32 %17, 2
  %18 = tail call i32 @llvm.ctpop.i32(i32 %14) #8, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i170 = icmp ult i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.not = icmp eq i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp20.not = icmp eq i32 %8, 16
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp20.not
  %19 = and i1 %cmp.not.i, %or.cond
  %20 = select i1 %19, i1 %cmp.not.i168, i1 false
  %or.cond217 = select i1 %20, i1 %cmp.not.i170, i1 false
  br i1 %or.cond217, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i172 = icmp eq i32 %22, 0
  br i1 %cmp.not.i172, label %if.end26.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end26.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end26.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i173 = phi i32 [ -22, %if.then.i ], [ 0, %if.end26.comedi_check_trigger_arg_is.exit_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i174 = icmp eq i32 %25, 0
  br i1 %cmp.i174, label %if.then.i175, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i175:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i175, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i176 = phi i32 [ -22, %if.then.i175 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or30 = or i32 %retval.0.i176, %retval.0.i173
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %27 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chanlist_len, align 4
  %29 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.not.i177 = icmp eq i32 %30, %28
  br i1 %cmp.not.i177, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit180_crit_edge, label %if.then.i178

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit180_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit180

if.then.i178:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit180

comedi_check_trigger_arg_is.exit180:              ; preds = %if.then.i178, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit180_crit_edge
  %retval.0.i179 = phi i32 [ -22, %if.then.i178 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit180_crit_edge ]
  %or33 = or i32 %or30, %retval.0.i179
  br i1 %cmp.not, label %if.then36, label %comedi_check_trigger_arg_is.exit180.if.end39_crit_edge

comedi_check_trigger_arg_is.exit180.if.end39_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %comedi_check_trigger_arg_is.exit180
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %32 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %33)
  %cmp.i181 = icmp ult i32 %33, 10000
  br i1 %cmp.i181, label %if.then.i182, label %if.then36.comedi_check_trigger_arg_min.exit184_crit_edge

if.then36.comedi_check_trigger_arg_min.exit184_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit184

if.then.i182:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit184

comedi_check_trigger_arg_min.exit184:             ; preds = %if.then.i182, %if.then36.comedi_check_trigger_arg_min.exit184_crit_edge
  %retval.0.i183 = phi i32 [ -22, %if.then.i182 ], [ 0, %if.then36.comedi_check_trigger_arg_min.exit184_crit_edge ]
  %or38 = or i32 %retval.0.i183, %or33
  br label %if.end39

if.end39:                                         ; preds = %comedi_check_trigger_arg_min.exit184, %comedi_check_trigger_arg_is.exit180.if.end39_crit_edge
  %err.1 = phi i32 [ %or38, %comedi_check_trigger_arg_min.exit184 ], [ %or33, %comedi_check_trigger_arg_is.exit180.if.end39_crit_edge ]
  br i1 %cmp20.not, label %if.then42, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then42:                                        ; preds = %if.end39
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %35 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %36)
  %cmp.i185 = icmp ult i32 %36, 10000
  br i1 %cmp.i185, label %if.then.i186, label %if.then42.comedi_check_trigger_arg_min.exit188_crit_edge

if.then42.comedi_check_trigger_arg_min.exit188_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit188

if.then.i186:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit188

comedi_check_trigger_arg_min.exit188:             ; preds = %if.then.i186, %if.then42.comedi_check_trigger_arg_min.exit188_crit_edge
  %retval.0.i187 = phi i32 [ -22, %if.then.i186 ], [ 0, %if.then42.comedi_check_trigger_arg_min.exit188_crit_edge ]
  %or44 = or i32 %retval.0.i187, %err.1
  br i1 %cmp.not, label %if.then47, label %comedi_check_trigger_arg_min.exit188.if.end54_crit_edge

comedi_check_trigger_arg_min.exit188.if.end54_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then47:                                        ; preds = %comedi_check_trigger_arg_min.exit188
  %38 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_arg, align 4
  %40 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %41, %39
  %scan_begin_arg50 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %42 = ptrtoint ptr %scan_begin_arg50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_arg50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %mul)
  %cmp.not.i189 = icmp eq i32 %43, %mul
  br i1 %cmp.not.i189, label %if.then47.comedi_check_trigger_arg_is.exit192_crit_edge, label %if.then.i190

if.then47.comedi_check_trigger_arg_is.exit192_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit192

if.then.i190:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %scan_begin_arg50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul, ptr %scan_begin_arg50, align 4
  br label %comedi_check_trigger_arg_is.exit192

comedi_check_trigger_arg_is.exit192:              ; preds = %if.then.i190, %if.then47.comedi_check_trigger_arg_is.exit192_crit_edge
  %retval.0.i191 = phi i32 [ -22, %if.then.i190 ], [ 0, %if.then47.comedi_check_trigger_arg_is.exit192_crit_edge ]
  %or52 = or i32 %retval.0.i191, %or44
  br label %if.end54

if.end54:                                         ; preds = %comedi_check_trigger_arg_is.exit192, %comedi_check_trigger_arg_min.exit188.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  %err.2 = phi i32 [ %or52, %comedi_check_trigger_arg_is.exit192 ], [ %or44, %comedi_check_trigger_arg_min.exit188.if.end54_crit_edge ], [ %err.1, %if.end39.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp56 = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %45 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stop_arg, align 4
  br i1 %cmp56, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %46)
  %cmp.i193 = icmp ugt i32 %46, 16777215
  br i1 %cmp.i193, label %if.then57.if.end63.sink.split_crit_edge, label %if.then57.if.end63_crit_edge

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then57.if.end63.sink.split_crit_edge:          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.sink.split

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i196 = icmp eq i32 %46, 0
  br i1 %cmp.not.i196, label %if.else.if.end63_crit_edge, label %if.else.if.end63.sink.split_crit_edge

if.else.if.end63.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.sink.split

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63.sink.split:                              ; preds = %if.else.if.end63.sink.split_crit_edge, %if.then57.if.end63.sink.split_crit_edge
  %.sink = phi i32 [ 16777215, %if.then57.if.end63.sink.split_crit_edge ], [ 0, %if.else.if.end63.sink.split_crit_edge ]
  %47 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.else.if.end63_crit_edge, %if.then57.if.end63_crit_edge
  %call58.pn = phi i32 [ 0, %if.then57.if.end63_crit_edge ], [ 0, %if.else.if.end63_crit_edge ], [ -22, %if.end63.sink.split ]
  %err.3 = or i32 %call58.pn, %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool64.not = icmp eq i32 %err.3, 0
  br i1 %tobool64.not, label %if.end66, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  br i1 %cmp20.not, label %if.then69, label %if.else75

if.then69:                                        ; preds = %if.end66
  %convert_arg70 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %48 = ptrtoint ptr %convert_arg70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %convert_arg70, align 4
  %div.i = udiv i32 %49, 200
  %mul.i = mul nuw i32 %div.i, 200
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div.i, ptr %1, align 4
  %51 = load i32, ptr %convert_arg70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mul.i)
  %cmp.not.i200 = icmp eq i32 %51, %mul.i
  br i1 %cmp.not.i200, label %if.then69.cleanup_crit_edge, label %if.then.i201

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i201:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %convert_arg70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i, ptr %convert_arg70, align 4
  br label %cleanup

if.else75:                                        ; preds = %if.end66
  br i1 %cmp.not, label %if.then78, label %if.else75.cleanup_crit_edge

if.else75.cleanup_crit_edge:                      ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then78:                                        ; preds = %if.else75
  %scan_begin_arg79 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %53 = ptrtoint ptr %scan_begin_arg79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_begin_arg79, align 4
  %div.i204 = udiv i32 %54, 200
  %mul.i205 = mul nuw i32 %div.i204, 200
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div.i204, ptr %1, align 4
  %56 = load i32, ptr %scan_begin_arg79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %mul.i205)
  %cmp.not.i206 = icmp eq i32 %56, %mul.i205
  br i1 %cmp.not.i206, label %if.then78.cleanup_crit_edge, label %if.then.i207

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i207:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %scan_begin_arg79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul.i205, ptr %scan_begin_arg79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i207, %if.then78.cleanup_crit_edge, %if.else75.cleanup_crit_edge, %if.then.i201, %if.then69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end63.cleanup_crit_edge ], [ 4, %if.then.i207 ], [ 4, %if.then.i201 ], [ 0, %if.else75.cleanup_crit_edge ], [ 0, %if.then69.cleanup_crit_edge ], [ 0, %if.then78.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 15
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add7 = add i32 %10, 7
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %11 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 32) #8, !srcloc !54
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %conv.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add.i = add i32 %15, 4
  %and1.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and1.i, -18874368
  %16 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %shr.i = lshr i32 %13, 8
  %conv6.i = trunc i32 %shr.i to i8
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add8.i = add i32 %18, 5
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %19 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv6.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %shr14.i = lshr i32 %13, 16
  %conv16.i = trunc i32 %shr14.i to i8
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add18.i = add i32 %21, 6
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %22 = inttoptr i32 %add20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv16.i) #8, !srcloc !54
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %23 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp = icmp ne i32 %24, 16
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp13134.not = icmp eq i32 %26, 0
  br i1 %cmp13134.not, label %do.body.for.end_crit_edge, label %for.body.lr.ph

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0135)
  %cmp14 = icmp ne i32 %i.0135, 0
  %spec.select = select i1 %cmp14, i1 %cmp, i1 false
  %27 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %28, i32 %i.0135
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %and4.i = shl i32 %30, 8
  %shl.i = and i32 %and4.i, 3840
  %31 = lshr i32 %30, 4
  %shl6.i = and i32 %31, 12288
  %or.i = or i32 %shl.i, %shl6.i
  %32 = and i32 %30, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %32)
  %cmp.i = icmp eq i32 %32, 33554432
  %or7.i = or i32 %or.i, 16384
  %spec.select.i = select i1 %cmp.i, i32 %or7.i, i32 %or.i
  %or9.i = or i32 %spec.select.i, 128
  %val.1.i = select i1 %spec.select, i32 %spec.select.i, i32 %or9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %conv.i123 = trunc i32 %val.1.i to i8
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add.i125 = add i32 %34, 1
  %and12.i = and i32 %add.i125, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %35 = inttoptr i32 %add13.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv.i123) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %shr17.i = lshr i32 %val.1.i, 8
  %conv19.i = trunc i32 %shr17.i to i8
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add21.i = add i32 %37, 1
  %and22.i = and i32 %add21.i, 1048575
  %add23.i = or i32 %and22.i, -18874368
  %38 = inttoptr i32 %add23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv19.i) #8, !srcloc !54
  %inc = add nuw i32 %i.0135, 1
  %39 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chanlist_len, align 4
  %cmp13 = icmp ult i32 %inc, %40
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %41 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp16 = icmp eq i32 %42, 32
  br i1 %cmp16, label %if.then17, label %for.end.do.body27_crit_edge

for.end.do.body27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then17:                                        ; preds = %for.end
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %43 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stop_arg, align 4
  %conv = zext i32 %44 to i64
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %45 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_end_arg, align 4
  %conv18 = zext i32 %46 to i64
  %mul = mul nuw i64 %conv18, %conv
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %47 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %subdev_flags.i, align 4
  %and.i = and i32 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i126 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i126, i32 2, i32 4
  %conv20 = zext i32 %cond.i to i64
  %mul21 = mul i64 %mul, %conv20
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then17
  %nbytes.0 = phi i64 [ %mul21, %if.then17 ], [ %div122, %while.cond.while.cond_crit_edge ]
  %cmp22 = icmp ugt i64 %nbytes.0, 3072
  %div122 = lshr i64 %nbytes.0, 1
  br i1 %cmp22, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %conv24 = trunc i64 %nbytes.0 to i32
  %phi.bo = sub nuw nsw i32 4096, %conv24
  br label %do.body27

do.body27:                                        ; preds = %while.end, %for.end.do.body27_crit_edge
  %threshold.0 = phi i32 [ %phi.bo, %while.end ], [ 2048, %for.end.do.body27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add31 = add i32 %50, 7
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %51 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 64) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %and40 = and i32 %53, 1048575
  %add41 = or i32 %and40, -18874368
  %54 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase, align 4
  %and48 = and i32 %56, 1048575
  %add49 = or i32 %and48, -18874368
  %57 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %conv55 = trunc i32 %threshold.0 to i8
  %58 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase, align 4
  %and58 = and i32 %59, 1048575
  %add59 = or i32 %and58, -18874368
  %60 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %conv55) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %61 = lshr i32 %threshold.0, 8
  %conv65 = trunc i32 %61 to i8
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase, align 4
  %and68 = and i32 %63, 1048575
  %add69 = or i32 %and68, -18874368
  %64 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv65) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase, align 4
  %add75 = add i32 %66, 2
  %and76 = and i32 %add75, 1048575
  %add77 = or i32 %and76, -18874368
  %67 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 76) #8, !srcloc !54
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body27
  %loops.addr.0.i = phi i32 [ 100, %do.body27 ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %loops.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i128 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i128, label %daqp_clear_events.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %68 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase, align 4
  %add.i129 = add i32 %69, 2
  %and.i130 = and i32 %add.i129, 1048575
  %add1.i = or i32 %and.i130, -18874368
  %70 = inttoptr i32 %add1.i to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %72 = and i8 %71, 56
  %cmp.i131 = icmp eq i8 %72, 0
  br i1 %cmp.i131, label %do.body83, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

daqp_clear_events.exit:                           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %73 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.10) #11
  br label %cleanup

do.body83:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase, align 4
  %add87 = add i32 %76, 7
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %77 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 -127) #8, !srcloc !54
  br label %cleanup

cleanup:                                          ; preds = %do.body83, %daqp_clear_events.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body83 ], [ -5, %entry.cleanup_crit_edge ], [ -16, %daqp_clear_events.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 16) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add6 = add i32 %8, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #8, !srcloc !54
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add11 = add i32 %11, 2
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 15
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !54
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp37.not = icmp eq i32 %10, 0
  br i1 %cmp37.not, label %do.body.cleanup19_crit_edge, label %for.body.lr.ph

do.body.cleanup19_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %do.body
  %shl = shl nuw nsw i32 %and, 12
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.038
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @daqp_ao_empty, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %for.body.cleanup19_crit_edge

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.inc:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %14, %12
  %shr.i = lshr i32 %14, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %or = or i32 %xor2.i, %shl
  %conv = trunc i32 %or to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add12 = add i32 %17, 8
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %18 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #8, !srcloc !83
  %19 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %readback, align 4
  %arrayidx16 = getelementptr i32, ptr %20, i32 %and
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %12, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.038, 1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup19_crit_edge

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %for.body.cleanup19_crit_edge, %do.body.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ -5, %entry.cleanup19_crit_edge ], [ 0, %do.body.cleanup19_crit_edge ], [ %23, %for.inc.cleanup19_crit_edge ], [ %call3, %for.body.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %data, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %stop = getelementptr inbounds %struct.daqp_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %do.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %conv = trunc i32 %5 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 3
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #8, !srcloc !54
  br label %if.end5

if.end5:                                          ; preds = %do.body, %if.end.if.end5_crit_edge
  %state6 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %9 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state6, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end5 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ai_eos(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 15
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_ao_empty(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 15
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @daqp_cs_attach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pcmcia_auto_config(ptr noundef %link, ptr noundef nonnull @driver_daqp) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pcmcia_auto_unconfig(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daqp_cs_suspend(ptr nocapture noundef readonly %link) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %stop = getelementptr inbounds %struct.daqp_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %stop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daqp_cs_resume(ptr nocapture noundef readonly %link) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %stop = getelementptr inbounds %struct.daqp_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %stop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pcmcia_auto_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_quatech_daqp_cs__236_837_driver_daqp_init6, !1, !"__initcall__kmod_quatech_daqp_cs__236_837_driver_daqp_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 837, i32 1}
!2 = !{ptr @__exitcall_driver_daqp_exit, !1, !"__exitcall_driver_daqp_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 839, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 840, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 841, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 788, i32 17}
!12 = !{ptr @driver_daqp, !13, !"driver_daqp", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 787, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 230, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @daqp_interrupt._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @daqp_interrupt._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 250, i32 3}
!24 = !{ptr @daqp_interrupt._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @daqp_interrupt._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @range_daqp_ai, !27, !"range_daqp_ai", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 151, i32 35}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 173, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @daqp_clear_events._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @daqp_clear_events._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @daqp_cs_driver, !35, !"daqp_cs_driver", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 828, i32 29}
!36 = !{ptr @daqp_cs_id_table, !37, !"daqp_cs_id_table", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/quatech_daqp_cs.c", i32 822, i32 38}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 4944803}
!48 = !{i64 2154587860}
!49 = !{!"auto-init"}
!50 = !{i64 2154587256}
!51 = !{i64 2154587558}
!52 = !{i64 2154590183}
!53 = !{i64 2154593498}
!54 = !{i64 4944408}
!55 = !{i64 2154593955}
!56 = !{i64 2154592395}
!57 = !{i64 2154592760}
!58 = !{i64 2154594412}
!59 = !{i64 2154594824}
!60 = !{i64 2154583722}
!61 = !{i64 2154595393}
!62 = !{i64 2154595822}
!63 = !{i64 2154596152}
!64 = !{i64 2154596581}
!65 = !{i32 0, i32 33}
!66 = !{i64 2154598085}
!67 = !{i64 2154598542}
!68 = !{i64 2154596812}
!69 = !{i64 2154597177}
!70 = !{i64 2154597543}
!71 = !{i64 2154599031}
!72 = !{i64 2154599383}
!73 = !{i64 2154599735}
!74 = !{i64 2154600114}
!75 = !{i64 2154600491}
!76 = !{i64 2154601127}
!77 = !{i64 2154601696}
!78 = !{i64 2154586176}
!79 = !{i64 2154586525}
!80 = !{i64 2154586954}
!81 = !{i64 2154602464}
!82 = !{i64 2154602890}
!83 = !{i64 4943985}
!84 = !{i64 2154603494}
!85 = !{i64 2154603725}
!86 = !{i64 2154593189}
!87 = !{i64 2154602125}
