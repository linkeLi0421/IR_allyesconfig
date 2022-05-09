; ModuleID = '/llk/IR_all_yes/drivers/tty/ipwireless/main.c_pt.bc'
source_filename = "../drivers/tty/ipwireless/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ipw_dev = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }

@ipwireless_out_queue = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [17 x i8] c"ipwireless.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ipwireless_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @ipwireless_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [30 x i8] c"ipwireless.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_loopback = internal constant [20 x i8] c"ipwireless.loopback\00", align 1
@ipwireless_loopback = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_loopback = internal constant %struct.kernel_param { ptr @__param_str_loopback, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @ipwireless_loopback } }, section "__param", align 4
@__UNIQUE_ID_loopbacktype237 = internal constant [33 x i8] c"ipwireless.parmtype=loopback:int\00", section ".modinfo", align 1
@__param_str_out_queue = internal constant [21 x i8] c"ipwireless.out_queue\00", align 1
@__param_out_queue = internal constant %struct.kernel_param { ptr @__param_str_out_queue, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @ipwireless_out_queue } }, section "__param", align 4
@__UNIQUE_ID_out_queuetype238 = internal constant [34 x i8] c"ipwireless.parmtype=out_queue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug239 = internal constant [51 x i8] c"ipwireless.parm=debug:switch on debug messages [0]\00", section ".modinfo", align 1
@__UNIQUE_ID_loopback240 = internal constant [59 x i8] c"ipwireless.parm=loopback:debug: enable ras_raw channel [0]\00", section ".modinfo", align 1
@__UNIQUE_ID_out_queue241 = internal constant [69 x i8] c"ipwireless.parm=out_queue:debug: set size of outgoing PPP queue [10]\00", section ".modinfo", align 1
@me = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @ipwireless_attach, ptr @ipwireless_detach, ptr null, ptr null, ptr null, ptr @ipw_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ipwireless__242_351_init_ipwireless6 = internal global ptr @init_ipwireless, section ".initcall6.init", align 4
@__exitcall_exit_ipwireless = internal global ptr @exit_ipwireless, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [79 x i8] c"ipwireless.author=Stephen Blackheath, Ben Martel, Jiri Kosina and David Sterba\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [38 x i8] c"ipwireless.description=ipwireless 1.1\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [50 x i8] c"ipwireless.file=drivers/tty/ipwireless/ipwireless\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [23 x i8] c"ipwireless.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipwireless\00", [21 x i8] zeroinitializer }, align 32
@ipw_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 754, i16 256, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 754, i16 512, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@config_ipwireless.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&ipw->work_reboot)\00", [59 x i8] zeroinitializer }, align 32
@config_ipwireless._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016ipwireless: Card type %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"config_ipwireless\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/ipwireless/main.c\00", [34 x i8] zeroinitializer }, align 32
@config_ipwireless._entry_ptr = internal global ptr @config_ipwireless._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V2/V3\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"V1\00", [29 x i8] zeroinitializer }, align 32
@config_ipwireless._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016ipwireless: I/O ports %pR, irq %d\0A\00", [59 x i8] zeroinitializer }, align 32
@config_ipwireless._entry_ptr.9 = internal global ptr @config_ipwireless._entry.7, section ".printk_index", align 4
@config_ipwireless._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ipwireless: attr memory %pR, common memory %pR\0A\00", [46 x i8] zeroinitializer }, align 32
@config_ipwireless._entry_ptr.12 = internal global ptr @config_ipwireless._entry.10, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"ipwireless_out_queue\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 52, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"ipwireless_debug\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 50, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"ipwireless_loopback\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 51, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 315, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 319, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"ipw_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 37, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 182, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 193, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 195, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [33 x i8] c"../drivers/tty/ipwireless/main.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 199, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_debug239, ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__UNIQUE_ID_loopback240, ptr @__UNIQUE_ID_loopbacktype237, ptr @__UNIQUE_ID_out_queue241, ptr @__UNIQUE_ID_out_queuetype238, ptr @__exitcall_exit_ipwireless, ptr @__initcall__kmod_ipwireless__242_351_init_ipwireless6, ptr @__param_debug, ptr @__param_loopback, ptr @__param_out_queue, ptr @config_ipwireless._entry, ptr @config_ipwireless._entry.10, ptr @config_ipwireless._entry.7, ptr @config_ipwireless._entry_ptr, ptr @config_ipwireless._entry_ptr.12, ptr @config_ipwireless._entry_ptr.9, ptr @exit_ipwireless, ptr @ipwireless_out_queue, ptr @ipwireless_debug, ptr @ipwireless_loopback, ptr @me, ptr @.str, ptr @ipw_ids, ptr @config_ipwireless.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_out_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_loopback to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @me to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipw_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ipwireless.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ipwireless._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ipwireless._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ipwireless._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ipwireless() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @me) #5
  tail call void @ipwireless_tty_release() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_tty_release() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ipwireless() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ipwireless_tty_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @me) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipwireless_tty_release() #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipwireless_attach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %call2 = tail call ptr @ipwireless_hardware_create() #5
  %hardware = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %hardware to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %hardware, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %is_v2_card.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %is_v2_card.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %is_v2_card.i, align 4
  %config_flags.i = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %config_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config_flags.i, align 4
  %or.i = or i32 %8, 6145
  store i32 %or.i, ptr %config_flags.i, align 4
  %call.i = tail call i32 @pcmcia_loop_config(ptr noundef %5, ptr noundef nonnull @ipwireless_probe, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.body.i, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

do.body.i:                                        ; preds = %if.end6
  %work_reboot.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %work_reboot.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %work_reboot.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work_reboot.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @config_ipwireless.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry5.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry5.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @signalled_reboot_work, ptr %func.i, align 4
  %13 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hardware, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %attr_memory.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attr_memory.i, align 8
  %common_memory.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common_memory.i, align 4
  %23 = ptrtoint ptr %is_v2_card.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_v2_card.i, align 4
  tail call void @ipwireless_init_hardware_v1(ptr noundef %14, i32 noundef %18, ptr noundef %20, ptr noundef %22, i32 noundef %24, ptr noundef nonnull @signalled_reboot_callback, ptr noundef nonnull %call7.i.i) #5
  %call8.i = tail call i32 @pcmcia_request_irq(ptr noundef %5, ptr noundef nonnull @ipwireless_interrupt) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.not.i, label %do.end14.i, label %do.body.i.exit.i_crit_edge

do.body.i.exit.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

do.end14.i:                                       ; preds = %do.body.i
  %25 = ptrtoint ptr %is_v2_card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_v2_card.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.6, ptr @.str.5
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond.i) #9
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i, align 4
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 8
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %28, i32 noundef %30) #9
  %31 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %attr_memory.i, align 8
  %tobool25.not.i = icmp eq ptr %32, null
  br i1 %tobool25.not.i, label %do.end14.i.if.end38.i_crit_edge, label %land.lhs.true.i

