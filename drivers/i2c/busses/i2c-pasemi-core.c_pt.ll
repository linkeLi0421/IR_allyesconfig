; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-pasemi-core.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-pasemi-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pasemi_smbus = type { ptr, %struct.i2c_adapter, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PA Semi SMBus adapter (%s)\00", [37 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pasemi_i2c_xfer, ptr null, ptr @pasemi_smb_xfer, ptr null, ptr @pasemi_smb_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@reg_write.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_apple\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_write\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/i2c/busses/i2c-pasemi-core.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smbus write reg %x val %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@pasemi_smb_waitready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 96, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Timeout, status 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pasemi_smb_waitready\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pasemi_smb_waitready._entry_ptr = internal global ptr @pasemi_smb_waitready._entry, section ".printk_index", align 4
@pasemi_smb_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 258, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pasemi_smb_xfer\00", [16 x i8] zeroinitializer }, align 32
@pasemi_smb_xfer._entry_ptr = internal global ptr @pasemi_smb_xfer._entry, section ".printk_index", align 4
@reg_read.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_read\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smbus read reg %x val %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 335, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 323, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 46, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 96, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 258, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [40 x i8] c"../drivers/i2c/busses/i2c-pasemi-core.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 54, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @pasemi_smb_waitready._entry, ptr @pasemi_smb_waitready._entry_ptr, ptr @pasemi_smb_xfer._entry, ptr @pasemi_smb_xfer._entry_ptr, ptr @.str, ptr @smbus_algorithm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasemi_smb_waitready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pasemi_smb_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pasemi_i2c_common_probe(ptr noundef %smbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1, i32 12
  %1 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %smbus, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str, ptr noundef %retval.0.i)
  %class = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 129, ptr %class, align 4
  %algo = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @smbus_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %smbus, ptr %algo_data, align 4
  %10 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smbus, align 8
  %parent = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 1, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent, align 8
  %hw_rev = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 4
  %13 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %dev_name.exit.if.end_crit_edge, label %if.then

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  %ioaddr.i = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 2
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_common_probe, %reg_read.exit)) #6
          to label %if.then.i [label %reg_read.exit], !srcloc !37

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef 40, i32 noundef %18) #6
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.then.i, %if.then
  %21 = ptrtoint ptr %hw_rev to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %hw_rev, align 8
  br label %if.end

if.end:                                           ; preds = %reg_read.exit, %dev_name.exit.if.end_crit_edge
  %clk_div.i = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 3
  %22 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_div.i, align 4
  %and.i = and i32 %23, 255
  %24 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp.i = icmp sgt i32 %25, 5
  %spec.select.v.i = select i1 %cmp.i, i32 3584, i32 1536
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_common_probe, %pasemi_reset.exit)) #6
          to label %if.then.i.i [label %pasemi_reset.exit], !srcloc !37

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %27, ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef %spec.select.i) #6
  br label %pasemi_reset.exit

pasemi_reset.exit:                                ; preds = %if.then.i.i, %if.end
  %ioaddr.i.i = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 2
  %28 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #6, !srcloc !39
  %31 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %smbus, align 8
  %call13 = tail call i32 @devm_i2c_add_adapter(ptr noundef %32, ptr noundef %adapter) #6
  ret i32 %call13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_i2c_add_adapter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pasemi_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %ioaddr.i.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !35
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer, %reg_read.exit.i)) #6
          to label %if.then.i.i [label %reg_read.exit.i], !srcloc !37

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef 20, i32 noundef %5) #6
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.then.i.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer, %pasemi_smb_clear.exit)) #6
          to label %if.then.i2.i [label %pasemi_smb_clear.exit], !srcloc !37

if.then.i2.i:                                     ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef %5) #6
  br label %pasemi_smb_clear.exit

pasemi_smb_clear.exit:                            ; preds = %if.then.i2.i, %reg_read.exit.i
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %4) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp11 = icmp sgt i32 %num, 0
  br i1 %cmp11, label %for.body.lr.ph, label %pasemi_smb_clear.exit.for.end_crit_edge

pasemi_smb_clear.exit.for.end_crit_edge:          ; preds = %pasemi_smb_clear.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %pasemi_smb_clear.exit
  %sub = add nsw i32 %num, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.012
  call void @__sanitizer_cov_trace_cmp4(i32 %i.012, i32 %sub)
  %cmp1 = icmp eq i32 %i.012, %sub
  %conv = zext i1 %cmp1 to i32
  %call = tail call fastcc i32 @pasemi_i2c_xfer_msg(ptr noundef %adapter, ptr noundef %arrayidx, i32 noundef %conv)
  %inc = add nuw nsw i32 %i.012, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %cmp = icmp slt i32 %inc, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %phi.sel = select i1 %tobool.not, i32 %num, i32 %call
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %pasemi_smb_clear.exit.for.end_crit_edge
  %tobool.not.lcssa = phi i32 [ %num, %pasemi_smb_clear.exit.for.end_crit_edge ], [ %phi.sel, %for.end.loopexit ]
  ret i32 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pasemi_smb_xfer(ptr noundef %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %shl = shl i16 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 1
  %conv3 = zext i1 %cmp to i32
  %ioaddr.i.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !35
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit.i)) #6
          to label %if.then.i.i [label %reg_read.exit.i], !srcloc !37

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef 20, i32 noundef %5) #6
  br label %reg_read.exit.i

reg_read.exit.i:                                  ; preds = %if.then.i.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %pasemi_smb_clear.exit)) #6
          to label %if.then.i2.i [label %pasemi_smb_clear.exit], !srcloc !37

if.then.i2.i:                                     ; preds = %reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef %5) #6
  br label %pasemi_smb_clear.exit

