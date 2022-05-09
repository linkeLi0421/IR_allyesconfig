; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-nec-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-nec-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ir_raw_timings_pd = type { i32, i32, i32, [2 x i32], i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ir_raw_event_ctrl = type { %struct.list_head, ptr, %struct.anon.67, i64, ptr, %struct.spinlock, %struct.timer_list, %struct.ir_raw_event, %struct.ir_raw_event, i32, ptr, %struct.nec_dec, %struct.rc5_dec, %struct.rc6_dec, %struct.sony_dec, %struct.jvc_dec, %struct.sanyo_dec, %struct.sharp_dec, %struct.mce_kbd_dec, %struct.xmp_dec, %struct.imon_dec, %struct.rcmm_dec }
%struct.anon.67 = type { %union.anon.68, [512 x %struct.ir_raw_event] }
%union.anon.68 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.ir_raw_event = type { %union.anon.69, i8, i8 }
%union.anon.69 = type { i32 }
%struct.nec_dec = type { i32, i32, i32, i8, i8 }
%struct.rc5_dec = type { i32, i32, i32, i8 }
%struct.rc6_dec = type { i32, i8, i32, i8, i32, i32 }
%struct.sony_dec = type { i32, i32, i32 }
%struct.jvc_dec = type { i32, i16, i16, i32, i8, i8 }
%struct.sanyo_dec = type { i32, i32, i64 }
%struct.sharp_dec = type { i32, i32, i32, i32 }
%struct.mce_kbd_dec = type { %struct.spinlock, %struct.timer_list, i32, i8, i32, i32, i32 }
%struct.xmp_dec = type { i32, i32, [16 x i32] }
%struct.imon_dec = type { i32, i32, i32, i32, i8 }
%struct.rcmm_dec = type { i32, i32, i32 }

@nec_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 3584, ptr @ir_nec_decode, ptr @ir_nec_encode, i32 38000, i32 5630, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_nec_decoder__231_272_ir_nec_decode_init6 = internal global ptr @ir_nec_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_nec_decode_exit = internal global ptr @ir_nec_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"ir_nec_decoder.file=drivers/media/rc/ir-nec-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [30 x i8] c"ir_nec_decoder.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [44 x i8] c"ir_nec_decoder.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [59 x i8] c"ir_nec_decoder.author=Red Hat Inc. (http://www.redhat.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [51 x i8] c"ir_nec_decoder.description=NEC IR protocol decoder\00", section ".modinfo", align 1
@ir_nec_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_nec_decoder\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_nec_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/rc/ir-nec-decoder.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NEC decode started at state %d (%uus %s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_nec_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Repeat last key\0A\00", [47 x i8] zeroinitializer }, align 32
@ir_nec_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NEC decode failed at count %d state %d (%uus %s)\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ir_nec_timings = internal constant { %struct.ir_raw_timings_pd, [32 x i8] } { %struct.ir_raw_timings_pd { i32 9008, i32 4504, i32 563, [2 x i32] [i32 563, i32 1689], i32 563, i32 5630, i8 0 }, [32 x i8] zeroinitializer }, align 32
@ir_nec_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IR NEC protocol handler initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_nec_decode_init\00", [45 x i8] zeroinitializer }, align 32
@ir_nec_decode_init._entry_ptr = internal global ptr @ir_nec_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"nec_handler\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 250, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 52, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 103, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 165, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"ir_nec_timings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 209, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [37 x i8] c"../drivers/media/rc/ir-nec-decoder.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 263, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ir_nec_decode_exit, ptr @__initcall__kmod_ir_nec_decoder__231_272_ir_nec_decode_init6, ptr @ir_nec_decode_exit, ptr @ir_nec_decode_init._entry, ptr @ir_nec_decode_init._entry_ptr, ptr @nec_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ir_nec_timings, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_nec_timings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_nec_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_nec_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @nec_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_nec_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @nec_handler) #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_nec_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  %rc_proto = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %nec = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc_proto) #6
  %2 = ptrtoint ptr %rc_proto to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rc_proto, align 4, !annotation !45
  %3 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %5 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_nec_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_nec_decode, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !46

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %nec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nec, align 4
  %8 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool13.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_nec_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %9 = ptrtoint ptr %nec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nec, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end.do.body296_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb49
    i32 3, label %sw.bb61
    i32 4, label %sw.bb116
    i32 5, label %sw.bb128
  ]

do.end.do.body296_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

sw.bb:                                            ; preds = %do.end
  %12 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %sw.bb.do.body296_crit_edge, label %if.end22

sw.bb.do.body296_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end22:                                         ; preds = %sw.bb
  %13 = add i32 %ev.coerce.fca.0.extract, -7883
  call void @__sanitizer_cov_trace_const_cmp4(i32 2251, i32 %13)
  %14 = icmp ult i32 %13, 2251
  br i1 %14, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %is_nec_x = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 3
  %15 = ptrtoint ptr %is_nec_x to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_nec_x, align 4
  %necx_repeat = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 4
  %16 = ptrtoint ptr %necx_repeat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %necx_repeat, align 1
  br label %if.end30

if.else:                                          ; preds = %if.end22
  %17 = add i32 %ev.coerce.fca.0.extract, -4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %17)
  %18 = icmp ult i32 %17, 561
  br i1 %18, label %if.then26, label %if.else.do.body296_crit_edge

if.else.do.body296_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %is_nec_x27 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 3
  %19 = ptrtoint ptr %is_nec_x27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %is_nec_x27, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then24
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %count, align 4
  br label %cleanup.sink.split

sw.bb32:                                          ; preds = %do.end
  %21 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not = icmp eq i32 %21, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb32.do.body296_crit_edge

sw.bb32.do.body296_crit_edge:                     ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end39:                                         ; preds = %sw.bb32
  %22 = add i32 %ev.coerce.fca.0.extract, -3942
  call void @__sanitizer_cov_trace_const_cmp4(i32 1125, i32 %22)
  %23 = icmp ult i32 %22, 1125
  br i1 %23, label %if.end39.cleanup.sink.split_crit_edge, label %if.else43

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else43:                                        ; preds = %if.end39
  %24 = add i32 %ev.coerce.fca.0.extract, -1972
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %24)
  %25 = icmp ult i32 %24, 561
  br i1 %25, label %if.else43.cleanup.sink.split_crit_edge, label %if.else43.do.body296_crit_edge