do.end14.i.if.end38.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %do.end14.i
  %33 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %common_memory.i, align 4
  %tobool27.not.i = icmp eq ptr %34, null
  br i1 %tobool27.not.i, label %land.lhs.true.i.if.end38.i_crit_edge, label %do.end31.i

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

do.end31.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx34.i = getelementptr %struct.pcmcia_device, ptr %5, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx34.i, align 4
  %arrayidx36.i = getelementptr %struct.pcmcia_device, ptr %5, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx36.i, align 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %36, ptr noundef %38) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end31.i, %land.lhs.true.i.if.end38.i_crit_edge, %do.end14.i.if.end38.i_crit_edge
  %39 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hardware, align 4
  %call40.i = tail call ptr @ipwireless_network_create(ptr noundef %40) #5
  %network.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %network.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call40.i, ptr %network.i, align 8
  %tobool42.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool42.not.i, label %if.end38.i.exit.i_crit_edge, label %if.end44.i

if.end38.i.exit.i_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

if.end44.i:                                       ; preds = %if.end38.i
  %42 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hardware, align 4
  %call47.i = tail call ptr @ipwireless_tty_create(ptr noundef %43, ptr noundef nonnull %call40.i) #5
  %tty.i = getelementptr inbounds %struct.ipw_dev, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %tty.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call47.i, ptr %tty.i, align 4
  %tobool49.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool49.not.i, label %if.end44.i.exit.i_crit_edge, label %if.end51.i

if.end44.i.exit.i_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