pasemi_smb_clear.exit:                            ; preds = %if.then.i2.i, %reg_read.exit.i
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %4) #6, !srcloc !39
  %12 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb13
    i32 3, label %sw.bb26
    i32 5, label %sw.bb40
    i32 4, label %sw.bb79
    i32 7, label %sw.bb91
  ]

sw.bb:                                            ; preds = %pasemi_smb_clear.exit
  %13 = or i16 %shl, 768
  %or = zext i16 %13 to i32
  %or6 = or i32 %or, %conv3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit)) #6
          to label %if.then.i [label %reg_write.exit], !srcloc !37

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or6) #6
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %if.then.i, %sw.bb
  %16 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %18) #6, !srcloc !39
  br label %sw.epilog

sw.bb7:                                           ; preds = %pasemi_smb_clear.exit
  %19 = or i16 %shl, 256
  %or9 = zext i16 %19 to i32
  %or10 = or i32 %or9, %conv3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit315)) #6
          to label %if.then.i313 [label %reg_write.exit315], !srcloc !37

if.then.i313:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or10) #6
  br label %reg_write.exit315

reg_write.exit315:                                ; preds = %if.then.i313, %sw.bb7
  %22 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or10) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %24) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool.not = icmp eq i8 %read_write, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %reg_write.exit315
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit318)) #6
          to label %if.then.i316 [label %reg_write.exit318], !srcloc !37

if.then.i316:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %26, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1537) #6
  br label %reg_write.exit318

reg_write.exit318:                                ; preds = %if.then.i316, %if.then
  %27 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 17170432) #6, !srcloc !39
  br label %sw.epilog

if.else:                                          ; preds = %reg_write.exit315
  %conv11 = zext i8 %command to i32
  %or12 = or i32 %conv11, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit321)) #6
          to label %if.then.i319 [label %reg_write.exit321], !srcloc !37

if.then.i319:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %30, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or12) #6
  br label %reg_write.exit321

reg_write.exit321:                                ; preds = %if.then.i319, %if.else
  %31 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %or12) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %33) #6, !srcloc !39
  br label %sw.epilog

sw.bb13:                                          ; preds = %pasemi_smb_clear.exit
  %conv14 = zext i16 %shl to i32
  %or15 = or i32 %conv14, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit324)) #6
          to label %if.then.i322 [label %reg_write.exit324], !srcloc !37

if.then.i322:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %35, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or15) #6
  br label %reg_write.exit324

reg_write.exit324:                                ; preds = %if.then.i322, %sw.bb13
  %36 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #6, !srcloc !39
  %conv16 = zext i8 %command to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit327)) #6
          to label %if.then.i325 [label %reg_write.exit327], !srcloc !37

if.then.i325:                                     ; preds = %reg_write.exit324
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %40, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv16) #6
  br label %reg_write.exit327

reg_write.exit327:                                ; preds = %if.then.i325, %reg_write.exit324
  %41 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %43 = shl nuw i32 %conv16, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %43) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool17.not = icmp eq i8 %read_write, 0
  br i1 %tobool17.not, label %if.else22, label %if.then18

if.then18:                                        ; preds = %reg_write.exit327
  %or21 = or i32 %conv14, 257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit330)) #6
          to label %if.then.i328 [label %reg_write.exit330], !srcloc !37

if.then.i328:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %45, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or21) #6
  br label %reg_write.exit330

reg_write.exit330:                                ; preds = %if.then.i328, %if.then18
  %46 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %or21) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %48) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit333)) #6
          to label %if.then.i331 [label %reg_write.exit333], !srcloc !37

if.then.i331:                                     ; preds = %reg_write.exit330
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %50, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1537) #6
  br label %reg_write.exit333

reg_write.exit333:                                ; preds = %if.then.i331, %reg_write.exit330
  %51 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 17170432) #6, !srcloc !39
  br label %sw.epilog

if.else22:                                        ; preds = %reg_write.exit327
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data, align 2
  %conv23 = zext i8 %54 to i32
  %or24 = or i32 %conv23, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit336)) #6
          to label %if.then.i334 [label %reg_write.exit336], !srcloc !37

if.then.i334:                                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %56, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or24) #6
  br label %reg_write.exit336

reg_write.exit336:                                ; preds = %if.then.i334, %if.else22
  %57 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or24) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %59) #6, !srcloc !39
  br label %sw.epilog

sw.bb26:                                          ; preds = %pasemi_smb_clear.exit
  %conv27 = zext i16 %shl to i32
  %or28 = or i32 %conv27, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit339)) #6
          to label %if.then.i337 [label %reg_write.exit339], !srcloc !37

if.then.i337:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %61, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or28) #6
  br label %reg_write.exit339

reg_write.exit339:                                ; preds = %if.then.i337, %sw.bb26
  %62 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %or28) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %64) #6, !srcloc !39
  %conv29 = zext i8 %command to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit342)) #6
          to label %if.then.i340 [label %reg_write.exit342], !srcloc !37

if.then.i340:                                     ; preds = %reg_write.exit339
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %66, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv29) #6
  br label %reg_write.exit342

reg_write.exit342:                                ; preds = %if.then.i340, %reg_write.exit339
  %67 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %69 = shl nuw i32 %conv29, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %69) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool30.not = icmp eq i8 %read_write, 0
  br i1 %tobool30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %reg_write.exit342
  %or34 = or i32 %conv27, 257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit345)) #6
          to label %if.then.i343 [label %reg_write.exit345], !srcloc !37

if.then.i343:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %71, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or34) #6
  br label %reg_write.exit345

reg_write.exit345:                                ; preds = %if.then.i343, %if.then31
  %72 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %74 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %74) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit348)) #6
          to label %if.then.i346 [label %reg_write.exit348], !srcloc !37