if.else43.do.body296_crit_edge:                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.else43.cleanup.sink.split_crit_edge:           ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb49:                                          ; preds = %do.end
  %26 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp ne i32 %26, 0
  %27 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %27)
  %28 = icmp ult i32 %27, 561
  %or.cond445 = select i1 %tobool54.not, i1 %28, i1 false
  br i1 %or.cond445, label %sw.bb49.cleanup.sink.split_crit_edge, label %sw.bb49.do.body296_crit_edge

sw.bb49.do.body296_crit_edge:                     ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

sw.bb49.cleanup.sink.split_crit_edge:             ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb61:                                          ; preds = %do.end
  %29 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool66.not = icmp eq i32 %29, 0
  br i1 %tobool66.not, label %if.end68, label %sw.bb61.do.body296_crit_edge

sw.bb61.do.body296_crit_edge:                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end68:                                         ; preds = %sw.bb61
  %necx_repeat69 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %necx_repeat69 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %necx_repeat69, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool70.not = icmp eq i8 %31, 0
  br i1 %tobool70.not, label %if.end68.if.else93_crit_edge, label %land.lhs.true

if.end68.if.else93_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else93

land.lhs.true:                                    ; preds = %if.end68
  %count71 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %count71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5349, i32 %ev.coerce.fca.0.extract)
  %cmp.i426 = icmp ugt i32 %ev.coerce.fca.0.extract, 5349
  %or.cond = select i1 %cmp, i1 %cmp.i426, i1 false
  br i1 %or.cond, label %do.body75, label %land.lhs.true.if.else93_crit_edge

land.lhs.true.if.else93_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else93

do.body75:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_nec_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_nec_decode, %if.then87)) #6
          to label %do.end91 [label %if.then87], !srcloc !46

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_nec_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  tail call void @rc_repeat(ptr noundef %dev) #6
  br label %cleanup.sink.split

if.else93:                                        ; preds = %land.lhs.true.if.else93_crit_edge, %if.end68.if.else93_crit_edge
  %count94 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %count94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp95 = icmp ugt i32 %35, 1
  br i1 %cmp95, label %if.then96, label %if.else93.if.end99_crit_edge