if.end51.i:                                       ; preds = %if.end44.i
  %45 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hardware, align 4
  tail call void @ipwireless_init_hardware_v2_v3(ptr noundef %46) #5
  %call53.i = tail call i32 @pcmcia_enable_device(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.not.i = icmp eq i32 %call53.i, 0
  br i1 %cmp54.not.i, label %if.end51.i.cleanup_crit_edge, label %if.end51.i.exit.i_crit_edge

if.end51.i.exit.i_crit_edge:                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit.i

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

exit.i:                                           ; preds = %if.end51.i.exit.i_crit_edge, %if.end44.i.exit.i_crit_edge, %if.end38.i.exit.i_crit_edge, %do.body.i.exit.i_crit_edge
  %47 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %common_memory.i, align 4
  %tobool58.not.i = icmp eq ptr %48, null
  br i1 %tobool58.not.i, label %exit.i.if.end67.i_crit_edge, label %if.then59.i

exit.i.if.end67.i_crit_edge:                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then59.i:                                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx61.i = getelementptr %struct.pcmcia_device, ptr %5, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx61.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %52
  %add.i.i = add i32 %sub.i.i, %54
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %52, i32 noundef %add.i.i) #5
  %55 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %common_memory.i, align 4
  tail call void @iounmap(ptr noundef %56) #5
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then59.i, %exit.i.if.end67.i_crit_edge
  %57 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %attr_memory.i, align 8
  %tobool69.not.i = icmp eq ptr %58, null
  br i1 %tobool69.not.i, label %if.end67.i.if.end78.i_crit_edge, label %if.then70.i

if.end67.i.if.end78.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.i

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx72.i = getelementptr %struct.pcmcia_device, ptr %5, i32 0, i32 7, i32 3
  %59 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx72.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %end.i123.i = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 1
  %63 = ptrtoint ptr %end.i123.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %end.i123.i, align 4
  %sub.i124.i = sub i32 1, %62
  %add.i125.i = add i32 %sub.i124.i, %64
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %62, i32 noundef %add.i125.i) #5
  %65 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %attr_memory.i, align 8
  tail call void @iounmap(ptr noundef %66) #5
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then70.i, %if.end67.i.if.end78.i_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %5) #5
  br label %if.then8

if.then8:                                         ; preds = %if.end78.i, %if.end6.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end6.if.then8_crit_edge ], [ -1, %if.end78.i ]
  tail call void @ipwireless_detach(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end51.i.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then8 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end51.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipwireless_detach(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resource.i = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %7
  %add.i.i = add i32 %sub.i.i, %9
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %7, i32 noundef %add.i.i) #5
  %common_memory.i = getelementptr inbounds %struct.ipw_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common_memory.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx6.i = getelementptr %struct.pcmcia_device, ptr %13, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %end.i36.i = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %end.i36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i36.i, align 4
  %sub.i37.i = sub i32 1, %17
  %add.i38.i = add i32 %sub.i37.i, %19
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %add.i38.i) #5
  %20 = ptrtoint ptr %common_memory.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common_memory.i, align 4
  tail call void @iounmap(ptr noundef %21) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %attr_memory.i = getelementptr inbounds %struct.ipw_dev, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attr_memory.i, align 4
  %tobool13.not.i = icmp eq ptr %23, null
  br i1 %tobool13.not.i, label %if.end.i.release_ipwireless.exit_crit_edge, label %if.then14.i

if.end.i.release_ipwireless.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_ipwireless.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %arrayidx17.i = getelementptr %struct.pcmcia_device, ptr %25, i32 0, i32 7, i32 3
  %26 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx17.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %end.i39.i = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %end.i39.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i39.i, align 4
  %sub.i40.i = sub i32 1, %29
  %add.i41.i = add i32 %sub.i40.i, %31
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %add.i41.i) #5
  %32 = ptrtoint ptr %attr_memory.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %attr_memory.i, align 4
  tail call void @iounmap(ptr noundef %33) #5
  br label %release_ipwireless.exit

release_ipwireless.exit:                          ; preds = %if.then14.i, %if.end.i.release_ipwireless.exit_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  tail call void @pcmcia_disable_device(ptr noundef %35) #5
  %tty = getelementptr inbounds %struct.ipw_dev, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty, align 4
  %cmp.not = icmp eq ptr %37, null
  br i1 %cmp.not, label %release_ipwireless.exit.if.end_crit_edge, label %if.then