if.then.i346:                                     ; preds = %reg_write.exit345
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %76, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1538) #6
  br label %reg_write.exit348

reg_write.exit348:                                ; preds = %if.then.i346, %reg_write.exit345
  %77 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 33947648) #6, !srcloc !39
  br label %sw.epilog

if.else35:                                        ; preds = %reg_write.exit342
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %data, align 2
  %81 = and i16 %80, 255
  %and = zext i16 %81 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit351)) #6
          to label %if.then.i349 [label %reg_write.exit351], !srcloc !37

if.then.i349:                                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %83, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %and) #6
  br label %reg_write.exit351

reg_write.exit351:                                ; preds = %if.then.i349, %if.else35
  %84 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %86 = shl nuw i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %86) #6, !srcloc !39
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %data, align 2
  %89 = lshr i16 %88, 8
  %90 = or i16 %89, 512
  %or38 = zext i16 %90 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit354)) #6
          to label %if.then.i352 [label %reg_write.exit354], !srcloc !37

if.then.i352:                                     ; preds = %reg_write.exit351
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %92, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or38) #6
  br label %reg_write.exit354

reg_write.exit354:                                ; preds = %if.then.i352, %reg_write.exit351
  %93 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %95 = tail call i32 @llvm.bswap.i32(i32 %or38) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %95) #6, !srcloc !39
  br label %sw.epilog

sw.bb40:                                          ; preds = %pasemi_smb_clear.exit
  %conv41 = zext i16 %shl to i32
  %or42 = or i32 %conv41, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit357)) #6
          to label %if.then.i355 [label %reg_write.exit357], !srcloc !37

if.then.i355:                                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %97, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or42) #6
  br label %reg_write.exit357

reg_write.exit357:                                ; preds = %if.then.i355, %sw.bb40
  %98 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %100 = tail call i32 @llvm.bswap.i32(i32 %or42) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %100) #6, !srcloc !39
  %conv43 = zext i8 %command to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit360)) #6
          to label %if.then.i358 [label %reg_write.exit360], !srcloc !37

if.then.i358:                                     ; preds = %reg_write.exit357
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %102, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv43) #6
  br label %reg_write.exit360

reg_write.exit360:                                ; preds = %if.then.i358, %reg_write.exit357
  %103 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %105 = shl nuw i32 %conv43, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %105) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool44.not = icmp eq i8 %read_write, 0
  br i1 %tobool44.not, label %if.else59, label %if.then45

if.then45:                                        ; preds = %reg_write.exit360
  %or48 = or i32 %conv41, 257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit363)) #6
          to label %if.then.i361 [label %reg_write.exit363], !srcloc !37

if.then.i361:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %107, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or48) #6
  br label %reg_write.exit363

reg_write.exit363:                                ; preds = %if.then.i361, %if.then45
  %108 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %110 = tail call i32 @llvm.bswap.i32(i32 %or48) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %110) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit366)) #6
          to label %if.then.i364 [label %reg_write.exit366], !srcloc !37

if.then.i364:                                     ; preds = %reg_write.exit363
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %112, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1025) #6
  br label %reg_write.exit366

reg_write.exit366:                                ; preds = %if.then.i364, %reg_write.exit363
  %113 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 17039360) #6, !srcloc !39
  %115 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %116, i32 4
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit)) #6
          to label %if.then.i368 [label %reg_read.exit], !srcloc !37

if.then.i368:                                     ; preds = %reg_write.exit366
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %120, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %118) #6
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.then.i368, %reg_write.exit366
  %conv51 = and i32 %118, 255
  %121 = tail call i32 @llvm.umin.i32(i32 %conv51, i32 32)
  %or58 = or i32 %121, 1536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit371)) #6
          to label %if.then.i369 [label %reg_write.exit371], !srcloc !37

if.then.i369:                                     ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %123, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or58) #6
  br label %reg_write.exit371

reg_write.exit371:                                ; preds = %if.then.i369, %reg_read.exit
  %124 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %126 = tail call i32 @llvm.bswap.i32(i32 %or58) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %126) #6, !srcloc !39
  br label %sw.epilog

if.else59:                                        ; preds = %reg_write.exit360
  %127 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %data, align 2
  %129 = tail call i8 @llvm.umin.i8(i8 %128, i8 32)
  %cond70 = zext i8 %129 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit374)) #6
          to label %if.then.i372 [label %reg_write.exit374], !srcloc !37

if.then.i372:                                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %131, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %cond70) #6
  br label %reg_write.exit374

reg_write.exit374:                                ; preds = %if.then.i372, %if.else59
  %132 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %134 = shl nuw nsw i32 %cond70, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %134) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %129)
  %cmp71445 = icmp ugt i8 %129, 1
  br i1 %cmp71445, label %reg_write.exit374.for.body_crit_edge, label %reg_write.exit374.for.end_crit_edge

reg_write.exit374.for.end_crit_edge:              ; preds = %reg_write.exit374
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

reg_write.exit374.for.body_crit_edge:             ; preds = %reg_write.exit374
  br label %for.body

for.body:                                         ; preds = %reg_write.exit377.for.body_crit_edge, %reg_write.exit374.for.body_crit_edge
  %i.0446 = phi i32 [ %inc, %reg_write.exit377.for.body_crit_edge ], [ 1, %reg_write.exit374.for.body_crit_edge ]
  %arrayidx73 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0446
  %135 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %136 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit377)) #6
          to label %if.then.i375 [label %reg_write.exit377], !srcloc !37

if.then.i375:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %138, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv74) #6
  br label %reg_write.exit377