if.else93.if.end99_crit_edge:                     ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then96:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %necx_repeat69 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %necx_repeat69, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.else93.if.end99_crit_edge
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bits, align 4
  %shl = shl i32 %38, 1
  store i32 %shl, ptr %bits, align 4
  %39 = add i32 %ev.coerce.fca.0.extract, -1409
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %39)
  %40 = icmp ult i32 %39, 561
  br i1 %40, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, 1
  %41 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %bits, align 4
  br label %if.end107

if.else103:                                       ; preds = %if.end99
  %42 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %42)
  %43 = icmp ult i32 %42, 561
  br i1 %43, label %if.else103.if.end107_crit_edge, label %if.else103.do.body296_crit_edge

if.else103.do.body296_crit_edge:                  ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.else103.if.end107_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.end107:                                        ; preds = %if.else103.if.end107_crit_edge, %if.then101
  %44 = ptrtoint ptr %count94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count94, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %count94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc)
  %cmp110 = icmp eq i32 %inc, 32
  %. = select i1 %cmp110, i32 4, i32 2
  br label %cleanup.sink.split

sw.bb116:                                         ; preds = %do.end
  %46 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool121.not = icmp ne i32 %46, 0
  %47 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %47)
  %48 = icmp ult i32 %47, 561
  %or.cond447 = select i1 %tobool121.not, i1 %48, i1 false
  br i1 %or.cond447, label %sw.bb116.cleanup.sink.split_crit_edge, label %sw.bb116.do.body296_crit_edge

sw.bb116.do.body296_crit_edge:                    ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

sw.bb116.cleanup.sink.split_crit_edge:            ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb128:                                         ; preds = %do.end
  %49 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool133.not = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5349, i32 %ev.coerce.fca.0.extract)
  %cmp.i433 = icmp ugt i32 %ev.coerce.fca.0.extract, 5349
  %or.cond443 = select i1 %tobool133.not, i1 %cmp.i433, i1 false
  br i1 %or.cond443, label %if.end138, label %sw.bb128.do.body296_crit_edge

sw.bb128.do.body296_crit_edge:                    ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body296

if.end138:                                        ; preds = %sw.bb128
  %count139 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %count139 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %cmp140 = icmp eq i32 %51, 32
  br i1 %cmp140, label %if.then141, label %if.else293

if.then141:                                       ; preds = %if.end138
  %bits142 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %bits142 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bits142, align 4
  %shr = lshr i32 %53, 24
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %shr
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i, align 1
  %shr174 = lshr i32 %53, 16
  %idxprom.i434 = and i32 %shr174, 255
  %arrayidx.i435 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i434
  %56 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i435, align 1
  %shr212 = lshr i32 %53, 8
  %idxprom.i436 = and i32 %shr212, 255
  %arrayidx.i437 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i436
  %58 = ptrtoint ptr %arrayidx.i437 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i437, align 1
  %idxprom.i438 = and i32 %53, 255
  %arrayidx.i439 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i438
  %60 = ptrtoint ptr %arrayidx.i439 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i439, align 1
  %call286 = call fastcc i32 @ir_nec_bytes_to_scancode(i8 noundef zeroext %55, i8 noundef zeroext %57, i8 noundef zeroext %59, i8 noundef zeroext %61, ptr noundef nonnull %rc_proto)
  %is_nec_x287 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 3
  %62 = ptrtoint ptr %is_nec_x287 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_nec_x287, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool288.not = icmp eq i8 %63, 0
  br i1 %tobool288.not, label %if.then141.if.end291_crit_edge, label %if.then289

if.then141.if.end291_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end291

if.then289:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #8
  %necx_repeat290 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 4
  %64 = ptrtoint ptr %necx_repeat290 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %necx_repeat290, align 1
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.then141.if.end291_crit_edge
  %65 = ptrtoint ptr %rc_proto to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rc_proto, align 4
  %conv292 = zext i32 %call286 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef %66, i64 noundef %conv292, i8 noundef zeroext 0) #6
  br label %cleanup.sink.split

if.else293:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rc_repeat(ptr noundef %dev) #6
  br label %cleanup.sink.split