release_ipwireless.exit.if.end_crit_edge:         ; preds = %release_ipwireless.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %release_ipwireless.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipwireless_tty_free(ptr noundef nonnull %37) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %release_ipwireless.exit.if.end_crit_edge
  %network = getelementptr inbounds %struct.ipw_dev, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %network, align 4
  %cmp2.not = icmp eq ptr %39, null
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipwireless_network_free(ptr noundef nonnull %39) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %hardware = getelementptr inbounds %struct.ipw_dev, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hardware, align 4
  %cmp6.not = icmp eq ptr %41, null
  br i1 %cmp6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ipwireless_hardware_free(ptr noundef nonnull %41) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipwireless_hardware_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipwireless_probe(ptr noundef %p_dev, ptr nocapture noundef %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -25
  store i32 %and, ptr %flags, align 4
  %4 = load ptr, ptr %resource, align 4
  %flags3 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags3, align 4
  %or = or i32 %6, 16
  store i32 %or, ptr %flags3, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %7 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config_index, align 4
  %or4 = or i32 %8, 68
  store i32 %or4, ptr %config_index, align 4
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %9 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %io_lines, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %13, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.exit_crit_edge, label %if.end13

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end13:                                         ; preds = %if.end
  %arrayidx15 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %flags16 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags16, align 4
  %or17 = or i32 %19, 3
  store i32 %or17, ptr %flags16, align 4
  %20 = load ptr, ptr %arrayidx15, align 4
  %call20 = tail call i32 @pcmcia_request_window(ptr noundef %p_dev, ptr noundef %20, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp.not = icmp eq i32 %call20, 0
  br i1 %cmp.not, label %if.end22, label %if.end13.exit1_crit_edge

if.end13.exit1_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit1

if.end22:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15, align 4
  %card_addr = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 8
  %23 = ptrtoint ptr %card_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %card_addr, align 4
  %call25 = tail call i32 @pcmcia_map_mem_page(ptr noundef %p_dev, ptr noundef %22, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end28, label %if.end22.exit1_crit_edge

if.end22.exit1_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit1

if.end28:                                         ; preds = %if.end22
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx15, align 4
  %end.i154 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %end.i154 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i154, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 4
  %sub.i155 = add i32 %28, 1
  %add.i156 = sub i32 %sub.i155, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i156)
  %cmp32 = icmp eq i32 %add.i156, 256
  %conv = zext i1 %cmp32 to i32
  %is_v2_card = getelementptr inbounds %struct.ipw_dev, ptr %priv_data, i32 0, i32 1
  %31 = ptrtoint ptr %is_v2_card to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %is_v2_card, align 4
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %end.i157 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %end.i157 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end.i157, align 4
  %sub.i158 = sub i32 1, %35
  %add.i159 = add i32 %sub.i158, %37
  %call39 = tail call ptr @ioremap(i32 noundef %35, i32 noundef %add.i159) #5
  %common_memory = getelementptr inbounds %struct.ipw_dev, ptr %priv_data, i32 0, i32 3
  %38 = ptrtoint ptr %common_memory to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call39, ptr %common_memory, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end28.exit1_crit_edge, label %if.end43

if.end28.exit1_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit1

if.end43:                                         ; preds = %if.end28
  %39 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx15, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %end.i160 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %end.i160 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i160, align 4
  %sub.i161 = sub i32 1, %42
  %add.i162 = add i32 %sub.i161, %44
  %call50 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %42, i32 noundef %add.i162, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end43.exit2_crit_edge, label %if.end53

if.end43.exit2_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit2

if.end53:                                         ; preds = %if.end43
  %arrayidx55 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx55, align 4
  %flags56 = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags56, align 4
  %or57 = or i32 %48, 35
  store i32 %or57, ptr %flags56, align 4
  %49 = load ptr, ptr %arrayidx55, align 4
  %end = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %end, align 4
  %51 = load ptr, ptr %arrayidx55, align 4
  %call62 = tail call i32 @pcmcia_request_window(ptr noundef %p_dev, ptr noundef %51, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %if.end53.exit3_crit_edge

if.end53.exit3_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit3

if.end66:                                         ; preds = %if.end53
  %52 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx55, align 4
  %call69 = tail call i32 @pcmcia_map_mem_page(ptr noundef %p_dev, ptr noundef %53, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.end73, label %if.end66.exit3_crit_edge

if.end66.exit3_crit_edge:                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit3

if.end73:                                         ; preds = %if.end66
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx55, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %end.i163 = getelementptr inbounds %struct.resource, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %end.i163 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %end.i163, align 4
  %sub.i164 = sub i32 1, %57
  %add.i165 = add i32 %sub.i164, %59
  %call80 = tail call ptr @ioremap(i32 noundef %57, i32 noundef %add.i165) #5
  %attr_memory = getelementptr inbounds %struct.ipw_dev, ptr %priv_data, i32 0, i32 2
  %60 = ptrtoint ptr %attr_memory to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call80, ptr %attr_memory, align 4
  %tobool82.not = icmp eq ptr %call80, null
  br i1 %tobool82.not, label %if.end73.exit3_crit_edge, label %if.end84

if.end73.exit3_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit3

if.end84:                                         ; preds = %if.end73
  %61 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx55, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %end.i166 = getelementptr inbounds %struct.resource, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %end.i166 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end.i166, align 4
  %sub.i167 = sub i32 1, %64
  %add.i168 = add i32 %sub.i167, %66
  %call91 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %64, i32 noundef %add.i168, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %if.then93, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then93:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %attr_memory to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %attr_memory, align 4
  tail call void @iounmap(ptr noundef %68) #5
  br label %exit3

exit3:                                            ; preds = %if.then93, %if.end73.exit3_crit_edge, %if.end66.exit3_crit_edge, %if.end53.exit3_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end53.exit3_crit_edge ], [ %call69, %if.end66.exit3_crit_edge ], [ -16, %if.then93 ], [ -12, %if.end73.exit3_crit_edge ]
  %69 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx15, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %end.i169 = getelementptr inbounds %struct.resource, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %end.i169 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %end.i169, align 4
  %sub.i170 = sub i32 1, %72
  %add.i171 = add i32 %sub.i170, %74
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %72, i32 noundef %add.i171) #5
  br label %exit2

exit2:                                            ; preds = %exit3, %if.end43.exit2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %exit3 ], [ -16, %if.end43.exit2_crit_edge ]
  %75 = ptrtoint ptr %common_memory to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %common_memory, align 4
  tail call void @iounmap(ptr noundef %76) #5
  br label %exit1

exit1:                                            ; preds = %exit2, %if.end28.exit1_crit_edge, %if.end22.exit1_crit_edge, %if.end13.exit1_crit_edge
  %ret.2 = phi i32 [ %call20, %if.end13.exit1_crit_edge ], [ %call25, %if.end22.exit1_crit_edge ], [ %ret.1, %exit2 ], [ -12, %if.end28.exit1_crit_edge ]
  %77 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %resource, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %end.i172 = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %end.i172 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %end.i172, align 4
  %sub.i173 = sub i32 1, %80
  %add.i174 = add i32 %sub.i173, %82
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %80, i32 noundef %add.i174) #5
  br label %exit