reg_write.exit377:                                ; preds = %if.then.i375, %for.body
  %139 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %141 = shl nuw i32 %conv74, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %141) #6, !srcloc !39
  %inc = add nuw nsw i32 %i.0446, 1
  %exitcond449.not = icmp eq i32 %inc, %cond70
  br i1 %exitcond449.not, label %reg_write.exit377.for.end_crit_edge, label %reg_write.exit377.for.body_crit_edge

reg_write.exit377.for.body_crit_edge:             ; preds = %reg_write.exit377
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

reg_write.exit377.for.end_crit_edge:              ; preds = %reg_write.exit377
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %reg_write.exit377.for.end_crit_edge, %reg_write.exit374.for.end_crit_edge
  %arrayidx75 = getelementptr [34 x i8], ptr %data, i32 0, i32 %cond70
  %142 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %143 to i32
  %or77 = or i32 %conv76, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit380)) #6
          to label %if.then.i378 [label %reg_write.exit380], !srcloc !37

if.then.i378:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %145, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or77) #6
  br label %reg_write.exit380

reg_write.exit380:                                ; preds = %if.then.i378, %for.end
  %146 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %148 = tail call i32 @llvm.bswap.i32(i32 %or77) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %148) #6, !srcloc !39
  br label %sw.epilog

sw.bb79:                                          ; preds = %pasemi_smb_clear.exit
  %conv80 = zext i16 %shl to i32
  %or81 = or i32 %conv80, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit383)) #6
          to label %if.then.i381 [label %reg_write.exit383], !srcloc !37

if.then.i381:                                     ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %150, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or81) #6
  br label %reg_write.exit383

reg_write.exit383:                                ; preds = %if.then.i381, %sw.bb79
  %151 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %153 = tail call i32 @llvm.bswap.i32(i32 %or81) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %153) #6, !srcloc !39
  %conv82 = zext i8 %command to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit386)) #6
          to label %if.then.i384 [label %reg_write.exit386], !srcloc !37

if.then.i384:                                     ; preds = %reg_write.exit383
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %155, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv82) #6
  br label %reg_write.exit386

reg_write.exit386:                                ; preds = %if.then.i384, %reg_write.exit383
  %156 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %158 = shl nuw i32 %conv82, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %158) #6, !srcloc !39
  %159 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %data, align 2
  %161 = and i16 %160, 255
  %and84 = zext i16 %161 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit389)) #6
          to label %if.then.i387 [label %reg_write.exit389], !srcloc !37

if.then.i387:                                     ; preds = %reg_write.exit386
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %163, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %and84) #6
  br label %reg_write.exit389

reg_write.exit389:                                ; preds = %if.then.i387, %reg_write.exit386
  %164 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %166 = shl nuw i32 %and84, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %166) #6, !srcloc !39
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %data, align 2
  %169 = lshr i16 %168, 8
  %170 = zext i16 %169 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit392)) #6
          to label %if.then.i390 [label %reg_write.exit392], !srcloc !37

if.then.i390:                                     ; preds = %reg_write.exit389
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %172, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %170) #6
  br label %reg_write.exit392

reg_write.exit392:                                ; preds = %if.then.i390, %reg_write.exit389
  %173 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %175 = shl nuw i32 %170, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %175) #6, !srcloc !39
  %or90 = or i32 %conv80, 257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit395)) #6
          to label %if.then.i393 [label %reg_write.exit395], !srcloc !37

if.then.i393:                                     ; preds = %reg_write.exit392
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %177, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or90) #6
  br label %reg_write.exit395

reg_write.exit395:                                ; preds = %if.then.i393, %reg_write.exit392
  %178 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %180 = tail call i32 @llvm.bswap.i32(i32 %or90) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %180) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit398)) #6
          to label %if.then.i396 [label %reg_write.exit398], !srcloc !37

if.then.i396:                                     ; preds = %reg_write.exit395
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %182, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1538) #6
  br label %reg_write.exit398

reg_write.exit398:                                ; preds = %if.then.i396, %reg_write.exit395
  %183 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 33947648) #6, !srcloc !39
  br label %sw.epilog

sw.bb91:                                          ; preds = %pasemi_smb_clear.exit
  %185 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %data, align 2
  %187 = tail call i8 @llvm.umin.i8(i8 %186, i8 31)
  %cond103 = zext i8 %187 to i32
  %conv104 = zext i16 %shl to i32
  %or105 = or i32 %conv104, 256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit401)) #6
          to label %if.then.i399 [label %reg_write.exit401], !srcloc !37

if.then.i399:                                     ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %189, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or105) #6
  br label %reg_write.exit401

reg_write.exit401:                                ; preds = %if.then.i399, %sw.bb91
  %190 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %192 = tail call i32 @llvm.bswap.i32(i32 %or105) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %192) #6, !srcloc !39
  %conv106 = zext i8 %command to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit404)) #6
          to label %if.then.i402 [label %reg_write.exit404], !srcloc !37

if.then.i402:                                     ; preds = %reg_write.exit401
  call void @__sanitizer_cov_trace_pc() #8
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %194, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv106) #6
  br label %reg_write.exit404

reg_write.exit404:                                ; preds = %if.then.i402, %reg_write.exit401
  %195 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %197 = shl nuw i32 %conv106, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %197) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit407)) #6
          to label %if.then.i405 [label %reg_write.exit407], !srcloc !37

if.then.i405:                                     ; preds = %reg_write.exit404
  call void @__sanitizer_cov_trace_pc() #8
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %199, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %cond103) #6
  br label %reg_write.exit407

reg_write.exit407:                                ; preds = %if.then.i405, %reg_write.exit404
  %200 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %202 = shl nuw nsw i32 %cond103, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %202) #6, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %cmp108.not443 = icmp eq i8 %187, 0
  br i1 %cmp108.not443, label %reg_write.exit407.for.end115_crit_edge, label %reg_write.exit407.for.body110_crit_edge