do.body296:                                       ; preds = %sw.bb128.do.body296_crit_edge, %sw.bb116.do.body296_crit_edge, %if.else103.do.body296_crit_edge, %sw.bb61.do.body296_crit_edge, %sw.bb49.do.body296_crit_edge, %if.else43.do.body296_crit_edge, %sw.bb32.do.body296_crit_edge, %if.else.do.body296_crit_edge, %sw.bb.do.body296_crit_edge, %do.end.do.body296_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_nec_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_nec_decode, %if.then308)) #6
          to label %cleanup.sink.split [label %if.then308], !srcloc !46

if.then308:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #8
  %count310 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 11, i32 1
  %67 = ptrtoint ptr %count310 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count310, align 4
  %69 = ptrtoint ptr %nec to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nec, align 4
  %71 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool316.not = icmp eq i32 %71, 0
  %cond317 = select i1 %tobool316.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_nec_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %68, i32 noundef %70, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond317) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then308, %do.body296, %if.else293, %if.end291, %sw.bb116.cleanup.sink.split_crit_edge, %if.end107, %do.end91, %sw.bb49.cleanup.sink.split_crit_edge, %if.else43.cleanup.sink.split_crit_edge, %if.end39.cleanup.sink.split_crit_edge, %if.end30, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %., %if.end107 ], [ 0, %do.end91 ], [ 1, %if.end30 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 2, %if.end39.cleanup.sink.split_crit_edge ], [ 4, %if.else43.cleanup.sink.split_crit_edge ], [ 3, %sw.bb49.cleanup.sink.split_crit_edge ], [ 5, %sw.bb116.cleanup.sink.split_crit_edge ], [ 0, %if.else293 ], [ 0, %if.end291 ], [ 0, %do.body296 ], [ 0, %if.then308 ]
  %retval.0.ph = phi i32 [ 0, %if.end107 ], [ 0, %do.end91 ], [ 0, %if.end30 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.end39.cleanup.sink.split_crit_edge ], [ 0, %if.else43.cleanup.sink.split_crit_edge ], [ 0, %sw.bb49.cleanup.sink.split_crit_edge ], [ 0, %sw.bb116.cleanup.sink.split_crit_edge ], [ 0, %if.else293 ], [ 0, %if.end291 ], [ -22, %do.body296 ], [ -22, %if.then308 ]
  %72 = ptrtoint ptr %nec to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink, ptr %nec, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc_proto) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_nec_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #6
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %and.i = and i32 %scancode, 255
  %1 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %protocol, label %if.else12.i [
    i32 11, label %if.then.i
    i32 10, label %if.then7.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %scancode, 24
  %shr2.i = lshr i32 %scancode, 16
  %and3.i = and i32 %shr2.i, 255
  %shr4.i = lshr i32 %scancode, 8
  %and5.i = and i32 %shr4.i, 255
  br label %ir_nec_scancode_to_raw.exit

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr8.i = lshr i32 %scancode, 16
  %and9.i = and i32 %shr8.i, 255
  %shr10.i = lshr i32 %scancode, 8
  %and11.i = and i32 %shr10.i, 255
  %xor.i = xor i32 %and.i, 255
  br label %ir_nec_scancode_to_raw.exit

if.else12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr13.i = lshr i32 %scancode, 8
  %and14.i = and i32 %shr13.i, 255
  %xor15.i = xor i32 %and14.i, 255
  %xor16.i = xor i32 %and.i, 255
  br label %ir_nec_scancode_to_raw.exit

ir_nec_scancode_to_raw.exit:                      ; preds = %if.else12.i, %if.then7.i, %if.then.i
  %addr.0.i = phi i32 [ %and3.i, %if.then.i ], [ %and9.i, %if.then7.i ], [ %and14.i, %if.else12.i ]
  %addr_inv.0.i = phi i32 [ %shr.i, %if.then.i ], [ %and11.i, %if.then7.i ], [ %xor15.i, %if.else12.i ]
  %data_inv.0.i = phi i32 [ %and5.i, %if.then.i ], [ %xor.i, %if.then7.i ], [ %xor16.i, %if.else12.i ]
  %shl.i = shl i32 %data_inv.0.i, 24
  %shl18.i = shl nuw nsw i32 %and.i, 16
  %or.i = or i32 %shl.i, %shl18.i
  %shl19.i = shl nsw i32 %addr_inv.0.i, 8
  %or20.i = or i32 %shl19.i, %addr.0.i
  %or21.i = or i32 %or.i, %or20.i
  %conv = zext i32 %or21.i to i64
  %call1 = call i32 @ir_raw_gen_pd(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_nec_timings, i32 noundef 32, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %ir_nec_scancode_to_raw.exit.cleanup_crit_edge, label %if.end

ir_nec_scancode_to_raw.exit.cleanup_crit_edge:    ; preds = %ir_nec_scancode_to_raw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ir_nec_scancode_to_raw.exit
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ir_nec_scancode_to_raw.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end ], [ %call1, %ir_nec_scancode_to_raw.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @ir_nec_bytes_to_scancode(i8 noundef zeroext %address, i8 noundef zeroext %not_address, i8 noundef zeroext %command, i8 noundef zeroext %not_command, ptr nocapture noundef writeonly %protocol) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %xor41 = xor i8 %not_command, %command
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor41)
  %cmp.not = icmp eq i8 %xor41, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1 = zext i8 %not_command to i32
  %conv3 = zext i8 %not_address to i32
  %shl = shl nuw i32 %conv3, 24
  %conv4 = zext i8 %address to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or = or i32 %shl, %shl5
  %shl7 = shl nuw nsw i32 %conv1, 8
  %or8 = or i32 %shl7, %or
  br label %if.end29

if.else:                                          ; preds = %entry
  %conv11 = zext i8 %address to i32
  %xor1342 = xor i8 %not_address, %address
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor1342)
  %cmp14.not = icmp eq i8 %xor1342, -1
  br i1 %cmp14.not, label %if.else24, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = zext i8 %not_address to i32
  %shl18 = shl nuw nsw i32 %conv11, 16
  %shl20 = shl nuw nsw i32 %conv12, 8
  %or21 = or i32 %shl20, %shl18
  br label %if.end29

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl26 = shl nuw nsw i32 %conv11, 8
  br label %if.end29