exit:                                             ; preds = %exit1, %if.end.exit_crit_edge
  %ret.3 = phi i32 [ %ret.2, %exit1 ], [ -16, %if.end.exit_crit_edge ]
  tail call void @pcmcia_disable_device(ptr noundef %p_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end84.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @signalled_reboot_work(ptr nocapture noundef readonly %work_reboot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work_reboot, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @pcmcia_reset_card(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_init_hardware_v1(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @signalled_reboot_callback(ptr noundef %callback_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %work_reboot = getelementptr inbounds %struct.ipw_dev, ptr %callback_data, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work_reboot) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipwireless_network_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipwireless_tty_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_init_hardware_v2_v3(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_reset_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_tty_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_network_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_hardware_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_tty_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @ipwireless_out_queue, !1, !"ipwireless_out_queue", i1 false, i1 false}
!1 = !{!"../drivers/tty/ipwireless/main.c", i32 52, i32 5}
!2 = !{ptr @__param_debug, !3, !"__param_debug", i1 false, i1 false}
!3 = !{!"../drivers/tty/ipwireless/main.c", i32 54, i32 1}
!4 = !{ptr @__UNIQUE_ID_debugtype236, !3, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!5 = !{ptr @__param_loopback, !6, !"__param_loopback", i1 false, i1 false}
!6 = !{!"../drivers/tty/ipwireless/main.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_loopbacktype237, !6, !"__UNIQUE_ID_loopbacktype237", i1 false, i1 false}
!8 = !{ptr @__param_out_queue, !9, !"__param_out_queue", i1 false, i1 false}
!9 = !{!"../drivers/tty/ipwireless/main.c", i32 56, i32 1}
!10 = !{ptr @__UNIQUE_ID_out_queuetype238, !9, !"__UNIQUE_ID_out_queuetype238", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug239, !12, !"__UNIQUE_ID_debug239", i1 false, i1 false}
!12 = !{!"../drivers/tty/ipwireless/main.c", i32 57, i32 1}
!13 = !{ptr @__UNIQUE_ID_loopback240, !14, !"__UNIQUE_ID_loopback240", i1 false, i1 false}
!14 = !{!"../drivers/tty/ipwireless/main.c", i32 58, i32 1}
!15 = !{ptr @__UNIQUE_ID_out_queue241, !16, !"__UNIQUE_ID_out_queue241", i1 false, i1 false}
!16 = !{!"../drivers/tty/ipwireless/main.c", i32 60, i32 1}
!17 = !{ptr @__initcall__kmod_ipwireless__242_351_init_ipwireless6, !18, !"__initcall__kmod_ipwireless__242_351_init_ipwireless6", i1 false, i1 false}
!18 = !{!"../drivers/tty/ipwireless/main.c", i32 351, i32 1}
!19 = !{ptr @__exitcall_exit_ipwireless, !20, !"__exitcall_exit_ipwireless", i1 false, i1 false}
!20 = !{!"../drivers/tty/ipwireless/main.c", i32 352, i32 1}
!21 = !{ptr @__UNIQUE_ID_author243, !22, !"__UNIQUE_ID_author243", i1 false, i1 false}
!22 = !{!"../drivers/tty/ipwireless/main.c", i32 354, i32 1}
!23 = !{ptr @__UNIQUE_ID_description244, !24, !"__UNIQUE_ID_description244", i1 false, i1 false}
!24 = !{!"../drivers/tty/ipwireless/main.c", i32 355, i32 1}
!25 = !{ptr @__UNIQUE_ID_file245, !26, !"__UNIQUE_ID_file245", i1 false, i1 false}
!26 = !{!"../drivers/tty/ipwireless/main.c", i32 356, i32 1}
!27 = !{ptr @__UNIQUE_ID_license246, !26, !"__UNIQUE_ID_license246", i1 false, i1 false}
!28 = !{ptr @ipwireless_debug, !29, !"ipwireless_debug", i1 false, i1 false}
!29 = !{!"../drivers/tty/ipwireless/main.c", i32 50, i32 5}
!30 = !{ptr @ipwireless_loopback, !31, !"ipwireless_loopback", i1 false, i1 false}
!31 = !{!"../drivers/tty/ipwireless/main.c", i32 51, i32 5}
!32 = !{ptr @__param_str_debug, !3, !"__param_str_debug", i1 false, i1 false}
!33 = !{ptr @__param_str_loopback, !6, !"__param_str_loopback", i1 false, i1 false}
!34 = !{ptr @__param_str_out_queue, !9, !"__param_str_out_queue", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/ipwireless/main.c", i32 319, i32 11}
!37 = !{ptr @me, !38, !"me", i1 false, i1 false}
!38 = !{!"../drivers/tty/ipwireless/main.c", i32 315, i32 29}
!39 = !{ptr @config_ipwireless.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/tty/ipwireless/main.c", i32 182, i32 2}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/ipwireless/main.c", i32 193, i32 2}
!44 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @config_ipwireless._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @config_ipwireless._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/ipwireless/main.c", i32 195, i32 2}
!52 = !{ptr @config_ipwireless._entry.7, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @config_ipwireless._entry_ptr.9, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/ipwireless/main.c", i32 199, i32 3}
!56 = !{ptr @config_ipwireless._entry.10, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @config_ipwireless._entry_ptr.12, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ipw_ids, !59, !"ipw_ids", i1 false, i1 false}
!59 = !{!"../drivers/tty/ipwireless/main.c", i32 37, i32 38}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