reg_write.exit407.for.body110_crit_edge:          ; preds = %reg_write.exit407
  br label %for.body110

reg_write.exit407.for.end115_crit_edge:           ; preds = %reg_write.exit407
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end115

for.body110:                                      ; preds = %reg_write.exit410.for.body110_crit_edge, %reg_write.exit407.for.body110_crit_edge
  %i.1444 = phi i32 [ %inc114, %reg_write.exit410.for.body110_crit_edge ], [ 1, %reg_write.exit407.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1444
  %203 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %204 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit410)) #6
          to label %if.then.i408 [label %reg_write.exit410], !srcloc !37

if.then.i408:                                     ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %206, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv112) #6
  br label %reg_write.exit410

reg_write.exit410:                                ; preds = %if.then.i408, %for.body110
  %207 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %209 = shl nuw i32 %conv112, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %209) #6, !srcloc !39
  %inc114 = add nuw nsw i32 %i.1444, 1
  %exitcond = icmp eq i32 %i.1444, %cond103
  br i1 %exitcond, label %reg_write.exit410.for.end115_crit_edge, label %reg_write.exit410.for.body110_crit_edge

reg_write.exit410.for.body110_crit_edge:          ; preds = %reg_write.exit410
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body110

reg_write.exit410.for.end115_crit_edge:           ; preds = %reg_write.exit410
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end115

for.end115:                                       ; preds = %reg_write.exit410.for.end115_crit_edge, %reg_write.exit407.for.end115_crit_edge
  %or117 = or i32 %conv104, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit413)) #6
          to label %if.then.i411 [label %reg_write.exit413], !srcloc !37

if.then.i411:                                     ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %211, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or117) #6
  br label %reg_write.exit413

reg_write.exit413:                                ; preds = %if.then.i411, %for.end115
  %212 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %214 = tail call i32 @llvm.bswap.i32(i32 %or117) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %214) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit416)) #6
          to label %if.then.i414 [label %reg_write.exit416], !srcloc !37

if.then.i414:                                     ; preds = %reg_write.exit413
  call void @__sanitizer_cov_trace_pc() #8
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %216, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1025) #6
  br label %reg_write.exit416

reg_write.exit416:                                ; preds = %if.then.i414, %reg_write.exit413
  %217 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 17039360) #6, !srcloc !39
  %219 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i418 = getelementptr i8, ptr %220, i32 4
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #6, !srcloc !35
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit420)) #6
          to label %if.then.i419 [label %reg_read.exit420], !srcloc !37

if.then.i419:                                     ; preds = %reg_write.exit416
  call void @__sanitizer_cov_trace_pc() #8
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %224, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %222) #6
  br label %reg_read.exit420

reg_read.exit420:                                 ; preds = %if.then.i419, %reg_write.exit416
  %conv121 = sub nuw nsw i32 32, %cond103
  %conv123 = and i32 %222, 255
  %225 = tail call i32 @llvm.umin.i32(i32 %conv123, i32 %conv121)
  %or134 = or i32 %225, 1536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_write.exit423)) #6
          to label %if.then.i421 [label %reg_write.exit423], !srcloc !37

if.then.i421:                                     ; preds = %reg_read.exit420
  call void @__sanitizer_cov_trace_pc() #8
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %227, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or134) #6
  br label %reg_write.exit423

reg_write.exit423:                                ; preds = %if.then.i421, %reg_read.exit420
  %228 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %230 = tail call i32 @llvm.bswap.i32(i32 %or134) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %230) #6, !srcloc !39
  br label %sw.epilog

do.end:                                           ; preds = %pasemi_smb_clear.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %size) #9
  br label %cleanup

sw.epilog:                                        ; preds = %reg_write.exit423, %reg_write.exit398, %reg_write.exit380, %reg_write.exit371, %reg_write.exit354, %reg_write.exit348, %reg_write.exit336, %reg_write.exit333, %reg_write.exit321, %reg_write.exit318, %reg_write.exit
  %len.0 = phi i32 [ %225, %reg_write.exit423 ], [ 0, %reg_write.exit398 ], [ %121, %reg_write.exit371 ], [ %cond70, %reg_write.exit380 ], [ 0, %reg_write.exit348 ], [ 0, %reg_write.exit354 ], [ 0, %reg_write.exit333 ], [ 0, %reg_write.exit336 ], [ 0, %reg_write.exit318 ], [ 0, %reg_write.exit321 ], [ 0, %reg_write.exit ]
  %read_write.addr.0 = phi i8 [ 1, %reg_write.exit423 ], [ 1, %reg_write.exit398 ], [ 1, %reg_write.exit371 ], [ 0, %reg_write.exit380 ], [ 1, %reg_write.exit348 ], [ 0, %reg_write.exit354 ], [ 1, %reg_write.exit333 ], [ 0, %reg_write.exit336 ], [ 1, %reg_write.exit318 ], [ 0, %reg_write.exit321 ], [ %read_write, %reg_write.exit ]
  %call135 = tail call fastcc i32 @pasemi_smb_waitready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %sw.epilog.reset_out_crit_edge

sw.epilog.reset_out_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end138:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write.addr.0)
  %cmp140 = icmp eq i8 %read_write.addr.0, 0
  br i1 %cmp140, label %if.end138.cleanup_crit_edge, label %if.end143

if.end138.cleanup_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end143:                                        ; preds = %if.end138
  %231 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %size, label %if.end143.cleanup_crit_edge [
    i32 1, label %if.end143.sw.bb144_crit_edge
    i32 2, label %if.end143.sw.bb144_crit_edge451
    i32 3, label %if.end143.sw.bb152_crit_edge
    i32 4, label %if.end143.sw.bb152_crit_edge452
    i32 5, label %if.end143.sw.bb170_crit_edge
    i32 7, label %if.end143.sw.bb170_crit_edge453
  ]