if.end29:                                         ; preds = %if.else24, %if.then16, %if.then
  %.sink = phi i32 [ 10, %if.then16 ], [ 9, %if.else24 ], [ 11, %if.then ]
  %or8.pn = phi i32 [ %or21, %if.then16 ], [ %shl26, %if.else24 ], [ %or8, %if.then ]
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %protocol, align 4
  %conv = zext i8 %command to i32
  %scancode.0 = or i32 %or8.pn, %conv
  ret i32 %scancode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_gen_pd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_ir_nec_decoder__231_272_ir_nec_decode_init6, !1, !"__initcall__kmod_ir_nec_decoder__231_272_ir_nec_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 272, i32 1}
!2 = !{ptr @__exitcall_ir_nec_decode_exit, !3, !"__exitcall_ir_nec_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 273, i32 1}
!4 = !{ptr @__UNIQUE_ID_file232, !5, !"__UNIQUE_ID_file232", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 275, i32 1}
!6 = !{ptr @__UNIQUE_ID_license233, !5, !"__UNIQUE_ID_license233", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author234, !8, !"__UNIQUE_ID_author234", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 276, i32 1}
!9 = !{ptr @__UNIQUE_ID_author235, !10, !"__UNIQUE_ID_author235", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 277, i32 1}
!11 = !{ptr @__UNIQUE_ID_description236, !12, !"__UNIQUE_ID_description236", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 278, i32 1}
!13 = !{ptr @nec_handler, !14, !"nec_handler", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 250, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 52, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ir_nec_decode.__UNIQUE_ID_ddebug228, !16, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 103, i32 4}
!25 = !{ptr @ir_nec_decode.__UNIQUE_ID_ddebug229, !24, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 165, i32 2}
!28 = !{ptr @ir_nec_decode.__UNIQUE_ID_ddebug230, !27, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!29 = !{ptr @ir_nec_timings, !30, !"ir_nec_timings", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 209, i32 39}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/ir-nec-decoder.c", i32 263, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ir_nec_decode_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ir_nec_decode_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148961625, i64 2148961630, i64 2148961643, i64 2148961687, i64 2148961721, i64 2148961742}
!47 = !{i8 0, i8 2}