if.end143.sw.bb170_crit_edge453:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb170

if.end143.sw.bb170_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb170

if.end143.sw.bb152_crit_edge452:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb152

if.end143.sw.bb152_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb152

if.end143.sw.bb144_crit_edge451:                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

if.end143.sw.bb144_crit_edge:                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb144:                                         ; preds = %if.end143.sw.bb144_crit_edge, %if.end143.sw.bb144_crit_edge451
  %232 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i425 = getelementptr i8, ptr %233, i32 4
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #6, !srcloc !35
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit427)) #6
          to label %if.then.i426 [label %reg_read.exit427], !srcloc !37

if.then.i426:                                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #8
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %237, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %235) #6
  br label %reg_read.exit427

reg_read.exit427:                                 ; preds = %if.then.i426, %sw.bb144
  %and146 = and i32 %235, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.end149, label %reg_read.exit427.reset_out_crit_edge

reg_read.exit427.reset_out_crit_edge:             ; preds = %reg_read.exit427
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end149:                                        ; preds = %reg_read.exit427
  call void @__sanitizer_cov_trace_pc() #8
  %conv151 = trunc i32 %235 to i8
  %238 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv151, ptr %data, align 2
  br label %cleanup

sw.bb152:                                         ; preds = %if.end143.sw.bb152_crit_edge, %if.end143.sw.bb152_crit_edge452
  %239 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i429 = getelementptr i8, ptr %240, i32 4
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #6, !srcloc !35
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit431)) #6
          to label %if.then.i430 [label %reg_read.exit431], !srcloc !37

if.then.i430:                                     ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #8
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %244, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %242) #6
  br label %reg_read.exit431

reg_read.exit431:                                 ; preds = %if.then.i430, %sw.bb152
  %and154 = and i32 %242, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end157, label %reg_read.exit431.reset_out_crit_edge

reg_read.exit431.reset_out_crit_edge:             ; preds = %reg_read.exit431
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end157:                                        ; preds = %reg_read.exit431
  %245 = trunc i32 %242 to i16
  %conv159 = and i16 %245, 255
  %246 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %conv159, ptr %data, align 2
  %247 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i433 = getelementptr i8, ptr %248, i32 4
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #6, !srcloc !35
  %250 = tail call i32 @llvm.bswap.i32(i32 %249) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit435)) #6
          to label %if.then.i434 [label %reg_read.exit435], !srcloc !37

if.then.i434:                                     ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #8
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %252, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %250) #6
  br label %reg_read.exit435

reg_read.exit435:                                 ; preds = %if.then.i434, %if.end157
  %and161 = and i32 %250, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end164, label %reg_read.exit435.reset_out_crit_edge

reg_read.exit435.reset_out_crit_edge:             ; preds = %reg_read.exit435
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end164:                                        ; preds = %reg_read.exit435
  call void @__sanitizer_cov_trace_pc() #8
  %253 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %data, align 2
  %call160.tr = trunc i32 %250 to i16
  %255 = shl i16 %call160.tr, 8
  %conv169 = or i16 %254, %255
  store i16 %conv169, ptr %data, align 2
  br label %cleanup

sw.bb170:                                         ; preds = %if.end143.sw.bb170_crit_edge, %if.end143.sw.bb170_crit_edge453
  %conv171 = trunc i32 %len.0 to i8
  %256 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv171, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.0)
  %cmp174.not447 = icmp slt i32 %len.0, 1
  br i1 %cmp174.not447, label %sw.bb170.cleanup_crit_edge, label %sw.bb170.for.body176_crit_edge

sw.bb170.for.body176_crit_edge:                   ; preds = %sw.bb170
  br label %for.body176

sw.bb170.cleanup_crit_edge:                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body176:                                      ; preds = %if.end181.for.body176_crit_edge, %sw.bb170.for.body176_crit_edge
  %i.2448 = phi i32 [ %inc186, %if.end181.for.body176_crit_edge ], [ 1, %sw.bb170.for.body176_crit_edge ]
  %257 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i437 = getelementptr i8, ptr %258, i32 4
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437) #6, !srcloc !35
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %reg_read.exit439)) #6
          to label %if.then.i438 [label %reg_read.exit439], !srcloc !37

if.then.i438:                                     ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #8
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %262, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %260) #6
  br label %reg_read.exit439

reg_read.exit439:                                 ; preds = %if.then.i438, %for.body176
  %and178 = and i32 %260, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end181, label %reg_read.exit439.reset_out_crit_edge

reg_read.exit439.reset_out_crit_edge:             ; preds = %reg_read.exit439
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end181:                                        ; preds = %reg_read.exit439
  %conv183 = trunc i32 %260 to i8
  %arrayidx184 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.2448
  %263 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv183, ptr %arrayidx184, align 1
  %inc186 = add nuw nsw i32 %i.2448, 1
  %exitcond450 = icmp eq i32 %i.2448, %len.0
  br i1 %exitcond450, label %if.end181.cleanup_crit_edge, label %if.end181.for.body176_crit_edge

if.end181.for.body176_crit_edge:                  ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body176

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

reset_out:                                        ; preds = %reg_read.exit439.reset_out_crit_edge, %reg_read.exit435.reset_out_crit_edge, %reg_read.exit431.reset_out_crit_edge, %reg_read.exit427.reset_out_crit_edge, %sw.epilog.reset_out_crit_edge
  %err.0 = phi i32 [ %call135, %sw.epilog.reset_out_crit_edge ], [ -61, %reg_read.exit427.reset_out_crit_edge ], [ -61, %reg_read.exit431.reset_out_crit_edge ], [ -61, %reg_read.exit435.reset_out_crit_edge ], [ -61, %reg_read.exit439.reset_out_crit_edge ]
  %clk_div.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 3
  %264 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %clk_div.i, align 4
  %and.i = and i32 %265, 255
  %hw_rev.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 4
  %266 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %hw_rev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %267)
  %cmp.i = icmp sgt i32 %267, 5
  %spec.select.v.i = select i1 %cmp.i, i32 3584, i32 1536
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_xfer, %pasemi_reset.exit)) #6
          to label %if.then.i.i440 [label %pasemi_reset.exit], !srcloc !37

if.then.i.i440:                                   ; preds = %reset_out
  call void @__sanitizer_cov_trace_pc() #8
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %269, ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef %spec.select.i) #6
  br label %pasemi_reset.exit

pasemi_reset.exit:                                ; preds = %if.then.i.i440, %reset_out
  %270 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ioaddr.i.i, align 8
  %add.ptr.i.i442 = getelementptr i8, ptr %271, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %272 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i442, i32 %272) #6, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %pasemi_reset.exit, %if.end181.cleanup_crit_edge, %sw.bb170.cleanup_crit_edge, %if.end164, %if.end149, %if.end143.cleanup_crit_edge, %if.end138.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %pasemi_reset.exit ], [ 0, %if.end138.cleanup_crit_edge ], [ 0, %if.end143.cleanup_crit_edge ], [ 0, %if.end164 ], [ 0, %if.end149 ], [ 0, %sw.bb170.cleanup_crit_edge ], [ 0, %if.end181.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pasemi_smb_func(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 67076097
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pasemi_i2c_xfer_msg(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %stop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %conv.i = zext i16 %6 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %shl.i.masked = and i32 %shl.i, 254
  %7 = or i16 %4, 256
  %conv1 = zext i16 %7 to i32
  %or = or i32 %shl.i.masked, %conv1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %reg_write.exit)) #6
          to label %if.then.i [label %reg_write.exit], !srcloc !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or) #6
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %if.then.i, %entry
  %ioaddr.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #6, !srcloc !39
  %len22 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len22, align 4
  br i1 %tobool.not, label %for.cond21.preheader, label %if.then

for.cond21.preheader:                             ; preds = %reg_write.exit
  %conv2383 = zext i16 %14 to i32
  %sub84 = add nsw i32 %conv2383, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp2485 = icmp ugt i16 %14, 1
  br i1 %cmp2485, label %for.body26.lr.ph, label %for.cond21.preheader.for.end32_crit_edge

for.cond21.preheader.for.end32_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

for.body26.lr.ph:                                 ; preds = %for.cond21.preheader
  %buf27 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body26

if.then:                                          ; preds = %reg_write.exit
  %15 = or i16 %14, 1024
  %or4 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool5.not = icmp eq i32 %stop, 0
  %cond6 = select i1 %tobool5.not, i32 0, i32 512
  %or7 = or i32 %cond6, %or4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %reg_write.exit71)) #6
          to label %if.then.i69 [label %reg_write.exit71], !srcloc !37

if.then.i69:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or7) #6
  br label %reg_write.exit71

reg_write.exit71:                                 ; preds = %if.then.i69, %if.then
  %18 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #6, !srcloc !39
  %call8 = tail call fastcc i32 @pasemi_smb_waitready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %reg_write.exit71.reset_out_crit_edge

reg_write.exit71.reset_out_crit_edge:             ; preds = %reg_write.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

for.cond.preheader:                               ; preds = %reg_write.exit71
  %21 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp81.not = icmp eq i16 %22, 0
  br i1 %cmp81.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %reg_read.exit)) #6
          to label %if.then.i73 [label %reg_read.exit], !srcloc !37

if.then.i73:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef %26) #6
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.then.i73, %for.body
  %and15 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %reg_read.exit.reset_out_crit_edge

reg_read.exit.reset_out_crit_edge:                ; preds = %reg_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_out

if.end18:                                         ; preds = %reg_read.exit
  %conv20 = trunc i32 %26 to i8
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %30, i32 %i.082
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv20, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.082, 1
  %32 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len22, align 4
  %conv12 = zext i16 %33 to i32
  %cmp = icmp ult i32 %inc, %conv12
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body26:                                       ; preds = %reg_write.exit76.for.body26_crit_edge, %for.body26.lr.ph
  %i.186 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc31, %reg_write.exit76.for.body26_crit_edge ]
  %34 = ptrtoint ptr %buf27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf27, align 4
  %arrayidx28 = getelementptr i8, ptr %35, i32 %i.186
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %37 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %reg_write.exit76)) #6
          to label %if.then.i74 [label %reg_write.exit76], !srcloc !37

if.then.i74:                                      ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %conv29) #6
  br label %reg_write.exit76

reg_write.exit76:                                 ; preds = %if.then.i74, %for.body26
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %42 = shl nuw i32 %conv29, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %42) #6, !srcloc !39
  %inc31 = add nuw nsw i32 %i.186, 1
  %43 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len22, align 4
  %conv23 = zext i16 %44 to i32
  %sub = add nsw i32 %conv23, -1
  %cmp24 = icmp slt i32 %inc31, %sub
  br i1 %cmp24, label %reg_write.exit76.for.body26_crit_edge, label %reg_write.exit76.for.end32_crit_edge

reg_write.exit76.for.end32_crit_edge:             ; preds = %reg_write.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

reg_write.exit76.for.body26_crit_edge:            ; preds = %reg_write.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.end32:                                        ; preds = %reg_write.exit76.for.end32_crit_edge, %for.cond21.preheader.for.end32_crit_edge
  %sub.lcssa = phi i32 [ %sub84, %for.cond21.preheader.for.end32_crit_edge ], [ %sub, %reg_write.exit76.for.end32_crit_edge ]
  %buf33 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %45 = ptrtoint ptr %buf33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf33, align 4
  %arrayidx37 = getelementptr i8, ptr %46, i32 %sub.lcssa
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool39.not = icmp eq i32 %stop, 0
  %cond40 = select i1 %tobool39.not, i32 0, i32 512
  %or41 = or i32 %cond40, %conv38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %reg_write.exit79)) #6
          to label %if.then.i77 [label %reg_write.exit79], !srcloc !37

if.then.i77:                                      ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %50, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %or41) #6
  br label %reg_write.exit79

reg_write.exit79:                                 ; preds = %if.then.i77, %for.end32
  %51 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %or41) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %53) #6, !srcloc !39
  br label %cleanup

reset_out:                                        ; preds = %reg_read.exit.reset_out_crit_edge, %reg_write.exit71.reset_out_crit_edge
  %err.0 = phi i32 [ %call8, %reg_write.exit71.reset_out_crit_edge ], [ -61, %reg_read.exit.reset_out_crit_edge ]
  %clk_div.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clk_div.i, align 4
  %and.i = and i32 %55, 255
  %hw_rev.i = getelementptr inbounds %struct.pasemi_smbus, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_rev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp.i = icmp sgt i32 %57, 5
  %spec.select.v.i = select i1 %cmp.i, i32 3584, i32 1536
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_i2c_xfer_msg, %pasemi_reset.exit)) #6
          to label %if.then.i.i [label %pasemi_reset.exit], !srcloc !37

if.then.i.i:                                      ; preds = %reset_out
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %59, ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef %spec.select.i) #6
  br label %pasemi_reset.exit

pasemi_reset.exit:                                ; preds = %if.then.i.i, %reset_out
  %60 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %62) #6, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %pasemi_reset.exit, %reg_write.exit79, %if.end18.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %pasemi_reset.exit ], [ 0, %reg_write.exit79 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pasemi_smb_waitready(ptr nocapture noundef readonly %smbus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr inbounds %struct.pasemi_smbus, ptr %smbus, i32 0, i32 2
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_waitready, %reg_read.exit)) #6
          to label %if.then.i [label %reg_read.exit], !srcloc !37

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef 20, i32 noundef %3) #6
  br label %reg_read.exit

reg_read.exit:                                    ; preds = %if.then.i, %entry
  %and27 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not28 = icmp eq i32 %and27, 0
  br i1 %tobool.not28, label %reg_read.exit.while.body_crit_edge, label %while.end.thread

reg_read.exit.while.body_crit_edge:               ; preds = %reg_read.exit
  br label %while.body

land.rhs:                                         ; preds = %reg_read.exit19
  %dec = add nsw i32 %dec44, -1
  %tobool1.not = icmp eq i32 %dec44, 0
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %reg_read.exit.while.body_crit_edge
  %dec44 = phi i32 [ %dec, %land.rhs.while.body_crit_edge ], [ 9, %reg_read.exit.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #6
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #6, !srcloc !35
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_waitready, %reg_read.exit19)) #6
          to label %if.then.i18 [label %reg_read.exit19], !srcloc !37

if.then.i18:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_read.__UNIQUE_ID_ddebug293, ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef 20, i32 noundef %9) #6
  br label %reg_read.exit19

reg_read.exit19:                                  ; preds = %if.then.i18, %while.body
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %reg_read.exit19.while.end_crit_edge

reg_read.exit19.while.end_crit_edge:              ; preds = %reg_read.exit19
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %reg_read.exit19.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %timeout.1 = phi i32 [ -1, %land.rhs.while.end_crit_edge ], [ %dec44, %reg_read.exit19.while.end_crit_edge ]
  %and3 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.thread:                                 ; preds = %reg_read.exit
  %and336 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool4.not37 = icmp eq i32 %and336, 0
  br i1 %tobool4.not37, label %while.end.thread.if.end6_crit_edge, label %while.end.thread.cleanup_crit_edge

while.end.thread.cleanup_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.thread.if.end6_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %cmp = icmp slt i32 %timeout.1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  %12 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %9) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_waitready, %reg_write.exit)) #6
          to label %if.then.i20 [label %reg_write.exit], !srcloc !37

if.then.i20:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef %9) #6
  br label %reg_write.exit

reg_write.exit:                                   ; preds = %if.then.i20, %do.end
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %8) #6, !srcloc !39
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %while.end.thread.if.end6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_write.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pasemi_smb_waitready, %reg_write.exit26)) #6
          to label %if.then.i23 [label %reg_write.exit26], !srcloc !37

if.then.i23:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %smbus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smbus, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_write.__UNIQUE_ID_ddebug292, ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef 20, i32 noundef 134217728) #6
  br label %reg_write.exit26

reg_write.exit26:                                 ; preds = %if.then.i23, %if.end6
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 8) #6, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %reg_write.exit26, %reg_write.exit, %while.end.thread.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %reg_write.exit ], [ 0, %reg_write.exit26 ], [ -6, %while.end.cleanup_crit_edge ], [ -6, %while.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 335, i32 4}
!2 = !{ptr @smbus_algorithm, !3, !"smbus_algorithm", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 323, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 46, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @reg_write.__UNIQUE_ID_ddebug292, !5, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 96, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pasemi_smb_waitready._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @pasemi_smb_waitready._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 258, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pasemi_smb_xfer._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @pasemi_smb_xfer._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-pasemi-core.c", i32 54, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @reg_read.__UNIQUE_ID_ddebug293, !23, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 4986909}
!36 = !{i64 2152527258}
!37 = !{i64 2148960061, i64 2148960066, i64 2148960079, i64 2148960123, i64 2148960157, i64 2148960178}
!38 = !{i64 2152528613}
!39 = !{i64 4986491}
